From: Julian Calaby <julian.calaby@gmail.com>
Date: Thu, 28 Jan 2021 21:29:14 +1100
Subject: [PATCH] b43: Remove redundant code
In-Reply-To: <1611823636-18377-1-git-send-email-abaci-bugfix@linux.alibaba.com>
References: <1611823636-18377-1-git-send-email-abaci-bugfix@linux.alibaba.com>
Message-ID: <CAGRGNgWM=dQx4suXZJX+u6m0i4=Qx3hZFZWdWJ8VO+FG_edH2w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Abaci Team <abaci-bugfix@linux.alibaba.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, linux-wireless@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, b43-dev <b43-dev@lists.infradead.org>, netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>

Hi ..... <insert name here>,

(No proper name in the from field or signed-off-by, as you're already aware)

On Thu, Jan 28, 2021 at 7:53 PM Abaci Team
<abaci-bugfix@linux.alibaba.com> wrote:
>
> Fix the following coccicheck warnings:
>
> ./drivers/net/wireless/broadcom/b43/phy_n.c:4640:2-4: WARNING: possible
> condition with no effect (if == else).
>
> ./drivers/net/wireless/broadcom/b43/phy_n.c:4606:2-4: WARNING: possible
> condition with no effect (if == else).
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Suggested-by: Jiapeng Zhong <oswb@linux.alibaba.com>
> Signed-off-by: Abaci Team <abaci-bugfix@linux.alibaba.com>
> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 16 ----------------
>  1 file changed, 16 deletions(-)
>
> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> index b669dff..39a335f 100644
> --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> @@ -4601,16 +4601,6 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
>         if (nphy->hang_avoid)
>                 b43_nphy_stay_in_carrier_search(dev, 1);
>
> -       if (nphy->gband_spurwar_en) {
> -               /* TODO: N PHY Adjust Analog Pfbw (7) */
> -               if (channel == 11 && b43_is_40mhz(dev)) {
> -                       ; /* TODO: N PHY Adjust Min Noise Var(2, tone, noise)*/
> -               } else {
> -                       ; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
> -               }
> -               /* TODO: N PHY Adjust CRS Min Power (0x1E) */
> -       }

I'm not sure how useful this patch is, even though it is technically correct.

The b43 driver was almost entirely reverse engineered from various
sources so there's still a lot of places, like this, where placeholder
comments were written until the actual code that would have been here
was ready / reverse engineered.

That said, I believe the driver works well enough for all it's users
and has not seen any significant changes in a long time.

Thanks,

-- 
Julian Calaby

Email: julian.calaby at gmail.com
Profile: http://www.google.com/profiles/julian.calaby/

On Thu, Jan 28, 2021 at 7:53 PM Abaci Team
<abaci-bugfix@linux.alibaba.com> wrote:
>
> Fix the following coccicheck warnings:
>
> ./drivers/net/wireless/broadcom/b43/phy_n.c:4640:2-4: WARNING: possible
> condition with no effect (if == else).
>
> ./drivers/net/wireless/broadcom/b43/phy_n.c:4606:2-4: WARNING: possible
> condition with no effect (if == else).
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Suggested-by: Jiapeng Zhong <oswb@linux.alibaba.com>
> Signed-off-by: Abaci Team <abaci-bugfix@linux.alibaba.com>
> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 16 ----------------
>  1 file changed, 16 deletions(-)
>
> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> index b669dff..39a335f 100644
> --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> @@ -4601,16 +4601,6 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
>         if (nphy->hang_avoid)
>                 b43_nphy_stay_in_carrier_search(dev, 1);
>
> -       if (nphy->gband_spurwar_en) {
> -               /* TODO: N PHY Adjust Analog Pfbw (7) */
> -               if (channel == 11 && b43_is_40mhz(dev)) {
> -                       ; /* TODO: N PHY Adjust Min Noise Var(2, tone, noise)*/
> -               } else {
> -                       ; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
> -               }
> -               /* TODO: N PHY Adjust CRS Min Power (0x1E) */
> -       }
> -
>         if (nphy->aband_spurwar_en) {
>                 if (channel == 54) {
>                         tone[0] = 0x20;
> @@ -4636,12 +4626,6 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
>                         tone[0] = 0;
>                         noise[0] = 0;
>                 }
> -
> -               if (!tone[0] && !noise[0]) {
> -                       ; /* TODO: N PHY Adjust Min Noise Var(1, tone, noise)*/
> -               } else {
> -                       ; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
> -               }
>         }
>
>         if (nphy->hang_avoid)
> --
> 1.8.3.1
>


-- 
Julian Calaby

Email: julian.calaby at gmail.com
Profile: http://www.google.com/profiles/julian.calaby/
