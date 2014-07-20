From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 20 Jul 2014 13:26:34 +0200
Subject: [PATCH 2/2] b43: N-PHY: support setting custom TX power
In-Reply-To: <1405854022-11833-2-git-send-email-zajec5@gmail.com>
References: <1405854022-11833-1-git-send-email-zajec5@gmail.com>
 <1405854022-11833-2-git-send-email-zajec5@gmail.com>
Message-ID: <20140720132634.2cb9e916@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Sun, 20 Jul 2014 13:00:22 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> +	/* Apply */
> +	tx_pwr_state = nphy->txpwrctrl;
> +	b43_mac_suspend(dev);
> +	b43_nphy_tx_power_ctl_setup(dev);
> +	if (dev->dev->core_rev == 11 || dev->dev->core_rev == 12) {
> +		b43_maskset32(dev, B43_MMIO_MACCTL, ~0, B43_MACCTL_PHY_LOCK);
> +		b43_read32(dev, B43_MMIO_MACCTL);
> +		udelay(1);
> +	}

You could probably write a function b43_phy_lock/unlock() similar to b43_mac_suspend/enable
to make this more readable.
The PHY_LOCK bit is related to the mac-suspend bit, after all. These are both used to lock
the firmware in one way or the other.

> +	b43_nphy_tx_power_ctrl(dev, nphy->txpwrctrl);
> +	if (dev->dev->core_rev == 11 || dev->dev->core_rev == 12)
> +		b43_maskset32(dev, B43_MMIO_MACCTL, ~B43_MACCTL_PHY_LOCK, 0);
> +	b43_mac_enable(dev);
> +
> +	nphy->tx_pwr_last_recalc_freq = channel->center_freq;
> +	nphy->tx_pwr_last_recalc_limit = phy->desired_txpower;
> +
> +	return B43_TXPWR_RES_DONE;
> +}

> @@ -6656,5 +6721,4 @@ const struct b43_phy_operations b43_phyops_n = {
>  	.switch_channel		= b43_nphy_op_switch_channel,
>  	.get_default_chan	= b43_nphy_op_get_default_chan,
>  	.recalc_txpower		= b43_nphy_op_recalc_txpower,
> -	.adjust_txpower		= b43_nphy_op_adjust_txpower,

recalc_txpower once was designed to just recalculate the txpower and not write it
to hardware. adjust_txpower was supposed to write it to hardware afterwards.
That had to do with some locking foo and stuff I forgot (AFAIR these callbacks are called
in different contexts, but I may be wrong).
But I don't think it really matters. Just as a general hint here.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140720/0e185e01/attachment.sig>
