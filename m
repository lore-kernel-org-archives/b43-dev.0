Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E28E6C433EF
	for <b43-dev@archiver.kernel.org>; Sat, 25 Jun 2022 19:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pCh53JdHMbKrdTAfQJm0JAgTxmSkBdm4nyplyn3j1Mc=; b=FVDaImc4M8WGkW
	N2DLAahOzziskpq4r2+NAcWC7QZSqjEUpCodpJKnuT+xp/wffLhftEfcSVJThHSV56xlvsrLwmXKl
	TnhJ43PIX5EXwuBUVE+l7sVY0rqGWjWx0dYH+RuiS6jci1H3PL5g2Yr55/vRd8Qvw0AvXAiFrNefE
	c1KAXwJ3tolu1PW6QUtctRSxBPTbPVX9n5Iv1PIt8oNg2y7YPKZvAZmZBl4/k/dzLcBvW3IWYrzOd
	7acqwywQw+4XaiGRNYtONOZ2XMY6HokHWztpmHpFKmI0aanNXVlKzykDyrZjhB9Z+PBgclV7bnBZY
	hlFGbJHx5+dbJmYDdSIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5BTK-007STv-A9; Sat, 25 Jun 2022 19:29:34 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5BTA-007SSv-UN
	for b43-dev@lists.infradead.org; Sat, 25 Jun 2022 19:29:26 +0000
Received: by mail-pj1-x102b.google.com with SMTP id g7so650469pjj.2
        for <b43-dev@lists.infradead.org>; Sat, 25 Jun 2022 12:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c5lEV7bdqnDxF2NAwEQaD17yfLDKPDGXJ3egD+ggkUc=;
        b=JuFkR299mwMEl/sHjr8YsK7XkBcyohPBCGMflYSQenEHx83adbPHh8Ptx+F/W23Dxm
         yFAXkBkY7ErqSL3Ow9xju+nmn/2J50TeMR71bfP4YqN4Dr7y/5tRbDDEkcPQHXMlTEV3
         8o7ibWcvTqb9BTLsvQhTfSHMuWbBxrb9BtHxkIanzaxWmTfxC6H4KMBCFPP39eJv6Zdh
         Sd+4J56AplRlz2+XZ8Sxq5OUdOgtwAgkMGR3T2kEprDHBYs+n9Ypc2gWO5u3Ou+CqUYo
         HfN/URxPQVOkVcStOwEHkxNZLQ8f1Ae+b3cXjSrzJePWUQGPBmpHntOFA+dNDQ6QuVDp
         ZSQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c5lEV7bdqnDxF2NAwEQaD17yfLDKPDGXJ3egD+ggkUc=;
        b=1UuLmD3gep2V3k16VwpAlaL0IZY8kc3cA3z4cGoqz4Vfb8VdB/wnmI45kmlbhnD/uc
         7GR7faBQPiSGfRcoUTW7WOlCAEMQxcOwEWHm/tg3CWe0IFBzNlMRvBX9SXe53Mf6Mvoz
         xBax/9ehZy9TU3DKkZOJZMCeWm9Xd594yIYLNXwuhYhw7kn5kVMFeyF8sLoeoFCh9IsV
         4WdXTzwghRWvz4ISYAlAbYpmg9VSQLWMd9P95vmx5HCoTg7MRGSVKq6Gp4vQ46fTjgQd
         Lke7tttxgUB+zGZ1vvBgkd+39H9Na1Vu6V+hIieS9qJjJfH7RfVStpfYhXO0+4oyJVyx
         T6Pw==
X-Gm-Message-State: AJIora8fG2RVImS9LhMb6b7OEUREl4p1Qx8Dsk5nr1H4rXHHRjEyhOYL
	KOO576DwUK7Y4+NjumS914OBVd+wd6IVNY7qqI8=
X-Google-Smtp-Source: AGRyM1sBR1gbq+FRX/P79kfzBtenpKE3iztXCEXfUro5yRwMen+vBGatOmgkhGddAmSoQ7gzYnargQ==
X-Received: by 2002:a17:902:d488:b0:16a:158e:dd19 with SMTP id c8-20020a170902d48800b0016a158edd19mr5787747plg.105.1656185363072;
        Sat, 25 Jun 2022 12:29:23 -0700 (PDT)
Received: from ip-172-31-11-128.ap-south-1.compute.internal (ec2-15-207-248-140.ap-south-1.compute.amazonaws.com. [15.207.248.140])
        by smtp.gmail.com with ESMTPSA id c12-20020a17090a1d0c00b001ec92575e83sm3933650pjd.4.2022.06.25.12.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jun 2022 12:29:22 -0700 (PDT)
From: Praghadeesh T K S <praghadeeshthevendria@gmail.com>
To: Kalle Valo <kvalo@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Praghadeesh T K S <praghadeeshthevendria@gmail.com>,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: praghadeeshtks@zohomail.in,
	skhan@linuxfoundation.org
Subject: [PATCH] net: wireless/broadcom: fix possible condition with no effect
Date: Sat, 25 Jun 2022 19:29:01 +0000
Message-Id: <20220625192902.30050-1-praghadeeshthevendria@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220625_122925_020489_29E3BB25 
X-CRM114-Status: GOOD (  11.03  )
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

Fix a coccinelle warning by removing condition with no possible effect

Signed-off-by: Praghadeesh T K S <praghadeeshthevendria@gmail.com>
---
 drivers/net/wireless/broadcom/b43/xmit.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wireless/broadcom/b43/xmit.c
index 7651b1b..667a74b 100644
--- a/drivers/net/wireless/broadcom/b43/xmit.c
+++ b/drivers/net/wireless/broadcom/b43/xmit.c
@@ -169,12 +169,7 @@ static u16 b43_generate_tx_phy_ctl1(struct b43_wldev *dev, u8 bitrate)
 	const struct b43_phy *phy = &dev->phy;
 	const struct b43_tx_legacy_rate_phy_ctl_entry *e;
 	u16 control = 0;
-	u16 bw;
-
-	if (phy->type == B43_PHYTYPE_LP)
-		bw = B43_TXH_PHY1_BW_20;
-	else /* FIXME */
-		bw = B43_TXH_PHY1_BW_20;
+	u16 bw = B43_TXH_PHY1_BW_20;
 
 	if (0) { /* FIXME: MIMO */
 	} else if (b43_is_cck_rate(bitrate) && phy->type != B43_PHYTYPE_LP) {
-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
