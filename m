Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A45C43602
	for <b43-dev@archiver.kernel.org>; Wed,  1 Jul 2026 13:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQ1SNz4Jg7voCwQ+D5b567DamsMlRYjBwj+BzN2aOlQ=; b=BOTp3EUnmGaLAy
	0sumLfFRVmryAnrvINeUf5aiKMpkgoQKXeFwnroSxPgWyI5IUE45ZXO6kJMrgI3yXkKkP5YT5lGwK
	ppfrcpU+JDB80grOpwTtnOSOL6yKOT4DemD6wcr2YDbZuml4VvqxXU09F8dmI/8WmfNHoxX2+riRf
	j/a5WkBUBAAYKTPKY7z9fGMZJ55B5RwpHRUkPh1PerWsVw4xtDza5OqpepotE8k5h/1uuKctCppNx
	xjYBArAAAc2Ef5P4GkZKxTcTz8s7ss6MonnPyxcPYXd+lrCoidm4QuvSmOusKBwgMBDmATrIr1qpX
	ce2I0Xxl2TIU9S2ClrUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wevTE-00000002EP6-3JHX;
	Wed, 01 Jul 2026 13:59:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wevTD-00000002ENl-2QIW;
	Wed, 01 Jul 2026 13:59:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C247560122;
	Wed,  1 Jul 2026 13:59:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BA281F00A3A;
	Wed,  1 Jul 2026 13:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782914358;
	bh=xHs6OlXAq+nMv2o/knd4pQu7oA8n+V4gayHSkVMilCw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=cu3l05zCJydWaCb6XZleI8j4SchsHom65b6soJbENEKe9cMFPDoR05KBkYA6O0BqV
	 U/ym3E0Sw51sEY+n/5JJId5v4wFHFCXPa+hJS2OKnLkTMZ4jfnCLdHXRG4fMmMUkNb
	 374SuCaAnYJfVw+DfMSj6j6S5QtH2Dmp+M0MjO+hMgdHDY5iHQXdy7MImJ7i4sQA2E
	 STsMPyxBDpSX7NtcYjSV2Gi4BYa084wrEHJsD0AwRYS6rD6at3YLyEOfIdoJkcls49
	 Beb/26klLPEQ10mPDSUY4SukxC17acg3+oE8gSfBuh7c5ZhKWnGTskGeNSpzm+J/gI
	 3f/Pf6DR4MmUQ==
From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Date: Wed, 01 Jul 2026 16:59:10 +0300
Subject: [PATCH 1/4] b43, b43legacy: debugfs: use kzalloc() to allocate
 formatting buffers
MIME-Version: 1.0
Message-Id: <20260701-b4-drivers-wireless-v1-1-60264cdf2efe@kernel.org>
References: <20260701-b4-drivers-wireless-v1-0-60264cdf2efe@kernel.org>
In-Reply-To: <20260701-b4-drivers-wireless-v1-0-60264cdf2efe@kernel.org>
To: Johannes Berg <johannes.berg@intel.com>
Cc: Brian Norris <briannorris@chromium.org>, 
 Francesco Dolcini <francesco@dolcini.it>, Jakub Kicinski <kuba@kernel.org>, 
 Mike Rapoport <rppt@kernel.org>, b43-dev@lists.infradead.org, 
 libertas-dev@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, linux-wireless@vger.kernel.org, netdev@vger.kernel.org
X-Mailer: b4 0.16-dev
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

b43* debugfs functions allocate 16 KiB buffers for formatting debug output
text using __get_free_pages().

kzalloc() provides a better API that does not require ugly casts and
kfree() does not need to know the size of the freed object and for 16 Kib
allocation kzalloc() will anyway delegate it to buddy.

Replace use of __get_free_pages() with kzalloc().

Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 drivers/net/wireless/broadcom/b43/debugfs.c       | 12 +++++-------
 drivers/net/wireless/broadcom/b43legacy/debugfs.c | 12 +++++-------
 2 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/debugfs.c b/drivers/net/wireless/broadcom/b43/debugfs.c
index acddae68947a..31a1ff00c1a4 100644
--- a/drivers/net/wireless/broadcom/b43/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43/debugfs.c
@@ -495,7 +495,6 @@ static ssize_t b43_debugfs_read(struct file *file, char __user *userbuf,
 	ssize_t ret;
 	char *buf;
 	const size_t bufsize = 1024 * 16; /* 16 kiB buffer */
-	const size_t buforder = get_order(bufsize);
 	int err = 0;
 
 	if (!count)
@@ -518,15 +517,14 @@ static ssize_t b43_debugfs_read(struct file *file, char __user *userbuf,
 	dfile = fops_to_dfs_file(dev, dfops);
 
 	if (!dfile->buffer) {
-		buf = (char *)__get_free_pages(GFP_KERNEL, buforder);
+		buf = kzalloc(bufsize, GFP_KERNEL);
 		if (!buf) {
 			err = -ENOMEM;
 			goto out_unlock;
 		}
-		memset(buf, 0, bufsize);
 		ret = dfops->read(dev, buf, bufsize);
 		if (ret <= 0) {
-			free_pages((unsigned long)buf, buforder);
+			kfree(buf);
 			err = ret;
 			goto out_unlock;
 		}
@@ -538,7 +536,7 @@ static ssize_t b43_debugfs_read(struct file *file, char __user *userbuf,
 				      dfile->buffer,
 				      dfile->data_len);
 	if (*ppos >= dfile->data_len) {
-		free_pages((unsigned long)dfile->buffer, buforder);
+		kfree(dfile->buffer);
 		dfile->buffer = NULL;
 		dfile->data_len = 0;
 	}
@@ -577,7 +575,7 @@ static ssize_t b43_debugfs_write(struct file *file,
 		goto out_unlock;
 	}
 
-	buf = (char *)get_zeroed_page(GFP_KERNEL);
+	buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	if (!buf) {
 		err = -ENOMEM;
 		goto out_unlock;
@@ -591,7 +589,7 @@ static ssize_t b43_debugfs_write(struct file *file,
 		goto out_freepage;
 
 out_freepage:
-	free_page((unsigned long)buf);
+	kfree(buf);
 out_unlock:
 	mutex_unlock(&dev->wl->mutex);
 
diff --git a/drivers/net/wireless/broadcom/b43legacy/debugfs.c b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
index 3ad99124d522..a04d90d7307c 100644
--- a/drivers/net/wireless/broadcom/b43legacy/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
@@ -192,7 +192,6 @@ static ssize_t b43legacy_debugfs_read(struct file *file, char __user *userbuf,
 	ssize_t ret;
 	char *buf;
 	const size_t bufsize = 1024 * 16; /* 16 KiB buffer */
-	const size_t buforder = get_order(bufsize);
 	int err = 0;
 
 	if (!count)
@@ -215,12 +214,11 @@ static ssize_t b43legacy_debugfs_read(struct file *file, char __user *userbuf,
 	dfile = fops_to_dfs_file(dev, dfops);
 
 	if (!dfile->buffer) {
-		buf = (char *)__get_free_pages(GFP_KERNEL, buforder);
+		buf = kzalloc(bufsize, GFP_KERNEL);
 		if (!buf) {
 			err = -ENOMEM;
 			goto out_unlock;
 		}
-		memset(buf, 0, bufsize);
 		if (dfops->take_irqlock) {
 			spin_lock_irq(&dev->wl->irq_lock);
 			ret = dfops->read(dev, buf, bufsize);
@@ -228,7 +226,7 @@ static ssize_t b43legacy_debugfs_read(struct file *file, char __user *userbuf,
 		} else
 			ret = dfops->read(dev, buf, bufsize);
 		if (ret <= 0) {
-			free_pages((unsigned long)buf, buforder);
+			kfree(buf);
 			err = ret;
 			goto out_unlock;
 		}
@@ -240,7 +238,7 @@ static ssize_t b43legacy_debugfs_read(struct file *file, char __user *userbuf,
 				      dfile->buffer,
 				      dfile->data_len);
 	if (*ppos >= dfile->data_len) {
-		free_pages((unsigned long)dfile->buffer, buforder);
+		kfree(dfile->buffer);
 		dfile->buffer = NULL;
 		dfile->data_len = 0;
 	}
@@ -279,7 +277,7 @@ static ssize_t b43legacy_debugfs_write(struct file *file,
 		goto out_unlock;
 	}
 
-	buf = (char *)get_zeroed_page(GFP_KERNEL);
+	buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	if (!buf) {
 		err = -ENOMEM;
 		goto out_unlock;
@@ -298,7 +296,7 @@ static ssize_t b43legacy_debugfs_write(struct file *file,
 		goto out_freepage;
 
 out_freepage:
-	free_page((unsigned long)buf);
+	kfree(buf);
 out_unlock:
 	mutex_unlock(&dev->wl->mutex);
 

-- 
2.53.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
