Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CEA7C54E66
	for <b43-dev@archiver.kernel.org>; Fri, 15 Mar 2024 05:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frUY1tSZokWdQdv0/FdtXE+jJbctfoRQs4xli1AhAYM=; b=jTvXz++Y4P/xD5
	gS/zXhQTNHRDEDFn7kkNvNw4MzJxGi1nKOjeocIwe2PWyXk0dvGkpTPJ9fKAJzJH/+7vLpVox0IfB
	168edTCODCCEeTpYDYZbAJcGhVH0mtl60iKzKqawRok1iDUUaHlk+1SP4AeNvHf/1AnOpnvZV+rE8
	FT2wace2YblV23MYHNgWlE/KU4vUiOKHeCsNcZN+z9mK8JQZVzHq1iy5EIClfetKvlzxO8hN/fNcc
	XHwWNP12YpSwsrv7hMx4IHi6RIYtXecSx+S30WMztNAxEsT3tyRh5J9MZhzZFejiP9AzfV3fbA91O
	X3iiOt51L8FNjv2FjGOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl0Uj-0000000GldT-0uv6;
	Fri, 15 Mar 2024 05:52:41 +0000
Received: from esa5.hc1455-7.c3s2.iphmx.com ([68.232.139.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl0Uf-0000000Glbj-16zy
	for b43-dev@lists.infradead.org;
	Fri, 15 Mar 2024 05:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1710481957; x=1742017957;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=CiPT7Tebx6aLcsDUlO8+2vRvufZYRCatvwZilYy8IT0=;
  b=WD9gNiTgPJ44OpvBcD9m0M9Ts9D4bZ0DvbBhOQSs/PloeLPJuZOtZTB1
   MgPANTwGTw4G+dRcKXRZ0xP8K2GL57xRpM/QeE3nSWuUR5bC4T7nZhYAO
   ZOb9QXH7fyIhUH2ACwRVeTWz1al8EU1M8mxvPV0pmWwNPjLCp22307/4h
   Ji+ZeYoyDEKjEG5P8yMJI3ljaCHjUpfSbHokLwLZPlbepQOvsDZgKPA4T
   ib3ip1S+p0pt+MoZ8t8U6f+syp6lPXBdD7eaZBJEL89qGVrNHL/B1wxMh
   JzJ94LOlnohPos0ifzKoMF+q/a7R9L3gUt7aZYrQiDvNQ3Iv3RVMKoI43
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="151807142"
X-IronPort-AV: E=Sophos;i="6.07,127,1708354800"; 
   d="scan'208";a="151807142"
Received: from unknown (HELO oym-r3.gw.nic.fujitsu.com) ([210.162.30.91])
  by esa5.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2024 14:52:30 +0900
Received: from oym-m3.gw.nic.fujitsu.com (oym-nat-oym-m3.gw.nic.fujitsu.com [192.168.87.60])
	by oym-r3.gw.nic.fujitsu.com (Postfix) with ESMTP id 5D43BC21A4
	for <b43-dev@lists.infradead.org>; Fri, 15 Mar 2024 14:52:27 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id 8A593D5602
	for <b43-dev@lists.infradead.org>; Fri, 15 Mar 2024 14:52:26 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 289D0202DB33C
	for <b43-dev@lists.infradead.org>; Fri, 15 Mar 2024 14:52:26 +0900 (JST)
Received: from localhost.localdomain (unknown [10.167.226.45])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 94B541A006C;
	Fri, 15 Mar 2024 13:52:25 +0800 (CST)
From: Li Zhijian <lizhijian@fujitsu.com>
To: linux-kernel@vger.kernel.org
Cc: Li Zhijian <lizhijian@fujitsu.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Kalle Valo <kvalo@kernel.org>,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org
Subject: [PATCH v2 2/3] wifi: b43: Convert sprintf/snprintf to sysfs_emit
Date: Fri, 15 Mar 2024 13:52:10 +0800
Message-Id: <20240315055211.1347548-2-lizhijian@fujitsu.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240315055211.1347548-1-lizhijian@fujitsu.com>
References: <20240315055211.1347548-1-lizhijian@fujitsu.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28252.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28252.004
X-TMASE-Result: 10--3.135400-10.000000
X-TMASE-MatchedRID: NwgUWlK30I84ibokZ3+Q0CoiRKlBVkYIBXngI6jFvpfDqO6/8R69QE8U
	roFNOGp7a6aAZTOwtJmRloiW1Kgftd2ZdKe8BPbSK0+leiJxLlf0swHSFcVJ6C+fNq7c31fg18a
	7/fBfKbtsH3yLH3eS2KM07FLsxDxnV/iiNsapK9v+xRIVoKNMvE3yuY9BGW8rugVDwZELU+uzXD
	BpgFAuCz3+8VUHHGqAepi+JVYshcq1UOlz1sLXchF4zyLyne+ATJDl9FKHbrkDBQ+XBh4YJeK5f
	hRxt1aAaqQjB20KvEp0R7kGywzHs4SasxSwyoX8Zj7E6vHnuNavOXyw2JYKUpsoi2XrUn/J8m+h
	zBStanuKNyKr3HDyRSdET58jp62Se1tzlfEsCEjf6Uj/7wqoheeV309kYPkCJqS9dJdH2q3RQR/
	GKLsybD7TTdZXIbZlE9X3mtYh1QrW0XXTT4K+7uG9IZU1A0HawGC8e6520fKw0PJt06oJaHpaQl
	5xviY7wxgWdRvK9Un9g+oMf9KM6Q==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_225237_595637_CEC8EBF7 
X-CRM114-Status: GOOD (  10.82  )
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
Acked-by: Larry Finger <Larry.Finger@lwfinger.net>
Signed-off-by: Li Zhijian <lizhijian@fujitsu.com>
---
V2:
  subject updated and wrap line style

This is a part of the work "Fix coccicheck device_attr_show warnings"[1]
Split them per subsystem so that the maintainer can review it easily
[1] https://lore.kernel.org/lkml/20240116041129.3937800-1-lizhijian@fujitsu.com/
---
 drivers/net/wireless/broadcom/b43/sysfs.c       | 13 ++++---------
 drivers/net/wireless/broadcom/b43legacy/sysfs.c | 16 ++++++----------
 2 files changed, 10 insertions(+), 19 deletions(-)

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
index eec087ca30e6..d988fe541bf7 100644
--- a/drivers/net/wireless/broadcom/b43legacy/sysfs.c
+++ b/drivers/net/wireless/broadcom/b43legacy/sysfs.c
@@ -75,16 +75,14 @@ static ssize_t b43legacy_attr_interfmode_show(struct device *dev,
 
 	switch (wldev->phy.interfmode) {
 	case B43legacy_INTERFMODE_NONE:
-		count = snprintf(buf, PAGE_SIZE, "0 (No Interference"
-				 " Mitigation)\n");
+		count = sysfs_emit(buf, "0 (No Interference Mitigation)\n");
 		break;
 	case B43legacy_INTERFMODE_NONWLAN:
-		count = snprintf(buf, PAGE_SIZE, "1 (Non-WLAN Interference"
-				 " Mitigation)\n");
+		count = sysfs_emit(buf,
+				   "1 (Non-WLAN Interference Mitigation)\n");
 		break;
 	case B43legacy_INTERFMODE_MANUALWLAN:
-		count = snprintf(buf, PAGE_SIZE, "2 (WLAN Interference"
-				 " Mitigation)\n");
+		count = sysfs_emit(buf, "2 (WLAN Interference Mitigation)\n");
 		break;
 	default:
 		B43legacy_WARN_ON(1);
@@ -155,11 +153,9 @@ static ssize_t b43legacy_attr_preamble_show(struct device *dev,
 	mutex_lock(&wldev->wl->mutex);
 
 	if (wldev->short_preamble)
-		count = snprintf(buf, PAGE_SIZE, "1 (Short Preamble"
-				 " enabled)\n");
+		count = sysfs_emit(buf, "1 (Short Preamble enabled)\n");
 	else
-		count = snprintf(buf, PAGE_SIZE, "0 (Short Preamble"
-				 " disabled)\n");
+		count = sysfs_emit(buf, "0 (Short Preamble disabled)\n");
 
 	mutex_unlock(&wldev->wl->mutex);
 
-- 
2.29.2


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
