Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72291F433CE
	for <b43-dev@archiver.kernel.org>; Wed, 15 Apr 2026 22:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqf//Xs9ka8RsHaiLL97r/pGHfoyafbjMFmG3rsochg=; b=uci+a6PGG6OAQ5
	VGAWqvv4aTtkdaYKHCENESRGn5bhPZMXt0DZurweJVzJD2LwUpE/9xAIOoBIaO6iZE8V4F3X+xBS1
	7MW0xzj8vXIqJDHqK8Vfwqg5kjdK/2+BlbFgF8eAHSwnENgbGgXbSLNWsOFPGFoqLjipaAVloKZjO
	a4ViNIV+Lswmht50BMaoxRFb8aAw00Kspt6jT47oRT4FNIit9TD9WAfdRFzcVkrDXkCl8/sCyQhsX
	8Lwdj0+Giih9Cd4jLob4e/y8UjTWXshPpUIWyq0ci6wEBq45+6IeYG/MFFuPrnHyQkMNNilsKDp5x
	my6tk4EqFFkSE12PW2pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD8et-00000001gr5-1pdv;
	Wed, 15 Apr 2026 22:24:31 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD8er-00000001gq3-2fPD
	for b43-dev@lists.infradead.org;
	Wed, 15 Apr 2026 22:24:30 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-488b0e1b870so112201795e9.2
        for <b43-dev@lists.infradead.org>; Wed, 15 Apr 2026 15:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776291868; x=1776896668; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UvqfCfAgGuJWO3zcP6mrlM40Xh9+MbBRmx0d87Lp0E=;
        b=j3u/7VURHILvE1Z9GMADij19ukZ61LB7CofVGhrGOIqCnIqhURfR8ny7ju5SjxdKKR
         t9ms42VfIJ01YXE2LlFRLf/scoB7U4WOPVIBCazUHAXCts58669XJqjXyZxn+0LXYqZu
         ttG0DnZFpQvwN9TwYGZwqLNELTZr6Uz5i3Bm0Vwbv1qEscVFKbMYncm5o5eYrymB99q9
         beMiZh3Q86I5vGrrvnGzUXFusDMeWR2KBA5mXZS0LM5wu6E/QEHYhfaPM8FOei2J+mLn
         qvP6+FDp6gR2ZWH7qP8aSDTkgNR7kyE9y7hpETzixngwJx7ffbJrm+WlAN6fxDQZjM4d
         ZWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776291868; x=1776896668;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3UvqfCfAgGuJWO3zcP6mrlM40Xh9+MbBRmx0d87Lp0E=;
        b=STsYs5v7fRCOl4F7WUJbAPgIl6uqvhZ0dU7O8pOwL1J6KcF+UXaVSUV+xYZBp3Ztub
         50ef3QYZH6JbRAA8PSqWlZgYZ+7QnSNPnD+pxlD5V47pcdV2WCC/UHgUtzNTwQDWlKMC
         g7u65NwBc+AtF0rQEF4jsZO1bpvGnq5wqNDqao4hPDSbvDoiyuVLd7+JehTz1xnCNyjU
         lx0E2qB1yPVLqL6yRpgB2iqDgMN4kW8uDEhiFtcN7abQPfr8/H8dSmr6g5n8cB/DRU71
         WOsoAuRGz8ilEsNNLD04FfuRxeYC/u/6vRouxhXCZfu+ekxg9C4HyARMrZbZFyNqK6fD
         QaEA==
X-Forwarded-Encrypted: i=1; AFNElJ8omDpMvlwwhzV7xujw4GJvt6EBh7cPdh5pj5R8WGz7ivwWddt19A+MF+g2DG/wM6tXuS4+lfSJ@lists.infradead.org
X-Gm-Message-State: AOJu0YwKFE2lGtt95ocndY80JAeqyjRhZEblJsFXa0G/aQmguYVhYk82
	/O/8rxafJsZwg964xlPr/JZqovIIHgEKWxzebUd5GO874IhZXus1xEY=
X-Gm-Gg: AeBDiesPc1jHmqDOJI0O+vxlAjFJdT5xV/0oEhfN03pPE7vD3XamWcWakOPpM8wNlQT
	36lXczeEQ+LcHgHDwAs2GetwwbB6e6/iRMhgVi8xt98kn9Qt6+nCVrrX54j15pS/8ADCacYkLd3
	ww2tpYteFrWlNTWIsi+6THgkXy+W2lCbw4wkcCkhyftbmT57T4GeLODexcWaRbHWYD36E7GrGu8
	LhX3V+XYRZlKzQhsSSqVmm6o+H2OxTrdayUsNJAOTjp1iaX+s/fCA8qQkMhiXIOyGvDs4g3AH9E
	X30cyomnbv2i8WHt6SodUd87mQxanlbv6Z2O8/hcObysopSq+gMwE5QcmZlFMb0hys8QONYl2gO
	A00KOhbe1Mzh47363re21fnqyuEC9i4yCZC9waVMcAwlh2LsuiQUNBQ+kkRUM4LBO8yiOEYa7pd
	6Y8Wg=
X-Received: by 2002:a05:600c:4504:b0:488:9db9:5235 with SMTP id 5b1f17b1804b1-488d6867c23mr319790915e9.22.1776291867682;
        Wed, 15 Apr 2026 15:24:27 -0700 (PDT)
Received: from debian.. ([2001:41d0:303:db6b::])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488f5813954sm1896615e9.3.2026.04.15.15.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 15:24:27 -0700 (PDT)
From: Tristan Madani <tristmd@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] wifi: b43: fix infinite loop from invalid hardware DMA RX slot
Date: Wed, 15 Apr 2026 22:24:24 +0000
Message-ID: <20260415222425.1544638-2-tristmd@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260415222425.1544638-1-tristmd@gmail.com>
References: <20260415222425.1544638-1-tristmd@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_152429_699989_B99A9EE3 
X-CRM114-Status: GOOD (  13.40  )
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

From: Tristan Madani <tristan@talencesecurity.com>

b43_dma_rx() reads current_slot from hardware via get_current_rxslot().
If the value is >= ring->nr_slots, the B43_WARN_ON only warns but
continues. The for loop then never terminates because next_slot() wraps
modulo nr_slots and can never reach the out-of-range current_slot.

Replace the B43_WARN_ON with an explicit bounds check that returns
early when the hardware reports an invalid slot index.

Fixes: e4d6b7951812 ("[B43]: add mac80211-based driver for modern BCM43xx devices")
Signed-off-by: Tristan Madani <tristan@talencesecurity.com>
---
drivers/net/wireless/broadcom/b43/dma.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index XXXXXXX..XXXXXXX 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -1693,7 +1693,10 @@ void b43_dma_rx(struct b43_dmaring *ring)
 	B43_WARN_ON(ring->tx);
 	current_slot = ops->get_current_rxslot(ring);
-	B43_WARN_ON(!(current_slot >= 0 && current_slot < ring->nr_slots));
+	if (!(current_slot >= 0 && current_slot < ring->nr_slots)) {
+		B43_WARN_ON(1);
+		return;
+	}

 	slot = ring->current_slot;
 	for (; slot != current_slot; slot = next_slot(ring, slot)) {
--
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
