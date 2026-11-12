Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DCB606A336
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ciNn81L8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jGIlrlKe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IrcOzaI5SspTZgjyhcJk6cDvBLJ09IT8fL4q8rEI4wU=; b=ciNn81L8dNfMvMySMfdeA9XVtI
	07nBT/zQ9mGmBHgmTb1Kmf8dBFRXhoe9Fskb7p4kJB2CnsDOfWajhISnzKP3/yL3qKlIqvXrfI4sL
	DLCWEOxKn05MJ617tx6g2U9nRNahb5Wj7T2MGdWsokUoVPPQCabs04MLoGEIQqRNkvSfNBSedul1M
	0Tw59fM+xJmC7pfDsbO9jcm8Fm2XnC+89JoAFaLbwFevABfv/q7bSqP8JM8bRLEKUdaJ10i4bWyU6
	266HphcxA0sPwkMOjwdiUKEJxcBUUMFSV2pp+e2hkAqs0pPzdFHjA29zJKnufbVFtgWcE/pOPrB37
	pNn+lH4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2L-0000000AoMe-3Jw0;
	Thu, 12 Nov 2026 17:56:37 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2E-0000000AoJO-0dml
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:56:31 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-49a92144733so22102f8f.0
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506188; x=1795110988; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gKWAY7VVnpLDcrJZc6H5yDzttlq0pcYOErt/+PCFLEQ=;
        b=jGIlrlKe6iT/NEXrh9riBpdM71o38vFdsDkcqhtOL1Ic7JiPk0KCmvNzGZryAO0UT5
         f6XtDsuhukKa/dxZh6oWKyoNv0xHuose8fTAS1uEfMhK7258PfQ9N/J+5DfI4NFYm3ht
         MjVyVsyB8hSqdkubd3zdQz5ANCFlBXGTwRby2Udwmn0CsXd/rjS5PQA4c04EyJ6zq3xk
         qjzXmB/vlu+AHzJ2dx1IjKdjNA2tFTMsddzGkSi4VPzGUMqLZZLKEEgbWXMjrZoFRmdE
         KQ3TfLKFFyfASQGFyJafgpwsa3v5CMLYKtRnfzjgEQxEa62WAsbNTRDN5grUoFdwgmZJ
         JiGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506188; x=1795110988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gKWAY7VVnpLDcrJZc6H5yDzttlq0pcYOErt/+PCFLEQ=;
        b=Mk4M4wgpfnUMIvfefqNMRuWqmclM3a0eWKfXtDv8De6au8MqyLnm725jCLELsbtbWh
         QgMOzr/lU9AzkIBk/oa+v/HSMgLlvazqbNaa+dzehbXlenqDNhvpBkc/AiEagSMVySAK
         pNmHoRVAUKFmBMkzvdEkV/J0/rwb55xQUuIIpQLPfi7TKJpk2/E/E/2ABNexWWf37aKs
         caz8EV+3jIzutgTkDa5WJhcXkoyFL9fOomYmZJG5BhtWBwt2kI2Lhs3SY+H1OJe28/vg
         k+yXkljbzqx+vEAbc2SHlYRzfpVoUWSpVPcshSRtpsSeDRVxgrMr+B5mHhGgnxuRt8bh
         Hy4Q==
X-Forwarded-Encrypted: i=1; AL+hErFHv6mqAaryAV39k6/nukgl025Bhg09djP9qTKp7Lddo8ETSITPOXBuXC8lGLyS3ZT3FWvlQefF@lists.infradead.org
X-Gm-Message-State: APuU4Z8V/ilMOr0JbQ8QTEMBzNzYdZh7xmue2lyfmA2/hcaEr3Pp3i0P
	AytNvZEUTp1OD/dJcg6STvjrmpQgbIg2bYJtkJORo+gm2ysZNiULwT8W
X-Gm-Gg: AYBFou20QU/F6OVLqY91HBw/b13JrPjCp8rE58FKe6Q11EIajYwyVOSWMX9mtNNCYZT
	ZHFoPmkKCut1fRXJQaYUMYfvlfo7Mpc1vzvthLUHiMsEO0UvhpZTbQ3yVRr1T4cTSfikFa4Xb/N
	zZpoqmf1UMqfKcJY1VyFJ81pjRoj/5L/gjCpxLPZfGTLRQpwKVwPH8Zz7YLnOH1aaWjBXGPhlur
	DYWZuCasOjHyytZKnr8sTA48erWbve/TyDhV4ddgxH0X2uPh8Exuaczoe+wE/IA0NawuTk3qkU4
	TL+ugen1YgbXf8E4ZwmMFwnrlZ5+L8uDWL40CDN1on22gA5nsSXaeBF+inpF6GpVaTH/4dSp7lM
	b7csQ9WZwYCR0DV7uQqT9aQMA+FyKoYawBZd8zEsX4k/O9VYqX9UE7kRD29SI1IoHniknJ2OrQe
	ImUd5Kqc0GePILjfg/obGcwlt1zVq5l2RBnxuZvnwKpdGjbpcKQl0awGD8xdxV0xjyAxOLqD14l
	VaCbcd1w8Q7ZZI360NucXgLszuVoScPN5thN2/DtT0+R3dE//t1Kx7UyWjdzsBKxfR3I7JPDnh1
	gXifbscUXtdbWivKLhvvL20hwZQHkh6Cjw8V4LumVzatzQ9Kik6+LWZo28F849UBd0v1TSQCBSj
	xvrmjTVR5FQ+28TkaK5wgTg1hxNvX48hVcvVoP/OoQ4Bd9lmzplnR3P26B9TMJekdVW/cWlB1un
	DnfKo3CPAqp308bOhdTqh0+mBzKbdjtc+QDQbW6c4N8w==
X-Received: by 2002:a05:6000:490a:b0:48e:353b:9f28 with SMTP id ffacd0b85a97d-49c6dc01369mr339149f8f.1.1794506188068;
        Thu, 12 Nov 2026 09:56:28 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60f8d66esm438408f8f.57.2026.11.12.09.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:27 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 1/3] wifi: b43: set the DMA burst and prefetch bits of core revisions 40 and 42
Date: Thu, 12 Nov 2026 18:56:22 +0100
Message-ID: <20261112175624.40547-2-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261112175624.40547-1-gonsolo@gmail.com>
References: <20261112175624.40547-1-gonsolo@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095630_237585_B24D2ED8 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: jpeisach@ubuntu.com, julian.calaby@gmail.com, kvalo@kernel.org, linux-kernel@vger.kernel.org, rosenp@gmail.com, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The DMA engines of the core revisions 40 and 42 (BCM4352, BCM4360) need
the burst length and prefetch bits of the TX and RX control words that the
vendor driver sets (0x03780040 and 0x036c0000). Without them the engine
moves about 6 MB/s and every link tops out near 50 Mbit/s.

Add b43_is_ac_core() for these core revisions.
Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/b43.h | 6 ++++++
 drivers/net/wireless/broadcom/b43/dma.c | 4 ++++
 drivers/net/wireless/broadcom/b43/dma.h | 2 ++
 3 files changed, 12 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/b43.h b/drivers/net/wireless/broadcom/b43/b43.h
index e1e8083..80b299b 100644
--- a/drivers/net/wireless/broadcom/b43/b43.h
+++ b/drivers/net/wireless/broadcom/b43/b43.h
@@ -1001,6 +1001,12 @@ static inline enum nl80211_band b43_current_band(struct b43_wl *wl)
 	return wl->hw->conf.chandef.chan->band;
 }
 
+/* MAC core of the BCM4352 and BCM4360 (core revisions 40 and 42). */
+static inline bool b43_is_ac_core(struct b43_wldev *dev)
+{
+	return dev->dev->core_rev == 40 || dev->dev->core_rev == 42;
+}
+
 static inline int b43_bus_may_powerdown(struct b43_wldev *wldev)
 {
 	return wldev->dev->bus_may_powerdown(wldev->dev);
diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 5e1b30a..5f968b0 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -691,6 +691,8 @@ static int dmacontroller_setup(struct b43_dmaring *ring)
 			    & B43_DMA64_TXADDREXT_MASK;
 			if (!parity)
 				value |= B43_DMA64_TXPARITYDISABLE;
+			if (b43_is_ac_core(ring->dev))
+				value |= B43_DMA64_TXCTL_AC;
 			if (ring->dev->dma.ptr_is_addr) {
 				ring->ptr_base = lower_32_bits(ring->dmabase);
 				value |= b43_dma_read(ring, B43_DMA64_TXCTL) &
@@ -733,6 +735,8 @@ static int dmacontroller_setup(struct b43_dmaring *ring)
 			    & B43_DMA64_RXADDREXT_MASK;
 			if (!parity)
 				value |= B43_DMA64_RXPARITYDISABLE;
+			if (b43_is_ac_core(ring->dev))
+				value |= B43_DMA64_RXCTL_AC;
 			if (ring->dev->dma.ptr_is_addr) {
 				ring->ptr_base = lower_32_bits(ring->dmabase);
 				value |= b43_dma_read(ring, B43_DMA64_RXCTL) &
diff --git a/drivers/net/wireless/broadcom/b43/dma.h b/drivers/net/wireless/broadcom/b43/dma.h
index eddc882..14de4cb 100644
--- a/drivers/net/wireless/broadcom/b43/dma.h
+++ b/drivers/net/wireless/broadcom/b43/dma.h
@@ -91,6 +91,7 @@ struct b43_dmadesc32 {
 #define		B43_DMA64_TXADDREXT_MASK		0x00030000
 #define		B43_DMA64_TXADDREXT_SHIFT		16
 #define B43_DMA64_TXCTL_KEEP				0x03FC00C0
+#define B43_DMA64_TXCTL_AC				0x03780040
 #define B43_DMA64_TXINDEX				0x04
 #define B43_DMA64_TXRINGLO				0x08
 #define B43_DMA64_TXRINGHI				0x0C
@@ -120,6 +121,7 @@ struct b43_dmadesc32 {
 #define		B43_DMA64_RXADDREXT_MASK		0x00030000
 #define		B43_DMA64_RXADDREXT_SHIFT		16
 #define B43_DMA64_RXCTL_KEEP				0x03FC0000
+#define B43_DMA64_RXCTL_AC				0x036c0000
 #define B43_DMA64_RXINDEX				0x24
 #define B43_DMA64_RXRINGLO				0x28
 #define B43_DMA64_RXRINGHI				0x2C

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
