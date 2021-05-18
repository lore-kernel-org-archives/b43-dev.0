Return-Path: <SRS0=0Y2N=KN=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E00FFC433B4
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:34:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 671FF6124C
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:34:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 671FF6124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ISPegKZ4eaxUsAGIKkGFaL4k4wDhsM0pGjY4h4dRQHs=; b=aJclwsfn37OAjDZic7LN1C2/Sa
	r8R7NDoRx0Wz/OE9x3t+OHn5QEhpR0suVsouaQaGKiVXTHnwzyysV92e3yB85h5U/9PebPASnJjAm
	9hyqPmvyIfunYh+aIsmgkZ/fvlpH+4aJRN5KBHX3ARN8AhlPpF18t09tnyxfw+4Hmv7kpK/nnlVgN
	acVzMAzn4b0FZTbAi9G7i+n9ulFRxspDVO+AvB5IM8WTumpaHlt2vX5kW8enMbPZqyjuitpltOEBF
	5J2FPuaQGRvZNa6zAUYz4uWDoHi7RcqwsWLiH6VEWEyD6BtDIKASEWoVGRZ1G+rewhnGrIJE1+TyN
	T8JonSvg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj2fK-001LC6-G4; Tue, 18 May 2021 16:33:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2ed-001L0y-41
 for b43-dev@desiato.infradead.org; Tue, 18 May 2021 16:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=2kS6hMaZQSwIk6zdra9Tufeb+j09u4HNgYms9BPpBhA=; b=QxR/8RvMLrqMuJhSYCwb3FmKgY
 W7HgZZRnNI1g3oX4qK9NW9jAJYnjJqm9v5uZbyrFKQ9GrXEIKzdpVbjheHoJJroPjA2y6iiUHNG9C
 3b3sDFfwryXAweZU5qyDrgSvkzJ+DNYCYG29h0dFvico9ohH6/E1E7PafNCPZj2kJouX6nju9de/t
 zM2hg61UACE6ZZTXFAEs4G7K1Nq93sfg3PySqEsU6e77sN4s1ZPGyopovYZjZ13lnIdkaDD31ktZK
 6nC84DmkCzKdNebGfYFF97tTvAzL49msZWBiap7eKKgA6z0/Ms2d1qF1vMV/eRnec2NaUxs070DcL
 Y1yQcIig==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2ea-00Eo4s-5v
 for b43-dev@lists.infradead.org; Tue, 18 May 2021 16:33:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 13465611AD;
 Tue, 18 May 2021 16:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621355587;
 bh=/fSUMPN4GK7C6MQNXxAQ0JDBgMYTWIO90Bp4KuCsoTQ=;
 h=From:To:Cc:Subject:Date:From;
 b=DDvz3PaxkIoOst5JbI8k+slOY0Ui7xZVb3itce8L12EavJ+1LnFpPjB/0VS8Kx2Up
 DsrZW4eZfRNN4FnzAz3cjVHgho6sPGxq+Zomu1DNOOpvH4DPDct+Wi7y6EgZYaGxIQ
 saD5iG3dY0tyiMARq6LtwxEa0zq5SX6usuBdlpKw=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-wireless@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu <chao@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] b43: don't save dentries for debugfs
Date: Tue, 18 May 2021 18:33:04 +0200
Message-Id: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_093308_286504_C5BF788A 
X-CRM114-Status: GOOD (  14.93  )
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

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Kees Cook <keescook@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Chao Yu <chao@kernel.org>
Cc: Leon Romanovsky <leon@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org
Cc: netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/net/wireless/broadcom/b43/debugfs.c | 34 +++------------------
 drivers/net/wireless/broadcom/b43/debugfs.h |  3 --
 2 files changed, 5 insertions(+), 32 deletions(-)

Note, I can take this through my debugfs tree if wanted, that way I can
clean up the debugfs_create_bool() api at the same time.  Otherwise it's
fine, I can wait until next -rc1 for that to happen.

v2: remove X/N from subject, it is a stand-alone patch.


diff --git a/drivers/net/wireless/broadcom/b43/debugfs.c b/drivers/net/wireless/broadcom/b43/debugfs.c
index 89a25aefb327..efa98444e3fb 100644
--- a/drivers/net/wireless/broadcom/b43/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43/debugfs.c
@@ -643,24 +643,14 @@ bool b43_debug(struct b43_wldev *dev, enum b43_dyndbg feature)
 	return enabled;
 }
 
-static void b43_remove_dynamic_debug(struct b43_wldev *dev)
-{
-	struct b43_dfsentry *e = dev->dfsentry;
-	int i;
-
-	for (i = 0; i < __B43_NR_DYNDBG; i++)
-		debugfs_remove(e->dyn_debug_dentries[i]);
-}
-
 static void b43_add_dynamic_debug(struct b43_wldev *dev)
 {
 	struct b43_dfsentry *e = dev->dfsentry;
 
 #define add_dyn_dbg(name, id, initstate) do {			\
 	e->dyn_debug[id] = (initstate);				\
-	e->dyn_debug_dentries[id] =				\
-		debugfs_create_bool(name, 0600, e->subdir,	\
-				&(e->dyn_debug[id]));		\
+	debugfs_create_bool(name, 0600, e->subdir,		\
+			    &(e->dyn_debug[id]));		\
 	} while (0)
 
 	add_dyn_dbg("debug_xmitpower", B43_DBG_XMITPOWER, false);
@@ -713,10 +703,9 @@ void b43_debugfs_add_device(struct b43_wldev *dev)
 
 #define ADD_FILE(name, mode)	\
 	do {							\
-		e->file_##name.dentry =				\
-			debugfs_create_file(__stringify(name),	\
-					mode, e->subdir, dev,	\
-					&fops_##name.fops);	\
+		debugfs_create_file(__stringify(name),		\
+				mode, e->subdir, dev,		\
+				&fops_##name.fops);		\
 	} while (0)
 
 
@@ -746,19 +735,6 @@ void b43_debugfs_remove_device(struct b43_wldev *dev)
 	e = dev->dfsentry;
 	if (!e)
 		return;
-	b43_remove_dynamic_debug(dev);
-
-	debugfs_remove(e->file_shm16read.dentry);
-	debugfs_remove(e->file_shm16write.dentry);
-	debugfs_remove(e->file_shm32read.dentry);
-	debugfs_remove(e->file_shm32write.dentry);
-	debugfs_remove(e->file_mmio16read.dentry);
-	debugfs_remove(e->file_mmio16write.dentry);
-	debugfs_remove(e->file_mmio32read.dentry);
-	debugfs_remove(e->file_mmio32write.dentry);
-	debugfs_remove(e->file_txstat.dentry);
-	debugfs_remove(e->file_restart.dentry);
-	debugfs_remove(e->file_loctls.dentry);
 
 	debugfs_remove(e->subdir);
 	kfree(e->txstatlog.log);
diff --git a/drivers/net/wireless/broadcom/b43/debugfs.h b/drivers/net/wireless/broadcom/b43/debugfs.h
index 0bf437c86c67..6f6b500b8881 100644
--- a/drivers/net/wireless/broadcom/b43/debugfs.h
+++ b/drivers/net/wireless/broadcom/b43/debugfs.h
@@ -32,7 +32,6 @@ struct b43_txstatus_log {
 };
 
 struct b43_dfs_file {
-	struct dentry *dentry;
 	char *buffer;
 	size_t data_len;
 };
@@ -70,8 +69,6 @@ struct b43_dfsentry {
 
 	/* Enabled/Disabled list for the dynamic debugging features. */
 	bool dyn_debug[__B43_NR_DYNDBG];
-	/* Dentries for the dynamic debugging entries. */
-	struct dentry *dyn_debug_dentries[__B43_NR_DYNDBG];
 };
 
 bool b43_debug(struct b43_wldev *dev, enum b43_dyndbg feature);
-- 
2.31.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
