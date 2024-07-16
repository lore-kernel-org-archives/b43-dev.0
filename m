Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F84CC3DA59
	for <b43-dev@archiver.kernel.org>; Tue, 16 Jul 2024 20:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8KYdV+ZF1xgfRmYJxOGZi1Tx8xdIIOD6cklwV2OQvKM=; b=gcf/Inddp47otx
	+D+XYcfJA5N/avMpDUnTz2/YWKUiDo40KrWQH9VjmkOVRIrlrRjh0vxp1KfzaQxvj8jxDjDdLhOD0
	P23DR3gW+vHzdsD5GRX0fnW1cXRLFZzlDgXQs6/SG3C1mU0F0yiFVZ96NEAnhQTSodg5v1JFPKdUN
	YgpVNQ2qQbu/sau0BFfw+OWtZYWeUscJe8y/kf++YDjUg6892CMof0eD7YX+kvcRvNb/MkkIeayFQ
	xQaeGoD9ixsyCyPlelx8/CvszTmMpxEPSFx6rTApaW/BlXE6SDMnwE6Sr8CjVzTFzdKLx2LBfuILn
	gllXhzEHi8iMkaMXZ/Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTofw-0000000Bee1-1HDp;
	Tue, 16 Jul 2024 20:21:28 +0000
Received: from msa-209.smtpout.orange.fr ([193.252.23.209] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTofp-0000000BedI-3Dyh
	for b43-dev@lists.infradead.org;
	Tue, 16 Jul 2024 20:21:24 +0000
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id Toflsjx2PHEYLToflsye7R; Tue, 16 Jul 2024 22:21:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1721161278;
	bh=DRtn+RNxETbAOZjoB8mt1ZBHFZ7BzVMVZzGHaazPyiM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=j7gmiUCTuN5GUo8JJ/gxU2uLBeaUBuWRVKrfhM+fbbWDsryUNXK3MpZeqOh0N5qCN
	 5v+80sQZKneDcxMhqZGtJKpKmcWk1WUqyRvQc0uHLLCUSW5aSrOHuB1/IMFUBLfSML
	 gkxA4frn/GcodXmY4AUIVggo5KGc7UxaFmHa+FgiO4HvQJCxI9uGk4UYGakpeg4FzP
	 okkG+ScZyRnP9iA1QYhp9TVTr9dNwhREtcDUTbtqwGdVLhmbRDP5e2MG47Osgqf46L
	 2NEI/fp+FWgO8EXv2D+7wxvkUwXv6HEk85z1e7qEiW3K62gKMMxXUdzTKRMf5VU4wB
	 3lSv56jL8kP+w==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 16 Jul 2024 22:21:18 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Kalle Valo <kvalo@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org
Subject: [PATCH] wifi: b43: Constify struct lpphy_tx_gain_table_entry
Date: Tue, 16 Jul 2024 22:21:13 +0200
Message-ID: <38528f48c8069187823b774a6b2a53088f6c9599.1721161231.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_132122_385118_53F17FA6 
X-CRM114-Status: GOOD (  13.63  )
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

'struct lpphy_tx_gain_table_entry' are not modified in this driver.

Constifying this structure moves some data to a read-only section, so
increase overall security.

On a x86_64, with allmodconfig:
Before:
======
   text	   data	    bss	    dec	    hex	filename
  16481	   6232	      0	  22713	   58b9	drivers/net/wireless/broadcom/b43/tables_lpphy.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
  22369	    395	      0	  22764	   58ec	drivers/net/wireless/broadcom/b43/tables_lpphy.o

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested-only.

lpphy_write_gain_table() and lpphy_write_gain_table_bulk() could also be
made static and removed from tables_lpphy.h, but without knowing the reason
why it is done this way, I've preferred to leave it as-is
---
 .../net/wireless/broadcom/b43/tables_lpphy.c  | 26 +++++++++----------
 .../net/wireless/broadcom/b43/tables_lpphy.h  |  4 +--
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/tables_lpphy.c b/drivers/net/wireless/broadcom/b43/tables_lpphy.c
index 71a7cd8dc787..474cd37c3554 100644
--- a/drivers/net/wireless/broadcom/b43/tables_lpphy.c
+++ b/drivers/net/wireless/broadcom/b43/tables_lpphy.c
@@ -1066,7 +1066,7 @@ static const u32 lpphy_papd_mult_table[] = {
 	0x00036963, 0x000339f2, 0x00030a89, 0x0002db28,
 };
 
-static struct lpphy_tx_gain_table_entry lpphy_rev0_nopa_tx_gain_table[] = {
+static const struct lpphy_tx_gain_table_entry lpphy_rev0_nopa_tx_gain_table[] = {
 	{ .gm = 7, .pga = 15, .pad = 14, .dac = 0, .bb_mult = 152, },
 	{ .gm = 7, .pga = 15, .pad = 14, .dac = 0, .bb_mult = 147, },
 	{ .gm = 7, .pga = 15, .pad = 14, .dac = 0, .bb_mult = 143, },
@@ -1197,7 +1197,7 @@ static struct lpphy_tx_gain_table_entry lpphy_rev0_nopa_tx_gain_table[] = {
 	{ .gm = 7, .pga = 11, .pad = 6, .dac = 0, .bb_mult = 71, },
 };
 
-static struct lpphy_tx_gain_table_entry lpphy_rev0_2ghz_tx_gain_table[] = {
+static const struct lpphy_tx_gain_table_entry lpphy_rev0_2ghz_tx_gain_table[] = {
 	{ .gm = 4, .pga = 15, .pad = 9, .dac = 0, .bb_mult = 64, },
 	{ .gm = 4, .pga = 15, .pad = 9, .dac = 0, .bb_mult = 62, },
 	{ .gm = 4, .pga = 15, .pad = 9, .dac = 0, .bb_mult = 60, },
@@ -1328,7 +1328,7 @@ static struct lpphy_tx_gain_table_entry lpphy_rev0_2ghz_tx_gain_table[] = {
 	{ .gm = 4, .pga = 4, .pad = 2, .dac = 0, .bb_mult = 72, },
 };
 
-static struct lpphy_tx_gain_table_entry lpphy_rev0_5ghz_tx_gain_table[] = {
+static const struct lpphy_tx_gain_table_entry lpphy_rev0_5ghz_tx_gain_table[] = {
 	{ .gm = 7, .pga = 15, .pad = 15, .dac = 0, .bb_mult = 99, },
 	{ .gm = 7, .pga = 15, .pad = 15, .dac = 0, .bb_mult = 96, },
 	{ .gm = 7, .pga = 15, .pad = 15, .dac = 0, .bb_mult = 93, },
@@ -1459,7 +1459,7 @@ static struct lpphy_tx_gain_table_entry lpphy_rev0_5ghz_tx_gain_table[] = {
 	{ .gm = 7, .pga = 11, .pad = 6, .dac = 0, .bb_mult = 60, },
 };
 
-static struct lpphy_tx_gain_table_entry lpphy_rev1_nopa_tx_gain_table[] = {
+static const struct lpphy_tx_gain_table_entry lpphy_rev1_nopa_tx_gain_table[] = {
 	{ .gm = 7, .pga = 15, .pad = 14, .dac = 0, .bb_mult = 152, },
 	{ .gm = 7, .pga = 15, .pad = 14, .dac = 0, .bb_mult = 147, },
 	{ .gm = 7, .pga = 15, .pad = 14, .dac = 0, .bb_mult = 143, },
@@ -1599,7 +1599,7 @@ static struct lpphy_tx_gain_table_entry lpphy_rev1_nopa_tx_gain_table[] = {
 	{ .gm = 7, .pga = 11, .pad = 6, .dac = 0, .bb_mult = 71, },
 };
 
-static struct lpphy_tx_gain_table_entry lpphy_rev1_2ghz_tx_gain_table[] = {
+static const struct lpphy_tx_gain_table_entry lpphy_rev1_2ghz_tx_gain_table[] = {
 	{ .gm = 4, .pga = 15, .pad = 15, .dac = 0, .bb_mult = 90, },
 	{ .gm = 4, .pga = 15, .pad = 15, .dac = 0, .bb_mult = 88, },
 	{ .gm = 4, .pga = 15, .pad = 15, .dac = 0, .bb_mult = 85, },
@@ -1730,7 +1730,7 @@ static struct lpphy_tx_gain_table_entry lpphy_rev1_2ghz_tx_gain_table[] = {
 	{ .gm = 4, .pga = 10, .pad = 6, .dac = 0, .bb_mult = 60, },
 };
 
-static struct lpphy_tx_gain_table_entry lpphy_rev1_5ghz_tx_gain_table[] = {
+static const struct lpphy_tx_gain_table_entry lpphy_rev1_5ghz_tx_gain_table[] = {
 	{ .gm = 7, .pga = 15, .pad = 15, .dac = 0, .bb_mult = 99, },
 	{ .gm = 7, .pga = 15, .pad = 15, .dac = 0, .bb_mult = 96, },
 	{ .gm = 7, .pga = 15, .pad = 15, .dac = 0, .bb_mult = 93, },
@@ -1861,7 +1861,7 @@ static struct lpphy_tx_gain_table_entry lpphy_rev1_5ghz_tx_gain_table[] = {
 	{ .gm = 7, .pga = 11, .pad = 6, .dac = 0, .bb_mult = 60, },
 };
 
-static struct lpphy_tx_gain_table_entry lpphy_rev2_nopa_tx_gain_table[] = {
+static const struct lpphy_tx_gain_table_entry lpphy_rev2_nopa_tx_gain_table[] = {
 	{ .gm = 255, .pga = 255, .pad = 203, .dac = 0, .bb_mult = 152, },
 	{ .gm = 255, .pga = 255, .pad = 203, .dac = 0, .bb_mult = 147, },
 	{ .gm = 255, .pga = 255, .pad = 203, .dac = 0, .bb_mult = 143, },
@@ -1992,7 +1992,7 @@ static struct lpphy_tx_gain_table_entry lpphy_rev2_nopa_tx_gain_table[] = {
 	{ .gm = 255, .pga = 111, .pad = 29, .dac = 0, .bb_mult = 64, },
 };
 
-static struct lpphy_tx_gain_table_entry lpphy_rev2_2ghz_tx_gain_table[] = {
+static const struct lpphy_tx_gain_table_entry lpphy_rev2_2ghz_tx_gain_table[] = {
 	{ .gm = 7, .pga = 99, .pad = 255, .dac = 0, .bb_mult = 64, },
 	{ .gm = 7, .pga = 96, .pad = 255, .dac = 0, .bb_mult = 64, },
 	{ .gm = 7, .pga = 93, .pad = 255, .dac = 0, .bb_mult = 64, },
@@ -2123,7 +2123,7 @@ static struct lpphy_tx_gain_table_entry lpphy_rev2_2ghz_tx_gain_table[] = {
 	{ .gm = 7, .pga = 13, .pad = 52, .dac = 0, .bb_mult = 64, },
 };
 
-static struct lpphy_tx_gain_table_entry lpphy_rev2_5ghz_tx_gain_table[] = {
+static const struct lpphy_tx_gain_table_entry lpphy_rev2_5ghz_tx_gain_table[] = {
 	{ .gm = 255, .pga = 255, .pad = 255, .dac = 0, .bb_mult = 152, },
 	{ .gm = 255, .pga = 255, .pad = 255, .dac = 0, .bb_mult = 147, },
 	{ .gm = 255, .pga = 255, .pad = 255, .dac = 0, .bb_mult = 143, },
@@ -2340,7 +2340,7 @@ void lpphy_rev2plus_table_init(struct b43_wldev *dev)
 }
 
 static void lpphy_rev0_1_write_gain_table(struct b43_wldev *dev, int offset,
-				struct lpphy_tx_gain_table_entry data)
+				const struct lpphy_tx_gain_table_entry data)
 {
 	u32 tmp;
 
@@ -2356,7 +2356,7 @@ static void lpphy_rev0_1_write_gain_table(struct b43_wldev *dev, int offset,
 }
 
 static void lpphy_rev2plus_write_gain_table(struct b43_wldev *dev, int offset,
-				struct lpphy_tx_gain_table_entry data)
+				const struct lpphy_tx_gain_table_entry data)
 {
 	u32 tmp;
 
@@ -2383,7 +2383,7 @@ static void lpphy_rev2plus_write_gain_table(struct b43_wldev *dev, int offset,
 }
 
 void lpphy_write_gain_table(struct b43_wldev *dev, int offset,
-			    struct lpphy_tx_gain_table_entry data)
+			    const struct lpphy_tx_gain_table_entry data)
 {
 	if (dev->phy.rev >= 2)
 		lpphy_rev2plus_write_gain_table(dev, offset, data);
@@ -2392,7 +2392,7 @@ void lpphy_write_gain_table(struct b43_wldev *dev, int offset,
 }
 
 void lpphy_write_gain_table_bulk(struct b43_wldev *dev, int offset, int count,
-				 struct lpphy_tx_gain_table_entry *table)
+				 const struct lpphy_tx_gain_table_entry *table)
 {
 	int i;
 
diff --git a/drivers/net/wireless/broadcom/b43/tables_lpphy.h b/drivers/net/wireless/broadcom/b43/tables_lpphy.h
index 62002098bbda..7d7af48c27da 100644
--- a/drivers/net/wireless/broadcom/b43/tables_lpphy.h
+++ b/drivers/net/wireless/broadcom/b43/tables_lpphy.h
@@ -34,9 +34,9 @@ struct lpphy_tx_gain_table_entry {
 };
 
 void lpphy_write_gain_table(struct b43_wldev *dev, int offset,
-			    struct lpphy_tx_gain_table_entry data);
+			    const struct lpphy_tx_gain_table_entry data);
 void lpphy_write_gain_table_bulk(struct b43_wldev *dev, int offset, int count,
-				 struct lpphy_tx_gain_table_entry *table);
+				 const struct lpphy_tx_gain_table_entry *table);
 
 void lpphy_rev0_1_table_init(struct b43_wldev *dev);
 void lpphy_rev2plus_table_init(struct b43_wldev *dev);
-- 
2.45.2


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
