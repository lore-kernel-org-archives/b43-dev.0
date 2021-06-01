Return-Path: <SRS0=KqPk=K3=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA33C4708F
	for <b43-dev@archiver.kernel.org>; Tue,  1 Jun 2021 10:31:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8A1226139A
	for <b43-dev@archiver.kernel.org>; Tue,  1 Jun 2021 10:31:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8A1226139A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y/+QYGyJzei8elY1PGPAnBovutw6tDfq3BsY3C/xZ6w=; b=Lpt8VoQ3X6HCqS
	TlUSL+ByzPwToDNjNoCovHfMkqg5+F0MZPa5Z0533yu0rlLPadA0Zl2OM6k5MKP+FfvC0aeU7Mfrb
	ot8TKK3b/y4Q3srlHkoTjPAqtZUTfNK4Xcv4KbAOEmDwtQBik/G2Zrass9+9R83ljRtYZ6IW0A4KA
	57SU5lwFjHWGznjYcfRrnhkozBBMhbU8OFMcwvd7KNOnGKARLsUp2Drqj3dHc4G8t3Ncm//S6IWco
	dcRcm1Df9w02mQggFgVVvEeG+xoBBD7XIG9Yro/rNYkvP3GKgTSnGosVTL7SSJy/mcVsnaNuAmP3/
	wHp6YghNbJ4DLOu15BKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo1fQ-00Fwme-7v; Tue, 01 Jun 2021 10:30:36 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo1dv-00Fw1y-LT
 for b43-dev@lists.infradead.org; Tue, 01 Jun 2021 10:29:04 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <colin.king@canonical.com>)
 id 1lo1dn-0008Rt-OP; Tue, 01 Jun 2021 10:28:55 +0000
From: Colin King <colin.king@canonical.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] b43legacy: Fix spelling mistake "overflew" -> "overflowed"
Date: Tue,  1 Jun 2021 11:28:55 +0100
Message-Id: <20210601102855.8884-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_032903_752238_8D63EEBD 
X-CRM114-Status: GOOD (  11.24  )
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

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a comment. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/wireless/broadcom/b43legacy/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index f64ebff68308..eec3af9c3745 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -391,7 +391,7 @@ void b43legacy_tsf_read(struct b43legacy_wldev *dev, u64 *tsf)
 	 * registers, we should take care of register overflows.
 	 * In theory, the whole tsf read process should be atomic.
 	 * We try to be atomic here, by restaring the read process,
-	 * if any of the high registers changed (overflew).
+	 * if any of the high registers changed (overflowed).
 	 */
 	if (dev->dev->id.revision >= 3) {
 		u32 low;
-- 
2.31.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
