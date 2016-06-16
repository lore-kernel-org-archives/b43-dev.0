From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 16 Jun 2016 17:48:13 +0200
Subject: [v3,1/2] b43: Remove unused phy_a code
In-Reply-To: <20160616152337.63AB261421@smtp.codeaurora.org>
References: <1465052053-26740-1-git-send-email-linux@roeck-us.net>
 <20160616152337.63AB261421@smtp.codeaurora.org>
Message-ID: <20160616174813.595440bb@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: Guenter Roeck <linux@roeck-us.net>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org

On Thu, 16 Jun 2016 15:23:37 +0000 (UTC)
Kalle Valo <kvalo@codeaurora.org> wrote:

> Guenter Roeck <linux@roeck-us.net> wrote:
> > gcc-6 reports the following error with -Werror=unused-const-variable.
> > 
> > drivers/net/wireless/broadcom/b43/phy_a.c:576:40: error:
> > 	'b43_phyops_a' defined but not used
> > 
> > Per Michael B?sch: "All a-phy code is usused", so remove it all,
> > and move the remaining Type-G initialization code into phy_g.c.
> > 
> > Reported-by: Fengguang Wu <fengguang.wu@intel.com> [0-day test robot]
> > Cc: Michael B?sch <m@bues.ch>
> > Signed-off-by: Guenter Roeck <linux@roeck-us.net>  
> 
> Thanks, 2 patches applied to wireless-drivers-next.git:
> 
> 9791333a840f b43: Remove unused phy_a code
> afdfdc481ea9 b43: Completely remove support for phy_a


Did anybody test this on any hardware?
I think this should be tested on some G-PHY hardware, before it goes to
Linus.


-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160616/402135be/attachment.sig>
