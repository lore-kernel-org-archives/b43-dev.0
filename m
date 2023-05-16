Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11254C77B7A
	for <b43-dev@archiver.kernel.org>; Tue, 16 May 2023 07:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y7yFkeH3eGlYXOs/fpJN7XCX3Di7j4+yrcEG4QGwG8c=; b=nJGzqYRkmMm3o+
	PS7ZuJV9mTkIxh8/E/xIx5rM/A/2zntPyhyTXElblqscABtP6x5JCVOAhG+pwCjouq4fSjJvdg9s6
	/CjaVY0DmP1qW4ystu6OEySPtwuiHw6kaH452ET29HImnmqTmAvO7yAmgrVfs862lDoebRlkSYvjB
	ofjR1XgkEk9Ep4VOWmocwtYUPeg83qEChepqJMea+qHqMVvQbczfnOiaF1e29YCMb5dxXnVT/Kbak
	UOTqcjoVa3bhh8cn289ekTrjMJxadEm4eyaBdjKqPYiH+7XunGBpTssa/4EiRDGdgxAIZiR4jZWz5
	J+juqVId6BpgTp16SaPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pypNm-004htE-2O;
	Tue, 16 May 2023 07:46:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pypNi-004hsK-0m
	for b43-dev@lists.infradead.org;
	Tue, 16 May 2023 07:46:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 14A5060BC5;
	Tue, 16 May 2023 07:46:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CE33C433D2;
	Tue, 16 May 2023 07:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684223160;
	bh=DWVQGg8BOQg1TC5mQhyL5M5QVn3UeUKSLvymNtkvcT4=;
	h=From:To:Cc:Subject:Date:From;
	b=c4TkzfttZpQk0Ptc+5OqMy617FPzeTD+h9izO2F78CbvIexZDfGN86mXf7dEkoxa9
	 h+lGw7DZfar/rMhiBdMV4WCAtrfSzoEHviL4BQsivRZF2nzHS6ZauNO62pFMsNyyFL
	 AteyHMEc3rleqpNvRDnhzy77+P+WDF7n10KIosEBEWyuPIDs9/UsoqZh4aj3MMuZza
	 bJM3xkdKlERWL9lHGePfDyU0EOfg70bLlL5XYtvIJalyVwTF6WxBKZ/z8Zb6jT28xc
	 VAay31rGQE1qLGmb8S1LUUoYgAhMPhbg/2H3rsouC0ngqss5jB13ErcvDHW8pvuGMV
	 nc42AQEJ4z8Hg==
From: Arnd Bergmann <arnd@kernel.org>
To: Kalle Valo <kvalo@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev
Subject: [PATCH] wifi: b43: fix incorrect __packed annotation
Date: Tue, 16 May 2023 09:45:42 +0200
Message-Id: <20230516074554.1674536-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_004602_339682_07738C5F 
X-CRM114-Status: GOOD (  14.64  )
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

From: Arnd Bergmann <arnd@arndb.de>

clang warns about an unpacked structure inside of a packed one:

drivers/net/wireless/broadcom/b43/b43.h:654:4: error: field data within 'struct b43_iv' is less aligned than 'union (unnamed union at /home/arnd/arm-soc/drivers/net/wireless/broadcom/b43/b43.h:651:2)' and is usually due to 'struct b43_iv' being packed, which can lead to unaligned accesses [-Werror,-Wunaligned-access]

The problem here is that the anonymous union has the default alignment
from its members, apparently because the original author mixed up the
placement of the __packed attribute by placing it next to the struct
member rather than the union definition. As the struct itself is
also marked as __packed, there is no need to mark its members, so just
move the annotation to the inner type instead.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/broadcom/b43/b43.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/b43.h b/drivers/net/wireless/broadcom/b43/b43.h
index 9fc7c088a539..67b4bac048e5 100644
--- a/drivers/net/wireless/broadcom/b43/b43.h
+++ b/drivers/net/wireless/broadcom/b43/b43.h
@@ -651,7 +651,7 @@ struct b43_iv {
 	union {
 		__be16 d16;
 		__be32 d32;
-	} data __packed;
+	} __packed data;
 } __packed;
 
 
-- 
2.39.2


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
