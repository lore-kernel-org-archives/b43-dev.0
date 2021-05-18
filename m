Return-Path: <SRS0=0Y2N=KN=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1CAC433ED
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:31:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1886C61074
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:31:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1886C61074
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dovgOu71Mt5M6nqoI0XLC2A8aPIaTRtwnuoO9dAeahI=; b=hXW1EGKvIOKqcAZMWWggd94PqI
	mxZMcISUStJKJp4KoSzu3cRC9KbXCkelo7eAAbrXchVKgJzhTMv0ORoMRvOvEevf7TI7HeWY61lnC
	gpAIcIRgLk87wC4eBxuLO9zzYrsqPFGFm0cz+pctt+b2+dDdG+HMkytwyijCIeyVvxwPdYvlxPA/+
	7fjeQ/Td1hT1ew7H9M0KzVGQodDLctRWyTAPnbw+rQrqTTJXDUxmGNVHs4yBd/cQuQy8n3kqv4kJ3
	WzaUG3Kk60f0zIOGpVUbwP1sTZFkpBP2BnE8r0S23anGwseq4Q2pxSysn1qWmX60Snz+TcyRfPWnc
	FOO9u1wQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj2cu-001KYo-Ug; Tue, 18 May 2021 16:31:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2Zo-001Jv0-4D
 for b43-dev@desiato.infradead.org; Tue, 18 May 2021 16:28:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=rC77hgDbNIeW5WDzHSR94zBvAMdlmA+AXRpoZ77He/M=; b=Eke2gbFzGTlXIIrOGoEcSVeF6K
 3c4EG6ZQ2breAlpT3KDU7n3zs+UATgo12hvoPXLuPx7Q1tEZIoLktPTuuS5MN5Jky/rW05iGUv15v
 v8MPNNN1LZxjqeybGMfiq0/xcbGBJ+SKYKCUNcgt+uJEIAIDhgq/gvjYAuTDlEZQ4mJWLoaroBzbx
 Cce9Mu7WsHHX2Bk8hU1MqeBuUasX8YYZXqXasO1zisstqhcwj9Z7fi3UYzw3qbL0QpOKtZzQlwR7k
 nM6ptIu1MEQr+llscGO2eeOFZmjadrP4VgIk+SDoLFLMr/PITbVINWY9KgP9sJrzkknJXC5TIrBtH
 NkflGCMA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2Zl-00EnjS-HH
 for b43-dev@lists.infradead.org; Tue, 18 May 2021 16:28:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0AB46109F;
 Tue, 18 May 2021 16:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621355289;
 bh=4zLrvE+vCu7f2a/CkEJrYYThP5aozCo8/VKyDst76eM=;
 h=From:To:Cc:Subject:Date:From;
 b=FlOxQ//H9+fiCQb/HN0gC4LrbumTMF98Kh1Gr+E2t7ye1J6sJkWMONWU9/1ZS/Zmm
 Yfr+8HuUqhxaodL+TwUsWa4VvNi/Ces2/mHbXxEkP1jhqQP/P2YpwlbLB3I2Iz/EBb
 wjKfk2+9AMWoqukdK5twj+sQg427CpcV1kAoJbAE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-wireless@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 8/9] b43legacy: don't save dentries for debugfs
Date: Tue, 18 May 2021 18:28:05 +0200
Message-Id: <20210518162805.3700405-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_092809_630477_3C8152DF 
X-CRM114-Status: GOOD (  15.23  )
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

There is no need to keep around the dentry pointers for the debugfs
files as they will all be automatically removed when the subdir is
removed.  So save the space and logic involved in keeping them around by
just getting rid of them entirely.

By doing this change, we remove one of the last in-kernel user that was
storing the result of debugfs_create_bool(), so that api can be cleaned
up.

Cc: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org
Cc: netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 .../net/wireless/broadcom/b43legacy/debugfs.c | 29 ++++---------------
 .../net/wireless/broadcom/b43legacy/debugfs.h |  3 --
 2 files changed, 5 insertions(+), 27 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/debugfs.c b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
index e7e4293c01f2..6b0e8d117061 100644
--- a/drivers/net/wireless/broadcom/b43legacy/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
@@ -336,24 +336,14 @@ int b43legacy_debug(struct b43legacy_wldev *dev, enum b43legacy_dyndbg feature)
 	return !!(dev->dfsentry && dev->dfsentry->dyn_debug[feature]);
 }
 
-static void b43legacy_remove_dynamic_debug(struct b43legacy_wldev *dev)
-{
-	struct b43legacy_dfsentry *e = dev->dfsentry;
-	int i;
-
-	for (i = 0; i < __B43legacy_NR_DYNDBG; i++)
-		debugfs_remove(e->dyn_debug_dentries[i]);
-}
-
 static void b43legacy_add_dynamic_debug(struct b43legacy_wldev *dev)
 {
 	struct b43legacy_dfsentry *e = dev->dfsentry;
 
 #define add_dyn_dbg(name, id, initstate) do {			\
 	e->dyn_debug[id] = (initstate);				\
-	e->dyn_debug_dentries[id] =				\
-		debugfs_create_bool(name, 0600, e->subdir,	\
-				&(e->dyn_debug[id]));		\
+	debugfs_create_bool(name, 0600, e->subdir,		\
+			    &(e->dyn_debug[id]));		\
 	} while (0)
 
 	add_dyn_dbg("debug_xmitpower", B43legacy_DBG_XMITPOWER, false);
@@ -396,11 +386,9 @@ void b43legacy_debugfs_add_device(struct b43legacy_wldev *dev)
 
 #define ADD_FILE(name, mode)	\
 	do {							\
-		e->file_##name.dentry =				\
-			debugfs_create_file(__stringify(name),	\
-					mode, e->subdir, dev,	\
-					&fops_##name.fops);	\
-		e->file_##name.dentry = NULL;			\
+		debugfs_create_file(__stringify(name), mode,	\
+				    e->subdir, dev,		\
+				    &fops_##name.fops);		\
 	} while (0)
 
 
@@ -424,13 +412,6 @@ void b43legacy_debugfs_remove_device(struct b43legacy_wldev *dev)
 	e = dev->dfsentry;
 	if (!e)
 		return;
-	b43legacy_remove_dynamic_debug(dev);
-
-	debugfs_remove(e->file_tsf.dentry);
-	debugfs_remove(e->file_ucode_regs.dentry);
-	debugfs_remove(e->file_shm.dentry);
-	debugfs_remove(e->file_txstat.dentry);
-	debugfs_remove(e->file_restart.dentry);
 
 	debugfs_remove(e->subdir);
 	kfree(e->txstatlog.log);
diff --git a/drivers/net/wireless/broadcom/b43legacy/debugfs.h b/drivers/net/wireless/broadcom/b43legacy/debugfs.h
index 7a37764406b1..924130880dfe 100644
--- a/drivers/net/wireless/broadcom/b43legacy/debugfs.h
+++ b/drivers/net/wireless/broadcom/b43legacy/debugfs.h
@@ -28,7 +28,6 @@ struct b43legacy_txstatus_log {
 };
 
 struct b43legacy_dfs_file {
-	struct dentry *dentry;
 	char *buffer;
 	size_t data_len;
 };
@@ -49,8 +48,6 @@ struct b43legacy_dfsentry {
 
 	/* Enabled/Disabled list for the dynamic debugging features. */
 	bool dyn_debug[__B43legacy_NR_DYNDBG];
-	/* Dentries for the dynamic debugging entries. */
-	struct dentry *dyn_debug_dentries[__B43legacy_NR_DYNDBG];
 };
 
 int b43legacy_debug(struct b43legacy_wldev *dev,
-- 
2.31.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
