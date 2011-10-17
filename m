From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 17 Oct 2011 16:36:59 +0200
Subject: [PATCH 3.2 REQUEST] b43: HT-PHY: report signal to mac80211
In-Reply-To: <20111017162727.388624fc@milhouse>
	(sfid-20111017_162736_674563_4740EF3F)
References: <1318800649-5609-1-git-send-email-zajec5@gmail.com>
	<20111017162727.388624fc@milhouse>
	(sfid-20111017_162736_674563_4740EF3F)
Message-ID: <1318862219.3960.11.camel@jlt3.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael =?ISO-8859-1?Q?B=FCsch?= <m@bues.ch>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, David Woodhouse <dwmw2@infradead.org>, b43-dev@lists.infradead.org

On Mon, 2011-10-17 at 16:27 +0200, Michael B?sch wrote:
> On Sun, 16 Oct 2011 23:30:49 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> > +	case B43_PHYTYPE_HT:
> > +		/* TODO: is max the right choice? */
> > +		status.signal = max(
> > +			(__s8) max(rxhdr->phy_ht_power0, rxhdr->phy_ht_power1),
> 
> Hm, why is this cast needed? Does it throw a warning?

The cast should probably be a max_t() instead.

johannes
