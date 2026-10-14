Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20D32CC6B1A
	for <b43-dev@archiver.kernel.org>; Wed, 14 Oct 2026 14:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuZOuRUsq17kOwxf1z0RI6+Wng26fhEHc35pzxmF3JA=; b=VqB1qYR2ZcSkLT
	lk+EHA1w4sHX08h/xGHUdvnfDFQTr5K6VGTd05APaZL+qEkIzl8AMqSCs9THSYGWgGI1Eef/44j2z
	6PBWbTqHGQHkKSrTdLJCNae3NYsAPrmrbY9HeVOB7JRMgFv+E0dkg532RvzOQISUci5Ncpnn6/11t
	A/v2emLEHej2VNif876TsvB7zAbr4IM1/lCQYY9TvaNeiTSALNNJp6NaE7s0OPaJ6gDGjl9+DWpW9
	1UPgSB0sjDQdoN7gsNmBnryo7m92lbmZR58rbZibWKKHn09lBvEdyytoamUOtncHi245Wz/rS7oLN
	PZnbAZQZFIjFNeCDei+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH025-0000000Fjio-22JP;
	Wed, 14 Oct 2026 14:32:41 +0000
Received: from mail-wm1-f42.google.com ([209.85.128.42])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH021-0000000FjhB-4A6U
	for b43-dev@lists.infradead.org;
	Wed, 14 Oct 2026 14:32:40 +0000
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4a16aaf2067so13579695e9.0
        for <b43-dev@lists.infradead.org>; Wed, 14 Oct 2026 07:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791988356; x=1792593156; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=adX1t+A8OPd80tdnZU9sRvJpsh4FeFmYoguppUDGFio=;
        b=ltB6td6jno+41x+XH+ULgqMvc8np3nwHxSsf/zX2R+nOjnBHtFmE6ZavkCsyVtI+ZC
         176OmqqdQQheaoDSanvPxKVzEpg9tCIUFnn7+dNyrTwQ+iiLM5KM4ccKvLSJhqBXKOuR
         Ciwyhl9eYWGH1/Onn/BfBlW+D6/6smXcZvnCL6LrtJ2bjXiKexwgNeyIDPdUaq29NfFi
         hv3rXJWR8eJCkwI03iyivoQlRMQifiubNnoZXM392OcIaZgLNqLP45SqgF32nlPNzvN+
         xifkUhl1ZJhfryKJsbwOzeeOlCP7fTm93kVqvAQCPOo4a0rW8fBgNqfgQyz6N3CLRe4e
         xk0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791988356; x=1792593156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=adX1t+A8OPd80tdnZU9sRvJpsh4FeFmYoguppUDGFio=;
        b=AHzqLSxYZm1/Vf/J4ZdZXdetc6ZxA0Ig9MCHVE0q+nSAMlbwKCHfLyascMONw/34nw
         Mmf3cu/UYYpG5cgmBUibwoTIsCFKlLKQ4YZ5KCPJ/wLeyVYOKH4Yhmd5p20YVk2IUXxK
         VC5V7Gyok0EJS6PfE78vdu9007VxoXMCzzgKeJm8fUQRjiglZgHoHZAvDD5Lk1AmUJ2i
         0hX4FBM9dfgOGXN6BY3v4JrQOtODa1YE3CLbWbAkFlRBFvrJ+lq2hT2x2ns04GRFD1Xy
         NZ81b8K8ZOIscxCG3+uRqnFpkzzDpRjpCob0odF61YWRHyI1r7MVNlQ0sn4m+oKyBU2v
         /L8A==
X-Forwarded-Encrypted: i=1; AKwUvBzZRkn/JMZNzQWmiFI2eGooCNpddcPZIaMjHZgFkG+nZgXPWvYjLwj2xLvRCvLPQ1sD3IHZTBZU@lists.infradead.org
X-Gm-Message-State: AFq9FYLs4H0Dv85uhNBXhpvhkKJ2V18DvclnFZTbmVIudsg3vUWafZc0
	I2Pl99SRhWm3DzXY8ct8hmF32gnqoa/nmH72uPUKCG+I384xvonAZ0QY
X-Gm-Gg: AYBFou0DTfz6eGB3mRaph827ZKo6yJ0zdbLozOeYWkvNa2n1fuiuAHVVWRIW7DL9L+n
	XRgBg0uKTFLmHF+qdDUVeqzb3NCVzPYU+eVU5OZJihlZ4OBDtf30T3kC1hk89oFto9Fnl6NUuWS
	0hUFfNqZJfdIYWmaqzfOhsU3FjVKhY1ah/vds3elQT8BxwkuZhCzFaI2OHUgk/CSazG6mpDOJa5
	mNHPd2hRliiDLWg7kZmUNdAfidZIiXXxh7pdDJS64zfWRB5VkM2J7lPyLaj3hQu+h3+goPSR4O5
	p2yE91MlBGEHuOJxSKDjTTJpEeyWx0pt3VgqiU7u5TgTnOASZ5UUtIKta8KYRccnMIMwYqBDQOZ
	WSTJo+uGk379fh54LszoBcMelWjkT1vzqaUwMMEhtb2DvqcZiXpq9CXDhf+Pqa6rbtexNY9MJsA
	RYhONIpJf+59lpgARPsjXXohooefxX7KM5EB3GbCJs94yREVVXAcsB3MYNg7Re2yWOdrqHQtmcM
	iYq3wIZR8C3f8A6IDkOb4FAzXsNEmi8yRr0tPevQBpxSdoj3qbQLdzQkMB7g72WnGpljCf88Zjn
	scXx7l/Zvrh5zKpskBja4wZ6HdyBfhSu142NOWDthEm+5HeflU1fOGWLl48nFd4P
X-Received: by 2002:a05:600c:a01:b0:49f:ce72:e931 with SMTP id 5b1f17b1804b1-4a18e4fe3e1mr336129885e9.35.1791988355730;
        Wed, 14 Oct 2026 07:32:35 -0700 (PDT)
Received: from zitrone ([2a02:810d:a1:6000:62d3:e68c:3175:a538])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bd068126sm3411345e9.11.2026.10.14.07.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 07:32:35 -0700 (PDT)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless-next 2/2] wifi: b43: handle 64-bit DMA engines whose index registers hold bus addresses
Date: Wed, 14 Oct 2026 16:32:25 +0200
Message-ID: <20261014143225.82149-3-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261014143225.82149-1-gonsolo@gmail.com>
References: <20261014143225.82149-1-gonsolo@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_073238_083839_6ADCE668 
X-CRM114-Status: GOOD (  18.66  )
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
Cc: julian.calaby@gmail.com, kvalo@kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Newer 64-bit DMA engines (found on the core revisions of the BCM4352 and
BCM4360) accept ring addresses with low bits set and then use bus
addresses, not offsets into the ring, in the index and status registers.
They are detected as brcmsmac does it in _dma_descriptor_align(): write
0xff0 to TXRINGLO and see whether it sticks.

On such an engine keep the ring address in the new ring->ptr_base, add it
when writing TXINDEX and RXINDEX and subtract it when reading RXSTATUS.
The ring address registers have to be written before the control word
enables the engine, and the hardware defaults of burst length,
outstanding reads and prefetch control (the *CTL_KEEP masks) have to be
preserved.

Engines that keep offsets behave as before.

Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/b43.h |  1 +
 drivers/net/wireless/broadcom/b43/dma.c | 52 +++++++++++++++++++------
 drivers/net/wireless/broadcom/b43/dma.h |  3 ++
 3 files changed, 45 insertions(+), 11 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/b43.h b/drivers/net/wireless/broadcom/b43/b43.h
index c0d8fc0..e1e8083 100644
--- a/drivers/net/wireless/broadcom/b43/b43.h
+++ b/drivers/net/wireless/broadcom/b43/b43.h
@@ -668,6 +668,7 @@ struct b43_dma {
 	u32 translation; /* Routing bits */
 	bool translation_in_low; /* Should translation bit go into low addr? */
 	bool parity; /* Check for parity */
+	bool ptr_is_addr;
 };
 
 struct b43_pio_txqueue;
diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 05da698..20d910a 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -212,7 +212,7 @@ static void op64_fill_descriptor(struct b43_dmaring *ring,
 
 static void op64_poke_tx(struct b43_dmaring *ring, int slot)
 {
-	b43_dma_write(ring, B43_DMA64_TXINDEX,
+	b43_dma_write(ring, B43_DMA64_TXINDEX, ring->ptr_base +
 		      (u32) (slot * sizeof(struct b43_dmadesc64)));
 }
 
@@ -233,14 +233,15 @@ static int op64_get_current_rxslot(struct b43_dmaring *ring)
 	u32 val;
 
 	val = b43_dma_read(ring, B43_DMA64_RXSTATUS);
-	val &= B43_DMA64_RXSTATDPTR;
+	val = ((val & B43_DMA64_RXSTATDPTR) - ring->ptr_base) &
+	      B43_DMA64_RXSTATDPTR;
 
 	return (val / sizeof(struct b43_dmadesc64));
 }
 
 static void op64_set_current_rxslot(struct b43_dmaring *ring, int slot)
 {
-	b43_dma_write(ring, B43_DMA64_RXINDEX,
+	b43_dma_write(ring, B43_DMA64_RXINDEX, ring->ptr_base +
 		      (u32) (slot * sizeof(struct b43_dmadesc64)));
 }
 
@@ -690,9 +691,19 @@ static int dmacontroller_setup(struct b43_dmaring *ring)
 			    & B43_DMA64_TXADDREXT_MASK;
 			if (!parity)
 				value |= B43_DMA64_TXPARITYDISABLE;
-			b43_dma_write(ring, B43_DMA64_TXCTL, value);
-			b43_dma_write(ring, B43_DMA64_TXRINGLO, addrlo);
-			b43_dma_write(ring, B43_DMA64_TXRINGHI, addrhi);
+			if (ring->dev->dma.ptr_is_addr) {
+				ring->ptr_base = lower_32_bits(ring->dmabase);
+				value |= b43_dma_read(ring, B43_DMA64_TXCTL) &
+					 B43_DMA64_TXCTL_KEEP;
+				b43_dma_write(ring, B43_DMA64_TXRINGLO, addrlo);
+				b43_dma_write(ring, B43_DMA64_TXRINGHI, addrhi);
+				b43_dma_write(ring, B43_DMA64_TXCTL, value);
+			} else {
+				ring->ptr_base = 0;
+				b43_dma_write(ring, B43_DMA64_TXCTL, value);
+				b43_dma_write(ring, B43_DMA64_TXRINGLO, addrlo);
+				b43_dma_write(ring, B43_DMA64_TXRINGHI, addrhi);
+			}
 		} else {
 			u32 ringbase = (u32) (ring->dmabase);
 			addrext = b43_dma_address(&ring->dev->dma, ringbase, B43_DMA_ADDR_EXT);
@@ -722,11 +733,21 @@ static int dmacontroller_setup(struct b43_dmaring *ring)
 			    & B43_DMA64_RXADDREXT_MASK;
 			if (!parity)
 				value |= B43_DMA64_RXPARITYDISABLE;
-			b43_dma_write(ring, B43_DMA64_RXCTL, value);
-			b43_dma_write(ring, B43_DMA64_RXRINGLO, addrlo);
-			b43_dma_write(ring, B43_DMA64_RXRINGHI, addrhi);
-			b43_dma_write(ring, B43_DMA64_RXINDEX, ring->nr_slots *
-				      sizeof(struct b43_dmadesc64));
+			if (ring->dev->dma.ptr_is_addr) {
+				ring->ptr_base = lower_32_bits(ring->dmabase);
+				value |= b43_dma_read(ring, B43_DMA64_RXCTL) &
+					 B43_DMA64_RXCTL_KEEP;
+				b43_dma_write(ring, B43_DMA64_RXRINGLO, addrlo);
+				b43_dma_write(ring, B43_DMA64_RXRINGHI, addrhi);
+				b43_dma_write(ring, B43_DMA64_RXCTL, value);
+			} else {
+				ring->ptr_base = 0;
+				b43_dma_write(ring, B43_DMA64_RXCTL, value);
+				b43_dma_write(ring, B43_DMA64_RXRINGLO, addrlo);
+				b43_dma_write(ring, B43_DMA64_RXRINGHI, addrhi);
+			}
+			b43_dma_write(ring, B43_DMA64_RXINDEX, ring->ptr_base +
+				      ring->nr_slots * sizeof(struct b43_dmadesc64));
 		} else {
 			u32 ringbase = (u32) (ring->dmabase);
 			addrext = b43_dma_address(&ring->dev->dma, ringbase, B43_DMA_ADDR_EXT);
@@ -1080,6 +1101,15 @@ int b43_dma_init(struct b43_wldev *dev)
 		dma->parity = false;
 #endif
 
+	dma->ptr_is_addr = false;
+	if (type == B43_DMA_64BIT) {
+		u16 ringlo = b43_dmacontroller_base(type, 0) + B43_DMA64_TXRINGLO;
+
+		b43_write32(dev, ringlo, 0xff0);
+		dma->ptr_is_addr = b43_read32(dev, ringlo) != 0;
+		b43_write32(dev, ringlo, 0);
+	}
+
 	err = -ENOMEM;
 	/* setup TX DMA channels. */
 	dma->tx_ring_AC_BK = b43_setup_dmaring(dev, 0, 1, type);
diff --git a/drivers/net/wireless/broadcom/b43/dma.h b/drivers/net/wireless/broadcom/b43/dma.h
index f9f65bb..eddc882 100644
--- a/drivers/net/wireless/broadcom/b43/dma.h
+++ b/drivers/net/wireless/broadcom/b43/dma.h
@@ -90,6 +90,7 @@ struct b43_dmadesc32 {
 #define		B43_DMA64_TXPARITYDISABLE		0x00000800
 #define		B43_DMA64_TXADDREXT_MASK		0x00030000
 #define		B43_DMA64_TXADDREXT_SHIFT		16
+#define B43_DMA64_TXCTL_KEEP				0x03FC00C0
 #define B43_DMA64_TXINDEX				0x04
 #define B43_DMA64_TXRINGLO				0x08
 #define B43_DMA64_TXRINGHI				0x0C
@@ -118,6 +119,7 @@ struct b43_dmadesc32 {
 #define		B43_DMA64_RXPARITYDISABLE		0x00000800
 #define		B43_DMA64_RXADDREXT_MASK		0x00030000
 #define		B43_DMA64_RXADDREXT_SHIFT		16
+#define B43_DMA64_RXCTL_KEEP				0x03FC0000
 #define B43_DMA64_RXINDEX				0x24
 #define B43_DMA64_RXRINGLO				0x28
 #define B43_DMA64_RXRINGHI				0x2C
@@ -235,6 +237,7 @@ struct b43_dmaring {
 	u8 *txhdr_cache;
 	/* (Unadjusted) DMA base bus-address of the ring memory. */
 	dma_addr_t dmabase;
+	u32 ptr_base;
 	/* Number of descriptor slots in the ring. */
 	int nr_slots;
 	/* Number of used descriptor slots. */

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
