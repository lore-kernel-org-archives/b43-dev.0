Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D9EFC43334
	for <b43-dev@archiver.kernel.org>; Wed, 20 Jul 2022 19:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bSrd6dpPiCCX9n2dKFuHiERc1oOt5QWa9il3VIotdxQ=; b=0/9EEWqu1Wz2r/
	Kh8L2e1Nt6wYp0wkJ22pjuKCMwmSu/Kwpr7iy0IRrM+mOH0uSiaBDcSnRU6nt1rVArlhpkTzCDJSo
	wSnjnAxpPrzj8I+cjcBXLAy1EDzcs3oqijCyBVaNsWVL/cBBp7DjBY9pZHb8KPf6em9pY7uLG4eAN
	QuIJZg26lBBmbGQWS41gunsdA/UOLpaluVzdWUKj3W1E7cIxxDKCnpwrP7ltQMHPIMp0+DkGdeWo8
	fAm3KSE2U7+p0F7UzUA45VJ3LZLGo7WyI+AoSr4fCDX31AhvLKzoQrfGQS6Hd16zqnscRd/NoMKDF
	Ydtr7qVlDESAOzCTTpBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEFbP-00A6T5-99; Wed, 20 Jul 2022 19:43:23 +0000
Received: from biz-43-154-221-58.mail.qq.com ([43.154.221.58] helo=smtpbg.qq.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEFbF-00A642-M0
	for b43-dev@lists.infradead.org; Wed, 20 Jul 2022 19:43:18 +0000
X-QQ-mid: bizesmtp87t1658346178tf9ar22l
Received: from harry-jrlc.. ( [125.70.163.183])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 21 Jul 2022 03:42:47 +0800 (CST)
X-QQ-SSF: 0100000000200030C000C00A0000020
X-QQ-FEAT: KfdWLgjtJHZnYfL4/TlHXincVqdrjmUZX2CfrZIoxIJUb1Jv+GS1V2tXzXOhM
	pG3EYQNNGq5dwwe6bTd4pSDIPh1YWU0zyyojJMYm2PDPw63PAnN57bsM3V1b8sIlbGAhnmM
	FErGUxHooWzuzh3CD3yakhRpmzOI+gNlsgkv8C6l1JbsBUYAUCdDpes7rdacyok/hOhWXsi
	YDcgdvB0mH/R5A1XgK+NxmTEocQGcvK/+4IUxvdgGW4NhZc7M0Q967n44AVs4FWV+p3ryjE
	E0N6I4dvX3YNvZLCriaKGfTSZGh3YTTFgbVL4bZIwGvJ9BoT4aWmkTbWwFMtrEZ7ZEwbGiH
	rSxXrSNPWL0bAHxYcaMByIYmEO6AgMmGXc7ile2SGkjo6AXrJVLWqPlM6Sivw==
X-QQ-GoodBg: 0
From: Xin Gao <gaoxin@cdjrlc.com>
To: kvalo@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com
Cc: linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Xin Gao <gaoxin@cdjrlc.com>
Subject: [PATCH] b43:do not initialise statics to 0.
Date: Thu, 21 Jul 2022 03:42:45 +0800
Message-Id: <20220720194245.8442-1-gaoxin@cdjrlc.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_124314_075336_8F859A5E 
X-CRM114-Status: UNSURE (   7.81  )
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

do not initialise statics to 0.

Signed-off-by: Xin Gao <gaoxin@cdjrlc.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 17bcec5f3ff7..5e233d0e06c0 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -105,7 +105,7 @@ int b43_modparam_verbose = B43_VERBOSITY_DEFAULT;
 module_param_named(verbose, b43_modparam_verbose, int, 0644);
 MODULE_PARM_DESC(verbose, "Log message verbosity: 0=error, 1=warn, 2=info(default), 3=debug");
 
-static int b43_modparam_pio = 0;
+static int b43_modparam_pio;
 module_param_named(pio, b43_modparam_pio, int, 0644);
 MODULE_PARM_DESC(pio, "Use PIO accesses by default: 0=DMA, 1=PIO");
 
-- 
2.30.2


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
