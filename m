Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3EC9C35274
	for <b43-dev@archiver.kernel.org>; Mon, 18 Dec 2023 11:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZZjsiyzBVE7t1oBSRYIIQIh/DyGonfcavWEUMchvOWQ=; b=vZKcg4zoWCZKIm
	LAwKRHHwD6OW8aABo9L4NI1VJcAkIbmVuJpmV6sLTreH5DeftLNjLJkrY1YlNMktyJgG57pVkanUx
	s1YxYmGoY5iaPUfQd+71pST4iTv6Z4Mt9GB/jEXIusWbiqIipcFEEK0q8+4AaHc1IZLK2eyZQjVD6
	X9oz7JnKDXf1IhzPFARK60FtwptXTzXrVDeeqggFhLQ4BEwRB3NN2R2/renyfE3K7kcfBvJ2iCYu6
	x+5m6aTEkV4+Bluspgd5+JEOPEw2KnV8BJCbD1tdQIcfOlT1gD4ftptBCY2w9rko/xuLxx60GWMIl
	0UrKAZTwHRc+UyfPia9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCGB-00ASJC-0O;
	Mon, 18 Dec 2023 11:58:11 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCG8-00ASEF-1Q
	for b43-dev@lists.infradead.org;
	Mon, 18 Dec 2023 11:58:10 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a233354c74aso264788566b.1
        for <b43-dev@lists.infradead.org>; Mon, 18 Dec 2023 03:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702900684; x=1703505484; darn=lists.infradead.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9cob2BTKtRUG3gan91jHtrmfGZP6/xwNRARtcmcWME=;
        b=JF9AnFuAHk3G0rTAx8r6mPLXFlYN3CdVOpocgdz0yczeA01QOAUt5nhwS5gk5a/R65
         PStUc4QknpAaFfhebsUPnVflZjkpDl8PoXv77YP8BdcV1MDZMW050KdGTGN3AKri3mRW
         G+C4fbPQay4miJjEkKu6LzlWSbTPaNX9M+3A8KH3mydjPesVnuvuZrp03o+H9QRDoJsO
         fn0GvgbwmJvsGdRRrQcLDRfg4AhKRNvyOUlzYIA+WDDzpdoR7k8+Hcsh9o8NKM2Ho3bJ
         DrBr1L0hy6tmCWK9DJX7f7VHH3/Y/rFkVahtawGk06IziUvC5JUFZzNvj3Vkq1mn8YbI
         ugoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702900684; x=1703505484;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E9cob2BTKtRUG3gan91jHtrmfGZP6/xwNRARtcmcWME=;
        b=DDYiBrSLWHPu2pKSzSkInu+DM5etfhlPsGnMOFbpSfa0BuaKMWTOlbkQZ4GdefdKQa
         lgvEuoqTn24LnkYlj2MZCSRITmU5QZYQBdxk9/vjGceMIbB5K5Yey3mmLar3PqVM8YOa
         tpWFk/bnsF8rAmd2O6JPP+XMTplvaZj+LO5MEYSdtFT/yTGBLZzm6RvWYMNHr8ZaY9Pv
         dpcRZoit2Dr2oMyIKyFM/jHbuJcMgvQabNobob9v0rJd8FeWV8WRsi3225jwjNfB8K56
         fF1TccVIwTtkNzd9wdQO1lo4bAgTJ8aMZjU4HPElNFIUei72W+mhLGPfDQr4roDVNDR5
         DN1g==
X-Gm-Message-State: AOJu0Yw4+LISQRPcBrz8j6Bz46TapS/b0TLlD36urePfKmh4ZRUREFcZ
	+O35AaXI+ls38vanlRXi5ZU=
X-Google-Smtp-Source: AGHT+IE6G8N4QKH7XH8gb0knGfKzrKAZaAHW13YKA7QagA+WTN/R4TzQjfpWe8aJNqAEjUB2zmGK5A==
X-Received: by 2002:a17:906:fa87:b0:a23:3753:4d3 with SMTP id lt7-20020a170906fa8700b00a23375304d3mr2442355ejb.14.1702900684349;
        Mon, 18 Dec 2023 03:58:04 -0800 (PST)
Received: from felia.fritz.box ([2a02:810d:7e40:14b0:801c:2315:7dea:474f])
        by smtp.gmail.com with ESMTPSA id i14-20020a170906a28e00b00a2332116b3esm2406175ejz.152.2023.12.18.03.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 03:58:04 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Kalle Valo <kvalo@kernel.org>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Arend van Spriel <aspriel@gmail.com>,
	Franky Lin <franky.lin@broadcom.com>,
	Hante Meuleman <hante.meuleman@broadcom.com>,
	Michael Buesch <m@bues.ch>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	b43-dev@lists.infradead.org,
	brcm80211-dev-list.pdl@broadcom.com,
	SHA-cyfmac-dev-list@infineon.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] bcma,ssb: simplify dependency handling for bcma and ssb drivers
Date: Mon, 18 Dec 2023 12:58:02 +0100
Message-Id: <20231218115802.15859-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_035808_499433_61C8AB10 
X-CRM114-Status: GOOD (  16.26  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

The files, drivers/bcma/Kconfig and drivers/ssb/Kconfig, define two helper
config options BCMA_POSSIBLE and SSB_POSSIBLE. Both options are defined
identical:

config {BCMA_POSSIBLE,SSB_POSSIBLE}
	bool
	depends on HAS_IOMEM && HAS_DMA
	default y

While this kind of duplication might still be acceptable in order to have
both sections work independently of each other, it really gets strange when
looking how they are then used in expression where both of those configs
appear. E.g., config B43's dependency is:

  (BCMA_POSSIBLE || SSB_POSSIBLE) && MAC80211 && HAS_DMA

Note that BCMA_POSSIBLE and SSB_POSSIBLE identical and already have HAS_DMA
as condition, so that is then also another duplication.

Another example is the choice Supported bus types in B43, which already
depends on B43 and hence, we know that HAS_IOMEM && HAS_DMA holds, so all
stated dependencies in the choice are true in all cases.

Given this whole confusion around the use of these two symbols, just remove
them and replace them with the expression they intend to abbreviate.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 drivers/bcma/Kconfig                            | 7 +------
 drivers/net/ethernet/broadcom/Kconfig           | 4 ++--
 drivers/net/wireless/broadcom/b43/Kconfig       | 5 +----
 drivers/net/wireless/broadcom/b43legacy/Kconfig | 2 +-
 drivers/net/wireless/broadcom/brcm80211/Kconfig | 3 +--
 drivers/ssb/Kconfig                             | 7 +------
 6 files changed, 7 insertions(+), 21 deletions(-)

diff --git a/drivers/bcma/Kconfig b/drivers/bcma/Kconfig
index b9558ff20830..26bb2a28c7db 100644
--- a/drivers/bcma/Kconfig
+++ b/drivers/bcma/Kconfig
@@ -1,12 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
-config BCMA_POSSIBLE
-	bool
-	depends on HAS_IOMEM && HAS_DMA
-	default y
-
 menuconfig BCMA
 	tristate "Broadcom specific AMBA"
-	depends on BCMA_POSSIBLE
+	depends on HAS_IOMEM && HAS_DMA
 	help
 	  Bus driver for Broadcom specific Advanced Microcontroller Bus
 	  Architecture.
diff --git a/drivers/net/ethernet/broadcom/Kconfig b/drivers/net/ethernet/broadcom/Kconfig
index 75ca3ddda1f5..8abbdb88459c 100644
--- a/drivers/net/ethernet/broadcom/Kconfig
+++ b/drivers/net/ethernet/broadcom/Kconfig
@@ -6,7 +6,7 @@
 config NET_VENDOR_BROADCOM
 	bool "Broadcom devices"
 	default y
-	depends on (SSB_POSSIBLE && HAS_DMA) || PCI || BCM63XX || \
+	depends on (HAS_IOMEM && HAS_DMA) || PCI || BCM63XX || \
 		   SIBYTE_SB1xxx_SOC
 	help
 	  If you have a network (Ethernet) chipset belonging to this class,
@@ -21,7 +21,7 @@ if NET_VENDOR_BROADCOM
 
 config B44
 	tristate "Broadcom 440x/47xx ethernet support"
-	depends on SSB_POSSIBLE && HAS_DMA
+	depends on HAS_IOMEM && HAS_DMA
 	select SSB
 	select MII
 	select PHYLIB
diff --git a/drivers/net/wireless/broadcom/b43/Kconfig b/drivers/net/wireless/broadcom/b43/Kconfig
index 4559549b80fe..f53eaa8b11cd 100644
--- a/drivers/net/wireless/broadcom/b43/Kconfig
+++ b/drivers/net/wireless/broadcom/b43/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config B43
 	tristate "Broadcom 43xx wireless support (mac80211 stack)"
-	depends on (BCMA_POSSIBLE || SSB_POSSIBLE) && MAC80211 && HAS_DMA
+	depends on HAS_IOMEM && HAS_DMA && MAC80211
 	select BCMA if B43_BCMA
 	select SSB if B43_SSB
 	select FW_LOADER
@@ -42,18 +42,15 @@ choice
 
 config B43_BUSES_BCMA_AND_SSB
 	bool "BCMA and SSB"
-	depends on BCMA_POSSIBLE && SSB_POSSIBLE
 	select B43_BCMA
 	select B43_SSB
 
 config B43_BUSES_BCMA
 	bool "BCMA only"
-	depends on BCMA_POSSIBLE
 	select B43_BCMA
 
 config B43_BUSES_SSB
 	bool "SSB only"
-	depends on SSB_POSSIBLE
 	select B43_SSB
 
 endchoice
diff --git a/drivers/net/wireless/broadcom/b43legacy/Kconfig b/drivers/net/wireless/broadcom/b43legacy/Kconfig
index e4da34ec4f5b..ff11c63b5248 100644
--- a/drivers/net/wireless/broadcom/b43legacy/Kconfig
+++ b/drivers/net/wireless/broadcom/b43legacy/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config B43LEGACY
 	tristate "Broadcom 43xx-legacy wireless support (mac80211 stack)"
-	depends on SSB_POSSIBLE && MAC80211 && HAS_DMA
+	depends on HAS_IOMEM && HAS_DMA && MAC80211
 	select SSB
 	select FW_LOADER
 	help
diff --git a/drivers/net/wireless/broadcom/brcm80211/Kconfig b/drivers/net/wireless/broadcom/brcm80211/Kconfig
index 3a1a35b5672f..2e1db48201ff 100644
--- a/drivers/net/wireless/broadcom/brcm80211/Kconfig
+++ b/drivers/net/wireless/broadcom/brcm80211/Kconfig
@@ -4,8 +4,7 @@ config BRCMUTIL
 
 config BRCMSMAC
 	tristate "Broadcom IEEE802.11n PCIe SoftMAC WLAN driver"
-	depends on MAC80211
-	depends on BCMA_POSSIBLE
+	depends on HAS_IOMEM && HAS_DMA && MAC80211
 	select BCMA
 	select BRCMUTIL
 	select FW_LOADER
diff --git a/drivers/ssb/Kconfig b/drivers/ssb/Kconfig
index 1cf1a98952fa..0a6d5a60b5a8 100644
--- a/drivers/ssb/Kconfig
+++ b/drivers/ssb/Kconfig
@@ -1,12 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
-config SSB_POSSIBLE
-	bool
-	depends on HAS_IOMEM && HAS_DMA
-	default y
-
 menuconfig SSB
 	tristate "Sonics Silicon Backplane support"
-	depends on SSB_POSSIBLE
+	depends on HAS_IOMEM && HAS_DMA
 	help
 	  Support for the Sonics Silicon Backplane bus.
 	  You only need to enable this option, if you are
-- 
2.17.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
