From: richardvoigt at gmail.com <richardvoigt@gmail.com>
Date: Thu, 1 Apr 2010 18:05:22 -0500
Subject: [PATCH] b43: N-PHY: fix copy&paste typo
In-Reply-To: <1270156270-7550-2-git-send-email-zajec5@gmail.com>
References: <1270156270-7550-2-git-send-email-zajec5@gmail.com>
Message-ID: <m2y2e59e6971004011605oc44de860q87948992252fbac2@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, Myhailo Danylenko <isbear@ukrpost.net>

Does anybody else think all the magic numbers make this code hard to understand?

2010/4/1 Rafa? Mi?ecki <zajec5@gmail.com>:
> Reported-by: Myhailo Danylenko <isbear@ukrpost.net>
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> ?drivers/net/wireless/b43/phy_n.c | ? ?2 +-
> ?1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
> index 6fd140a..2ae2445 100644
> --- a/drivers/net/wireless/b43/phy_n.c
> +++ b/drivers/net/wireless/b43/phy_n.c
> @@ -2790,7 +2790,7 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
> ? ? ? ? ? ? ? ? ? ? ? ?}
> ? ? ? ? ? ? ? ? ? ? ? ?b43_ntab_write_bulk(dev, B43_NTAB16(15, 88), 4,
> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?buffer);
> - ? ? ? ? ? ? ? ? ? ? ? b43_ntab_write_bulk(dev, B43_NTAB16(15, 101), 2,
> + ? ? ? ? ? ? ? ? ? ? ? b43_ntab_read_bulk(dev, B43_NTAB16(15, 101), 2,
> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?buffer);
> ? ? ? ? ? ? ? ? ? ? ? ?b43_ntab_write_bulk(dev, B43_NTAB16(15, 85), 2,
> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?buffer);
> --
> 1.6.4.2
>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>
