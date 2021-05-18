Return-Path: <SRS0=0Y2N=KN=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE90CC433B4
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:28:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 565986124C
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:28:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 565986124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iVf2kG79xzcp4/59bPDf4W6j+T1yDJEBt6BQr7bJZ8U=; b=clpNsj+fMYgPJcj2o9JoG4pa1n
	iozwUEbshq1NiRtbYIVuuErND5AZo7HY5AvL/yAWSoDwjVkDpKT5GnYaNclB72nFsuDBd4F1wZiCQ
	90lGOx8++jfgy+zk1myCFfzujUImGsN9zNlzQLPuPqzvTcagaWSFEadwcK+1mabfJUO9RlOS4JKiO
	qvbQnJeiC0WAZmJoKQu5ZZHk/ItiLeEzZGBOYPhW7QCjnEYUOPdXzkehPZ0MPOtO63lH9lbMiPLgj
	KdAn4YmkEQ8zCn6JO6H4utsasGjQ9KW2ahFQG0tSsh2pJTiMYcOoPi8jzoWNXxxQlIDkKD1KxqBcv
	yvqETT5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj2Zo-001Jug-OP; Tue, 18 May 2021 16:28:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2Zi-001JuC-8T
 for b43-dev@desiato.infradead.org; Tue, 18 May 2021 16:28:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=gMH8xl7hnrFsCdYgrOn7JRmMiLG/3fG1bA0bGXtc9k8=; b=CGnKx2sFCfTz2Sr+5WlFhYShBS
 BpkdZFnxEQrTRofHZZ5KLUro0QlnruuCt2ENhGuvaa+ipWnGeuKVqUcwmczUnXFabMDakGGL6Kof0
 mqE8TIkfDy2iHjdhglv+BNRka6khmlmeZLQduRfEBDwBuKnpJxKvDj9EyCrmRHBvWPbBnqZ0IHkZ1
 a5qCAuILwlb2o/5+vQNRVjwZldgKXfr3fxwH8jaD9e0UMlXK1B0eogDKizpJbK0/wzvx5Bjvz/JB4
 vsB2fcdhGF1uy+IC2Pd3Zx/rLw8t6E3BIP2nC6fF+yuEFLzP4P87baq56NXNKL+gHa6T8XVsp1qi4
 5Jc1/yjg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2Zf-00Eni1-6G
 for b43-dev@lists.infradead.org; Tue, 18 May 2021 16:28:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 18A47610E9;
 Tue, 18 May 2021 16:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621355282;
 bh=l29V+plxduvFVVEwPaJVlg5NEvGRizZT2b4tdIb+Ieo=;
 h=From:To:Cc:Subject:Date:From;
 b=GkHV7Yhm3o11vOP/dsssFt23BTuzXlTk9RRHUIUiS5lOc1xISfIXHpTSQUN1hLYmX
 7+kRf0i0PrlT1WtiXJd2WQHnU7N5pWkg2+LC57NU4bYVNr+aFaeqKIdASd0AO4sDMr
 nB+tEv7ovvOYbJq62uvy959vSLik5RpbJqEWSupI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-wireless@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu <chao@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 7/9] b43: don't save dentries for debugfs
Date: Tue, 18 May 2021 18:27:59 +0200
Message-Id: <20210518162759.3700269-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_092803_296924_B1D67A22 
X-CRM114-Status: GOOD (  15.02  )
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
