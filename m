Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF17606A32D
	for <b43-dev@archiver.kernel.org>; Sat, 31 Oct 2026 09:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vQ72J7ch;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=Yi/gzTL6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ggqTARcUofdHh/qWcaMmQUS9D8Wyh6eGRlVRbRaA/Oo=; b=vQ72J7chyGsb9+eZYRQLV59iqj
	9raCUWV9GMFh2NFIHZWiS5o64e/5hgH+OQbCuLjtImaXdmdHZv8DxAT75Lvl3ZPohz6XQ8V+o4jxY
	E/qFMyt/59ZZfi/KLi4O5NL+tamkFnUX0OVeXvq28W0tNwSHXX6GmrdPpekp6CsyHyjdMvCv5tFAy
	XRXJ+2GGTQYDbPLFbRIFfiYCaHLFE6bvvNjYJD5KFWgGv2JooObEW9xLNxqfa29VH78MkGBqWxswR
	htrHCOvC/jgbGywaRBVO9lD4aG3ntp3e0P/9rsUhyHLm1NRaLkSnCcmgVZJjUUKsi8flkBSx3SEfd
	1ttjrr+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5Bd-0000000D7SN-3NG4;
	Sat, 31 Oct 2026 09:15:41 +0000
Received: from smtpcmd0986.aruba.it ([62.149.156.86])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5BV-0000000D7Pm-43Yz
	for b43-dev@lists.infradead.org;
	Sat, 31 Oct 2026 09:15:36 +0000
Received: from [127.0.0.1] ([79.43.52.162])
	by Aruba SMTP with ESMTPSA
	id N5BMx1hYL6q8sN5BRxVoVO; Sat, 31 Oct 2026 10:15:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793438130; bh=6bx59o3Z5Zhr3o5yP5KkMPMyyTXDqNwsakUJWRv9Yz4=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=Yi/gzTL61M60I+hjJn3fMJLn6k8UtcrrkwOr15fKf+2cTogglI2isbwxXwiuZgxV9
	 GvUlR8w4iZkqcfDr6Z//vgTXTePsDa9Qn9qK5MRLoYQKHnTgA/V2uflihto1/JVI1n
	 diZGsx0OhIBfhPehwaeDkyj5kGJQ2GB2C+sOCd1kQQDEkGaesI9Cbnd0SqjRxr2zTh
	 M04ZjG82BmKQsxuyyhlt+UuYzKTHcYYSrD1OPQZFfylhthsAHhNaRrVsY5pzqgxHj0
	 DNjJ+IbMCi4F/kMZwgrMX937vBQUG5aloDylziG9wRO3A/Hc8z/p+sdTsmiEp58ZSS
	 GmkCc4Nc4HVlg==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Sat, 31 Oct 2026 10:15:31 +0100
Subject: [PATCH wireless-next v3 09/10] bcma: add the single-band
 BCM4352/BCM4360 PCI IDs
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261031-bcma-ac-rev1-v3-9-1fbe38e8179b@mythread.it>
References: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
In-Reply-To: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>, vit9696 <vit9696@protonmail.com>
X-Mailer: b4 0.15.2
X-CMAE-Envelope: MS4xfPBZNLEo71l/QFE82efaGzWt4iqwpfNEwXROuM2bg59CONH1IJq3AxNNmSxPglw/dZLw03jjAo6BQVJ67qxc0knWYrpo2bXZF0BwhGj3xuE6bWolradr
 0XyUXfvGxcNf9qgaIO8aj8Xg940oIeY3xqpjwGQlsUcvBdLIdHFyHxcjs1TAMVxki4ZcivUnFVOeAbf8VcUVzOaJBDQs+hAaDGgo/13vrPztWASl83/LgZlB
 eFI5HyLFmvlBuApDenByz9pDtmJYuljaqII2+BC0Z8BabjD4+9qQOBLjHZKg/gStorIyM/x8YP+EyAHfunDwz/qEDdOH/obgMxinALeFv5iG92zUow1k/vMG
 IrfAojJ9yZLxDH88G7pWbt52BiTLMm04bpTud3K6AZL9Nqo3U8g61yIQl2ip6dkHMywCVNkG/JoUh6PPbbag01HeyyXcRw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_021534_377364_B0F151BA 
X-CRM114-Status: UNSURE (   8.37  )
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

Bind bcma-pci-bridge to the 2.4 GHz and 5 GHz variants of the BCM4360
(0x43a1, 0x43a2) and BCM4352 (0x43b2, 0x43b3), next to the dual-band
0x43a0 and 0x43b1, and name the chip and band of each.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/bcma/host_pci.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/bcma/host_pci.c b/drivers/bcma/host_pci.c
index 3dc298506..27f6cc10a 100644
--- a/drivers/bcma/host_pci.c
+++ b/drivers/bcma/host_pci.c
@@ -294,10 +294,14 @@ static const struct pci_device_id bcma_pci_bridge_tbl[] = {
 	{ PCI_DEVICE_SUB(PCI_VENDOR_ID_BROADCOM, 0x4365, PCI_VENDOR_ID_DELL, 0x0018) },
 	{ PCI_DEVICE_SUB(PCI_VENDOR_ID_BROADCOM, 0x4365, PCI_VENDOR_ID_FOXCONN, 0xe092) },
 	{ PCI_DEVICE_SUB(PCI_VENDOR_ID_BROADCOM, 0x4365, PCI_VENDOR_ID_HP, 0x804a) },
-	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43a0) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43a0) },	/* BCM4360 */
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43a1) },	/* BCM4360, 2.4 GHz */
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43a2) },	/* BCM4360, 5 GHz */
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43a9) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43aa) },
-	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43b1) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43b1) },	/* BCM4352 */
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43b2) },	/* BCM4352, 2.4 GHz */
+	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x43b3) },	/* BCM4352, 5 GHz */
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4727) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 43227) },	/* 0xa8db, BCM43217 (sic!) */
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 43228) },	/* 0xa8dc */

-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
