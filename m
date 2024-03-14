Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04C8AC54E67
	for <b43-dev@archiver.kernel.org>; Thu, 14 Mar 2024 11:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIUM0902KM0ns4VRmxEBIlJZqU0DMAKD60+w4NP2oE8=; b=IPBJlGvpBoWPgQ
	LtIxDLCN5Sq3A+bF2c6Q3DvYEqas0x79lNoT0XNg4RtFx+K/INons3XKyWqY++Mhvt4wCHbIt4ug4
	QB94uD2MO7aL9v1nqHNtxXCgVhsHJeQGMqfjXW1lMu0PrKoCYGRg4ouPBgGNVydqhrebU+E5BjWd2
	mYqnPccnisk36ZrQiSSkVSKIMpyKSZH4i3UVya/Ht2ZMF55EIlV2oQuSEzlKNpc07JEzQs49+usUD
	cOX1WSeFlniHkrN7gWhQG0TCHkCwejkgMl2tZk6dWghdUP/5lwmTIOY7mzIE4XZtmt7GqU0H0Rua/
	PZZjklcky9nf98KUWnQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkiqN-0000000E03U-32rX;
	Thu, 14 Mar 2024 11:01:51 +0000
Received: from esa10.hc1455-7.c3s2.iphmx.com ([139.138.36.225])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkhha-0000000Dmdh-34Cb
	for b43-dev@lists.infradead.org;
	Thu, 14 Mar 2024 09:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1710409722; x=1741945722;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PZgtY/QaJ5AhE+dkBjqtaceUwoWYOLgrPub9Z/ina2E=;
  b=O+yi3GvO6nNasogxgkZ9D5VFYGf4dnV/9bpG5BXK5wELHZkHIOf9hGYH
   joou8d/fqvlyiKG+Pc/0VsPkcAi1iF1wVqPDumR6gDdH1wC7UmImG6nby
   8sBF7mgViCoZXPbeM4t5m5wPoDgkqLvieMW4t4Slm7cnM8t8hFBmWhwgd
   s+DMQL3bES8Kzyk4PGevq2AoXmgOa54t4ZdiLE0jntRb0ifyIlRc7Ik8A
   I7oeuM4MVKsTqyMVwhmKYfICtCEpg0WrRBbvHInLcn9Ka/YB6kxbaEYuT
   G0kCsEn9CaVDGBInLy6gs+7tYtl+2tbZp6plETz/u0np4OBetMKYw3tL3
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="139871551"
X-IronPort-AV: E=Sophos;i="6.07,125,1708354800"; 
   d="scan'208";a="139871551"
Received: from unknown (HELO oym-r4.gw.nic.fujitsu.com) ([210.162.30.92])
  by esa10.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2024 18:48:36 +0900
Received: from oym-m2.gw.nic.fujitsu.com (oym-nat-oym-m2.gw.nic.fujitsu.com [192.168.87.59])
	by oym-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id 80325DD930
	for <b43-dev@lists.infradead.org>; Thu, 14 Mar 2024 18:48:34 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m2.gw.nic.fujitsu.com (Postfix) with ESMTP id A360325158
	for <b43-dev@lists.infradead.org>; Thu, 14 Mar 2024 18:48:33 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 2B1D92009956E
	for <b43-dev@lists.infradead.org>; Thu, 14 Mar 2024 18:48:33 +0900 (JST)
Received: from localhost.localdomain (unknown [10.167.226.45])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 9A2721A006D;
	Thu, 14 Mar 2024 17:48:32 +0800 (CST)
From: Li Zhijian <lizhijian@fujitsu.com>
To: linux-kernel@vger.kernel.org
Cc: Li Zhijian <lizhijian@fujitsu.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Kalle Valo <kvalo@kernel.org>,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org
Subject: [PATCH 2/3] net: b43: Convert sprintf/snprintf to sysfs_emit
Date: Thu, 14 Mar 2024 17:48:22 +0800
Message-Id: <20240314094823.1324898-2-lizhijian@fujitsu.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240314094823.1324898-1-lizhijian@fujitsu.com>
References: <20240314094823.1324898-1-lizhijian@fujitsu.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28250.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28250.006
X-TMASE-Result: 10--3.595400-10.000000
X-TMASE-MatchedRID: APZBv0eB5fI4ibokZ3+Q0CoiRKlBVkYIBXngI6jFvpfDqO6/8R69QE8U
	roFNOGp7a6aAZTOwtJmRloiW1Kgftd2ZdKe8BPbSK0+leiJxLlf0swHSFcVJ6C+fNq7c31fg18a
	7/fBfKbtruPzTKuxCyQhBeNJICtc+zK2lwdvrNt2qH6mIBejVf2ItZ2e1geixEd+K6O5Nt53oKE
	r2irJf5CL637QCIVpi8vc3EUpCmrXqPfCtn+QRF99JA2lmQRNUawh2/JNn5dCBAXl9LkPp6TVka
	xwyOBfMjXnWb/ze2xPSM4dqF2PUP5H0YXYnbGozFEUknJ/kEl7dB/CxWTRRu+rAZ8KTspSznMvX
	P7A/YmSt/dXFI10ySicpsJ0mlkgCkJl9QIQjSU5yWMufYVlI8jltvYxr5GgZXZ7ViAqHGNCl44l
	VuJH6NcYJykdVteYvIcmnZRhVxyrE4HwnSlEuHInEpJmLAFfpC1FNc6oqYVV+3BndfXUhXQ==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_024843_121322_B67AAB6B 
X-CRM114-Status: GOOD (  11.06  )
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

Per filesystems/sysfs.rst, show() should only use sysfs_emit()
or sysfs_emit_at() when formatting the value to be returned to user space.

coccinelle complains that there are still a couple of functions that use
snprintf(). Convert them to sysfs_emit().

sprintf() will be converted as weel if they have.

Generally, this patch is generated by
make coccicheck M=<path/to/file> MODE=patch \
COCCI=scripts/coccinelle/api/device_attr_show.cocci

No functional change intended

CC: Larry Finger <Larry.Finger@lwfinger.net>
CC: Kalle Valo <kvalo@kernel.org>
CC: linux-wireless@vger.kernel.org
CC: b43-dev@lists.infradead.org
Signed-off-by: Li Zhijian <lizhijian@fujitsu.com>
---
This is a part of the work "Fix coccicheck device_attr_show warnings"[1]
Split them per subsystem so that the maintainer can review it easily
[1] https://lore.kernel.org/lkml/20240116041129.3937800-1-lizhijian@fujitsu.com/
---
 drivers/net/wireless/broadcom/b43/sysfs.c       | 13 ++++---------
 drivers/net/wireless/broadcom/b43legacy/sysfs.c | 17 +++++++----------
 2 files changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/sysfs.c b/drivers/net/wireless/broadcom/b43/sysfs.c
index 0679d132968f..261b2b746a9c 100644
--- a/drivers/net/wireless/broadcom/b43/sysfs.c
+++ b/drivers/net/wireless/broadcom/b43/sysfs.c
@@ -53,19 +53,14 @@ static ssize_t b43_attr_interfmode_show(struct device *dev,
 
 	switch (wldev->phy.g->interfmode) {
 	case B43_INTERFMODE_NONE:
-		count =
-		    snprintf(buf, PAGE_SIZE,
-			     "0 (No Interference Mitigation)\n");
+		count = sysfs_emit(buf, "0 (No Interference Mitigation)\n");
 		break;
 	case B43_INTERFMODE_NONWLAN:
-		count =
-		    snprintf(buf, PAGE_SIZE,
-			     "1 (Non-WLAN Interference Mitigation)\n");
+		count = sysfs_emit(buf,
+				   "1 (Non-WLAN Interference Mitigation)\n");
 		break;
 	case B43_INTERFMODE_MANUALWLAN:
-		count =
-		    snprintf(buf, PAGE_SIZE,
-			     "2 (WLAN Interference Mitigation)\n");
+		count = sysfs_emit(buf, "2 (WLAN Interference Mitigation)\n");
 		break;
 	default:
 		B43_WARN_ON(1);
diff --git a/drivers/net/wireless/broadcom/b43legacy/sysfs.c b/drivers/net/wireless/broadcom/b43legacy/sysfs.c
index eec087ca30e6..b1c5ea4750fa 100644
--- a/drivers/net/wireless/broadcom/b43legacy/sysfs.c
+++ b/drivers/net/wireless/broadcom/b43legacy/sysfs.c
@@ -75,16 +75,15 @@ static ssize_t b43legacy_attr_interfmode_show(struct device *dev,
 
 	switch (wldev->phy.interfmode) {
 	case B43legacy_INTERFMODE_NONE:
-		count = snprintf(buf, PAGE_SIZE, "0 (No Interference"
-				 " Mitigation)\n");
+		count = sysfs_emit(buf, "0 (No Interference" " Mitigation)\n");
 		break;
 	case B43legacy_INTERFMODE_NONWLAN:
-		count = snprintf(buf, PAGE_SIZE, "1 (Non-WLAN Interference"
-				 " Mitigation)\n");
+		count = sysfs_emit(buf, "1 (Non-WLAN Interference"
+				   " Mitigation)\n");
 		break;
 	case B43legacy_INTERFMODE_MANUALWLAN:
-		count = snprintf(buf, PAGE_SIZE, "2 (WLAN Interference"
-				 " Mitigation)\n");
+		count = sysfs_emit(buf, "2 (WLAN Interference"
+				   " Mitigation)\n");
 		break;
 	default:
 		B43legacy_WARN_ON(1);
@@ -155,11 +154,9 @@ static ssize_t b43legacy_attr_preamble_show(struct device *dev,
 	mutex_lock(&wldev->wl->mutex);
 
 	if (wldev->short_preamble)
-		count = snprintf(buf, PAGE_SIZE, "1 (Short Preamble"
-				 " enabled)\n");
+		count = sysfs_emit(buf, "1 (Short Preamble" " enabled)\n");
 	else
-		count = snprintf(buf, PAGE_SIZE, "0 (Short Preamble"
-				 " disabled)\n");
+		count = sysfs_emit(buf, "0 (Short Preamble" " disabled)\n");
 
 	mutex_unlock(&wldev->wl->mutex);
 
-- 
2.29.2


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
