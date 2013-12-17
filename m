From: Seth Forshee <seth.forshee@canonical.com>
Date: Tue, 17 Dec 2013 07:31:46 -0600
Subject: [RFC PATCH 3/8] mac80211: Add powersave module
In-Reply-To: <1387268180.4749.8.camel@jlt4.sipsolutions.net>
References: <1387231260-2849-1-git-send-email-seth.forshee@canonical.com>
 <1387231260-2849-4-git-send-email-seth.forshee@canonical.com>
 <1387268180.4749.8.camel@jlt4.sipsolutions.net>
Message-ID: <20131217133146.GB5175@ubuntu-mba51>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, "John W. Linville" <linville@tuxdriver.com>, Stefano Brivio <stefano.brivio@polimi.it>, Arend van Spriel <arend@broadcom.com>

On Tue, Dec 17, 2013 at 09:16:20AM +0100, Johannes Berg wrote:
> On Mon, 2013-12-16 at 16:00 -0600, Seth Forshee wrote:
> 
> > + * When @ps_mode == %IEEE80211_VIF_PS_DOZE or the %IEEE80211_CONF_PS flag is
> > + * set it means that the powersave mode defined in IEEE 802.11-2007 section
> > + * 11.2 is enabled. 
> 
> We might consider updating the references to 802.11-2012 since
> everything shuffled around.

Okay.

> > +++ b/net/mac80211/ieee80211_i.h
> > @@ -1180,6 +1180,7 @@ struct ieee80211_local {
> >  #endif /* CONFIG_MAC80211_DEBUG_COUNTERS */
> >  
> > 
> > +	int awake_cnt;
> 
> How will the locking for this possibly work? :)

Well, I did warn that I still need to look at locking ;-)

Mostly the access is already serialized, either by nature of going
through ieee80211_recalc_ps which already has locking rules or by being
run on the device workqueue. I need to try and grok how all the current
mac80211 locking works and see if I need to add something new.
Suggestions are welcome :-)

> 
> > +#include <linux/nl80211.h>
> > +#include <linux/pm_qos.h>
> > +#include <net/mac80211.h>
> > +#include "ieee80211_i.h"
> > +#include "driver-ops.h"
> > +
> > +/*
> > + * Sets the PS parameters in ieee80211_conf. Uses parameters from the first
> > + * managed interface found which has power save enabled, or failing that
> > + * the parameters from an arbitrary managed interface are used.
> > + */
> > +static void ieee80211_set_ps_params(struct ieee80211_local *local) { struct
> > +	ieee80211_sub_if_data *sdata, *ps_sdata = NULL;
> 
> what happened to indentation here??

Hmm, I don't know. Probably I accidentally hit J in vim a couple of
times and didn't notice.

> > +	if (ps_sdata) {
> > +		struct ieee80211_vif *vif = &sdata->vif;
> 
> add a newline here please

Okay.
