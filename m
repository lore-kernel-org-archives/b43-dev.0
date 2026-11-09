Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B49606D81D
	for <b43-dev@archiver.kernel.org>; Mon,  9 Nov 2026 01:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pMRuuIvv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=NzZZwHyU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SaY/D6rF18wRkspJYcwxhvyOpaHrW6XoN9LMdREusLQ=; b=pMRuuIvvCmrlywfMelfL3G1XDH
	aglPPl8G20UPx9DwP50W+V1pcciJCPhD0ppirvDq4HGM/0bouqlmnbnJlcmvy19iKTFNQxyj+M79S
	sjEzyldYO395fFIziVhsD6XuIGAvzwAEsWYh/sHJLw2TufzT7B7Uh7eCidnzezijzMJ5dFR0VjZ5e
	UTH1Jozh3KO63c3n8oHHFgdEJIdCfHXIFiAbnLLLpoIJxWjGUlD9PNMHBdIHB2pVN8g/Nx2wb9PRf
	YpdDPzkNkq9tjx1KS/Fk8kIUW3mTIldGcq77gyhdqj3klKAeZnL28m0xURmCDOSzDOidnR5VPvgJD
	CpU6BgUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1N-0000000H1Ez-3oDw;
	Mon, 09 Nov 2026 01:18:05 +0000
Received: from smtpcmd11116.aruba.it ([62.149.156.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1H-0000000H1CR-13Oz
	for b43-dev@lists.infradead.org;
	Mon, 09 Nov 2026 01:18:01 +0000
Received: from [127.0.0.1] ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id QE1AxMsH06VShQE1CxPow6; Mon, 09 Nov 2026 02:17:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794187074; bh=8fZI2lXxC8ogDCARFPexqgWvoMA8iZm/DndUACcPEas=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=NzZZwHyUKBQ/BT0pn77ua894gpoCxpfI/fN/MDQuNkuWdaGrBGL7fPZkqLcvwTYYG
	 vl0zfEXEJpSA3NF8NvXuGKzFtc4oaVtYKPVs6ukZZMYis+5K8VjbJNooOxV42QHIwY
	 Tkybt6slwmJaoBG/jO0w7lZbIK8zwQnSGQUmSXrzdZeEdaBXFeLRXQ8/LlqUgxbA5J
	 wBZX9LXYn2HycskQmZimQewkYc/8NRrOrOp5jPyBtDAJ3a3B/9Kq4R9Lc256Fg/sME
	 VTbfxrVcI8sYQDzAweL/yNaVp3QoZQSG5n1b36Sq60Sc8HWJZUBJEh/2VrsdKl7Em4
	 po5wrVYdM4ZPQ==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Mon, 09 Nov 2026 02:17:54 +0100
Subject: [PATCH wireless-next v4 04/10] bcma: chipcommon: enable
 asynchronous GPIO interrupts
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-bcma-ac-rev1-v4-4-de1262c18b54@mythread.it>
References: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
In-Reply-To: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>
X-Mailer: b4 0.15.2
X-CMAE-Envelope: MS4xfA0SHnp7/o1kd6yqNJOwxQ9vhGBL4ANMkZqJ/MlRU6NcbLTLJG6wQLJXR978HuYWEYipWWphXGxbozZm8p1w++CcEwuVs3pTkD1lBJ20cKs7x66LY7ZO
 lPPxLcppsYWEvc99HGnRnIC1KkYsC01OvWhZjoF/A16my8XfcvPZtQinQ6hyBPO/54IZ57QV5xdcM4Cs2fG7IUipQQ3UyGsuZ/zSXSby5FILX0qafbbGO0s2
 lJyGypyqM5VPyry4Ig6v819AhE5kzGniuKo+kLbJqeAtozKB6ffkUgvuCRTaLm7+Q7V+5QN4gE2pGL0AGwffg9h0/VoBw3JAKiZjd3Ipe0WVfCgxB1BOh69R
 MRv+wSUc4/Ab1VnwNi7LQ57g0F53Qbmbk2v4s0EvLv29tM00yMnMLi6zhSQy0jWpm9SrVS847vMEtoc9SHjv6a/bgJBL8cz4NnEs/D2REzNpbRwn1oyKCn3F
 ylYWEYsSklBQcXBVXSj93DAHrMOimmP33IBBzA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_171759_635130_43E822E8 
X-CRM114-Status: UNSURE (   8.42  )
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

Set CORECTL_ASYNCGPIO on chipcommon rev 21 and later, as Broadcom's
driver does at attach, so that GPIO interrupts are generated without the
backplane clock.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/bcma/driver_chipcommon.c            | 3 +++
 include/linux/bcma/bcma_driver_chipcommon.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/bcma/driver_chipcommon.c b/drivers/bcma/driver_chipcommon.c
index fd91a39f0..f5e1b5415 100644
--- a/drivers/bcma/driver_chipcommon.c
+++ b/drivers/bcma/driver_chipcommon.c
@@ -227,6 +227,9 @@ void bcma_core_chipcommon_init(struct bcma_drv_cc *cc)
 			((leddc_on << BCMA_CC_GPIOTIMER_ONTIME_SHIFT) |
 			 (leddc_off << BCMA_CC_GPIOTIMER_OFFTIME_SHIFT)));
 	}
+
+	if (cc->core->id.rev >= 21)
+		bcma_cc_set32(cc, BCMA_CC_CORECTL, BCMA_CC_CORECTL_ASYNCGPIO);
 	cc->ticks_per_ms = bcma_chipco_watchdog_ticks_per_ms(cc);
 
 	cc->setup_done = true;
diff --git a/include/linux/bcma/bcma_driver_chipcommon.h b/include/linux/bcma/bcma_driver_chipcommon.h
index 525155658..c7d69d583 100644
--- a/include/linux/bcma/bcma_driver_chipcommon.h
+++ b/include/linux/bcma/bcma_driver_chipcommon.h
@@ -54,6 +54,7 @@
 #define BCMA_CC_CORECTL			0x0008
 #define  BCMA_CC_CORECTL_UARTCLK0	0x00000001	/* Drive UART with internal clock */
 #define	 BCMA_CC_CORECTL_SE		0x00000002	/* sync clk out enable (corerev >= 3) */
+#define  BCMA_CC_CORECTL_ASYNCGPIO	0x00000004	/* GPIO IRQs without backplane clock */
 #define  BCMA_CC_CORECTL_UARTCLKEN	0x00000008	/* UART clock enable (rev >= 21) */
 #define BCMA_CC_BIST			0x000C
 #define BCMA_CC_OTPS			0x0010		/* OTP status */

-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
