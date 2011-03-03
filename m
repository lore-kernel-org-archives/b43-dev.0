From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 3 Mar 2011 08:55:00 +0100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTikGKhhnVN+7S3HZpKj6q3ufpK2jniO92KMHR6JU@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTim4XtL9+2mw7Kx_Cu_LXak8Y6a_CgkwtrUHf_bo@mail.gmail.com>
	<AANLkTinHzH2RjoxM+yQGttxmgpr3K=BNdXupHB6nJ-9B@mail.gmail.com>
	<AANLkTikGKhhnVN+7S3HZpKj6q3ufpK2jniO92KMHR6JU@mail.gmail.com>
Message-ID: <AANLkTi=nPjvDvN+EF08oey=PCKWH0=u2R0X813-GNsnh@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 3 marca 2011 04:40 u?ytkownik chris at martin.cc <chris@martin.cc> napisa?:
> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/main.c:2262 kzalloc 332 bytes
> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 60 bytes

2011/3/3 chris at martin.cc <chris@martin.cc>:
> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes

824 line is:
[struct b43_dmaring *]ring = kzalloc(sizeof(*ring), GFP_KERNEL);

Does anyone know why sometime we allocate 60b and sometimes 96b? It's
always the same struct... :| Could be STA vs. AP related but... how? I
don't see a way.

Chris: you didn't follow kcalloc-s with debugging messages. I can see
that from lack of debugging for dma.c:832:
ring->meta = kcalloc(ring->nr_slots, sizeof(struct b43_dmadesc_meta),
GFP_KERNEL);
The kcalloc-s in dma.c should not matter as they are only executed
together with your's kzalloc (dma.c:824).
The one in phy_lp.c has nice "free", should be safe, unless we hit
some infinity loop.

So it seems there is not any allocation bug in b43...

-- 
Rafa?
