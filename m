Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4AC606EE82
	for <b43-dev@archiver.kernel.org>; Mon,  9 Nov 2026 01:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mFHDc+Sz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=nNwbng4R
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lp3XLavAPD/fjezZK4o8dII4Zv7hoUVXxunnsKlqA28=; b=mFHDc+Szdk/0KQpnq9M1wtfVfE
	cQ0bPl41BfJsgmVSeIWsUqBPZDhakREf7U3XjdJWusEOZ2QXlkKFqrE9zH2YLbArGHWoEwJ7GWvMt
	s802wgAfCqK6IvHlnQBQT/fwV5wjnXRtCkzZMpCK/eaBIJQSMTn3BQfF+Z9o+CcCimlx+yWU9WxEi
	VItyXpJnTbyfYMjWSgPnbcm/Cg8X9PctnEWswYDUEfQbT2hZ+g0FyXYOUAt5dYHaoRaF54nhBxFVW
	pZLeUrYujtcKLrD9IUoAtTPfhI1rhGKPiSwdEvJuANhAUX+vE5yggQnyzePTJY0EyjqX8sVciwIL0
	uKmoA4ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1O-0000000H1GU-1sGF;
	Mon, 09 Nov 2026 01:18:06 +0000
Received: from smtpcmd11116.aruba.it ([62.149.156.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1H-0000000H1CN-0VBk
	for b43-dev@lists.infradead.org;
	Mon, 09 Nov 2026 01:18:02 +0000
Received: from [127.0.0.1] ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id QE1AxMsH06VShQE1BxPouz; Mon, 09 Nov 2026 02:17:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794187073; bh=vKCGoYZkyy2tX3DnxdaTcewcIzz4/PetZAI2mHkxFSg=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=nNwbng4R6q1PjPD6GQyi6wRf8DHOvySEklMuQaLl5LOZclKJF+Fm4IvfyMyYGC92c
	 MeP67BdIeEdtXvHWEJ0ZgsfyIEc13EedhMC9FpN/sD/Ea1CfR0FIz9yFYiMsu1eEWO
	 S2/wDADUKbFnQA78dR05rXUv4rR4MuNC2byHwKEkjAvHVGCK5j+KmOzePF62824vwf
	 /IoBsV9S5YgR/SQ/8YuwhOHj62u56G8cP61ty7lLCZUTdW7AK+zmzLLWgh9mLa8Bhg
	 zg+c1rwCR4lnh6wDUE/uoPpvPb/w43BcjpkBvahWbFHs5cvwkzrmI7GEerQsVCamXL
	 LopXQOO0x5mCw==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Mon, 09 Nov 2026 02:17:51 +0100
Subject: [PATCH wireless-next v4 01/10] bcma: core: clear only FORCEHT for
 BCMA_CLKMODE_DYNAMIC
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-bcma-ac-rev1-v4-1-de1262c18b54@mythread.it>
References: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
In-Reply-To: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>
X-Mailer: b4 0.15.2
X-CMAE-Envelope: MS4xfEdioDTGY1z/u4GjVMe1mHbLmWpT+rI4H8Xls66NQln3AiF++CcMvxSaaGmsBXk3x4g8Dib6BHu6BK7TnmTEOyW7ehauJEouv8SmkiWXnR8yDAh0bB+l
 EloZ/IAJiS+pl1kaopHIob50iIHTC/gQWIgjGsi2LETExhRM+4Iw4SCq/wC0LddyDFKmHZ1+cC9a7yW1HZgGp/1yMl5U8vhOCUJNDyGRBZVhLbHUNeFzuHa5
 El4XezI2nRw/fKrMcWh6jLOdHOlPh61DGekcC/bMC7HU+xVzJxUEkJhFHncDdWUYTu9ZDKdKoVTiCfIGDOjT4RrpaXx0JVGSUZ4h5ElM/Icp1mpuzk8xrtoL
 lqrk58HMIeGgZOleaDyOXw1A8zY//V541UoWSHJa05W6otiIa2vqQ47zRVXM8GFp6e8/iRuanRLI5ji6BUU/0BWNimWWZaL78D4YfdbOLmR7Op+ESZdUK2Rx
 +AtcAd9UX0hdJ+tOJ0A1x3quhZXaT7BEcnQH7A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_171759_653603_AD87B0E5 
X-CRM114-Status: UNSURE (   8.64  )
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
