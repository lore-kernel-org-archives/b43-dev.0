From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 26 Mar 2013 23:26:39 +0100
Subject: Scanning regression since "cfg80211: use DS or HT operation IEs
 to determine BSS channel"
In-Reply-To: <CACna6rxpiPp_FR8jF=jKHbd6XrYndfFZC5O4g6=fvioK=e8vEg@mail.gmail.com>
 (sfid-20130326_225853_266498_DCDE7415)
References: <CACna6rwdAAsCX76=nwHpj-grVvQznbNCPVnpXL9kP2TkvhR-yw@mail.gmail.com>
 <1364323118.8319.13.camel@jlt4.sipsolutions.net>
 <CACna6rxpiPp_FR8jF=jKHbd6XrYndfFZC5O4g6=fvioK=e8vEg@mail.gmail.com>
 (sfid-20130326_225853_266498_DCDE7415)
Message-ID: <1364336799.14191.3.camel@jlt4.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>


On Tue, 2013-03-26 at 22:58 +0100, Rafa? Mi?ecki wrote:
> > Can you check your channel list? (iw list or iw phy0 info)
> 
> Sure, attaching iw.list.log.

This is after the scan, presumably? Is channel 13 also marked as
passive/no-ibss before scanning?

> > Also can you show the full data including beacon data from the AP (iw
> > wlan0 scan dump -b) please?
> 
> Hm, first of all, above command doesn't seem to perform real scanning.

True, you can remove the "dump" part if you wanted to.

> It returns too quick to actually scan anything. It's result is empty
> as long as I don't use standard "iw dev wlan0 scan".  After scanning a
> normal way once ("iw dev wlan0 scan"), executing "dump -b" results in
> the output at the one produced by "iw dev wlan0 scan" (only TSF and
> last seen differ).

Really? It should have printed more if you'd ever received a beacon.
That's curious. It means you never received a beacon? But then how did
the channel get activated (i.e. no longer be passive)? That should have
been by receiving a beacon ...

> > Does reverting just the mac80211 change fix it?
> 
> Yes. Reverting just a change in net/mac80211/scan.c fixes the problem
> for me. I've tested this with the latest wireless-testing.

Sounds to me like you have issues receiving beacons. Channel 13 is
marked passive, thus no probe requests would get sent. Before the
change, it's possible that your probe response on channel 11 was
received by the AP on channel 13 (in particular since the AP is
configured to HT40-) and the probe response was received on channel 11.

I'm not really sure what difference this change makes though ... channel
13 is still present and not disabled, so the frame, if received,
wouldn't be dropped either way??

Or was the channel marked disabled before scanning? But then you could
never connect to the AP anyway ... hmm.

johannes
