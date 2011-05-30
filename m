From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 30 May 2011 09:22:32 +0200
Subject: Request for testing b43 & Broadcom 14e4:4315 cards for DMA ERRORs
	(Linux 3.0)
Message-ID: <BANLkTi=fgGTvjdQ0Ghd15CBoYzd9TLU2CQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello everybody,

I believe I've grabbed e-mails of all the people reporting DMA errors
on b43/bcm43xx mailing list.

Short remind of the problem. When using b43 and LP-PHY card on some
specific machines you got:
b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...

The workaround was to use PIO instead of DMA, or "modprobe wl && rmmod wl".

I believe we've fixed that errors in Linux 3.0-rc1. Can you give it a
chance and report back?

-- 
Rafa?
