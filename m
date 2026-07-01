Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 999D7C43327
	for <b43-dev@archiver.kernel.org>; Wed,  1 Jul 2026 13:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsIvnK1DzXuUrCrsYeBbKgmgFj2v1gePt1huWXyDNUw=; b=dCh8BCEAE7CP5a
	NDC5C2sjSLsXTyi8uHVipHF4nMIICqqk9Ba7moDa2OR3tEM72SWRhWIMHmWw/Cbfn234yEvrhCT6e
	RdXtYOzCMgP6XZjkBtaIgKI9GlH5IeESw+CZch9tbtW8M5WzignZ+tZEJq80AnZW4H6UmKsxLqXcA
	NWfs15pkELwrHFR3VcHKZh+Be5jT+a0KNLnHelaZDIqiSOcOU8mr83n0oa2sv6TPLIl2tj3jjgpdC
	whLSNq/gQT+mARijaEj6EDwrSq3L9VmwkN6u0Ja4E7UjT8kOF3pvwtnr28wUe9bzpOXD3IKR6Bse9
	Rwyo42bs7J1qypxB4zIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wevTK-00000002EUQ-0reB;
	Wed, 01 Jul 2026 13:59:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wevTI-00000002ESh-32d7;
	Wed, 01 Jul 2026 13:59:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7BE1943FF1;
	Wed,  1 Jul 2026 13:59:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA5FD1F00A3A;
	Wed,  1 Jul 2026 13:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782914364;
	bh=mIRRvN16ToAQb1e9zetNytMS/So59mpcGLgkkM3oXG4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=XIvqWB/Z5o8XyUWj0ZMRT8ai+tzHw2Cc40Oh8oPuE/LrY1NEYh/1YccDLCnO6z6Vm
	 wXk0d9P1z7+DC9WIuTT9MDE7agFYfq/n/vD6CUhiWXqRmROE6Gc4ocmEuRiOJm8nl4
	 YncAnhi4TUk4pyu2knTS9X1/lCFj6uiZRAswQQZNtpOnI+NWtbvrePJYQKeS+BIdZF
	 qUlchitPXgA0Ni8J92BfLDSzqne1n+AXITa7sSONDahuIHSvOneIfGMgSCQboz/UN+
	 AvEvgAwYgHKL0iu0N8GMpv8wQfMyrfK78O28+WiEQax7I/uG/xquKYWddL+Tau4/i6
	 r1ipmqnhvyc3Q==
From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Date: Wed, 01 Jul 2026 16:59:12 +0300
Subject: [PATCH 3/4] mwifiex: debugfs: use kzalloc() to allocate formatting
 buffers
MIME-Version: 1.0
Message-Id: <20260701-b4-drivers-wireless-v1-3-60264cdf2efe@kernel.org>
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

mwifiex debugfs functions allocate buffers for formatting debug output
text using get_zeroed_page().

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
 drivers/net/wireless/marvell/mwifiex/debugfs.c | 62 +++++++++++---------------
 1 file changed, 27 insertions(+), 35 deletions(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/debugfs.c b/drivers/net/wireless/marvell/mwifiex/debugfs.c
index 9deaf59dcb62..573768b6ad91 100644
--- a/drivers/net/wireless/marvell/mwifiex/debugfs.c
+++ b/drivers/net/wireless/marvell/mwifiex/debugfs.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/slab.h>
 
 #include "main.h"
 #include "11n.h"
@@ -67,8 +68,8 @@ mwifiex_info_read(struct file *file, char __user *ubuf,
 	struct net_device *netdev = priv->netdev;
 	struct netdev_hw_addr *ha;
 	struct netdev_queue *txq;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *p = (char *) page, fmt[64];
+	char *page = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	char *p = page, fmt[64];
 	struct mwifiex_bss_info info;
 	ssize_t ret;
 	int i = 0;
@@ -133,11 +134,10 @@ mwifiex_info_read(struct file *file, char __user *ubuf,
 	}
 	p += sprintf(p, "\n");
 
-	ret = simple_read_from_buffer(ubuf, count, ppos, (char *) page,
-				      (unsigned long) p - page);
+	ret = simple_read_from_buffer(ubuf, count, ppos, page, p - page);
 
 free_and_exit:
-	free_page(page);
+	kfree(page);
 	return ret;
 }
 
@@ -168,8 +168,8 @@ mwifiex_getlog_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *) file->private_data;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *p = (char *) page;
+	char *page = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	char *p = page;
 	ssize_t ret;
 	struct mwifiex_ds_get_stats stats;
 
@@ -220,11 +220,10 @@ mwifiex_getlog_read(struct file *file, char __user *ubuf,
 		     stats.bcn_miss_cnt);
 
 
-	ret = simple_read_from_buffer(ubuf, count, ppos, (char *) page,
-				      (unsigned long) p - page);
+	ret = simple_read_from_buffer(ubuf, count, ppos, page, p - page);
 
 free_and_exit:
-	free_page(page);
+	kfree(page);
 	return ret;
 }
 
@@ -247,8 +246,8 @@ mwifiex_histogram_read(struct file *file, char __user *ubuf,
 	ssize_t ret;
 	struct mwifiex_histogram_data *phist_data;
 	int i, value;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *p = (char *)page;
+	char *page = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	char *p = page;
 
 	if (!p)
 		return -ENOMEM;
@@ -309,11 +308,10 @@ mwifiex_histogram_read(struct file *file, char __user *ubuf,
 				i, value);
 	}
 
-	ret = simple_read_from_buffer(ubuf, count, ppos, (char *)page,
-				      (unsigned long)p - page);
+	ret = simple_read_from_buffer(ubuf, count, ppos, page, p - page);
 
 free_and_exit:
-	free_page(page);
+	kfree(page);
 	return ret;
 }
 
@@ -383,8 +381,8 @@ mwifiex_debug_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *) file->private_data;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *p = (char *) page;
+	char *page = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	char *p = page;
 	ssize_t ret;
 
 	if (!p)
@@ -396,11 +394,10 @@ mwifiex_debug_read(struct file *file, char __user *ubuf,
 
 	p += mwifiex_debug_info_to_buffer(priv, p, &info);
 
-	ret = simple_read_from_buffer(ubuf, count, ppos, (char *) page,
-				      (unsigned long) p - page);
+	ret = simple_read_from_buffer(ubuf, count, ppos, page, p - page);
 
 free_and_exit:
-	free_page(page);
+	kfree(page);
 	return ret;
 }
 
@@ -457,8 +454,7 @@ mwifiex_regrdwr_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *) file->private_data;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *) addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	int pos = 0, ret = 0;
 	u32 reg_value;
 
@@ -497,7 +493,7 @@ mwifiex_regrdwr_read(struct file *file, char __user *ubuf,
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 
 done:
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 
@@ -511,8 +507,7 @@ mwifiex_debug_mask_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *)file->private_data;
-	unsigned long page = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)page;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	size_t ret = 0;
 	int pos = 0;
 
@@ -523,7 +518,7 @@ mwifiex_debug_mask_read(struct file *file, char __user *ubuf,
 			priv->adapter->debug_mask);
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 
-	free_page(page);
+	kfree(buf);
 	return ret;
 }
 
@@ -652,8 +647,7 @@ mwifiex_memrw_read(struct file *file, char __user *ubuf,
 		   size_t count, loff_t *ppos)
 {
 	struct mwifiex_private *priv = (void *)file->private_data;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	int ret, pos = 0;
 
 	if (!buf)
@@ -663,7 +657,7 @@ mwifiex_memrw_read(struct file *file, char __user *ubuf,
 			priv->mem_rw.value);
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 
@@ -719,8 +713,7 @@ mwifiex_rdeeprom_read(struct file *file, char __user *ubuf,
 {
 	struct mwifiex_private *priv =
 		(struct mwifiex_private *) file->private_data;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *) addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	int pos, ret, i;
 	u8 value[MAX_EEPROM_DATA];
 
@@ -749,7 +742,7 @@ mwifiex_rdeeprom_read(struct file *file, char __user *ubuf,
 done:
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 out_free:
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 
@@ -820,8 +813,7 @@ mwifiex_hscfg_read(struct file *file, char __user *ubuf,
 		   size_t count, loff_t *ppos)
 {
 	struct mwifiex_private *priv = (void *)file->private_data;
-	unsigned long addr = get_zeroed_page(GFP_KERNEL);
-	char *buf = (char *)addr;
+	char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 	int pos, ret;
 	struct mwifiex_ds_hs_cfg hscfg;
 
@@ -836,7 +828,7 @@ mwifiex_hscfg_read(struct file *file, char __user *ubuf,
 
 	ret = simple_read_from_buffer(ubuf, count, ppos, buf, pos);
 
-	free_page(addr);
+	kfree(buf);
 	return ret;
 }
 

-- 
2.53.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
