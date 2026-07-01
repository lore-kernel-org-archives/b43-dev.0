Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68703C43327
	for <b43-dev@archiver.kernel.org>; Wed,  1 Jul 2026 13:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgfD+7kUJvhJ4YhVE6xzF42xw9MweYwHgsA01LIXaX4=; b=ymVB/btLcccM6D
	pPy1FJiILSh7iBwSlZhXG16MyLr2Fyz2yeJQhu0sOwEKiKyT4mAM9dKzj4wl1Vn6rtLKwVbuSEjlS
	9D628rvqt+TBDA9d0yNvyN1P7u8SWM/1x4yZOZNGwiS1LCqEUKENDZ1M7D2TLGey42dsFZ/aR99EA
	/CGfOIGIIScuYItZxwV+5PB7e4cKNddAqL6Hjr+hNTaBtmMq/gt7dBulCf7+dq9fyNRim/RxVvSxj
	sUpesPl6FHvAFV3L54DZf0CDdvy48vP1jHMFF84Qw0iBVCIn/xiU36/bXFUvCiFpISFF8xV8ekx+X
	2Z4YZfrvYWYiLz/BB/7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wevTH-00000002ER5-00O6;
	Wed, 01 Jul 2026 13:59:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wevTF-00000002EPy-3xxK;
	Wed, 01 Jul 2026 13:59:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A33443FA7;
	Wed,  1 Jul 2026 13:59:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 015A41F000E9;
	Wed,  1 Jul 2026 13:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782914361;
	bh=pbgNrbVcE6yo3qKfNUymapKPERWtTNs1YyhYIxOunlw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=gGUOfw19z9zcXHmTyQPeHMZ4KmRV9cu3yN/lbxMHWdu8gF9losEL3o6ZHwBi/BxU2
	 snznD72FVfVJWcH2mFTphTMO83VT3/IDpoAPnQT67O7aiEa798/AYLzL0x7THSw89s
	 ZaUIn8nD0BzLkazKGbuVDI2jklc+ZKmTZ36xGs2H+PQDL72m7O9HjRS0Yp9QyT/xWq
	 1ST0Ym2b9TUEoyBPrFolW+Lx6AW24DrkLJUSRfcb0cWJdHSCiH+86gPEsSVBoWc1y0
	 kO+P5oaZX1/bVHYXJPc3AUNvXE2oCboGIVKjmQ49EuXl7K2ZWpSQTx6rxPoMHYG8b6
	 +2M4HEGWNHgXA==
From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Date: Wed, 01 Jul 2026 16:59:11 +0300
Subject: [PATCH 2/4] libertas: debugfs: use kzalloc() to allocate
 formatting buffers
MIME-Version: 1.0
Message-Id: <20260701-b4-drivers-wireless-v1-2-60264cdf2efe@kernel.org>
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

libertas debugfs functions allocate buffers for formatting debug
output text using get_zeroed_page().

These buffers can be allocated with kmalloc() as there's nothing special
about them to go directly to the page allocator.

kmalloc() provides a better API that does not require ugly casts and
kfree() does not need to know the size of the freed object.

Performance difference between kmalloc() and __get_free_pages() is not
measurable as both allocators take an object/page from a per-CPU list for
fast path allocations.

For the slow path the performance is anyway determined by the amount of
reclaim involved rather than by what allocator is used.

Replace use of get_zeroed_page() with kzalloc() and free_page() with
kfree().

Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 drivers/net/wireless/marvell/libertas/debugfs.c | 39 ++++++++++---------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/debugfs.c b/drivers/net/wireless/marvell/libertas/debugfs.c
index 9ebd69134940..9428f954837a 100644
--- a/drivers/net/wireless/marvell/libertas/debugfs.c
+++ b/drivers/net/wireless/marvell/libertas/debugfs.c
@@ -35,8 +35,7 @@ static ssize_t lbs_dev_info(struct file *file, char __user *userbuf,
 {
 	struct lbs_private *priv = file->private_data;
 	size_t pos = 0;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	ssize_t res;
 	if (!buf)
 		return -ENOMEM;
@@ -48,7 +47,7 @@ static ssize_t lbs_dev_info(struct file *file, char __user *userbuf,
 
 	res = simple_read_from_buffer(userbuf, count, ppos, buf, pos);
 
-	free_page(addr);
+	kfree(buf);
 	return res;
 }
 
@@ -96,8 +95,7 @@ static ssize_t lbs_sleepparams_read(struct file *file, char __user *userbuf,
 	ssize_t ret;
 	size_t pos = 0;
 	struct sleep_params sp;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
 
@@ -113,7 +111,7 @@ static ssize_t lbs_sleepparams_read(struct file *file, char __user *userbuf,
 	ret = simple_read_from_buffer(userbuf, count, ppos, buf, pos);
 
 out_unlock:
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 
@@ -165,8 +163,7 @@ static ssize_t lbs_host_sleep_read(struct file *file, char __user *userbuf,
 	struct lbs_private *priv = file->private_data;
 	ssize_t ret;
 	size_t pos = 0;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
 
@@ -174,7 +171,7 @@ static ssize_t lbs_host_sleep_read(struct file *file, char __user *userbuf,
 
 	ret = simple_read_from_buffer(userbuf, count, ppos, buf, pos);
 
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 
@@ -228,7 +225,7 @@ static ssize_t lbs_threshold_read(uint16_t tlv_type, uint16_t event_mask,
 	u8 freq;
 	int events = 0;
 
-	buf = (char *)get_zeroed_page(GFP_KERNEL);
+	buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
 
@@ -261,7 +258,7 @@ static ssize_t lbs_threshold_read(uint16_t tlv_type, uint16_t event_mask,
 	kfree(subscribed);
 
  out_page:
-	free_page((unsigned long)buf);
+	kfree(buf);
 	return ret;
 }
 
@@ -436,8 +433,7 @@ static ssize_t lbs_rdmac_read(struct file *file, char __user *userbuf,
 	struct lbs_private *priv = file->private_data;
 	ssize_t pos = 0;
 	int ret;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	u32 val = 0;
 
 	if (!buf)
@@ -450,7 +446,7 @@ static ssize_t lbs_rdmac_read(struct file *file, char __user *userbuf,
 				priv->mac_offset, val);
 		ret = simple_read_from_buffer(userbuf, count, ppos, buf, pos);
 	}
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 
@@ -506,8 +502,7 @@ static ssize_t lbs_rdbbp_read(struct file *file, char __user *userbuf,
 	struct lbs_private *priv = file->private_data;
 	ssize_t pos = 0;
 	int ret;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	u32 val;
 
 	if (!buf)
@@ -520,7 +515,7 @@ static ssize_t lbs_rdbbp_read(struct file *file, char __user *userbuf,
 				priv->bbp_offset, val);
 		ret = simple_read_from_buffer(userbuf, count, ppos, buf, pos);
 	}
-	free_page(addr);
+	kfree(buf);
 
 	return ret;
 }
@@ -578,8 +573,7 @@ static ssize_t lbs_rdrf_read(struct file *file, char __user *userbuf,
 	struct lbs_private *priv = file->private_data;
 	ssize_t pos = 0;
 	int ret;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	u32 val;
 
 	if (!buf)
@@ -592,7 +586,7 @@ static ssize_t lbs_rdrf_read(struct file *file, char __user *userbuf,
 				priv->rf_offset, val);
 		ret = simple_read_from_buffer(userbuf, count, ppos, buf, pos);
 	}
-	free_page(addr);
+	kfree(buf);
 
 	return ret;
 }
@@ -812,8 +806,7 @@ static ssize_t lbs_debugfs_read(struct file *file, char __user *userbuf,
 	char *p;
 	int i;
 	struct debug_data *d;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
 
@@ -836,7 +829,7 @@ static ssize_t lbs_debugfs_read(struct file *file, char __user *userbuf,
 
 	res = simple_read_from_buffer(userbuf, count, ppos, p, pos);
 
-	free_page(addr);
+	kfree(buf);
 	return res;
 }
 

-- 
2.53.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
