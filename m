From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 7 Mar 2013 17:35:07 +0100
Subject: [PATCH 11/13] b43: HT-PHY: implement RSSI polling
In-Reply-To: <1362671247-10766-12-git-send-email-zajec5@gmail.com>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
 <1362671247-10766-12-git-send-email-zajec5@gmail.com>
Message-ID: <20130307173507.64a55ba3@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Thu,  7 Mar 2013 16:47:25 +0100
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> +	const u16 ctl_regs[3][2] = {
> +		{ B43_PHY_HT_AFE_C1, B43_PHY_HT_AFE_C1_OVER, },
> +		{ B43_PHY_HT_AFE_C2, B43_PHY_HT_AFE_C2_OVER, },
> +		{ B43_PHY_HT_AFE_C3, B43_PHY_HT_AFE_C3_OVER, },
> +	};
> +	const u16 radio_r[] = { R2059_SYN, R2059_TXRX0, R2059_RXRX1, };

> +	u16 phy_regs_to_save[] = {
> +		B43_PHY_HT_AFE_C1, B43_PHY_HT_AFE_C1_OVER,
> +		0x848, 0x841,
> +		B43_PHY_HT_AFE_C2, B43_PHY_HT_AFE_C2_OVER,
> +		0x868, 0x861,
> +		B43_PHY_HT_AFE_C3, B43_PHY_HT_AFE_C3_OVER,
> +		0x888, 0x881,
> +	};

It usually is better to define tables that are constant as "static const",
so that they are not put on the kernel stack.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130307/b57a29aa/attachment.sig>
