Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF07606A31C
	for <b43-dev@archiver.kernel.org>; Mon,  9 Nov 2026 01:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BAMB0vtv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=JrYf9N8u
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HE2fgzvzF63q334KSIBv7sCFIwaPaaRdTZPpVMeVaAI=; b=BAMB0vtvcmrUx7AFGIrSSsS2Fk
	kOIlq6U+dyjVrOvlPplC1pmz7TZi3MKYlKpTM7XEKKcGmzFByb7tlRoGeKF27BA0fEWTIp/H2Kg2U
	pZEj/Qzx78bTWFQGJA0j02Rq6hQPT/5lPNN7YQ7Uv28gsYbaxYL5v4mrI2CaRUj+ocArszTkmjAAQ
	6yFUmGk5JSh6Anv0AYJO2mQF3C2kt4qH5FvXT6tmvQ+V5Gw9rzGIFxjlPTFqzPH4nFXQ+/qvw9Ega
	ILz6ior1Ccw0/gTsaOoH7kBwp3eWzQ2oG1qTfMUBxKKjdr1/FTa6xlRWGdJZaTsLFYXYqa+6CK9x+
	f5tJksZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE8Y-0000000H2Yi-07wU;
	Mon, 09 Nov 2026 01:25:30 +0000
Received: from smtpdh16-2.aruba.it ([62.149.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE8V-0000000H2Y0-3uKN
	for b43-dev@lists.infradead.org;
	Mon, 09 Nov 2026 01:25:29 +0000
Received: from localhost ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id QE8Sx8Tkh6KjvQE8TxqDRE; Mon, 09 Nov 2026 02:25:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794187525; bh=hAadhz8TUc/HNEn1c+Elr0DSD4ow8/DeRqXXhGYf/PQ=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=JrYf9N8uKXqRn7u029McQT4URdzC/DpJJdxPFDGYlyr2tRE9aPSRY6ZrniVWFmmzo
	 DeCXFoN0h+SDWWmJHkQjk74qr5qbQZc5lB8HfFiyV9fvsXtPVBDvdFbPjHZFmABJ0j
	 2qdv8K0Gyf4QAMuT3yf9Xw8bB5sX0PvgjeKWPjt+UvnEg1rEQBCAPnTWmeZfIGhjfa
	 a8ViJQDSaVMYrqh/o64Su+MjQFrzcsGtN3hZX5+zHIgROvUywpx7MdtcpuggDyB8mk
	 yL37ibTL6KNx4R5ePeItBZ3tFqL89S1dcHKfvWFjl7C0wV3GuTVjAUWxqpn/VjDdpE
	 HWwWxHuWR8B3Q==
Date: Mon, 9 Nov 2026 02:25:22 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Michael Buesch
 <m@bues.ch>
Cc: vit9696 <vit9696@protonmail.com>, ville+git@takio.fi, egc112@msn.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, b43-dev@lists.infradead.org
Subject: [PATCH wireless-next v4 09/10] bcma: add the single-band
 BCM4352/BCM4360 PCI IDs
Message-ID: <20261109022522.00000129@mythread.it>
In-Reply-To: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
References: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfOq7IXKFgCfLgYZYlJrjezaSC0lTnPTpKEFkNgnD34xuDVmpMJc1RIQu9C6KPVAfXQs1pKzEVn01HxWtiA5FP60Xr6aS7Knt4HYaLV3PVP+mQc2INKol
 dZbinE+y6987+SN8ZqX/weDwsmnLCIaTrefWdLXtm/RvcNDxcgtAfr5gbF3QgELNZD24y2QNgeUSiKyDXVPZGPkryLVePwfSs3LPz6at6vSqLfpMLLb10h5i
 sii4liaS6pUTMGs03+5qhaQPxPCEOc3VZm0YpAKwd1rVY+BXGTzMndDN3Dl0laWXYmmj1ldaB9eYU2e//RaINHnkrsMTWNVcidnxH5p/2fbOUEYVmKIrpl84
 YlFBo+NSpqTuTMDHR+lNrK4t/cpVP1AKNs/6Tsz/4t/L8Esuy4Fq+NRFbPJ1iHpRUiluDUmSD/9DurSSer73qKtNy2SS+IkRIkiceu87ojtaBDHWdzY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_172528_140158_FE82B99D 
X-CRM114-Status: GOOD (  10.47  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
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
