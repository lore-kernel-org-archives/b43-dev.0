Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B13606D820
	for <b43-dev@archiver.kernel.org>; Mon,  9 Nov 2026 01:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=33qBeJbL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=MGj3YinP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YEw4KGp8XI+GIrJ2/hVBIctSvNzG2TEKQsBldFZLkqw=; b=33qBeJbLww16zZCW0H675DcP1R
	siWKisAKkXNUi955P2F9prq/6GWs0OJ0BLHj1ofbDIHHIIejHae7XOcLh/l1zXGMbwXaDmYqoDQ+B
	LTUCh8O90aH2Y+CLwuuBpWvl1c+r9HNiSAZ9XonD9HjKjXGp+y2s//C8fcMmpaM3q/079SPHLubME
	37SRgwoJcFwEwqnYCrm+HRCgXf+wHU757ttZRcoUhtqAdzPZfI/3Vd8BAJEC83KJaAzr5KpccPjD/
	24wD71PY2kfJBG0nBAbgIjj/37SNxzr5skyb6jDOan/wTMFHgHkg7xU7lyTdTiOQ56j+EgkqwoKNV
	uTEtLWbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1P-0000000H1H2-1O4V;
	Mon, 09 Nov 2026 01:18:07 +0000
Received: from smtpcmd11121.aruba.it ([62.149.156.121])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1H-0000000H1CX-2taR
	for b43-dev@lists.infradead.org;
	Mon, 09 Nov 2026 01:18:03 +0000
Received: from [127.0.0.1] ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id QE1AxMsH06VShQE1DxPoxW; Mon, 09 Nov 2026 02:17:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794187075; bh=G+hd6qQfLeLELGBJdeMNPTRelD4TD1iZ3wlVeFjzB6o=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=MGj3YinPn/xrHtVaZe04poPoBv+hyb6uozi8u0+qHNS3zccwlPIBuasbiWlZKOOlX
	 03G6iiS/vJjiFIlfyLv1PnT4QW+tbM9ht87/NjOK3e1UYOQeKEp72Wt28CRLAjBpl4
	 lTRH2tVJmSx6suP0ybpmQSEbdoXlPUyiNkHL+meZE0piHHAwny9wa/RxiesD1MIEGX
	 qiiz2EwgfZQeZjgntmst8azqkQTBAzO3raQ48PXiU9JOof+fXR6brFdRKEdYklyQ4V
	 +iautpIMDT5BqHpKDeCSy/Lhm6H2mL2JC5e7KiOA80MUXIYZky0sSLfYAzx0+VgJtt
	 A1vWC70gyis0g==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Mon, 09 Nov 2026 02:17:58 +0100
Subject: [PATCH wireless-next v4 08/10] firmware: bcm47xx_sprom: read
 boardflags3 from NVRAM over the SPROM
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-bcma-ac-rev1-v4-8-de1262c18b54@mythread.it>
References: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
In-Reply-To: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>
X-Mailer: b4 0.15.2
X-CMAE-Envelope: MS4xfKWjnE3rgRu097RkoPrMJ4MPxysVPF64nqsRxaRlKnggHbOPYLVd9XcCNuAFVy9R604y+t/IyBHWnzCfKnncv95fMU6FS+5VKHSFDHBS0O9kwJWX7Lob
 ptCXaBN4ntFR1EvmyXE0jcPR0A2DQfSOgHtcNN/jCGYjqI583VyMGDRHbVxFBvyTJMkVeiPZv2ZtzMqTD7EOfi8adXMs69O8ZZqIl3u22OU/KSKmhu0Glcpe
 hE6zliytsMNeeBCmC+RtEX2KU5UBmCYYTbw49Uh5g/nwskGuQFJkzxysfnCo5R7Ni/QRd89kUShaeRo4W/KHTBtWvUnEUQVVayt9aoU6yN04gTgYz1aMe4Sn
 DufaRe1wDty1nADLf8tXEqOahMLSYV1YJF9wLdV2R9/U85BpXXksINsklc4WzW+/FLWh3RMphnSy7VaxpJ1NksgtqGdhFanaKQWHOKbCK4pJBFFrOQ8do7rs
 rqjVWvn6/UzNk/Ib2UlJb2oubVW0lE/unCfMJQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_171759_914529_8F52A5E1 
X-CRM114-Status: UNSURE (   7.47  )
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
Cc: vit9696 <vit9696@protonmail.com>, ville+git@takio.fi, linux-wireless@vger.kernel.org, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, egc112@msn.com, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Read boardflags3 along with ledbh4..ledbh15, so that a value in NVRAM
replaces the word of a SPROM read from the device.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/firmware/broadcom/bcm47xx_sprom.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/broadcom/bcm47xx_sprom.c b/drivers/firmware/broadcom/bcm47xx_sprom.c
index e2c4e3307..7425526c4 100644
--- a/drivers/firmware/broadcom/bcm47xx_sprom.c
+++ b/drivers/firmware/broadcom/bcm47xx_sprom.c
@@ -217,6 +217,9 @@ static void bcm47xx_sprom_fill_nvram_only(struct ssb_sprom *sprom,
 		nvram_read_u8(prefix, NULL, name, &sprom->gpio_ext[i], 0xff,
 			      fallback);
 	}
+
+	nvram_read_u32(prefix, NULL, "boardflags3", &sprom->boardflags3, 0,
+		       fallback);
 }
 
 /* This is one-function-only macro, it uses local "sprom" variable! */

-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
