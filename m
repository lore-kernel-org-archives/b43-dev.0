Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5DD606A31F
	for <b43-dev@archiver.kernel.org>; Thu, 22 Oct 2026 19:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=A2GRLtXn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=qCslIn6H
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=zh5M2hwnIBZ8TNI3j11ePwCX9o81o5q3XEWWr1o2unw=; b=A2GRLtXn/rhIi6nTL+F70v+m3O
	M5CDa7QftzNKW7qD8kZTrdHQ6HX+NpupJTacZUFCS7B+TkngEHgR3yZwg2OCJmnSXW9QB6foBSpGY
	uEqakN7K5Ad1Kcrbcd7cUhGT1e+jMZUVoWDd7zwA0iW2SLDc0Dozv0Iv4rxJ6wDroC4vDTIkq0dWl
	J0Jf/b69IsO25TR05owpK7S/iEk3xy/gm2c6DIbqWQt6geRnSb798Q5yXh3NyzCCo12vNM6DAl+Sz
	1wU59WQhJENRwbNilmwLbKDmudjBAKgXDtvgn4L3s6Vv4pyW9Eg2scWKh/M3ExR8ufM865P4vH1Mo
	1/TirLvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJyOJ-0000000Eoto-0XQD;
	Thu, 22 Oct 2026 19:23:55 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJyOD-0000000EotR-2cr5
	for b43-dev@lists.infradead.org;
	Thu, 22 Oct 2026 19:23:50 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-3ad787e0593so90394a91.3
        for <b43-dev@lists.infradead.org>; Thu, 22 Oct 2026 12:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792697028; x=1793301828; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=mWyRbyYobbwew4V6IGeQkBhZcI3WNmI+oWsGUUslDMk=;
        b=qCslIn6Hc8C+7azDGMEOLiHAaPkmLAf8r0LxB5TUi+33BiyhKD6Kx8+0RTp3GYi18B
         Xamv8br7y9Z2aetfuXcMMeT8Dwx0rh85QJ78Nyz81QZz3CjIP4PNrwoipO78cWfDq0yB
         6xA+1gZMVQ2eddnU1FFZ+7x+QhjnDlrzzEKdrw/EvcgY+exZyB3WYlh7pYoIypbsnIUF
         P4xrK/dgdRQxMupbptn0344YiA+F/jm00rkySUueZj+A2ZF9JrZLxJiHaQf2is17oDFw
         fZfVbSyrVE01lEJZXvh9VSUs/nv1pDNH1Keok3ZcqJ6HvG/t+gYTzhqADB+CqRSLy4a1
         AFeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792697028; x=1793301828;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mWyRbyYobbwew4V6IGeQkBhZcI3WNmI+oWsGUUslDMk=;
        b=SMZmp7GVb/56Jub1GG87ab8s57YE/B89sm9Fmn6ogNvyaqgM2M/0rAqP23vYs/0++Q
         S66o3qVGOg9H3inx4RTPUzUxPRoBm2zwCBenX1iAKv9nyXqomyJK6AZXLgeswePfF8hA
         xIchUhXwoQ7uFLQ7d0n/TfNE6toiJJ+STEs6VJ+HVxKT8JyVaYq1Yl7Pa7FFpTcP62bI
         ZrRkKTaiPfatbNMVJ8Lxew6L7M4HpFYjuNU8ff3Hj4NtwhX3C6e5gidAWdpMkVQrX8Ql
         vHUmb0HmArdM/dTWZd0pLBHElxMc3SRorLcP/RaQWe+fF5SCdjQtac4s0YwYKyq1XVHd
         sz5g==
X-Forwarded-Encrypted: i=1; AKwUvBxnYs+9iVqMaPMSoL+OpoC0hXPot7SlNI20aWAnHiwEtBLiJtbnLX0F1/z/QxgsFk6oDq+zo9FH@lists.infradead.org
X-Gm-Message-State: AFq9FYIUmj3hYGlTHrGjxzPUSssQ5tZ09KpqdE0ZGEDaOqMi1vVwasmS
	iTJWWRd4qzbzFnaN74Nk9Y0Ge9xPo/GRgxU+Q56OCwEUVWcgurva1wQ5
X-Gm-Gg: AYBFou3eF5XNgsukWmBGWt5ZIgrGzfpRxA+1fq9NufQF+jTf8KdiSLvzUvQucd/I7Bv
	DzBLdS73SwoMIKKSdN7wFBn3gGUACC8XJQPSGQip/aYWQgvhuRBZO3iRDfpXujIAmVRazEruZqF
	/6B59WyxwQtK7wFCko+Tjx8S71+p8vjFpQqUe3ltMxWSAWiiID/k3jt5qzS1Z48RpbrAO4mY3n7
	niH2hvhgFZw2M2xAkS1eOlrQNsfAAp+9j3MDqIrUHH0f96GQEadew2ecrrCBmF4pcfEaUVwIaeE
	yv7BnLotXS+IY3BrbKqnq0qCMkZVmmrs+xWTg6aUxL5Z41YYGNz3zKAVyEQjtckq1R57EPtA0lU
	7IqbKBL2vzuqYBRPCqHwk60PWdkZr9WKx5r2vCJHNLm7JTKZNSK8Nyd2xgOL3qgc14OGEYJ2P7v
	G8kY4w7eEycRZRe8tKd3z/IFPvm+VrwjuOHOunc9srBH2763HHFLropiOJs6sXq0o5+UhEXkcSJ
	HC/Pvm+qJn2zIdRmuWGssUgWICQPk0dtKdGWd0aXbyTDBEnKWWsTCBCuy6QdzzGz9562AlB4GdP
	kqlD44AmfsE883K7wZXO1VMsl5sQ3RXakX/yuQ0Kw8hk1Ux0bqBs7B5LaVHLgkBv7QovlzJKgwq
	hdP4aZdJwPOsV+bl2xJarTlsoxlNo
X-Received: by 2002:a17:90b:4c52:b0:3ac:80dc:f409 with SMTP id 98e67ed59e1d1-3ad86f39201mr4606639a91.61.1792697028146;
        Thu, 22 Oct 2026 12:23:48 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:37f::e36])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ada48ed6c0sm5532585a91.6.2026.10.22.12.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 12:23:47 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless] wifi: b43: don't read the LPF bandwidth on N-PHY rev 3-6 for TX calibration
Date: Thu, 22 Oct 2026 12:23:46 -0700
Message-ID: <20261022192346.3327061-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_122349_696251_38CCDF8C 
X-CRM114-Status: GOOD (  14.79  )
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
Cc: open list <linux-kernel@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, "open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>
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

b43_nphy_tx_cal_phy_setup() reads the LPF bandwidth control from the RF
sequence table on all N-PHY revisions from 3 on, but only uses it on
rev 7 and later, as brcmsmac only reads it there. On a BCM4716 with an
N-PHY rev 5 (ASUS RT-N16), the read causes a data bus error, so the
TX IQ/LO calibration oopses there.

b43 does not run that calibration on these revisions yet, as
nphy->perical is 2, so this only shows when it is called. Read the LPF
bandwidth control only where it is used. With this, the calibration
runs and returns success on the RT-N16.

Fixes: 40c68f20e63c ("b43; N-PHY: write most of the missing code for revs 7+")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 22359bd9db47..41a8ba8e8736 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -5108,13 +5108,16 @@ static void b43_nphy_tx_cal_phy_setup(struct b43_wldev *dev)
 		b43_phy_mask(dev, B43_NPHY_PAPD_EN0, ~0x0001);
 		b43_phy_mask(dev, B43_NPHY_PAPD_EN1, ~0x0001);
 
-		tmp = b43_nphy_read_lpf_ctl(dev, 0);
-		if (phy->rev >= 19)
+		/* The RF sequence table of older revisions is shorter */
+		if (phy->rev >= 19) {
+			tmp = b43_nphy_read_lpf_ctl(dev, 0);
 			b43_nphy_rf_ctl_override_rev19(dev, 0x80, tmp, 0, false,
 						       1);
-		else if (phy->rev >= 7)
+		} else if (phy->rev >= 7) {
+			tmp = b43_nphy_read_lpf_ctl(dev, 0);
 			b43_nphy_rf_ctl_override_rev7(dev, 0x80, tmp, 0, false,
 						      1);
+		}
 
 		if (nphy->use_int_tx_iq_lo_cal && true /* FIXME */) {
 			if (phy->rev >= 19) {
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
