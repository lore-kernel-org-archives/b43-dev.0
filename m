Return-Path: <SRS0=m+ae=KG=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D1CC433B4
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 10:22:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ACD52610C9
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 10:22:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ACD52610C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b2CMOJofCO8QO4WRfsj7jjmURUIkv2NrRhDxfNED8nw=; b=Ouo/vxSSQj0tDCZXk4tvKAZ6z
	5Y21eCCpcD/XsQtys2glstXPq6JSUe4q85EL0PEdbt9HdEr6E811cGpd0iLM5Hag57PJ6+vArbzww
	V6/SVDITpiBhmugKcjA3zOmZOs3XDgVqer2t6ctsX7JWG9Hgvb0zsg5f7cbUZ+5zUZ2Ia6i1OhqcE
	V5Z6AOv7sbeqKvpOpSY21kfqHT1BwRoUHgS0T4o7bhZToePtfAUVUfXZByx/TzBZJy6oLBNkosTkX
	FW/P0MX9i4cifylVMlBRHRhLr1XAF5XiG2AoRnCZiPJGUNFUphrfLsI6dkuBawHev336DXUT7/P0D
	CrywIm6Kg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgPWf-00Gtse-2H; Tue, 11 May 2021 10:22:05 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgJHq-00GCi4-2x
 for b43-dev@desiato.infradead.org; Tue, 11 May 2021 03:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=WdE9t6AmVYsc7qbeJt2oisp2K6VvAlMUDquiVUm3KJc=; b=f9wI/KHeJZ/1c2+xEKGrPbXnfp
 7GIEPpk8WwKDr7j6dDt7beisY8NeOTUqa/mYaxgUVV+Or/6+6EZlomWVX3x8sUHyB5slTs35WIKOZ
 gMXRVGqrM+ZmPumIA5vowjch4UcUocrgWwDhGhCi/Qi/HVoUCUxMmeoZ79RKK6BZaZmhJAL64Hh4b
 s38nx5QY+V8LfXTO4HY3uJNloqcbOEOBvGCdybFm/INKvwtJp49XcIk0hKxofhjyccUjmq17ab5Y3
 qhC2brehBNOkDqPjMHLQeYKMayT/xELJHM+V/4H9QPp14paaRrdV8ZAv7+zsd1P552LbfINRj6z9h
 jRgJfAlw==;
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgJHn-009Hb2-FT
 for b43-dev@lists.infradead.org; Tue, 11 May 2021 03:42:20 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FfNvt56gkz1BKbl;
 Tue, 11 May 2021 11:39:38 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.498.0; Tue, 11 May 2021 11:42:07 +0800
From: Zhen Lei <thunder.leizhen@huawei.com>
To: Kalle Valo <kvalo@codeaurora.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev
 <b43-dev@lists.infradead.org>, netdev <netdev@vger.kernel.org>
CC: Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH v2 1/1] b43: phy_n: Delete some useless TODO code
Date: Tue, 11 May 2021 11:42:03 +0800
Message-ID: <20210511034203.4122-2-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
In-Reply-To: <20210511034203.4122-1-thunder.leizhen@huawei.com>
References: <20210511034203.4122-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.174.177.72]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_204219_700781_0E5B693A 
X-CRM114-Status: GOOD (  10.60  )
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_204219_700781_0E5B693A 
X-CRM114-Status: UNSURE (   6.79  )
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

By the way, this helps reduce some binary code size.
Before:
text    data    bss     dec     hex
74472   9967    0       84439   149d7

After:
text    data    bss     dec     hex
74408   9919    0       84327   14967

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 47 -----------------------
 1 file changed, 47 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 665b737fbb0d820..cf3ccf4ddfe7230 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -4592,58 +4592,11 @@ static void b43_nphy_spur_workaround(struct b43_wldev *dev)
 {
 	struct b43_phy_n *nphy = dev->phy.n;
 
-	u8 channel = dev->phy.channel;
-	int tone[2] = { 57, 58 };
-	u32 noise[2] = { 0x3FF, 0x3FF };
-
 	B43_WARN_ON(dev->phy.rev < 3);
 
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
-	if (nphy->aband_spurwar_en) {
-		if (channel == 54) {
-			tone[0] = 0x20;
-			noise[0] = 0x25F;
-		} else if (channel == 38 || channel == 102 || channel == 118) {
-			if (0 /* FIXME */) {
-				tone[0] = 0x20;
-				noise[0] = 0x21F;
-			} else {
-				tone[0] = 0;
-				noise[0] = 0;
-			}
-		} else if (channel == 134) {
-			tone[0] = 0x20;
-			noise[0] = 0x21F;
-		} else if (channel == 151) {
-			tone[0] = 0x10;
-			noise[0] = 0x23F;
-		} else if (channel == 153 || channel == 161) {
-			tone[0] = 0x30;
-			noise[0] = 0x23F;
-		} else {
-			tone[0] = 0;
-			noise[0] = 0;
-		}
-
-		if (!tone[0] && !noise[0]) {
-			; /* TODO: N PHY Adjust Min Noise Var(1, tone, noise)*/
-		} else {
-			; /* TODO: N PHY Adjust Min Noise Var(0, NULL, NULL)*/
-		}
-	}
-
 	if (nphy->hang_avoid)
 		b43_nphy_stay_in_carrier_search(dev, 0);
 }
-- 
2.26.0.106.g9fadedd



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
