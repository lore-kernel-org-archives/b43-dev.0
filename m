From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 6 Jun 2011 12:30:49 +0200
Subject: [RFC][PATCH 05/10] bcma: add serial console support
In-Reply-To: <1307311658-15853-6-git-send-email-hauke@hauke-m.de>
References: <1307311658-15853-1-git-send-email-hauke@hauke-m.de>
	<1307311658-15853-6-git-send-email-hauke@hauke-m.de>
Message-ID: <BANLkTik9u5QhxdeaGMUyYYK-W8hSkQb-Wg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-wireless@vger.kernel.org, linux-mips@linux-mips.org, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com

2011/6/6 Hauke Mehrtens <hauke@hauke-m.de>:
> + ? ? ? if ((ccrev >= 11) && (ccrev != 15) && (ccrev != 20)) {
> + ? ? ? ....
> + ? ? ? } else
> + ? ? ? ? ? ? ? pr_err("serial not supported on this device ccrev: 0x%x\n",
> + ? ? ? ? ? ? ? ? ? ? ?ccrev);

Please use scripts/checkpatch* for your patches. I believe it will
alert you about lacking brackets for "else" (kernel coding style).

-- 
Rafa?
