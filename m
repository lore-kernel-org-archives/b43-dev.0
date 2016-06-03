From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 3 Jun 2016 23:35:19 +0200
Subject: [PATCH] b43: Remove unused phy_a code
In-Reply-To: <1464989566-1393-1-git-send-email-linux@roeck-us.net>
References: <1464989566-1393-1-git-send-email-linux@roeck-us.net>
Message-ID: <20160603233519.4606b1ef@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Guenter Roeck <linux@roeck-us.net>
Cc: Kalle Valo <kvalo@codeaurora.org>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org

On Fri,  3 Jun 2016 14:32:46 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> gcc-6 reports the following error with -Werror=unused-const-variable.
> 
> drivers/net/wireless/broadcom/b43/phy_a.c:576:40: error:
> 	'b43_phyops_a' defined but not used
> 
> Turns out a lot of code in this file is unused, so let's remove it.


All a-phy code is usused.
So you can basically remove the whole file and any other A-PHY code.
... or just leave it as-is.


-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160603/6027331e/attachment.sig>
