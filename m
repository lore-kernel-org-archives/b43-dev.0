From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 11 Jan 2018 19:54:29 +0000 (UTC)
Subject: [v2] b43: Replace mdelay with usleep_range in
 b43_radio_2057_init_post
In-Reply-To: <1515462006-6144-1-git-send-email-baijiaju1990@gmail.com>
References: <1515462006-6144-1-git-send-email-baijiaju1990@gmail.com>
Message-ID: <20180111195429.9B5C6601D4@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kstewart-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, tiwai-l3A5Bk7waGM@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, andrew.zaborowski-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, colin.king-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org

Jia-Ju Bai <baijiaju1990@gmail.com> wrote:

> b43_radio_2057_init_post is not called in an interrupt handler
> nor holding a spinlock.
> The function mdelay in it can be replaced with usleep_range, 
> to reduce busy wait.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
> Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Patch applied to wireless-drivers-next.git, thanks.

4330b53e9662 b43: Replace mdelay with usleep_range in b43_radio_2057_init_post

-- 
https://patchwork.kernel.org/patch/10150845/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
