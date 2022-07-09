Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FF37C43334
	for <b43-dev@archiver.kernel.org>; Sat,  9 Jul 2022 13:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iH+iKGN81/Ny/UzHDh0pMDPDAH6L4x9zFUxFQ3jeP4M=; b=Er/nUOtlgyjw3w
	7rqx1TGsDRUJnmDtGqQWGroT3zRS6PMFKyQKo6ijERs2Nm9XsYjwwbIhEc89eNM1s1zRKcX5f6pD+
	R9ihTOuWvGUM58tg2sy7NYa9nx0WiwXW6xDY9FmjD/AoJwAHZkaPayOVhneBM8zImXuaEM55Z5aCA
	x3/8LxEeemJlGZEpfYryQAY0F/U/OG76Dzs5IEwJSFARPDa9eiiAEWBX4BEw6XXKNCuBWZC6Rqphx
	8vK3m3XAAeWtJ4IFoIs81m3Z1KNCd+mbPsS8pK+BI23QVw8cnNAT+MthsnRpfkNwfBDg/hFaXoG4Z
	Ay6oYg3LnTSMmG526xJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAAZ2-0085re-8G; Sat, 09 Jul 2022 13:32:04 +0000
Received: from biz-43-154-221-58.mail.qq.com ([43.154.221.58] helo=smtpbg.qq.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAAYr-0085hc-12
	for b43-dev@lists.infradead.org; Sat, 09 Jul 2022 13:31:58 +0000
X-QQ-mid: bizesmtp90t1657373497tdnfr5lx
Received: from localhost.localdomain ( [182.148.15.109])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 09 Jul 2022 21:31:25 +0800 (CST)
X-QQ-SSF: 01000000002000B0C000C00A0000000
X-QQ-FEAT: NGMqyHdgFPZS9GfmAvySZM4IBQ9huUf94Nm6JQof7SBGbKe/T1QR1vRvce1lx
	KAETXXKTPT84s/r91IIVG73OUDWsSxuGhOe2x7qveS5BIVhkd1BFLAI5vstzC7K1GIVL9mA
	TKlFXNfwc7G1JE+k2Vf9oVsmtlZ9kzsVDwJc8LIgPizRwaQNd3lXe8delt6o0f0rSmu6q6+
	KBFJOGiPbG6W785dMAuw6o2++T+AxG3+75dzj6DJO9j4TE8RU56daJsg/moIRHj/9WVE20p
	cD4XS20MWIVCzTR/4bv6LCTkuLFepZUCWF5TR8WpuXSx3/Q5pdLD7cNIdKd1GYmcmgmfJ4S
	O8u4BZ5QtPk/2qw45x8dJyjmF+6amqE074oGgmDHvDtDa+r9as=
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: kvalo@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com
Cc: linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jilin Yuan <yuanjilin@cdjrlc.com>
Subject: [PATCH] wifi: b43: fix repeated words in comments
Date: Sat,  9 Jul 2022 21:31:19 +0800
Message-Id: <20220709133119.21076-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_063153_394441_123B6585 
X-CRM114-Status: UNSURE (   8.29  )
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

 Delete the redundant word 'early'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/net/wireless/broadcom/b43/phy_common.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_common.h b/drivers/net/wireless/broadcom/b43/phy_common.h
index 4213caca9117..5ec5233acf40 100644
--- a/drivers/net/wireless/broadcom/b43/phy_common.h
+++ b/drivers/net/wireless/broadcom/b43/phy_common.h
@@ -88,7 +88,7 @@ enum b43_txpwr_result {
  * 			initialized here.
  * 			Must not be NULL.
  * @prepare_hardware:	Prepare the PHY. This is called before b43_chip_init to
- * 			do some early early PHY hardware init.
+ * 			do some early PHY hardware init.
  * 			Can be NULL, if not required.
  * @init:		Initialize the PHY.
  * 			Must not be NULL.
-- 
2.36.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
