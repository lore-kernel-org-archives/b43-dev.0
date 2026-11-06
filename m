Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8A3606A32F
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 21:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=p9Y1H2r4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=K9xBHGLs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=P0FDvrt+yTGEyT0Xr1AL+Jc1anvy/ZBBJjauozQj7vE=; b=p9Y1H2r4uqPhOTvRXTOoL2uOpG
	fvinfTprzMLIiNrwGkc93o9L3ekzKkj7pTYc5vph9xW9TufSiP6tbbAkd83arCPmaVb3tI3FZp3uJ
	CJtvZyXuRzL9nzf7JHSb55wO/a+YOFwS/FjPa3KUuwfj7jeGGlL70kcnwCD5dduh17GSOgFzhijbA
	lSWfs6y/0fYPsLm74SWFUvKJItf68qzxYGlHr0nvAoRUDI2Hdgoi7nz5X9cpKhIavFM4suv6WTWwA
	0IwfkzaeLUn3OdFSmIUtIBAZlxy1o2cjEE67mOQxxC8jVsqJQVfA1yioOeYTkEYE2/bUminwhh5Bs
	6Ei5V0WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHj-0000000DfbW-3u6E;
	Fri, 06 Nov 2026 21:15:44 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHg-0000000DfVr-2pbj
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 21:15:42 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4a60f9474c4so12946115e9.0
        for <b43-dev@lists.infradead.org>; Fri, 06 Nov 2026 13:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793999739; x=1794604539; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iPNIeXgX2T4OrMflEE5HyV1UINBwuHr5/ci2c5MyX1k=;
        b=K9xBHGLsqNtZ9oUASJf1BHchX1TsYgaA2mbAmP7L1n0wxMn0Czze8mBHOLzadX0z2v
         KJ9PmoiIg8WEd9MGmlWCSBgQRj78P4shz1jARuC71iPe3MOn+pUwM67JHdgOEKx4pkGP
         JLNFC4QHsyd0C06LRQKwIT5Opk97GhK7MBlm1vWu1SA/QZOrdGRfyXt+ahTz+shX+q1H
         2BsiVK4epOLPqvM4QJzQvZOjCy5JiuqHN6MaL7fuhoe+AY7zFXlDhnS0c0LGWz//oc3u
         YsquW42/2llws7R09nVMoAZYH+TWV2qyjfi5dAVjFGLfdX/loyYC+u3g/sehoD39Pumj
         2bkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793999739; x=1794604539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=iPNIeXgX2T4OrMflEE5HyV1UINBwuHr5/ci2c5MyX1k=;
        b=wNR/1eQa+z8EOaNEXfLsqspk3IOjdR4rB2YFagjboabB2vF7X2REL6IakDhxxQLJ11
         VsYP86T6d4oq5U6J8OE1pmcNpdcWxIV8ApCNlosXANeqM8NVfrPnYciHXzKHwupDEmgE
         8qqwhn+FTjte90VwqNytxcIOzjRz7PcYoDLdIhbEtCizPr67snDW7TM9TfaHx5tgGUwk
         Dnludk/3lFThEbnN/Wa0bjpCugPy4195YYD9wCHxbORNM1fa6X1GKpxFBw2jcCbG9b2s
         GGdClw+7EqLdo8Ys3NTiWv+9xJU/o6EZx2TuTy0NxESrAYCpK8q3J86bGpAPIfSxobJH
         GFzQ==
X-Forwarded-Encrypted: i=1; AKwUvBzaUuksOleITlG3lsvbIdBJjBFuXhhzhIu0GoazFRjyPv1jK6m6jWTr6kZEHwCazt17k08jNbkY@lists.infradead.org
X-Gm-Message-State: APuU4Z+b/cRMs3ucaSR0mLtjAzAfrK/aCoAlI+nmToJUBTLAw6/9kMD1
	WvlB5Vl4gMiNNQxbSXWkraVx3x0rW02rxTAtnqD81aTKxYU/DLSBr0ty
X-Gm-Gg: AYBFou32yZQnizP63rMVjMrnMOuZ88nHKExel4bRU6dRdsojeHYiLJSBbok2LjrrvOe
	KD9h6FKfqluiBd0Fxes4CsysBfEfsfTG+3gkZ5Plr1F1CVNdScYBvvr7BMj1RJnu3AnZJ7JAwLe
	splPqbK5LFFzHVk2J95Iouascqp45EAPcl5xBqzVTKdjb3Jc75dkL3hHzDDm31K6yd2GvJJvfT4
	iyBWFiZdDp+2RBfBBD7/h9rTDhmrXXw+CtQsl+2n31PK1De0yDYnlBjYFPe86NNYESHbe4MhWy1
	CNIJYBjZdG9i9J292kX+bZhIt46wRvfbTaUS5r2Xe6y7Y6nrRxFo3lNgmXpAOuM+ZVsV6aUioTc
	ssmtVbeSfLHvJTECalvdsL4l1rpNQSe7+sv3QFzEtdZoXXr3LBP+V1UrOIm+qNxFxY6qICeBHeo
	uE8Xm6nvPICqbHzxwnPiYgCWXNW9US7W8A8eiumK+uqzi9g/bufIJ9iklDRmQREh1sMi8cI6hT0
	TkQnCJp+kbws1/WlkuBewVeobBuya9fa5YLYZIA/i8Wrguh5yUPX2hhcyGbPCm2WP9KrciVUInE
	WjSAaSUXWw4sMwlNliRtpiGlptkLDDoqGM3bxK+OfagmV+BGwpE=
X-Received: by 2002:a05:600c:314a:b0:4a1:fa21:fd90 with SMTP id 5b1f17b1804b1-4b6de4a5dd4mr65782395e9.9.1793999738570;
        Fri, 06 Nov 2026 13:15:38 -0800 (PST)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:970a:d82:3e9:48ec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b7e32ad610sm18070765e9.3.2026.11.06.13.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 13:15:38 -0800 (PST)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless-next v2 5/5] b43: N-PHY: add the missing override to the rev7 TX_PU command
Date: Fri,  6 Nov 2026 22:15:16 +0100
Message-ID: <20261106211516.273791-6-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261106211516.273791-1-luk00casati@gmail.com>
References: <20261106211516.273791-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_131540_731981_4D75D0CC 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
Cc: johannes@sipsolutions.net, Luca Casati <luk00casati@gmail.com>, arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

brcmsmac's NPHY_REV7_RfctrlOverride_cmd_tx_pu also sets field 0x4 of
rev7 override bank 2 (REV7_RF_CTL_OVER5/6); b43 left it out. With it,
the override writes match brcmsmac and the wl driver on a BCM43228.

mmiotraces: https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/excerpts/patch5-tx-pu.txt

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index ab8fab018..b4fdafabb 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -220,6 +220,7 @@ static void b43_nphy_rf_ctl_override_one_to_many(struct b43_wldev *dev,
 		b43_nphy_rf_ctl_override_rev7(dev, 0x4, value, core, off, 0);
 		b43_nphy_rf_ctl_override_rev7(dev, 0x2, value, core, off, 1);
 		b43_nphy_rf_ctl_override_rev7(dev, 0x1, value, core, off, 2);
+		b43_nphy_rf_ctl_override_rev7(dev, 0x4, value, core, off, 2);
 		b43_nphy_rf_ctl_override_rev7(dev, 0x0800, 1, core, off, 1);
 		break;
 	case N_RF_CTL_OVER_CMD_RX_GAIN:
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
