From: Luciano Coelho <coelho@ti.com>
Date: Wed, 25 Jul 2012 22:25:02 +0300
Subject: [PATCH v5] mac80211: Remove control.sta from struct
 ieee80211_tx_info and restructure tx-path
In-Reply-To: <500FEDDD.206@net.t-labs.tu-berlin.de>
References: <1343161108-6941-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
 (sfid-20120724_221843_511093_701FFAF2)
 <1343208990.4463.25.camel@jlt3.sipsolutions.net>
 (sfid-20120725_113644_599580_8AC4476F)
 <1343220625.4463.31.camel@jlt3.sipsolutions.net>
 <500FEDDD.206@net.t-labs.tu-berlin.de>
Message-ID: <1343244302.3750.44.camel@cumari.coelho.fi>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Cc: Johannes Berg <johannes@sipsolutions.net>, linville@tuxdriver.com, linux-wireless@vger.kernel.org, ath9k-devel@venema.h4ckr.net, ath5k-devel@venema.h4ckr.net, ilw@linux.intel.com, users@rt2x00.serialmonkey.com, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, chunkeey@googlemail.com, buytenh@wantstofly.org, dsd@gentoo.org, nbd@openwrt.org

On Wed, 2012-07-25 at 15:00 +0200, Thomas Huehn wrote:
> Hi Johannes,

Hi guys,


> Johannes Berg schrieb:
> >> Finally applied, but I dropped these spurious changes:
> > Never mind, it still doesn't compile, dropped it.
> >
> > I had to rebase my tree due to that, sorry!
> >
> 
> My last PATCH included some changes at a TI driver which was adapted in
> wireless-testing in John's tree. As I touch that many drivers I would
> like to use your tree instead, to provide a proper PATCH that builds at
> your tree state...small de-synchronization issues just make it fail.

Since Johannes has already more or less acked this patch, wouldn't it be
easier to integrate via John's tree? I think it would make syncing with
mac80211 and all the drivers easier.

Just my 2 cents.

--
Luca.
