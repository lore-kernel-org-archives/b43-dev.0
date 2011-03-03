From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 3 Mar 2011 08:58:34 +0100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTimz2_tReWABmqH5HsNjzYRW0fkidS1qmQbSAoqr@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTikcvuBdOi=LM5Bx9cxO2yY=0BzSTn18r938KjSr@mail.gmail.com>
	<AANLkTi=gjvA5=UxHENZ1ALcxomPEdL7NGeb7oFtdZ+t3@mail.gmail.com>
	<4D6EBDE0.8020005@lwfinger.net>
	<AANLkTimz2_tReWABmqH5HsNjzYRW0fkidS1qmQbSAoqr@mail.gmail.com>
Message-ID: <AANLkTin1SKsQSsMMUq-+0K_j=8GUxWQmP0HyyaxtD3z3@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/3 chris at martin.cc <chris@martin.cc>:
> root at OpenWrt:/etc/config# wifi up
> Error for wireless request "Set Power Management" (8B2C) :
> ? ?SET failed on device wlan0 ; Operation not supported.
> compat-wireless-2011-02-25/drivers/net/wireless/b43/main.c:2262
> kzalloc 332 bytes
> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> b43-phy0 ERROR: PHY transmission error
> b43-phy0 ERROR: PHY transmission error
> b43-phy0 ERROR: PHY transmission error
> b43-phy0 ERROR: PHY transmission error
> b43-phy0 ERROR: PHY transmission error

This gave me some hint, may be very important. I would like you to
test two patches (together, both at same time), TX header related.
Unfortunately second one doesn't exist yet and I'm leaving for my
studies class soon. I'll send you patches later today.

-- 
Rafa?
