From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 7 Mar 2012 00:32:21 +0100
Subject: [RFT][PATCH] b43: fix logic in GPIO configuration
In-Reply-To: <4F5695CC.3010206@hauke-m.de>
References: <1331071898-3651-1-git-send-email-zajec5@gmail.com>
 <4F5695CC.3010206@hauke-m.de>
Message-ID: <20120307003221.7664eb4a@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, larry.finger@lwfinger.net, florian@openwrt.org

On Tue, 06 Mar 2012 23:55:08 +0100
Hauke Mehrtens <hauke@hauke-m.de> wrote:

> This patch did not helped fixing my problem. The ucode still takes over
> the GPIOs of the buttons with firmware version 666.2. I am getting the
> following messages:
> 
> [   83.620000] b43-phy0: Loading firmware version 666.2 (2011-02-23
> 01:15:07)
> [   83.624000] Init value of B43_GPIO_CONTROL: 0x0


I think this is caused by b43_gpio_cleanup. Can you try removing that function (or just returning early, for the time being.)

-- 
Greetings, Michael.

PGP encryption is encouraged / 908D8B0E
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120307/8834d02e/attachment.sig>
