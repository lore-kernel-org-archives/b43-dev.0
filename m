From: Ariel Pedraza <pedrazaa@yahoo.com>
Date: Mon, 29 Nov 2010 04:40:50 -0800 (PST)
Subject: brcm80211 driver inject
In-Reply-To: <AANLkTikp0r4H-FKP-9PAc83yD9AVd-JFfs-WxBCmkujc@mail.gmail.com>
Message-ID: <737859.64842.qm@web111408.mail.gq1.yahoo.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

commit fffd6e63ea75850dafbf2ccfb38a4189f43c0282
Author: Maxim Levitsky <maximlevitsky@xxxxxxxxx>
Date:   Tue Jun 1 15:43:21 2010 +0300

    wireless: allow to retrieve the channel set on monitor interface
    
    This will allow to preserve compatibility with userspace
    
    Signed-off-by: Maxim Levitsky <maximlevitsky@xxxxxxxxx>

diff --git a/net/wireless/chan.c b/net/wireless/chan.c
index b01a6f6..09d979b 100644
--- a/net/wireless/chan.c
+++ b/net/wireless/chan.c
@@ -49,9 +49,12 @@ int cfg80211_set_freq(struct cfg80211_registered_device *rdev,
 {
 	struct ieee80211_channel *chan;
 	int result;
+	struct wireless_dev *mon_dev = NULL;
 
-	if (wdev && wdev->iftype == NL80211_IFTYPE_MONITOR)
+	if (wdev && wdev->iftype == NL80211_IFTYPE_MONITOR) {
+		mon_dev = wdev;
 		wdev = NULL;
+	}
 
 	if (wdev) {
 		ASSERT_WDEV_LOCK(wdev);
@@ -76,5 +79,8 @@ int cfg80211_set_freq(struct cfg80211_registered_device *rdev,
 	if (wdev)
 		wdev->channel = chan;
 
+	if (mon_dev)
+		mon_dev->channel = chan;
+
 	return 0;
 }

*** chan.c
/*
 * This file contains helper code to handle channel
 * settings and keeping track of what is possible at
 * any point in time.
 *
 * Copyright 2009	Johannes Berg <johannes@sipsolutions.net>
 */

#include <net/cfg80211.h>
#include "core.h"

struct ieee80211_channel *
rdev_freq_to_chan(struct cfg80211_registered_device *rdev,
		  int freq, enum nl80211_channel_type channel_type)
{
	struct ieee80211_channel *chan;
	struct ieee80211_sta_ht_cap *ht_cap;

	chan = ieee80211_get_channel(&rdev->wiphy, freq);

	/* Primary channel not allowed */
	if (!chan || chan->flags & IEEE80211_CHAN_DISABLED)
		return NULL;

	if (channel_type == NL80211_CHAN_HT40MINUS &&
	    chan->flags & IEEE80211_CHAN_NO_HT40MINUS)
		return NULL;
	else if (channel_type == NL80211_CHAN_HT40PLUS &&
		 chan->flags & IEEE80211_CHAN_NO_HT40PLUS)
		return NULL;

	ht_cap = &rdev->wiphy.bands[chan->band]->ht_cap;

	if (channel_type != NL80211_CHAN_NO_HT) {
		if (!ht_cap->ht_supported)
			return NULL;

		if (channel_type != NL80211_CHAN_HT20 &&
		    (!(ht_cap->cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40) ||
		    ht_cap->cap & IEEE80211_HT_CAP_40MHZ_INTOLERANT))
			return NULL;
	}

	return chan;
}

static bool can_beacon_sec_chan(struct wiphy *wiphy,
				struct ieee80211_channel *chan,
				enum nl80211_channel_type channel_type)
{
	struct ieee80211_channel *sec_chan;
	int diff;

	switch (channel_type) {
	case NL80211_CHAN_HT40PLUS:
		diff = 20;
		break;
	case NL80211_CHAN_HT40MINUS:
		diff = -20;
		break;
	default:
		return false;
	}

	sec_chan = ieee80211_get_channel(wiphy, chan->center_freq + diff);
	if (!sec_chan)
		return false;

	/* we'll need a DFS capability later */
	if (sec_chan->flags & (IEEE80211_CHAN_DISABLED |
			       IEEE80211_CHAN_PASSIVE_SCAN |
			       IEEE80211_CHAN_NO_IBSS |
			       IEEE80211_CHAN_RADAR))
		return false;

	return true;
}

int cfg80211_set_freq(struct cfg80211_registered_device *rdev,
		      struct wireless_dev *wdev, int freq,
		      enum nl80211_channel_type channel_type)
{
	struct ieee80211_channel *chan;
	int result;

	if (wdev && wdev->iftype == NL80211_IFTYPE_MONITOR)
		wdev = NULL;

	if (wdev) {
		ASSERT_WDEV_LOCK(wdev);

		if (!netif_running(wdev->netdev))
			return -ENETDOWN;
	}

	if (!rdev->ops->set_channel)
		return -EOPNOTSUPP;

	chan = rdev_freq_to_chan(rdev, freq, channel_type);
	if (!chan)
		return -EINVAL;

	/* Both channels should be able to initiate communication */
	if (wdev && (wdev->iftype == NL80211_IFTYPE_ADHOC ||
		     wdev->iftype == NL80211_IFTYPE_AP ||
		     wdev->iftype == NL80211_IFTYPE_AP_VLAN ||
		     wdev->iftype == NL80211_IFTYPE_MESH_POINT ||
		     wdev->iftype == NL80211_IFTYPE_P2P_GO)) {
		switch (channel_type) {
		case NL80211_CHAN_HT40PLUS:
		case NL80211_CHAN_HT40MINUS:
			if (!can_beacon_sec_chan(&rdev->wiphy, chan,
						 channel_type)) {
				printk(KERN_DEBUG
				       "cfg80211: Secondary channel not "
				       "allowed to initiate communication\n");
				return -EINVAL;
			}
			break;
		default:
			break;
		}
	}

	result = rdev->ops->set_channel(&rdev->wiphy,
					wdev ? wdev->netdev : NULL,
					chan, channel_type);
	if (result)
		return result;

	if (wdev)
		wdev->channel = chan;

	return 0;
}



--- El vie, 11/26/10, G?bor Stefanik <netrolller.3d@gmail.com> escribi?:

> De: G?bor Stefanik <netrolller.3d@gmail.com>
> Asunto: Re: brcm80211 driver inject
> A: "Ariel Pedraza" <pedrazaa@yahoo.com>
> Cc: b43-dev at lists.infradead.org
> Fecha: viernes, 26 de noviembre de 2010, 09:25 pm
> 2010/11/26 Ariel Pedraza <pedrazaa@yahoo.com>:
> > Hi, the /net/wireless/chan.c is different today, the
> problem persist (negative channel) but cannot apply this
> patch anymore even manually? do you know where can I found
> a new patch version or tell me how to change in the new
> source code please?
> >
> > Thank you
> 
> Hi!
> 
> Just checked the current wireless-testing, the code is
> still the same.
> What tree are you on?
> 
> --G?bor
> 
> >
> >
> > --- El lun, 10/18/10, G?bor Stefanik <netrolller.3d@gmail.com>
> escribi?:
> >
> >> De: G?bor Stefanik <netrolller.3d@gmail.com>
> >> Asunto: Re: brcm80211 driver inject
> >> A: "Ariel Pedraza" <pedrazaa@yahoo.com>
> >> Cc: b43-dev at lists.infradead.org
> >> Fecha: lunes, 18 de octubre de 2010, 02:23 pm
> >> On Mon, Oct 18, 2010 at 3:48 PM,
> >> Ariel Pedraza <pedrazaa@yahoo.com>
> >> wrote:
> >> > Hi, did you know if there is a solution for
> this
> >> error?:
> >> >
> >> > "mon0 is on channel -1, but the AP uses
> channel 1"
> >> >
> >> > on programs like aireplay-ng, I'm using the
> brcm80211
> >> driver.
> >> >
> >> > Thanks
> >>
> >> Known bug in mac80211.
> >> http://patches.aircrack-ng.org/channel-negative-one-maxim.patch
> >> fixes
> >> it, but is unsuitable for inclusion, and some
> kernel
> >> developers
> >> actually consider this a feature, and refuse to
> fix it.
> >>
> >> >
> >> >
> >> >
> >> >
> >> >
> _______________________________________________
> >> > b43-dev mailing list
> >> > b43-dev at lists.infradead.org
> >> > http://lists.infradead.org/mailman/listinfo/b43-dev
> >> >
> >>
> >>
> >>
> >> --
> >> Vista: [V]iruses, [I]ntruders, [S]pyware,
> [T]rojans and
> >> [A]dware. :-)
> >>
> >
> >
> >
> >
> 
> 
> 
> -- 
> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and
> [A]dware. :-)
> 


      
