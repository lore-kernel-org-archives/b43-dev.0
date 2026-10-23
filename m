Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 991BD606A31B
	for <b43-dev@archiver.kernel.org>; Fri, 23 Oct 2026 19:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2G6WcgZr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=aGmj5Al1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=7dMn1nANWwLbVuY26Qfr0yVbMC8BXb0w7YyEMznhMjM=; b=2G6WcgZrqVzPZn0pQCNiOeVJS1
	lMIp9D77AagNkuNXTEgvKqluCDgqkFTxp4wr824yPjJgFpMI/QtKDMPqf3woa9H/a7p6owITU6sJ3
	d2mUFvnNWdC/x6QB/qeRTYpDxeoDOdQEcu2tuTiLOCWxs4FY9t1O0dlN+Ctfww9NIoPHnxOMIDKCt
	6kvHXJukTv6j2dhWMkixXt8ImFptoAWG1HMtu5epg0b7Ec0qkCPcgo1dXk0+uQf58zU8HpC87UOaD
	Oz7+B3zoHiXI2DZnnlH7Bx3HSYWY9zRprYcyMkzEutBD2f9szYE/C3u+zyxpeFsPns9a6GzO2Zdrh
	S+C4AyVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKKbT-0000000Gpt6-0wTu;
	Fri, 23 Oct 2026 19:06:59 +0000
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKKbR-0000000Gpsi-0eJM
	for b43-dev@lists.infradead.org;
	Fri, 23 Oct 2026 19:06:58 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-35f1f76ea84so1973742eec.1
        for <b43-dev@lists.infradead.org>; Fri, 23 Oct 2026 12:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792782416; x=1793387216; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2+b6Xp2Wz758MZizwri4WwdSM0RQI5RuQjaDSiYF8TY=;
        b=aGmj5Al1LvRGyZ24xPP8kxbIfiHcpcGk+QMEf6jnpdB9MhsdbFWDyhAi6KeiakklZJ
         wdKkm5Adw7ebBa4yxjtoA8TppXByh8TwigzrpyvaD3zPL1llHS2xPsXeVpUcj9CLvYrd
         gWmYDhfIq1Jd/Jm49pZvbirYr2Z2maJiyohs62Hh2WSo5YQiI+0R5UzdFIP1ttEpwyrx
         rfLqrMcY4Utk/JShLbs2DNHtHD1j9/hOpb9kui3EvAUL5zCxu4bfordJn6JPCI2lIz9S
         9KtQy5t+R1Teofh28szHEz+hSi3nB92qRkDSZX7ET3KaVre1aw+TCU9dxfq9/pIe0ljz
         4DSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792782416; x=1793387216;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2+b6Xp2Wz758MZizwri4WwdSM0RQI5RuQjaDSiYF8TY=;
        b=yMiCRJcSB2DI9RuWM6YXsk+73uCu/2p6jtdv5sCatsyCaTjkPfhyxorPATODdVYfka
         NmVkzEt/VirfmDGA9+758nmWhqnpj04gOBwc19XJwXcb64TIggcU9HdTDjoLJDwXC8cq
         hp+H6X9tMNoRJjP8FeLM25p2jC2Qa7yvERvT6gSCPJD7Ir04LS2Pg3q80Na4xsYUe3po
         QUlyO9zFXU9Hp3ibFewDU6n+I9BQvXYNtv36e1TY8F/BOg3cqO97toC2f3yMjOVSx6pE
         vkVBWP8dWe66GyVeOBi3uXLD0P2UJKyzpKDJt/UXNk2IuloB6hlUuJ3P5AiMXW4eoPLt
         ZPZw==
X-Forwarded-Encrypted: i=1; AKwUvByhU64P+Met6ySdDQDJJFKb9TXvxxpZyfbAuoV+VWSvnpPM9/9lmqDMcbv7q0a70IOleLFhYgsl@lists.infradead.org
X-Gm-Message-State: AFq9FYINvr8Yj/9eH+FoFaNZCiFyQJoAPFdE93FvthPT6OBvkNtxeKmI
	kRjQBF/hmSLi1tUZahyU+47SmpC6H+wUHJ0ugTylK6t4TXB4y6cl4F8M
X-Gm-Gg: AYBFou3KW4CChJ3wxNMDPrDoTLERajP5LxRUDq/giTwWiaOBODnrt9Cl6vWDTw6mTjT
	bnn6CqBvANUPFTkJ0jKjyaoKw8SWipRD5FILpi5tia0ys3Bq/T4UICZHZqeiJySfOmo9MF6sRNX
	CfxVEiQv0yTWq5f1yhWSjr+jfQopMEFQLbnzWPNAaNM37wIdafo9tTs6cjZRXdJuyT1pmVDuElc
	JMFdCnLVgOY9/LkEGmQ2HjfprliLdPHe8vQPlM7lT01M0h9p9y7EDK3ngW1xluuyb/3EBQKzKjA
	nmcsme3I9U1GpJy1yZMSFwiofQaVf1ItQGJD0dlzgK1gJ4LOCxOpC4pnDvmuD38kLcZkZndafS4
	f70oJ0K2KbgsRvHy/yOeTHzeXk4OXW/kLn366BQZBeku62F2/FNF2GLFSQaO1faHE2V25lL/aRP
	ybFlUdJucMw5HULlgBjagMZKLBTk1UEHqghoBzjApppnAerjcerSgHwLKV7/jITmt4o5PGuemB0
	lAWmv61yV7pRchQ8QqsIxL+ucSJE2xgy8w2Kgb19Z7tAIuvpTb4t1oE6D2tMcCA0/EX9KxKaKq1
	opoERisNIcfie/dN+5CMF4SMYBgx64L5Ek53V2Lre/7/KBZwGUhX0bBjxbYRmznWYpK+xYkZoad
	eHGpUER5LqQ8xV4F5DE9hEe0h+xzD
X-Received: by 2002:a05:7300:8812:b0:368:8d1d:2a81 with SMTP id 5a478bee46e88-369e861b306mr278846eec.24.1792782415889;
        Fri, 23 Oct 2026 12:06:55 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:37f::e34])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8ec50bcsm209607eec.23.2026.10.23.12.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 12:06:55 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: "John W. Linville" <linville@tuxdriver.com>,
	Michael Buesch <mb@bu3sch.de>,
	b43-dev@lists.infradead.org (open list:B43 WIRELESS DRIVER),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH wireless] wifi: b43: map the RX buffers DMA_BIDIRECTIONAL
Date: Fri, 23 Oct 2026 12:06:53 -0700
Message-ID: <20261023190653.70741-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_120657_363413_052A7DD4 
X-CRM114-Status: GOOD (  12.71  )
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

b43 poisons each RX buffer before it hands it to the device, and drops
a buffer that still carries the poison, as the device sometimes skips
one. The RX buffers are mapped and synced DMA_FROM_DEVICE. On a
non-coherent CPU like the BCM4716 or the BCM4708, the map and the sync
for the device then only invalidate the cache, so the poison written
just before never reaches memory. A skipped buffer is read as whatever
the memory held before, for a recycled buffer the data of its previous
use: garbage frames, or a length that sends dma_rx() into its path for
frames spanning several buffers.

Map, sync and unmap the RX buffers DMA_BIDIRECTIONAL, so that the
poison is written back before the device gets the buffer.

Reported on a Netgear R6400 (BCM4708, BCM4331).

Fixes: cf68636a9773 ("b43: Refresh RX poison on buffer recycling")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/dma.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 05da6987a845..c8585c6dff37 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -353,8 +353,14 @@ static inline
 		dmaaddr = dma_map_single(ring->dev->dev->dma_dev,
 					 buf, len, DMA_TO_DEVICE);
 	} else {
+		/*
+		 * Not DMA_FROM_DEVICE: on a non-coherent CPU, the map and
+		 * the sync for the device would then only invalidate the
+		 * cache, and the poison of b43_poison_rx_buffer() would
+		 * never reach memory.
+		 */
 		dmaaddr = dma_map_single(ring->dev->dev->dma_dev,
-					 buf, len, DMA_FROM_DEVICE);
+					 buf, len, DMA_BIDIRECTIONAL);
 	}
 
 	return dmaaddr;
@@ -369,7 +375,7 @@ static inline
 				 addr, len, DMA_TO_DEVICE);
 	} else {
 		dma_unmap_single(ring->dev->dev->dma_dev,
-				 addr, len, DMA_FROM_DEVICE);
+				 addr, len, DMA_BIDIRECTIONAL);
 	}
 }
 
@@ -379,7 +385,7 @@ static inline
 {
 	B43_WARN_ON(ring->tx);
 	dma_sync_single_for_cpu(ring->dev->dev->dma_dev,
-				    addr, len, DMA_FROM_DEVICE);
+				    addr, len, DMA_BIDIRECTIONAL);
 }
 
 static inline
@@ -388,7 +394,7 @@ static inline
 {
 	B43_WARN_ON(ring->tx);
 	dma_sync_single_for_device(ring->dev->dev->dma_dev,
-				   addr, len, DMA_FROM_DEVICE);
+				   addr, len, DMA_BIDIRECTIONAL);
 }
 
 static inline
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
