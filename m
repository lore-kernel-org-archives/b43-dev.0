From: Andreas Ziegler <andreas.ziegler@fau.de>
Date: Tue, 26 Jan 2016 16:06:17 +0100
Subject: Use of deleted Kconfig option B43_PCMCIA
Message-ID: <56A78B69.9050002@fau.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>

Hi Rafa?,

your commit 399500da18f7 ("ssb: pick PCMCIA host code support from b43
driver") removed the Kconfig option B43_PCMCIA from Kconfig, but left
one reference to it in b43/main.c, inside the b43_print_driverinfo()
function.

Can this #ifdef be removed, should it be replaced with an #ifdef using
CONFIG_SSB_PCMCIAHOST instead or should we do something entirely different?

Best regards,

Andreas
