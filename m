From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 16 Jun 2016 15:23:37 +0000 (UTC)
Subject: [v3,1/2] b43: Remove unused phy_a code
In-Reply-To: <1465052053-26740-1-git-send-email-linux@roeck-us.net>
Message-ID: <20160616152337.63AB261421@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
References: <1465052053-26740-1-git-send-email-linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Cc: netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, m@bues.ch

Guenter Roeck <linux@roeck-us.net> wrote:
> gcc-6 reports the following error with -Werror=unused-const-variable.
> 
> drivers/net/wireless/broadcom/b43/phy_a.c:576:40: error:
> 	'b43_phyops_a' defined but not used
> 
> Per Michael B?sch: "All a-phy code is usused", so remove it all,
> and move the remaining Type-G initialization code into phy_g.c.
> 
> Reported-by: Fengguang Wu <fengguang.wu@intel.com> [0-day test robot]
> Cc: Michael B?sch <m@bues.ch>
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>

Thanks, 2 patches applied to wireless-drivers-next.git:

9791333a840f b43: Remove unused phy_a code
afdfdc481ea9 b43: Completely remove support for phy_a

-- 
Sent by pwcli
https://patchwork.kernel.org/patch/9154719/
