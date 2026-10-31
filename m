Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1998A60A260F
	for <b43-dev@archiver.kernel.org>; Sat, 31 Oct 2026 09:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=l1Md3rdk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=d9o1l+fk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lp3XLavAPD/fjezZK4o8dII4Zv7hoUVXxunnsKlqA28=; b=l1Md3rdkfMkNeV2aqGP/iAmAoJ
	iUuF54N5j/D9cGiKYe+yF1WmExlJmEk/7gukz1cYAoy04w3LOO6hgvvlUPM17q4FDGs0KK2SUxOCp
	1z2RBPJXuVYyNkDUqDkVHdcTA1Z4LxcIWPOwL5IKdzShq/eKdZ+VSut8J3gP4/UP1ZR15vGBnGKlk
	p1GjJS1YWFAn9FtVaKjq6m18KzpeTgS8KSw1nSmpWcIti9K0vgtx0yRW4yBb4E7UqHmico8KUuHH3
	83VFc0i7pXckCM957XRZ+Old03rqveaRsa+LdljYYPA3PFcJhnDs1PwKFj2UuzJqfGgLikqY0PBjQ
	OVGqWTng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5Be-0000000D7U5-1JFY;
	Sat, 31 Oct 2026 09:15:42 +0000
Received: from smtpcmd0986.aruba.it ([62.149.156.86])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5BV-0000000D7Pc-466U
	for b43-dev@lists.infradead.org;
	Sat, 31 Oct 2026 09:15:38 +0000
Received: from [127.0.0.1] ([79.43.52.162])
	by Aruba SMTP with ESMTPSA
	id N5BMx1hYL6q8sN5BQxVoSt; Sat, 31 Oct 2026 10:15:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793438128; bh=vKCGoYZkyy2tX3DnxdaTcewcIzz4/PetZAI2mHkxFSg=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=d9o1l+fk8P8nuxa5q8jjFctB1N1Q8HFUh70i0a2bSDbjKTdRCbZAsVdAIYByeJQfN
	 hfjMQRxBdXM3hMVAWhJ1dhD+xNilq+Y55iuThPnhFxpCaATBinBhmG44xro2liP+Zf
	 LPJy+bu/6c3YxhlLd1VbXQ5cHceE+wha8UUG9LxsT2Ric3+BbxwQLIo9ZAczZuidv5
	 ayjxW3Tka6aZvaVeJ6mcg0tMV1VT89QSXpUFxkQjzVo+p+oG5Thuu3IrBZQn6axhOp
	 RrChLhXcMpYiMSzEw9yUBEu+17/s8xYUeaYaCobpSWkc32wX//C5DyenPqF6Sk3+5G
	 8ROzCoQA0rJYQ==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Sat, 31 Oct 2026 10:15:23 +0100
Subject: [PATCH wireless-next v3 01/10] bcma: core: clear only FORCEHT for
 BCMA_CLKMODE_DYNAMIC
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261031-bcma-ac-rev1-v3-1-1fbe38e8179b@mythread.it>
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
X-CRM114-CacheID: sfid-20261031_021534_434410_4117CD23 
X-CRM114-Status: UNSURE (   7.88  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Clear FORCEHT with bcma_mask32() and leave the other CLKCTLST bits as
they are.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/bcma/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/bcma/core.c b/drivers/bcma/core.c
index 37a5ffe67..f4246689e 100644
--- a/drivers/bcma/core.c
+++ b/drivers/bcma/core.c
@@ -100,7 +100,7 @@ void bcma_core_set_clockmode(struct bcma_device *core,
 			bcma_err(core->bus, "HT force timeout\n");
 		break;
 	case BCMA_CLKMODE_DYNAMIC:
-		bcma_set32(core, BCMA_CLKCTLST, ~BCMA_CLKCTLST_FORCEHT);
+		bcma_mask32(core, BCMA_CLKCTLST, ~BCMA_CLKCTLST_FORCEHT);
 		break;
 	}
 }

-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
