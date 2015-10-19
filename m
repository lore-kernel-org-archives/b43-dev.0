From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 19 Oct 2015 18:11:57 +0200
Subject: [PATCH v2 3/3] net: wireless: b43: Statics are init to 0
In-Reply-To: <1445270543-2209-4-git-send-email-paulmcquad@gmail.com>
References: <1445270543-2209-1-git-send-email-paulmcquad@gmail.com>
 <1445270543-2209-4-git-send-email-paulmcquad@gmail.com>
Message-ID: <20151019181157.7018b25c@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul McQuade <paulmcquad@gmail.com>, =?UTF-8?B?R8OhYm9y?= Stefanik <netrolller.3d@gmail.com>
Cc: kvalo@codeaurora.org, zajec5@gmail.com, davem@davemloft.net, joe@perches.com, johannes.berg@intel.com, sd@queasysnail.net, mike.looijmans@topic.nl, khoroshilov@ispras.ru, cengelma@gmx.at, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

On Mon, 19 Oct 2015 17:02:23 +0100
Paul McQuade <paulmcquad@gmail.com> wrote:

> diff --git a/drivers/net/wireless/b43/phy_lp.c b/drivers/net/wireless/b43/phy_lp.c
> index 058a9f2..086f0ba 100644
> --- a/drivers/net/wireless/b43/phy_lp.c
> +++ b/drivers/net/wireless/b43/phy_lp.c
> @@ -2502,7 +2502,7 @@ static int lpphy_b2063_tune(struct b43_wldev *dev,
>  {
>  	struct ssb_bus *bus = dev->dev->sdev->bus;
>  
> -	static const struct b206x_channel *chandata = NULL;
> +	static const struct b206x_channel *chandata;
>  	u32 crystal_freq = bus->chipco.pmu.crystalfreq * 1000;
>  	u32 freqref, vco_freq, val1, val2, val3, timeout, timeoutref, count;
>  	u16 old_comm15, scale;


Why on earth is this static anyway? That seems really wrong here.
The static should be removed (and the =NULL init be left in place.)


-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20151019/5b6d1086/attachment-0001.sig>
