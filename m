Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 154A5F43692
	for <b43-dev@archiver.kernel.org>; Fri, 17 Apr 2026 11:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGZIywr7H4UP6QMK7XtYuAMywOaa78OQb+TYb95flyk=; b=RbbdDR6EqG4Gmr
	wosydRCHbxkbdsCTij0C9eDFX/S2noXgSvCkCcFvtj2/gOfJz+mnEor4mFgDdBZN9dxb0vneUwApy
	yn24TDVivB0j4opgQrjzK1h9RJ0xlUVo1mee4RSd/t0j8oczT600nJFH4WmP8ZRnJOdnI9JXlVhUN
	O24+wSU0JQ3OU/j2R5IjdU3GkYCBkpzH2kEl+72dU6nSZ2Xi1PyJS9y5N9cohx7dyyTwEogNAFbU4
	QdvPL5zJ0rgcnAMTlYJtuYz9f9Yt3GsBAI4dnU5ryRuV8aqi/8FUl4c832aX6DZN9xyaInHq6guVM
	3VxRExQTe7w2tx086uNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDh72-00000003xZi-3rBB;
	Fri, 17 Apr 2026 11:11:52 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDh6z-00000003xYA-1fY5
	for b43-dev@lists.infradead.org;
	Fri, 17 Apr 2026 11:11:51 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-488a8ca4aadso6818305e9.3
        for <b43-dev@lists.infradead.org>; Fri, 17 Apr 2026 04:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776424307; x=1777029107; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OZN3gfZee7R57N4dlGIBXrBPV0sAI+/BLIAVKZCa0Ck=;
        b=IYb0kAbO048kZf+HgutG+6dlGuT+UZvidatNhG0up9XYv5dkD8OTIhwOeRCwOeTxBO
         vtWvptKhC6zb7R0GvUYs/W6rf4f/c3olT63qfY77wQmuGfxKEB0CIWRvoQhjupkKMexa
         507Oy/hA6Ro5uGBhOdItv0rVjL/cONrMf6glfme+mjv33ee+WOvWcu3Zbq3Zb8hPjjwI
         GK7FSTXpWbo9vAqSzoUOHqWJFJ0hedmPhtgNFN3LFITsHjLYFIet9ke4xG17Gts+d8zJ
         JVHFvlcyOcYqQ0z20KDSJZpeCvcLFEjnh/ubo6Fo8k6glv4a3gPTs1t6+gDulyVZw85z
         0S9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776424307; x=1777029107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OZN3gfZee7R57N4dlGIBXrBPV0sAI+/BLIAVKZCa0Ck=;
        b=kIKMZtVhRI67RTnrhpaAexSvg9fO9SsBOlkj3DokkZ91ww+6crvNyhgBlh1jIEwI1t
         rgf3rH4mGyj1ENK9zruHUzkMB4jgA0UcortZPDhd9Mxwb+BgoH0iswx77f6LB9o1hvVX
         19gLlbJnAd6MyBRNoGvtXtUarKifExW75v4+Rjo+WyZTkm2Wg+C1oA7XJamZYlzGBisW
         POIG7vrje3X2RqVhDoutZJxeqk/gw8W5mKC0dRShs7wnFid6ovKblERe2o01gnavIdah
         0J5aZ65lKQ7bwpTN081+OsykFQGnVE/6WCVNSrLaSgWpf92v4+W8dS0mUnOeEmouIe1w
         PEqw==
X-Forwarded-Encrypted: i=1; AFNElJ8/ECz+D4jFkUCEgREq7/ziIiGULY+g1m2tm7XQ7gtdcq8G8o5RNwLBZixjfep7vm2kKeg0+cZ8@lists.infradead.org
X-Gm-Message-State: AOJu0YyHkHPaMaEOitU6mLydXR5MHyls7Hf3kK7poTQqaNM6/tnI8iEr
	nhZlxecBmKLSdeuWhaW4uGMV3vKBTk7815ApL5XxD6/cMgxqHzFdyGc=
X-Gm-Gg: AeBDievmJlS/XwywWkLobvdYZHCxX94+8VLRENF1+0Ek8dg+evWduQyRrH00AB8ninv
	TP/orCC0JcCT0ix7NIZ4Ghrd9OoY6JFdRIk9q/4pDyXkRBOXEZ0URf/mFYIzYzNbVMWQC7MbK/x
	m2Tfk+D9T0CDuJGKq8Nl7YiKQbdehfXfLkwFk2h0MbcbUWdEkr5A9H60d1Ek779dnipVOW4U/92
	T1SLnqtmFaOk/gPy+1WBehw1+MjrrQO2Xgpd1svzTjPJuaBQ5Vy4YjQG6t+EnuwLMDiJ7+N5Plm
	GuyGt6L3+90thdqWy6hAD0wORTTkeHVlBeYr+s7FpUfIBXN9AsbvWTpK833eoPnxzuMYvX/Edg1
	4rfQ9bJLSIIstzn2S9DnQlVd37NaSNXKYvqhjz282gD8s45ktHPWy/i0inENofZ5/1Yf6Y8svMR
	r2yc4=
X-Received: by 2002:a05:600d:8408:b0:488:be58:bb5b with SMTP id 5b1f17b1804b1-488fb773f0cmr25674465e9.24.1776424307402;
        Fri, 17 Apr 2026 04:11:47 -0700 (PDT)
Received: from debian.. ([2001:41d0:303:db6b::])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc0f82bbsm62121235e9.3.2026.04.17.04.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 04:11:46 -0700 (PDT)
From: Tristan Madani <tristmd@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH v3 2/2] wifi: b43legacy: enforce bounds check on firmware key index in RX path
Date: Fri, 17 Apr 2026 11:11:45 +0000
Message-ID: <20260417111145.2694196-2-tristmd@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260417111145.2694196-1-tristmd@gmail.com>
References: <20260417111145.2694196-1-tristmd@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_041149_442596_DECEE1B3 
X-CRM114-Status: GOOD (  11.39  )
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
Cc: stable@vger.kernel.org, johannes@sipsolutions.net, b43-dev@lists.infradead.org, m@bues.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

From: Tristan Madani <tristan@talencesecurity.com>

Same fix as b43: the firmware-controlled key index in b43legacy_rx()
can exceed dev->max_nr_keys. The existing B43legacy_WARN_ON is
non-enforcing in production builds, allowing an out-of-bounds read of
dev->key[].

Make the check enforcing by dropping the frame for invalid indices.

Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices")
Cc: stable@vger.kernel.org
Signed-off-by: Tristan Madani <tristan@talencesecurity.com>
---
 drivers/net/wireless/broadcom/b43legacy/xmit.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/xmit.c b/drivers/net/wireless/broadcom/b43legacy/xmit.c
index efd63f4ce..ee199d4ea 100644
--- a/drivers/net/wireless/broadcom/b43legacy/xmit.c
+++ b/drivers/net/wireless/broadcom/b43legacy/xmit.c
@@ -476,7 +476,8 @@ void b43legacy_rx(struct b43legacy_wldev *dev,
 		 * key index, but the ucode passed it slightly different.
 		 */
 		keyidx = b43legacy_kidx_to_raw(dev, keyidx);
-		B43legacy_WARN_ON(keyidx >= dev->max_nr_keys);
+		if (B43legacy_WARN_ON(keyidx >= dev->max_nr_keys))
+			goto drop;
 
 		if (dev->key[keyidx].algorithm != B43legacy_SEC_ALGO_NONE) {
 			/* Remove PROTECTED flag to mark it as decrypted. */
-- 
2.47.3


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
