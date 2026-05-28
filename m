Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6D0FCD6E45
	for <b43-dev@archiver.kernel.org>; Thu, 28 May 2026 17:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pc48R0PL0ATIEV1bn70ZXC/xxSoMZ/bgJKqCF/BA+z4=; b=Y4lBDGbG6gJq6o
	/Ldjeyl3yZs7z93GqCGKDsypdqYBUXEC+LoFUWC5rZx2f03Yrq2Vzi3vwQnGUnzddz4wNIcIsEnR2
	8XjjP00wVI2KaYDr5gMerQ3WcePhqiZoAaNDqd2e7af7Fb1CGA7Tc6iVjRNJYZ4MnzU82r9xOtt0+
	RebgOclq0LOjGpqBKMqOuVmtATsXArXQ1REncpwjvFO69rLh3aJqXbw4GaR8dUZF7Z7JlxSPU2Qnl
	9lqK5m+GBZ0yPrgvL1wU4GRfNGEawDIYau8WgHCLkD2lHu4n+4TiZoAQxNhoDhzrefeuLH8JiJ+mT
	ZnS6NcHJTbxV881rsELQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeaE-0000000666S-0E3C;
	Thu, 28 May 2026 17:31:50 +0000
Received: from smtpweb146.aruba.it ([62.149.158.146])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeaA-00000006646-1BeB
	for b43-dev@lists.infradead.org;
	Thu, 28 May 2026 17:31:49 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Sea5wczvrrbJKSea6w6A39; Thu, 28 May 2026 19:31:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779989502; bh=19Z+zdaXGI3FYfSGWQoCBXevBSvCZqWMLW3DMW3r/lw=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=GSetKNajeSjQPvm6v9X83qDUhcXhY4+R2ef8/HQNnHNIEDa7/tdvN0jnNbXn4MEhK
	 WIvjBgty8cIu5/FzX8DEiP5hTMH6R9XIC0ZSq2IxUO4uaC9ZZYI/eLzdHlP/jKxwWB
	 KzgfCOPXay1hqZG67LcBSUIGSRvQMNh4n0HybTomHYUalwPZ1le9QJJLy4Kf444oWB
	 YeJ7YvwUIzeEb1Z66FJSd48X18bF7qX7AAB4vFze16YLhdVgbGSokZOpF0SIU34MUp
	 kwTmuZKfbhrWC8R1wVqvWyZ/GJo44WOWe8fLpdKZggeVT8lDCskvtojjMuDDPJDklZ
	 aAQQQzji4M6GA==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Thu, 28 May 2026 19:31:35 +0200
Subject: [PATCH v4 1/7] b43: add firmware mappings for rev22
MIME-Version: 1.0
Message-Id: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-1-464566194d47@gmail.com>
References: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-0-464566194d47@gmail.com>
In-Reply-To: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-0-464566194d47@gmail.com>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alessio Ferri <alessio.ferri@mythread.it>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfOUW+OMsbislXLVfjghoLiIMSllfjXG3jKhyT1qtr1TPotfGmGoeb8vIdxFRzON3ha+X1I01ALnINSxjunIRNJpkd+hb2Tso3vfQ6c4Al8AAeBDPURzQ
 29rmtnLnULRa/0VO3EcRCGmWXrooQhLCSqu40xytABMkKlcKB3hRVoC95GKPgsnpJAd3K9lN6GO5nNKsx17R2Mutn7NSdr9S/uiqb1CtsCb/hg8E+yllqt/u
 ISNj8R6MRy9W4IQM8xcXYODVPcwBRGWI658r2/xDq9z4g/xbS34L7GLyOev25WmdqYS+z22dTV35Abi8K3uXSBOpyhKw+cyRTuLnPPUyqtk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_103146_842629_2797A20D 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
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

add the specific firmware mappings for rev22, and drop comments wondering about rev22 initvals

Assisted-by: Claude:claude-4.7-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/main.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index b0e6aeb0b..37c5d9928 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -2344,6 +2344,10 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 		if (phy->type == B43_PHYTYPE_N)
 			filename = "ucode16_mimo";
 		break;
+	case 22:
+		if (phy->type == B43_PHYTYPE_N)
+			filename = "ucode22_mimo";
+		break;
 	case 16 ... 19:
 		if (phy->type == B43_PHYTYPE_N)
 			filename = "ucode16_mimo";
@@ -2405,7 +2409,9 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 		else if (rev == 24)
 			filename = "n0initvals24";
 		else if (rev == 23)
-			filename = "n0initvals16"; /* What about n0initvals22? */
+			filename = "n0initvals16";
+		else if (rev == 22)
+			filename = "n0initvals22";
 		else if (rev >= 16 && rev <= 18)
 			filename = "n0initvals16";
 		else if (rev >= 11 && rev <= 12)
@@ -2465,7 +2471,9 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 		else if (rev == 24)
 			filename = "n0bsinitvals24";
 		else if (rev == 23)
-			filename = "n0bsinitvals16"; /* What about n0bsinitvals22? */
+			filename = "n0bsinitvals16";
+		else if (rev == 22)
+			filename = "n0bsinitvals22";
 		else if (rev >= 16 && rev <= 18)
 			filename = "n0bsinitvals16";
 		else if (rev >= 11 && rev <= 12)

-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
