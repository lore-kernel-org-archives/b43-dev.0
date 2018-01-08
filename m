From: Kalle Valo <kvalo@codeaurora.org>
Date: Mon,  8 Jan 2018 16:21:28 +0000 (UTC)
Subject: b43: Replace mdelay with msleep in b43_radio_2057_init_post
In-Reply-To: <1514632107-14698-1-git-send-email-baijiaju1990@gmail.com>
References: <1514632107-14698-1-git-send-email-baijiaju1990@gmail.com>
Message-ID: <20180108162128.6D37560B1D@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kstewart-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, tiwai-l3A5Bk7waGM@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, andrew.zaborowski-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, colin.king-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org

Jia-Ju Bai <baijiaju1990@gmail.com> wrote:

> b43_radio_2057_init_post is not called in an interrupt handler 
> nor holding a spinlock.
> The function mdelay in it can be replaced with msleep, to reduce busy wait.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>

You submitted an identical patch a week earlier:

https://patchwork.kernel.org/patch/10137671/

How is this different? Also always add version number to the patch so that the
maintainers can follow the changes easily:

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#patch_version_missing

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#changelog_missing

-- 
https://patchwork.kernel.org/patch/10137671/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
