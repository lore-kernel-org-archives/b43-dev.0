From: Jonas Gorski <jogo@openwrt.org>
Date: Sun, 20 Jul 2014 13:49:29 +0200
Subject: [PATCH 2/2] b43: N-PHY: support setting custom TX power
In-Reply-To: <1405854022-11833-2-git-send-email-zajec5@gmail.com>
References: <1405854022-11833-1-git-send-email-zajec5@gmail.com>
 <1405854022-11833-2-git-send-email-zajec5@gmail.com>
Message-ID: <CAOiHx=mi0jJQycjJSNjJ3rXrjQEB2N6JP3yg6vqcDN82tZHjzg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On Sun, Jul 20, 2014 at 1:00 PM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> This is based on top of
> [PATCH 7/7] b43: enable radio 0x2057 rev 14 support (AKA BCM43217)
> (not sure if applies cleanly otherwise)
> ---
>  drivers/net/wireless/b43/b43.h   |  1 +
>  drivers/net/wireless/b43/phy_n.c | 88 ++++++++++++++++++++++++++++++++++------
>  drivers/net/wireless/b43/phy_n.h |  3 ++
>  3 files changed, 80 insertions(+), 12 deletions(-)
>

(snip)

> diff --git a/drivers/net/wireless/b43/phy_n.h b/drivers/net/wireless/b43/phy_n.h
> index 30bec81..252d843 100644
> --- a/drivers/net/wireless/b43/phy_n.h
> +++ b/drivers/net/wireless/b43/phy_n.h
> @@ -967,6 +967,9 @@ struct b43_phy_n {
>         struct b43_phy_n_txpwrindex txpwrindex[2];
>         struct b43_phy_n_pwr_ctl_info pwr_ctl_info[2];
>         struct b43_chanspec txiqlocal_chanspec;
> +       struct b43_ppr *tx_pwr_max_ppr;

Why not just make this a struct member? As far as I can tell, it will
always be allocated, and you would lose one alloc/free call, and
probably one pointer dereference.

> +       u16 tx_pwr_last_recalc_freq;
> +       int tx_pwr_last_recalc_limit;
>
>         u8 txrx_chain;
>         u16 tx_rx_cal_phy_saveregs[11];
> --
> 1.8.4.5


Jonas
