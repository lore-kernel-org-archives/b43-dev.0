Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8255CC4332F
	for <b43-dev@archiver.kernel.org>; Tue, 22 Nov 2022 13:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DxsoHpVyZkDBt7C7ZSaVuCmAMAA1mOED3owtWdsmTYY=; b=CaQc/iA/33fAXB
	FirWHjJomEMyCozlUheumvGTXQaz3XiAjouh3IQvUniHSRwvFliTuB2j5Bniq7FkcaRUVlVMXFNYt
	shsM5+BptJlw8MBTUegzh77PLSUQbgpWxNeEKFp7dwR6helbMtY5CHUQVX+avh18zxDJQXfqTD2uy
	k30SCtZ/rkzBG0z29K86qx+FJqyfQ/SlCOO42CiCASyMbbmTad6sRnglAvNW0SRU49pp66Y0W2C/K
	UTQtKUIXtnD5XHr097WN5S+7JBbPo92mfue+byk64PmV0LsD5AYyFT2QFsJINvZ7J3+lfSvsxTxDG
	WffFHJuP/8ENhUcJd+PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxT5R-009Z0m-6k; Tue, 22 Nov 2022 13:13:17 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxT5K-009YzT-LU
	for b43-dev@lists.infradead.org; Tue, 22 Nov 2022 13:13:11 +0000
Received: by mail-ed1-x529.google.com with SMTP id l11so20553703edb.4
        for <b43-dev@lists.infradead.org>; Tue, 22 Nov 2022 05:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8y8Hrci7gEBpK8ypTuE+fYD+XXvaKAxlJq93rw+OoIc=;
        b=IyO6TpaYxflFJhaxYOV2PfGkRAwSZO3j+wxYnACuQZtZ47AAlMVq7mtJetf6M2SLn4
         VlgBL5d5/82zp+sqUpl67AbeQfBs2fLSvZ4myCkMtzX+sBWBeAzAvJRA9b24MjOIbS1O
         wD7XRoszDCFtQJHIHgNeniYHJsczpZPFTAK0i5gh9MX8cWPoXMZcUAWzje8wPLcEWDUi
         JBUnisSTdn7jGG3Y9M5sn0/REyHc3tgkhogNJHb9j3LBYsW4y4BhNIJD/LQHd6HTOqoC
         u1YyEfc24LkSSpO3fmjSaOvNgHxJyK0a7r83wYi1IWICrF7SKs4v5n/tihujwiJGBhBu
         wbgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8y8Hrci7gEBpK8ypTuE+fYD+XXvaKAxlJq93rw+OoIc=;
        b=uoyTF4goF03P9dw+5IXgJcVCb87lZJ6CUC5DML2bB5TKe83AJa8DxvhNm2E+qDaSUM
         m76Q4/X/1v3vUCSqKBOMA+82VCd2BuQg6rHIkaVfERs8VdHeWDMJ9oUk4WBLYGOvsjmh
         L/K6pE+2hj8GsiZketdnVWDnNwtHbEHwZfeHH4eAN7yX8H6gcV/V/+7vh1PLKCd6eXND
         QRsWRGAQ1ivfLPi0ZokVZmx7lpU2GVoECDX3z+7DKq5wjLJhWDI/CJ/scloykbBN8oNf
         ewgtbS3hAHQWzVLnI/qcQi1/ftdaSDv6VxGbsgfsDCmLASlGpRP7WshmYHhVde0ZhlfS
         jPzg==
X-Gm-Message-State: ANoB5pnGXrxDu/uwsqaejzLLRzR6rhIq9/KWw8SQBOXu8pI2Ob3lmyR0
	vM/NVn99AqqDzZVb9CqAKB0=
X-Google-Smtp-Source: AA0mqf7TQImuxqzpm8QfnBN7SZmV3h7LqqStygAGln0CurVZbkJJHbTc5h85jMQbWbfutDxzZCMC7g==
X-Received: by 2002:a05:6402:4512:b0:461:4c59:12d6 with SMTP id ez18-20020a056402451200b004614c5912d6mr20960202edb.250.1669122787880;
        Tue, 22 Nov 2022 05:13:07 -0800 (PST)
Received: from felia.fritz.box (200116b8267b3700c41d4e99e424db57.dip.versatel-1u1.de. [2001:16b8:267b:3700:c41d:4e99:e424:db57])
        by smtp.gmail.com with ESMTPSA id j7-20020a17090643c700b0079dbf06d558sm6033234ejn.184.2022.11.22.05.13.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 05:13:05 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Kalle Valo <kvalo@kernel.org>,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] wifi: b43: remove reference to removed config B43_PCMCIA
Date: Tue, 22 Nov 2022 14:12:48 +0100
Message-Id: <20221122131248.23738-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_051310_738776_1F5D4657 
X-CRM114-Status: GOOD (  11.15  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Commit 399500da18f7 ("ssb: pick PCMCIA host code support from b43 driver")
removes the config B43_PCMCIA.

Clean up the last reference to this removed config B43_PCMCIA in the
b43_print_driverinfo() function.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 298febbdffc0..92ca0b2ca286 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -5784,15 +5784,12 @@ void b43_controller_restart(struct b43_wldev *dev, const char *reason)
 
 static void b43_print_driverinfo(void)
 {
-	const char *feat_pci = "", *feat_pcmcia = "", *feat_nphy = "",
+	const char *feat_pci = "", *feat_nphy = "",
 		   *feat_leds = "", *feat_sdio = "";
 
 #ifdef CONFIG_B43_PCI_AUTOSELECT
 	feat_pci = "P";
 #endif
-#ifdef CONFIG_B43_PCMCIA
-	feat_pcmcia = "M";
-#endif
 #ifdef CONFIG_B43_PHY_N
 	feat_nphy = "N";
 #endif
@@ -5803,9 +5800,8 @@ static void b43_print_driverinfo(void)
 	feat_sdio = "S";
 #endif
 	printk(KERN_INFO "Broadcom 43xx driver loaded "
-	       "[ Features: %s%s%s%s%s ]\n",
-	       feat_pci, feat_pcmcia, feat_nphy,
-	       feat_leds, feat_sdio);
+	       "[ Features: %s%s%s%s ]\n",
+	       feat_pci, feat_nphy, feat_leds, feat_sdio);
 }
 
 static int __init b43_init(void)
-- 
2.17.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
