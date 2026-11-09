Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF8E606D83F
	for <b43-dev@archiver.kernel.org>; Mon,  9 Nov 2026 01:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Tr7kR8/X;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=dYBvY+T0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pt7p7BuTitXt+Pd2nAHF8pDycitkTvDzxkaaVPTMl5A=; b=Tr7kR8/XCS0Uh+t/jh9lWQgvj+
	O2K7lhL/PnZ0UBbNcAIfZRGqhnnz00T51QJsDHO86QI6sVvoTGsbku1rKBwbhYil/Sr+xxcmRd5nJ
	uvypuY5ikzNBTRXW1yCX5M7Q4P6u1FgQlVzy13cbNs72WdCyGAiNxpO+Fwz6JwjkjkTXHElEi8F7M
	J8FA68uooIIRo9hDnQsfmJCu6CjbwpLBakSGRk+5IYp4jcIqwlhGB2O/zki+y87Rc7gVAHim9TBCd
	IA2VxyVK1Anhr//EJ0S7LlgGJ5/HgtQ6um/eJ1LWkvJKKFKtwKnVuZOWWSQmwCOntwzPSLkhVIb0U
	4M/Vjyhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1O-0000000H1G8-0Qpd;
	Mon, 09 Nov 2026 01:18:06 +0000
Received: from smtpcmd11116.aruba.it ([62.149.156.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1H-0000000H1CQ-0VaM
	for b43-dev@lists.infradead.org;
	Mon, 09 Nov 2026 01:18:02 +0000
Received: from [127.0.0.1] ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id QE1AxMsH06VShQE1CxPovl; Mon, 09 Nov 2026 02:17:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794187074; bh=oLRFKUwHbKhCHiC98MhkOwsf0J/5kYlXvF/Sbi45IsU=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=dYBvY+T0Ccw0OUXRpirWIhT71Cq7XFsrJ7ZowC7wHvN2dWQ81F/K/28uhz0A2QUNX
	 52140I5pdGEIZYaK9jQ5JAyObqiHkEI9zvEaMzMgaFnvWwtQqUYbKy46dq0r5etAxk
	 n/Ic/KkM2HAVD/TG6SHOS2S7sqVqfYHsUV2TuwPMyrxfO7k2SZQuah7lqPX30eeSZy
	 xHq2f4r3f7NSIvfm6W3XS4ynA1wl4xBI6MSr28VXVANp90ILyD46UfORr63xWYkVhU
	 vZWWBM5GFemWu230RiY8liX6CMxNiIXtrlj+17QOmQ7n5iPBXmKrBp8/GV4j2MfVZg
	 XBNmYMSr3TAYA==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Mon, 09 Nov 2026 02:17:53 +0100
Subject: [PATCH wireless-next v4 03/10] bcma: pcie2: request HT on
 BCM4352/BCM4360
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-bcma-ac-rev1-v4-3-de1262c18b54@mythread.it>
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
X-CRM114-CacheID: sfid-20261108_171759_649728_1758FD0F 
X-CRM114-Status: UNSURE (   7.01  )
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
