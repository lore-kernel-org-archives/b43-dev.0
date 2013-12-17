From: Seth Forshee <seth.forshee@canonical.com>
Date: Tue, 17 Dec 2013 06:37:34 -0600
Subject: [RFC PATCH 1/8] mac80211: Move dynamic PS data out of common code
In-Reply-To: <1387267730.4749.2.camel@jlt4.sipsolutions.net>
References: <1387231260-2849-1-git-send-email-seth.forshee@canonical.com>
 <1387231260-2849-2-git-send-email-seth.forshee@canonical.com>
 <1387267730.4749.2.camel@jlt4.sipsolutions.net>
Message-ID: <20131217123734.GA8557@thinkpad-t410>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, "John W. Linville" <linville@tuxdriver.com>, Stefano Brivio <stefano.brivio@polimi.it>, Arend van Spriel <arend@broadcom.com>

On Tue, Dec 17, 2013 at 09:08:50AM +0100, Johannes Berg wrote:
> On Mon, 2013-12-16 at 16:00 -0600, Seth Forshee wrote:
> 
> > +void ieee80211_notify_rx(struct ieee80211_rx_data *rx)
> > +{
> > +	switch(rx->sdata->vif.type) {
> > +	case NL80211_IFTYPE_MONITOR:
> > +		ieee80211_mgd_notify_rx(rx);
> 
> This ... seems wrong.

Yeah, it is. I guess there's always been enough tx while I was testing
to keep the dynamic ps timer updated.

> Also, we already have ieee80211_sta_rx_notify() which you want, I think?

I'm not sure, that's called earlier in the rx handlers. I guess that
probably only matters if there's an rx error, and the only penalty is
coming out of PS briefly. So I could probably use that instead.

> With this change, do you even still need local->ps_sdata?

Some of the code still uses ps_sdata, but I do remove it in a later
patch. I might be able to remove it here, but it's easier to do it when
the managed code changes to use the PS module.
