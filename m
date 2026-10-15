Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D432CCA462
	for <b43-dev@archiver.kernel.org>; Thu, 15 Oct 2026 21:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OlTFa8oOMWqaYGK5VJn8TuvRw0pHxxH0KL6vxC5R0RY=; b=wQqPY5RZP40zjC
	IklosO871LpnuamhhyvNJ1Mea9q7bJC2Q2MM/XZe7nXjjxVbk3vUKOSwua2WmXXbjfiIuO9smr+QO
	sVXpWuPHWgEPMFrKqmgTSJf8svvQ6t5zPPefZ3o212xB0wskq736mAmYx/Ub6td41R6+c7S5bKPkA
	UFeEiEjvEWHEHvDOKWeH7ZzQauzJS0QUNXyL/F9dBKQZ2eWBH67jbSkVqFF2k7rSpTIX2BaSwUjI2
	H3Xbr70d/F7tRb96bw8b0wwotizgjdezwREUm54aJFvmh9bPYxp4KTJeQ22yUx07MLtM9l3yfJ2NH
	Id7z/wURds6UAOEoysGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHTPB-00000001T4O-0blJ;
	Thu, 15 Oct 2026 21:54:29 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHTP9-00000001T3q-1jis
	for b43-dev@lists.infradead.org;
	Thu, 15 Oct 2026 21:54:28 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-3ab98332238so3331618a91.3
        for <b43-dev@lists.infradead.org>; Thu, 15 Oct 2026 14:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792101266; x=1792706066; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=p3k1c/Q3C6vUcXTQA5+QfiwE0HRRy16g2NLX4mv2FEY=;
        b=SDQETN1Ugep8ewaADUeSLoNDs9Bz/hve3GrnY5V/FHg5HGJsKm1WAAp4XNLg43cQO2
         6WyqjS8UQycChM8SbO6P7cFSS+Z5+mHjhGV55nyvH2vDNHQrxYqjaOUKxu6bVRrYjTka
         OFjvrHifr05BCY7aWgtfJDddWI1YyOxSI6TZIxBGLQTWNY6vV3uP0ujXtfOI/LkTkHw0
         iYa0iFdf41U+nsOA33UsLfAoWr8LNmG92uG3IQDgT9TNYVRnj0UoatqIY07If+Ppg3Yf
         rb1iDcIVZSjPtC0g+TZk1GLyWBsu64sW47LX7irr7ci5edNph6NkBZcPANOYeNLMtKx/
         XDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792101266; x=1792706066;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p3k1c/Q3C6vUcXTQA5+QfiwE0HRRy16g2NLX4mv2FEY=;
        b=A3TluNAkIAPRdsF6DXZpH8HEmDFIGXI8Nml9fX1GOmdqdwY6GzF63m0n6KHuNDINmm
         4qyZhaJrd0HKdn8Ho3fib3ORCYL2I6N+BRM3WDBMqVV/RV/b3GxVtz+rq1/vn6VHrubo
         9nXSQ7izqKBvOYiyZ6GEYJAIjfCLps9OzcW4nD0ToGjMJblE4wWv9VFM/G75Q1XxbbVU
         Dc6arx+3I7Zj2xLdBbRO/oJ/5V9PfDONCMIswDNbqCsG0U00FqmyA88tHsiqYSbdTS7p
         6UQinXHvl54Y627ICWANwz1rHBljonmPXYSM9OU4QyuRFnGnAgC+6ax+mWy+FucnzSKC
         pWlA==
X-Forwarded-Encrypted: i=1; AKwUvBxY1tKKY6IntJwuSnNModReIU3OyyeIQWYn3+r8R8BzqONSjHuOQSNuYfsOdZFrWHSA/68CMATU@lists.infradead.org
X-Gm-Message-State: AFq9FYKLZFFcHCtYEyYclnYcMafRSMdLd2tVNYK9kK+4dI13VieqEe4V
	j4gtpYqVycdIGJ8jWUxcKS/VXk1VYnBYqfJetUGoVG1ITWPGzgh3R0MaaXCII2Ha
X-Gm-Gg: AYBFou2M3JyUHZ6IvqzZ+fXPqg5Wj+dX7o4/hGJMlXq/G2kpkd7VZyAUP7gGEL/NnN3
	Sot/7+BXqgncakSPdYD2FZ9GHn/jj0N5zVD0tqJ3/IA/2PFoz6Wkqvp3WnYhdu8lTuwrBDHUQWH
	seWjlzVHdF+KqKrSqJ91x++gfbSU/B0+cuwWdP10BSnmKQKmLLmQdmQYttGwWjGjli2k//VcyR+
	XnjByHgzwHRMXcq7kJ8GQUtQ8Dlp5decNgkLPaqomUJUKGBMoPW+pnNeHWZ4Lf29dbURY4ekqxb
	8qs7TGpULI7MjvB9mq4vnHk8Vn1t9e4NmeVnCZXsEUgqMAKz1Cpm4kS2T559AtsJ0e/qunTjfEB
	CMzGyPxqZCuxlahbCRMEcbwkB3KIDkjoDfSo+74QMtIJ2n2aTZshVYfAtC7jtQ1txHzzr5GRm63
	0WAwXIT5w+FXY33MnQsHoUDNjFaf/5cZNpdxJPR37o8ZsCdIdS5rvoITx1mg+AsBUBgBfmxJICx
	giQyc/uzx7dWMnvscAT/H7fm6+ZqWq19cSBaSpZK+f0mRis4hhTRu/mAj/1tixeo/gIalZNE9b+
	lvdGTWf/Rbl/7a8j+xJN8Id1stfzDawyENxOMhvV5WsqXO1u
X-Received: by 2002:a17:90b:384a:b0:3ac:b3c7:de14 with SMTP id 98e67ed59e1d1-3acb3c7e4a0mr1809389a91.61.1792101266438;
        Thu, 15 Oct 2026 14:54:26 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e36])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3acc487e509sm925307a91.9.2026.10.15.14.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 14:54:25 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless] wifi: b43: load the N-PHY SPROM power limits for the current band
Date: Thu, 15 Oct 2026 14:54:23 -0700
Message-ID: <20261015215423.195788-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_145427_452541_48B9602C 
X-CRM114-Status: GOOD (  11.86  )
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
Cc: open list <linux-kernel@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, "open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

b43_nphy_op_recalc_txpower() always builds the per-rate power limits
from the 2.4 GHz SPROM entries (maxpwr_2g, ofdm2gpo, mcs2gpo), even on
5 GHz channels. The resulting maximum then overrides the per-band
target b43_nphy_tx_power_ctl_setup() reads from the SPROM, so 5 GHz
transmits aim at the 2.4 GHz limit.

Pick the SPROM band from the current channel, splitting 5 GHz the same
way b43_nphy_tx_power_ctl_setup() does.

Fixes: 8615eb2870f1 ("b43: N-PHY: support setting custom TX power")
Assisted-by: LLM
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 22359bd9db47..a8dc7c12a5a9 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -5833,6 +5833,7 @@ static enum b43_txpwr_result b43_nphy_op_recalc_txpower(struct b43_wldev *dev,
 	struct b43_phy_n *nphy = dev->phy.n;
 	struct ieee80211_channel *channel = dev->wl->hw->conf.chandef.chan;
 	struct b43_ppr *ppr = &nphy->tx_pwr_max_ppr;
+	enum b43_band band;
 	u8 max; /* qdBm */
 
 	if (nphy->tx_pwr_last_recalc_freq == channel->center_freq &&
@@ -5843,7 +5844,15 @@ static enum b43_txpwr_result b43_nphy_op_recalc_txpower(struct b43_wldev *dev,
 	b43_ppr_clear(dev, ppr);
 
 	/* HW limitations */
-	b43_ppr_load_max_from_sprom(dev, ppr, B43_BAND_2G);
+	if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
+		band = B43_BAND_2G;
+	else if (channel->center_freq < 5100)
+		band = B43_BAND_5G_LO;
+	else if (channel->center_freq < 5500)
+		band = B43_BAND_5G_MI;
+	else
+		band = B43_BAND_5G_HI;
+	b43_ppr_load_max_from_sprom(dev, ppr, band);
 
 	/* Regulatory & user settings */
 	max = INT_TO_Q52(phy->chandef->chan->max_power);
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
