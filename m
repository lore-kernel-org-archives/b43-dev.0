Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E5FCD98F7
	for <b43-dev@archiver.kernel.org>; Wed, 17 Jun 2026 21:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U95IvV7VApNTtv5aTI2kS1I+xmnAZx7tKka/pvvWjG0=; b=D1O9wY0Zd93jT4
	MtmrFlWC7UkL7xKXWiGPhvpNQF9BlOkZzhPGBFL0Oz+f3ngT6rS06zt2mD4/xorWqKgBhL1zP4BIV
	foab+Pfqldvev8252eG2w+Parv+UbgpfiLXJxTs0dqI0IVvR+MfSSUn7LE7Bp4AiXjRmv49g+v1sC
	iX4bgdQ2IRMzJEL74g1QfvycGj26si66t/X5zQ+hHjZiISBh8yLWoF2ZLKnDeJxyCFKPrRDvycz88
	WKI4wV/cvxHLwPQCA0LrVb3TxKeYLeUHL2cmGafioCq7CslEtGZWFIz2zjDBiwB6DQqhIBc0H2Qad
	9wTQbNHffUocbNhJve1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZy2Q-00000000MO8-29Vp;
	Wed, 17 Jun 2026 21:43:10 +0000
Received: from smtpcmd14162.aruba.it ([62.149.156.162])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZy2E-00000000MMU-3EFH
	for b43-dev@lists.infradead.org;
	Wed, 17 Jun 2026 21:43:01 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Zy28wJnjp4OeoZy28w468w; Wed, 17 Jun 2026 23:42:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1781732572; bh=f+XtEgkPLZSHekMUUvMVbtdPZm0NJYx2eEDhla3URaM=;
	h=From:Subject:Date:MIME-Version:Content-Type:To;
	b=k2VbzSknT7viOgP9pXtVmlAThTv7A0jk7DaiSiD90PeLGjM3tenS+5J+RIkv+ctMc
	 eF2mx804mgO5X3l9mPnxm4WQ56Ma2UukSEdg/b0z5X52GM7lgWauUeTfAOdx+lltdM
	 Mlqg9/i69Yl4YVSZ3ujYtSp/nCu0rM5/a2JKZ4ZzdMCCAkPv2448iEQAPrGk6Ey8Zf
	 ukL1pSQ6JElpUj04o2VoWhLOWZlRDKhRfczqXXs654xPKfataJzMX07Nae2X2EQrag
	 piG7OvPw8IJXS8gtEjXi5H0Qx5xX8L+c9AG6mruupRlQZ1Mqm7jTrMQ95zDWQW9NYG
	 7OIwdbBu2vFsg==
From: Alessio Ferri <alessio.ferri@mythread.it>
Subject: [PATCH 0/4] bcma/ssb/b43: BCM4352 AC-PHY wip
Date: Wed, 17 Jun 2026 23:42:07 +0200
Message-Id: <20260617-b43-add-4352-wip-v1-0-c81323496720@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MPQqAMAxA4atIZgO28f8q4lBN1CwqLahQvLvF8
 RveixDEqwToswheLg167Akmz2De3L4KKieDLWxd1KbBqSR0zFhSZfHWExeayRGbquMWUnZ6WfT
 5l8P4vh8yHx2+YgAAAA==
X-Change-ID: 20260617-b43-add-4352-wip-f3c3a3d159d8
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, 
 b43-dev@lists.infradead.org, Alessio Ferri <alessio.ferri@mythread.it>, 
 Alessio Ferri <alessio.ferri.3012@gmail.com>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfLXwwPZf+zvRvaxi04KLBEA+7NwsGZPt9cEHom9ia9PgTlNGuLphhMD0DYzzhzekT46IGqoJ5Ci+Kv0ZjxbyfCH3JefsPZwnhqNHbOgW39uO49hQBP5p
 Splrew9fv0Oh69c1jydST3GMK31ZUjC2UNWnoBedbHQHGbshruON6Pz7A298As4uFC4oG9gmHfKSkUFr2W+nN1X4HXptdwrPjekUYgEDcY6s8vUJt6eqj0Fv
 NkbAHhct2USse8BkK/cgGQoJ+B8SKA7b8l4bZrIvCqox+9UWYLSs2vcQlRgCxJ6rHt3v1JXYEPfKlyHmPkRDv/93Wu1CrnlNm0XJ5MFzVYv2fi8zEwrBkUPR
 w39iFSpaFaIwlk86rmDfMUFWpRSJQHuJ7f6yX/k1jmw6tW/Ke63EXNVeykJ/I3AUlt4Rk1n3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_144259_268537_B5983178 
X-CRM114-Status: GOOD (  10.29  )
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

This series introduce the initial support for BCM4352, an AC class
chip, this is just a gentle introduction before the bulk of edits, 
because in reality i already have AC support working up to RX signal 
and now debugging TX.
From the latest dmesg grepped from my router, this patch series allow
the user to reach to the "Bus registered" message plus the correct init
of the DMA that took me two weeks to discover.

[   18.280000] bcma-pci-bridge 0000:01:00.0: enabling device (0000 -> 0002)
[   18.280000] bcma-pci-bridge 0000:01:00.0: bus0: Found chip with id 0x4352, rev 0x03 and package 0x01
[   18.290000] bcma-pci-bridge 0000:01:00.0: bus0: Core 0 found: ChipCommon (manuf 0x4BF, id 0x800, rev 0x2B, class 0x0)
[   18.300000] bcma-pci-bridge 0000:01:00.0: bus0: Core 1 found: IEEE 802.11 (manuf 0x4BF, id 0x812, rev 0x2A, class 0x0)
[   18.320000] bcma-pci-bridge 0000:01:00.0: bus0: Core 2 found: ARM CR4 (manuf 0x4BF, id 0x83E, rev 0x02, class 0x0)
[   18.330000] bcma-pci-bridge 0000:01:00.0: bus0: Core 3 found: PCIe Gen2 (manuf 0x4BF, id 0x83C, rev 0x01, class 0x0)
[   18.340000] bcma-pci-bridge 0000:01:00.0: bus0: Core 4 found: USB 2.0 Device (manuf 0x4BF, id 0x81A, rev 0x11, class 0x0)
[   18.380000] bcma: bcma: SPROM rev 11 parsed: board=0x0668 rev=4947 ccode=0x0000 txchain=0x3 rxchain=0x3 antswitch=0 subband5gver=4
[   18.390000] bcma: bcma: SPROM r11 chain0 rxgains 2g={0,0,0} 5gl={3,6,1} 5gm={7,15,1} 5gh={7,15,1}
[   18.400000] bcma: bcma: SPROM r11 chain1 rxgains 2g={0,0,0} 5gl={3,6,1} 5gm={7,15,1} 5gh={7,15,1}
[   18.410000] bcma: bcma: SPROM r11 chain2 rxgains 2g={0,0,0} 5gl={3,6,1} 5gm={7,15,1} 5gh={7,15,1}
[   18.420000] bcma-pci-bridge 0000:01:00.0: bus0: Bus registered
[   19.340000] b43-phy0: Broadcom 4352 WLAN found (core revision 42)
[   19.340000] b43-phy0: Found PHY: Analog 12, Type 11 (AC), Revision 1
[   19.350000] b43-phy0: Found Radio: Manuf 0x17F, ID 0x2069, Revision 4, Version 0
[   44.250000] b43-phy0: DEBUG pre-PSM_RUN: MACCTL=0x00020504 IRQ_REASON=0x00000000 SHM[UCODEREV]=0x0000
[   44.260000] b43-phy0: DEBUG post-PSM_RUN: MACCTL=0x00020502 IRQ_REASON=0x00000000
[   44.260000] b43-phy0: Loading firmware version 784.2 (2012-08-15 21:43:22)
[   44.270000] b43-phy0: phy-ac: rxgain_init applied (2 cores, UNII-1 5gl, sprom rev 11)
[   44.280000] b43-phy0: phy-ac: rxgain core0: triso=6 elnagain=3 trelnabyp=1 (gainctx=0x14)
[   44.290000] b43-phy0: phy-ac: rxgain core1: triso=6 elnagain=3 trelnabyp=1 (gainctx=0x14)
[   44.500000] b43-phy0: DEBUG dma_setup RX DMA64: base=0x020c0000 alo=0x020c0000 ahi=0x80000000 addrext=0x0 translation=0x80000000 in_low=0 ctl=0x0000084d
[   44.720000] b43 bcma0:1 phy0-ap0: entered allmulticast mode
[   44.730000] b43 bcma0:1 phy0-ap0: entered promiscuous mode

The two patches generated with the help of claude are marked as such.
The other two are minimal and did not require assistance from claude.

Assisted-by: claude:claude-Opus-4.8
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
Alessio Ferri (4):
      bcma: host_pci: add BCM4352 device ID 0x43b3
      bcma: pmu: program max resource mask on BCM4352/BCM4360
      ssb: bcma: add SPROM revision 11 extraction
      b43: align DMA64 descriptor ring to 64K on AC cores

 drivers/bcma/driver_chipcommon_pmu.c    |   8 +++
 drivers/bcma/host_pci.c                 |   1 +
 drivers/bcma/sprom.c                    | 100 +++++++++++++++++++++++++++++++-
 drivers/net/wireless/broadcom/b43/dma.c |  20 +++++--
 include/linux/ssb/ssb.h                 |  31 ++++++++++
 include/linux/ssb/ssb_regs.h            |  44 ++++++++++++++
 6 files changed, 199 insertions(+), 5 deletions(-)
---
base-commit: e771677c937da5808f7b6c1f0e4a97ec1a84f8a8
change-id: 20260617-b43-add-4352-wip-f3c3a3d159d8

Best regards,
-- 
Alessio Ferri <alessio.ferri.3012@gmail.com>


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
