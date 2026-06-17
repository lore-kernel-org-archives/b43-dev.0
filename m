Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D94E7CD98F0
	for <b43-dev@archiver.kernel.org>; Wed, 17 Jun 2026 21:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8s1fHapMT2FXXK42AWTkOx08e+TUFasJQSry36Q1kM=; b=GeiYqInbHnDH7Y
	yQnugB+c8p2bRZml9Sqtovt8w0VTSClsmaBSX0zr34sHB2nJ3qtepFFf+xNeSPZSr3Fb3JXN8l5Hy
	tu509I/uW+KBj7GydWrNHSDBdhVhoDN67LtOkbEMiDAdpiHLjZizheHPdX5VKnrqtRtqLIMJL1zYV
	nxztWW7dQ02DF9FRfVlQKXG7dTZa/XbrGkOpK8SXvdnRVXFZwhStZuwbf0wkNgqDqgkwbgrZdRZkm
	wKGiwgKkm7LhLo5+XWtJ04XYTCSVh8a0bDJp77ezpGVGsVu3K81mGcr0MEle7M50DjNqzQFnG9O/J
	4Rt58eJ23GSMjsxN3aDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZy2Q-00000000MOr-3E3y;
	Wed, 17 Jun 2026 21:43:10 +0000
Received: from smtpcmd14162.aruba.it ([62.149.156.162])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZy2E-00000000MMS-3EOu
	for b43-dev@lists.infradead.org;
	Wed, 17 Jun 2026 21:43:02 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id Zy28wJnjp4OeoZy28w469S; Wed, 17 Jun 2026 23:42:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1781732573; bh=hjXlednnPAavbfrdO2yxouzQ52Ff1GGT1R6xtl+uF48=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=c4t6wd+hWnsU/IGOQ0N4aOQ4baitKYwsqm2leoT/5RCJdVe/IiLPHRg7ol2ZidE82
	 EUpxq/iH8z/h5iT6X2zKIRSlYGtnecCcLP8JYp17euWmrCXB7WWAv5OmoPX4rcLVs4
	 /W5dQi8hbNbBmfPTNpuHckMUyV59G80ppIcBzfp2jd+SHYOpy2e73+d+PDTxwVly05
	 rXI0ZAb6e56mUYUBINe+cxUaib1MVOfewYbXr46lyZ0Kdkb3tDs1hKwnkwd/H+XqtQ
	 EOsUdwXuKsqWunY+IFLaLdpC1xtXKWLTyQIocJEvmrIo67z4SjmUg2KVVuPTAY5+Hb
	 EeliDjzZU500A==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Wed, 17 Jun 2026 23:42:09 +0200
Subject: [PATCH 2/4] bcma: pmu: program max resource mask on
 BCM4352/BCM4360
MIME-Version: 1.0
Message-Id: <20260617-b43-add-4352-wip-v1-2-c81323496720@gmail.com>
References: <20260617-b43-add-4352-wip-v1-0-c81323496720@gmail.com>
In-Reply-To: <20260617-b43-add-4352-wip-v1-0-c81323496720@gmail.com>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, 
 b43-dev@lists.infradead.org, Alessio Ferri <alessio.ferri@mythread.it>, 
 Alessio Ferri <alessio.ferri.3012@gmail.com>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfPga/+jcvE7OuVVkZZs2F7agCubGjDhtcpV1hH4MibJtEXcWFUoXf4T1Rcg46b/cSooFJI1uB+/CcAr/9DA2GnTTvr//ENtbOm4ZlZw14Hbjw+y03/8N
 i44DKnR74un2GonNyUEQSXpwwq/KsP0PseoIwO0fk9zgo2Y9wNj5nojY1FVIJ9Ib6fRVKLYs9RwK8D3eYFjibOy5IqEA6ec+2lisEMwSiQwiwWjH2/zN87eW
 pJYLaqmC4TX4aKJKhW2DnSD9+Qx5bCTexrywcCV81yUW0vva/8k/WRabCymJEErXpUPCB4SGuhMH9JhqKLdoZThVJi5iGOAeYeNaj5ar55WytF6pCt6C9vOf
 IFxNgFy2C4Vhx+LQbfeqHKI7f/Due0rsxajeRDiqdC4loLp7fhhxNHhS8H/OrJgZGypV1R8i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_144259_272348_D41ADC68 
X-CRM114-Status: UNSURE (   9.79  )
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

From: Alessio Ferri <alessio.ferri.3012@gmail.com>

bcma_pmu_resources_init() has no case for the BCM4352/BCM4360 family.
The vendor instead set the max mask for chip rev > 2 with CS bit 5 clear.
Match the vendor behaviour.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/bcma/driver_chipcommon_pmu.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/bcma/driver_chipcommon_pmu.c b/drivers/bcma/driver_chipcommon_pmu.c
index 263ef6fa1d0f..cdd5f7d668ba 100644
--- a/drivers/bcma/driver_chipcommon_pmu.c
+++ b/drivers/bcma/driver_chipcommon_pmu.c
@@ -188,6 +188,14 @@ static void bcma_pmu_resources_init(struct bcma_drv_cc *cc)
 			  BCMA_RES_4314_WL_CORE_READY;
 		max_msk = 0x3FFFFFFF;
 		break;
+	case BCMA_CHIP_ID_BCM4352:
+	case BCMA_CHIP_ID_BCM4360:
+		/*
+		 * Vendor programs the max mask here for chip rev > 2 with ChipStatus bit 5 clear
+		 */
+		if (bus->chipinfo.rev > 2 && !(cc->status & BIT(5)))
+			max_msk = 0x1ff;
+		break;
 	default:
 		bcma_debug(bus, "PMU resource config unknown or not needed for device 0x%04X\n",
 			   bus->chipinfo.id);

-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
