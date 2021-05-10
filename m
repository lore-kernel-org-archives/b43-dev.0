Return-Path: <SRS0=ewyC=KF=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3079FC433ED
	for <b43-dev@archiver.kernel.org>; Mon, 10 May 2021 14:53:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB56F613DE
	for <b43-dev@archiver.kernel.org>; Mon, 10 May 2021 14:53:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB56F613DE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=viDHNY+pVl1oelUbQPtY6y/zMNyIfZEriNEbltH4n0Y=; b=kowId9Tv8TyRQ3xE+SaWVSYbfq
	AJ1t6MKDYBnDS74LrwVtonkQ0moNnEn3IxcIYElcG2mN5TQCSdLvPoX1J+6D+EO72nyRmAc9jIQet
	9nKQLFB8f3FkWFuGI/IZ7Qyf07SPXN5IeT+y2TSA0fcKv5dhwOGKD75NgTID1r0muv4Z5OravykOK
	TATbl9GuhgbRFbb/NIUY9rgMIAmaC/Cm/+hBfjS+l4MA+fM474BdD0j+DkFkxFa/fQrx8BDpWqUuP
	PENAoX80xMn46bdaNQGEifwDeK+OwPtVxSwRQaB8NofULtwsbNBj61a2MFLBawtp2zh0gWx7Y+hT8
	K25ZpikA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg7H0-00EhGy-Kq; Mon, 10 May 2021 14:52:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg7GO-00Eh3D-OO
 for b43-dev@desiato.infradead.org; Mon, 10 May 2021 14:52:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From:
 Sender:Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=Yde8xYpjNkPm5Nn/Y1h9e3kAMl95TUwYN5kOAHH1R4k=; b=tHry05Py2cQBggxcSBKaZpsJcI
 pXOnzZM+C2QLUODo0gD0B+lvgelr9hAiKn+VYxRPUGtbHAHRhP5RaOJSdj+L+LVwcWEaf8amZqfK3
 +HFfKgZ7jT9SHbf9gslF33U+XqkBtgcoB5aQKiu0aIHxZEN018vwMwpIh4w3G1I0GUmFn0UFJmtBV
 92oSZIiGfP0LCPz+nNDuqOMx4IRL3vlTvJ3ge6/HgjKEpx7wuAoJN3CTbeqtk8q0umksqt4p/ySjU
 ofSVnrBaTLqsNmVCdJfq4euw916G/t2XVClt9mHjcmCJh2gD6tDuIr/MonvmI44qpYId4S80OxWdW
 EM3463bg==;
Received: from szxga06-in.huawei.com ([45.249.212.32])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg7GL-008peH-Lo
 for b43-dev@lists.infradead.org; Mon, 10 May 2021 14:52:03 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Ff3qZ58kQzmVRp;
 Mon, 10 May 2021 22:49:46 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.498.0; Mon, 10 May 2021 22:51:49 +0800
From: Zhen Lei <thunder.leizhen@huawei.com>
To: Kalle Valo <kvalo@codeaurora.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, linux-wireless
 <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>
CC: Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 1/1] b43: phy_n: Delete some useless empty code
Date: Mon, 10 May 2021 22:51:17 +0800
Message-ID: <20210510145117.4066-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.177.72]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_075201_890387_6D4B1F11 
X-CRM114-Status: UNSURE (   9.60  )
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

These TODO empty code are added by
commit 9442e5b58edb ("b43: N-PHY: partly implement SPUR workaround"). It's
been more than a decade now. I don't think anyone who wants to perfect
this workaround can follow this TODO tip exactly. Instead, it limits them
to new thinking. Remove it will be better.

No functional change.

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 665b737fbb0d820..13cc62695f4cc93 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -4601,16 +4601,6 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
 	if (nphy->hang_avoid)
 		b43_nphy_stay_in_carrier_search(dev, 1);
 
-	if (nphy->gband_spurwar_en) {
-		/* TODO: N PHY Adjust Analog Pfbw (7) */
-		if (channel == 11 && b43_is_40mhz(dev)) {
-			; /* TODO: N PHY Adjust Min Noise Var(2, tone, noise)*/
-		} else {
-			; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
-		}
-		/* TODO: N PHY Adjust CRS Min Power (0x1E) */
-	}
-
 	if (nphy->aband_spurwar_en) {
 		if (channel == 54) {
 			tone[0] = 0x20;
@@ -4636,12 +4626,6 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
 			tone[0] = 0;
 			noise[0] = 0;
 		}
-
-		if (!tone[0] && !noise[0]) {
-			; /* TODO: N PHY Adjust Min Noise Var(1, tone, noise)*/
-		} else {
-			; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
-		}
 	}
 
 	if (nphy->hang_avoid)
-- 
2.26.0.106.g9fadedd



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
