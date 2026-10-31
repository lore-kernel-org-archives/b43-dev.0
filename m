Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034C460A2601
	for <b43-dev@archiver.kernel.org>; Sat, 31 Oct 2026 09:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Zk4lgp+7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=kLYFVlG+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pt7p7BuTitXt+Pd2nAHF8pDycitkTvDzxkaaVPTMl5A=; b=Zk4lgp+7yY4+KcaiYZW2Mvsnd4
	8Va9gR+lWoc7pRyad2jDy6X2gXQ5QKij5+GAbLtNa3OPiVYAKLXdQ7s+A3gzMn8AM/eEsgXkMakr8
	QqCBvJdVNngNt++LH7BG7mHAdmKJYqVEExbkfhvwQJDdssRRYAlMve701KXHLcnYwoKXQNX00v3cw
	tQDO7EPCXp4Wp4gzj1F6DD/kjDhfgRRr7ccLd+Fc+vQUv5kq7jAJHy9XITO/zncYD8N6w5UC0zp//
	cvnehHSDM57WUgdFqOEsRHgADXO+UBk1sNOD09iCtkzEwB05lqxaXdn8UZKguKZi0oec58YtNtJXO
	G0+5g7JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5Bd-0000000D7Ta-3tMF;
	Sat, 31 Oct 2026 09:15:41 +0000
Received: from smtpcmd0986.aruba.it ([62.149.156.86])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5BV-0000000D7Pe-43ce
	for b43-dev@lists.infradead.org;
	Sat, 31 Oct 2026 09:15:36 +0000
Received: from [127.0.0.1] ([79.43.52.162])
	by Aruba SMTP with ESMTPSA
	id N5BMx1hYL6q8sN5BQxVoTY; Sat, 31 Oct 2026 10:15:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793438128; bh=oLRFKUwHbKhCHiC98MhkOwsf0J/5kYlXvF/Sbi45IsU=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=kLYFVlG+VuwFQuO/+rVyYamfoQH+7fPZs3AI7Bg3WlQxVSFGSlvj+5Thvd07S/vlJ
	 U+Eai+VTOGA02m+KmFTGaK0npTANJ9OqaHRPgtS2oAuYjZ+uMlTW0W6IjSNsDlHQND
	 iXwsn9D0bevkfsLBuWDHi7j3GRCFNBoiyU6RCcQPxcGcjCc4b6JFmnPmXYrIKvSbS0
	 kspBPp26qA7QwnV74mjKiTxOjY8EZQ7UQU94Zej5p106PswubQntxXqLTPHA6+Ov9Y
	 WJAF9yrtNAKFGINKPhHBt26FWdK2g1Qdp3ZBMqvKTs6hcIn3C/6GBrC+GxAWSMZIaG
	 CMHtK3f6SmASg==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Sat, 31 Oct 2026 10:15:25 +0100
Subject: [PATCH wireless-next v3 03/10] bcma: pcie2: request HT on
 BCM4352/BCM4360
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261031-bcma-ac-rev1-v3-3-1fbe38e8179b@mythread.it>
References: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
In-Reply-To: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>, vit9696 <vit9696@protonmail.com>
X-Mailer: b4 0.15.2
X-CMAE-Envelope: MS4xfLXXc5T4eu0nzpLMSWy+X5gfVikXSiNlEnMUR1sGQcqxa6SVj1y5a5wd0dIRkGGZoqwr4hPUxi5I4aohl7w1Fu6FJI/2ZDNSe1Yw8QD+5xrg5es9zSJq
 bG+l3GjKmx7dKTLLx7M7sZ5GB8o518feW0DT5e1Gbqh73uDSat3ZS31rlwytDhnVIuz/dxTbmbY1u4PXnwAWDn/INFjf9kjwXgPedXc4p/k7acy9mAhR033H
 SDXhXP/V5eYCEg50yMUi52TFaydiMm7Xx46MXbDqHcmG2OQ9Eup0t0G5MMnN1ooBkh2IkNMS9DZg/FMEN6nTP7nJD/fp78DT+kp96s0AXXHj6ZtkxVcJi4Il
 NnoIGNBrsJS+ImjydHvTtXFfYTb6w7/MKLrrg75LPB+xXp4AV3u+XHLYiJZtY9f5ULRWNX0/Pm6ox4B4yPuRQibKbgtm6A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_021534_374956_B18B3929 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	T_SPF_TEMPERROR,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Set HAVEHTREQ in the PCIe2 core's clock control on chip revs before 4,
as Broadcom's driver does.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/bcma/driver_pcie2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/bcma/driver_pcie2.c b/drivers/bcma/driver_pcie2.c
index cf889fc62..54daeaa43 100644
--- a/drivers/bcma/driver_pcie2.c
+++ b/drivers/bcma/driver_pcie2.c
@@ -170,6 +170,9 @@ void bcma_core_pcie2_init(struct bcma_drv_pcie2 *pcie2)
 	case BCMA_CHIP_ID_BCM4360:
 	case BCMA_CHIP_ID_BCM4352:
 		pcie2->reqsize = 1024;
+		if (ci->rev < 4)
+			pcie2_set32(pcie2, BCMA_CLKCTLST,
+				    BCMA_CLKCTLST_HAVEHTREQ);
 		break;
 	default:
 		pcie2->reqsize = 128;

-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
