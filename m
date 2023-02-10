Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 941E7C05027
	for <b43-dev@archiver.kernel.org>; Fri, 10 Feb 2023 11:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5A2VU0lj7VRRAhoft5SWl+AN5jUkJ/sWI5HiBYxZ838=; b=vYTVww1hznEKOr
	46qzYpFJSUfgNe5LwpkoZJm9rFlI5Uhrg/qtMlofGtPyZzcj0zuvWHB/82hohA9jStrk3QPn7XSH4
	djiW0YYpkhmFh2qdM38sQI0D4MtNWQfYZi/UB+/aopx8rlQ5oYvdB0lSUPUMD0gSmbfbibR0f5mnX
	Dgsy0+7+Zq4vFOyoSZ394OUHraADlQP/GSyE0Lr7rCNqcov5N1IE6X8xyNd6AIJ/FnfeHoYI9cSn3
	elGXHu/Sm42BoxOsSMX7PWGGm4tYaFzB1aF+lUt2nsSVP8XGFRcI9BZNxc1eqKmQm8VtRq5jl5AT4
	VCUDPoYHKqCN/sRPf1gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQRKp-005R92-OD; Fri, 10 Feb 2023 11:12:55 +0000
Received: from e10edge.fintech.ru ([195.54.195.159] helo=exchange.fintech.ru)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQRKl-005R6Q-Dx
	for b43-dev@lists.infradead.org; Fri, 10 Feb 2023 11:12:53 +0000
Received: from Ex16-01.fintech.ru (10.0.10.18) by exchange.fintech.ru
 (195.54.195.169) with Microsoft SMTP Server (TLS) id 14.3.498.0; Fri, 10 Feb
 2023 14:12:31 +0300
Received: from KANASHIN1.fintech.ru (10.0.253.125) by Ex16-01.fintech.ru
 (10.0.10.18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Fri, 10 Feb
 2023 14:12:31 +0300
From: Natalia Petrova <n.petrova@fintech.ru>
To: Larry Finger <Larry.Finger@lwfinger.net>
CC: Natalia Petrova <n.petrova@fintech.ru>, Kalle Valo <kvalo@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	<linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
	<netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<lvc-project@linuxtesting.org>
Subject: [PATCH] b43legacy: Add checking for null for ssb_get_devtypedata(dev)
Date: Fri, 10 Feb 2023 14:12:28 +0300
Message-ID: <20230210111228.370513-1-n.petrova@fintech.ru>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.0.253.125]
X-ClientProxiedBy: Ex16-01.fintech.ru (10.0.10.18) To Ex16-01.fintech.ru
 (10.0.10.18)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_031251_504156_0CED3926 
X-CRM114-Status: GOOD (  10.70  )
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

Function ssb_get_devtypedata(dev) may return null (next call
B43legacy_WARN_ON(!wl) is used for error handling, including null-value).
Therefore, a check is added before calling b43legacy_wireless_exit(),
where the argument containing this value is expected to be dereferenced.

Found by Linux Verification Center (linuxtesting.org) with SVACE

Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices")
Signed-off-by: Natalia Petrova <n.petrova@fintech.ru>
---
 drivers/net/wireless/broadcom/b43legacy/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index 760136638a95..1ae65679d704 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -3871,7 +3871,7 @@ static int b43legacy_probe(struct ssb_device *dev,
 	return err;
 
 err_wireless_exit:
-	if (first)
+	if (first && wl)
 		b43legacy_wireless_exit(dev, wl);
 	return err;
 }
-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
