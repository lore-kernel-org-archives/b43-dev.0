Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC45ECC6B1D
	for <b43-dev@archiver.kernel.org>; Wed, 14 Oct 2026 14:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUhhBNCwKvUR82o8SQ7fMJuUgEsRzsG2R5khTX8qvTU=; b=UZTKUsf5Qb418L
	zHFMn5bmagrrGp8ICIT+Kz+fJgLRO/6hQ3x5CVbJd5wZgqqMn+lHeQqW4wCT/hNQY65uWHtywCvJc
	pqqGcrcW7CrbPR+PMApMFW2M73vC47BnZXOffF7y98K5yy9FWhxy6yGgGPBjINeDSVo0Gt0ZexWM+
	RI3QgZXnIN/Ta2L3KGlNfWkEU3l3+BIUkB/nCThBfNYx6ANCdrDcgdhaJ+xnwCfv2p8tvx+sjLUSq
	cN08CBT0+kW7/2BKu3ecNfr8FoIjUJTWLF/Nyi2icxugRfRu8RwLE9bsuJDDb3VLCZ9af7enZah04
	z59PS4CgJaueTyJ85TKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH024-0000000Fji8-1eGx;
	Wed, 14 Oct 2026 14:32:40 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH01z-0000000FjgQ-0lUA
	for b43-dev@lists.infradead.org;
	Wed, 14 Oct 2026 14:32:36 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4a16aaf2067so13579155e9.0
        for <b43-dev@lists.infradead.org>; Wed, 14 Oct 2026 07:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791988353; x=1792593153; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xqLL0uNLKZj4KMkwSgRoeTHN6JTbSA0psPY/Eu+4Wi4=;
        b=PHmhL9uq1VgI/2lDJ7fRLHSa1+/p+oNsm35KoUulZEFxXFWhq6Ccs4FQNsI7aQMT3k
         soGxpFvZe2a9PSNWZZhH7V+0YEpLirkQLVLiz6C5Q6VaoiuHFUbjQ9X8ZI37NqkMYctP
         nhScnPmhxTM8DpEzYI/VYL5jPnN9+iNnNmE3A6JD5zCfocjFTFr0pcZTpwFWQA7Az4NH
         8FuTlxsPltOdFcLUCF0YWhqwolj9cMgfz2gM6+wfCI0GAZdXTX9ej/ndWeHquk86Kbir
         judXI8ZeuueIcp2UIJubYQXP22L5BCsZS/dm4/1Zfu9OF7rnTi2FElJFCnlF2l1Zht33
         HP9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791988353; x=1792593153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=xqLL0uNLKZj4KMkwSgRoeTHN6JTbSA0psPY/Eu+4Wi4=;
        b=u6MBwJF46jeOZs3g9D2m/4SgZ0uonYxhVSv7IZ7GNKKEbXkVb7w4yEtRrTV4bxRhr6
         ehvChxlRhrsUt+skYkvzsbf1i+X3zmlDo0yhzd9lg+4eexoxnnAyyBb3zzOoti35eLXF
         MKbuFAXNTc36kiEei5w2hjFYrHodyuJ0PqGan8eGZiZoZdMT0sGgIptaENPpkgr8dGlE
         PsR8dexzsWgbcPzWKYl4MD+7+GxqOw5LRQTmLhcq1nXoAGyCsRJX5sU+i03mCHqtWn7t
         amhF07/f+eCYRPxA1/S/+qvpzzRYw5sbyfjjehvm6rAqQlqM7bGnhK4zBYP4x6Tgk8zY
         L1JA==
X-Forwarded-Encrypted: i=1; AKwUvBwlrat35GA3FiEhGjMVrBsMWJeEpGK/FrXvPrfki0kcSiLpYXi70f4tFyTW8zQsZIhNxyArDsVm@lists.infradead.org
X-Gm-Message-State: AFq9FYL7oXc7fgula+jLmN7ahReODvyXkCL18eL/P8z9q0+IyjPMCwNu
	lcMeqeJgV/w4Xf09YRKZt2rSxOGTuSvz551MVVwIGnXbuWL3z3iX2tYq
X-Gm-Gg: AYBFou2EbZKlv8sYkdRhRfu/v62E/RrEWcK1QoYDmQmTYYxMXErF4sR4dbASZdYOB9r
	oMYYvIxgnTEmhsIHq+KOwqef1Oe9QOC9nKsFyMRRvsTKJ1A/OrdV9qfoaUKahq7us4Xz3wHAEGm
	tb00qVOpMXpJGmoChHVpl8VL3nVupC5kH4MGkX6mysrvME89pLUZYhbhveYwMFXM6Lc6STORY+F
	wnoZaDRXvgn2e41Wd9EF1MleGhYgmCVltHtMaJHu+++hwvrJC8CqjX1c6ZHQiKg3qMUWhxMvb9J
	Cq7GY19Xp/tNRb+h+Cgr/ujDSAERUBuDawngsT5rwd4YhsM3EO4c16c0VcKK0aUbPXf+t9uObVO
	4NhE+X/j51p2RgjPp7r9VbrDD/4fhN8nUJZwHN1kIx28CJXmM00dUth4TzkM/I3BoSEd+9AQ2DI
	azhwN/LgnsQrIOcdok6hsBAq4RZDECPJDFJ+V4A5XTtNIXkvwuDhF/wLQ/nKDUtwLIqqlCFFdSL
	UOb7r0PnsyZE372q2ViR9sxVaMThUbpcziN6zOyXRqerUki570vQyE1dEhnm+varKv3NMiffpWa
	XuwhdeHfqMPmJWPV3bRDYGCLo17K64aEd3ZdpKuYckN1oyTCo1V5kwLpchfSKCk7Sn7uPQZN+dQ
	=
X-Received: by 2002:a05:600c:8106:b0:4a0:c02:938c with SMTP id 5b1f17b1804b1-4a18e4d683dmr311693125e9.25.1791988353360;
        Wed, 14 Oct 2026 07:32:33 -0700 (PDT)
Received: from zitrone ([2a02:810d:a1:6000:62d3:e68c:3175:a538])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bd068126sm3411345e9.11.2026.10.14.07.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 07:32:32 -0700 (PDT)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless-next 1/2] wifi: b43: reprogram the MAC filter after an interface restart
Date: Wed, 14 Oct 2026 16:32:24 +0200
Message-ID: <20261014143225.82149-2-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261014143225.82149-1-gonsolo@gmail.com>
References: <20261014143225.82149-1-gonsolo@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_073235_242207_42122EE4 
X-CRM114-Status: GOOD (  12.44  )
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

b43_op_start() clears wl->filter_flags, but mac80211 computes @changed
for b43_op_configure_filter() against the flags it cached from the
previous run. After a down/up it can report no change, so
b43_adjust_opmode() is not called and MACCTL keeps the cleared filter.

Compare the requested flags with what the hardware was programmed with
and add the difference to @changed.

Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 8f4aff3..57a5935 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -4318,6 +4318,14 @@ static void b43_op_configure_filter(struct ieee80211_hw *hw,
 		   FIF_OTHER_BSS |
 		   FIF_BCN_PRBRESP_PROMISC;
 
+	/*
+	 * b43_op_start() zeroes wl->filter_flags, but mac80211 computes
+	 * @changed against its own cached flags, so after an interface
+	 * restart it reports no change and MACCTL kept the zeroed filter.
+	 * Compare against what the hardware was actually programmed with.
+	 */
+	if (wl->filter_flags != *fflags)
+		changed |= wl->filter_flags ^ *fflags;
 	wl->filter_flags = *fflags;
 
 	if (changed && b43_status(dev) >= B43_STAT_INITIALIZED)

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
