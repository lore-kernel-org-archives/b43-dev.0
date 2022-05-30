Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB088C433EF
	for <b43-dev@archiver.kernel.org>; Mon, 30 May 2022 14:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NZJCK7+f+ZVAa8ceRa07TiUtAYAam+KGjE0kFJkBFY=; b=RIhDFCPa/De2hb
	q1nm+EIFLNuCZ+mjTZ+/mISFKmbECSR8hMiFZYGHvxcdNVRRIeq64rB1fyrYYxSTRRMp0/BUyZ41P
	DDceoa1OIaRWxFbP5DkCivAoGSeU3jm2mo0MLtCpyAcWMqqIWH5TGEOg72i6JfCjNfta7vezwyNsY
	4ckH9Ov+Eopq5wum6WDORNwPZQUF4OenBMgZ1sJ10nn7vvqp4+x1H2NpgMbKnf9mQRo3QFqO65UYj
	FkeRK4uPOTEAkLIjJld/S2f8OGve18bc5ANpTyqF8TIg3EmeauC/+u/CMimE0p/sNwSjbfpV4MqmF
	GZnC9kq9mIBDZDFdsz5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvg1O-0072ih-ND; Mon, 30 May 2022 14:05:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfgx-006qby-0F
	for b43-dev@lists.infradead.org; Mon, 30 May 2022 13:44:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 79ADF60FCC;
	Mon, 30 May 2022 13:44:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC8DDC36AEB;
	Mon, 30 May 2022 13:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653918257;
	bh=nQbb+Dvg94Bd3lpBOt9d1emxz4LV6Rz434ipGpczzEo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=X0rdyFLaxJwb+szlVUg9zlwBKATR6kk8YY5ullpHoS99BrmgtWru29MbndrOFHX6I
	 I1989FyCc0Z6Ar/WcfKugm+veaHx2HeuL/mPGWhZU0r2Ywt9KQvIVK/P6EpnoHPoOE
	 +2akMqWpCm11wde5Ot3HWvNuDG9537trWQsViu9VXQbFe1I3KG5lbMziwcH3qgwgB/
	 RtvfcxAQWPKQvUp8hQtmKIGP6d2wZPYxqndLxzre/yuiLUv2/r1wpTtbs+4jIpq2MS
	 l4ilWibLPfL082oXs/MZo81nTK4QmcpEI5I2MvXJbeCMDASKgAPNAsX0SLGiRb+LY3
	 KS30Q6mWA2lvg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Haowen Bai <baihaowen@meizu.com>,
	Kalle Valo <kvalo@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	Larry.Finger@lwfinger.net,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 05/76] b43legacy: Fix assigning negative value to unsigned variable
Date: Mon, 30 May 2022 09:42:55 -0400
Message-Id: <20220530134406.1934928-5-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530134406.1934928-1-sashal@kernel.org>
References: <20220530134406.1934928-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_064419_150076_7869DA28 
X-CRM114-Status: GOOD (  11.81  )
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

From: Haowen Bai <baihaowen@meizu.com>

[ Upstream commit 3f6b867559b3d43a7ce1b4799b755e812fc0d503 ]

fix warning reported by smatch:
drivers/net/wireless/broadcom/b43legacy/phy.c:1181 b43legacy_phy_lo_b_measure()
warn: assigning (-772) to unsigned variable 'fval'

Signed-off-by: Haowen Bai <baihaowen@meizu.com>
Signed-off-by: Kalle Valo <kvalo@kernel.org>
Link: https://lore.kernel.org/r/1648203433-8736-1-git-send-email-baihaowen@meizu.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/broadcom/b43legacy/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/phy.c b/drivers/net/wireless/broadcom/b43legacy/phy.c
index 05404fbd1e70..c1395e622759 100644
--- a/drivers/net/wireless/broadcom/b43legacy/phy.c
+++ b/drivers/net/wireless/broadcom/b43legacy/phy.c
@@ -1123,7 +1123,7 @@ void b43legacy_phy_lo_b_measure(struct b43legacy_wldev *dev)
 	struct b43legacy_phy *phy = &dev->phy;
 	u16 regstack[12] = { 0 };
 	u16 mls;
-	u16 fval;
+	s16 fval;
 	int i;
 	int j;
 
-- 
2.35.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
