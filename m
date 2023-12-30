Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4FB8C46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 04:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uu73MZmjndR0X4YotomaR0usElGT7hrXD44sIZR3x9c=; b=f2OyQRlPmxWwQ1
	Nv59dIx2kUOt0fa4jQdrh2kDMSFUThqRKN4zqfU0cwsOjxr0Gq+Yqx+eenuzewz/Ew0ixUKDeNY12
	LBydlyMDiFlMKYYYgvokYOpREJWWB+vkX1aoglj7kgjp50d5l6oVb874wWvO9GSG7QWbPu0KYmSdP
	4C7mew5W9V021YrcEVNMDlq9EhwoNcYSbV1YFgrH1YLyZZ5CORREGpSfYPy0Zhos8G5dxZFT/XT3p
	gnOxlastRu0ZyZ4Wd1SGzBeP0XnbPeKa1N53Ft7P80dPpyHdHRs90FCP2CND1rn6Z+8fVK9+xu2TL
	0DCD5hgQkkjE4OkOD4zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJRKF-002A8f-11;
	Sat, 30 Dec 2023 04:51:55 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJRKC-002A6R-0V
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 04:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703911897; x=1704171097;
	bh=xoCJFTO9+CWfEwOaRvKJoarW9UkFuNSaR1ANZeDoB50=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=HWYX2cNva/4uVA/Sq3t67Mr+1ucZcbP1jyUFutujNFLmLDrIwJT2Eva2facQaKkO8
	 Zt/wwOIBDBRl2YnGlzxsVw5doNVsiVtze8UMLovD9CmuWpZaOdma+rlOIj1sRsJAew
	 IA3pppPW+KkFKr8KWpRVozgPABgmA3dvFurr0j0k5yo71MRSwyDkMKmxBzyYw/q1MX
	 6CJj7A7GwXKZQRYLOt2m2PcMclY3/2pXtWoSwUe39qvqjakGpzoV59D+NBTAg1EVRY
	 OaoSD0BjGhPEvy/ksAa/blRxfUD/8qkgKmtH7t6sHNy4V8wyDEEo46rG+1XGr7zxkZ
	 UH9QT5TREXPkg==
Date: Sat, 30 Dec 2023 04:51:29 +0000
To: Kalle Valo <kvalo@kernel.org>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Rahul Rameshbabu <sergeantsagara@protonmail.com>
Subject: [PATCH wireless 1/5] wifi: b43: Correct OpenFW QoS capability warning conditional
Message-ID: <20231230045105.91351-2-sergeantsagara@protonmail.com>
In-Reply-To: <20231230045105.91351-1-sergeantsagara@protonmail.com>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_205152_373336_F141F784 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
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

Trigger the warning message should be when the OpenFW capability for QoS
does not advertise QoS support. Previously, the warning would be
incorrectly triggered when OpenFW reported QoS capability is present.

Fixes: 097b0e1bf18a ("b43: fix crash with OpenFWWF")
Signed-off-by: Rahul Rameshbabu <sergeantsagara@protonmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 92ca0b2ca286..c81117a22ebf 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -2713,7 +2713,7 @@ static int b43_upload_microcode(struct b43_wldev *dev)
 			dev->hwcrypto_enabled = false;
 		}
 		/* adding QoS support should use an offline discovery mechanism */
-		WARN(fwcapa & B43_FWCAPA_QOS, "QoS in OpenFW not supported\n");
+		WARN(!(fwcapa & B43_FWCAPA_QOS), "QoS in OpenFW not supported\n");
 	} else {
 		b43info(dev->wl, "Loading firmware version %u.%u "
 			"(20%.2i-%.2i-%.2i %.2i:%.2i:%.2i)\n",
-- 
2.42.0



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
