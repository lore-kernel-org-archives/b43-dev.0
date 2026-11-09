Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D356606EE80
	for <b43-dev@archiver.kernel.org>; Mon,  9 Nov 2026 01:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SdzuDmOU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=ILnYXXDK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2m23mybd9EkSEeeV3eIe2+i0JP+hM/OhR3jAzysK4MQ=; b=SdzuDmOUGIi5fCZyfeOYuH3vFO
	NjfztLljqMpCDkUW0JLYgrZclRfCWRRJ/WnhIVekAq1WyOLa2m1NuLAAyyhUYXxCtUIWWy/osbPo8
	ckeiqgcR4Wor7YLmhX2uZid/IajFJ1biwlAhs7iGaK9RSatXtkfE2QfvR+J/OYsAap4EzcuujG2Xa
	7F/GtNlkdOzXcPo+53dYWVE5kVHJmAuWPMWgiSeU9bcuq1bQd/NVPncY4qMCrpLCRUNyrQ6lI7ueu
	fwjBZ5JGWRBY5bWsq7b/rHTORZNTtpq/PEnzLNuGiP8j0c54fUNazngftNGTCWWdBYL5gPC0ih3ZM
	s0JUF3qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1O-0000000H1Gn-3Jx1;
	Mon, 09 Nov 2026 01:18:06 +0000
Received: from smtpcmd11116.aruba.it ([62.149.156.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE1H-0000000H1CW-0WlG
	for b43-dev@lists.infradead.org;
	Mon, 09 Nov 2026 01:18:02 +0000
Received: from [127.0.0.1] ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id QE1AxMsH06VShQE1DxPoxC; Mon, 09 Nov 2026 02:17:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794187075; bh=AE0TGmtYz8A0q7Y93b+eSdkI2D5QLr1NMV888G8TpGE=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=ILnYXXDKfXjgECbezZDqhqCe3bAoSyoGkbR3i/vO7KAYz5FD2RfNe11CVHFeGpHj/
	 6D7ALxegMQqrDYN9tzC87hKFCKeDx924JaWkskAR/hL73Lps7AdksS3SNYR3+KF6hu
	 F40lvFoqsNaPZMgpqjt3l5CWKPTOkMm67VtLTjZQItSGu6j6uNcJchpnkvmBgGm/x/
	 rRCsSVzAoyNvjSrSzd7CrnaEb43mvZi9RAyF7HS9OIZEjPgwPEhH38Nogmf7mJOzxe
	 VuI2yb+Exvxb8uZqzsO2hhpzzCGW1ky6PXcQJKS+d69LdDv0QwsqXoVDf4VBTH1GD3
	 7xOnOSs2bK5XQ==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Mon, 09 Nov 2026 02:17:57 +0100
Subject: [PATCH wireless-next v4 07/10] firmware: bcm47xx_sprom: read
 ledbh4..ledbh15 from NVRAM
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-bcma-ac-rev1-v4-7-de1262c18b54@mythread.it>
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
X-CRM114-CacheID: sfid-20261108_171759_655829_9B1B671F 
X-CRM114-Status: GOOD (  19.08  )
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
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	T_SPF_TEMPERROR,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add gpio_ext[] for the LED behaviours of GPIO 4-15 and fill it from
NVRAM ledbh4..ledbh15.

bcm47xx_fill_sprom() is reached only through the SPROM fallback, so the
NVRAM of a bcma device with a SPROM of its own is never read. Add
bcm47xx_sprom_fill_bcma_nvram(), which bcma calls after extracting the
SPROM, to read the variables the SPROM has no word for on top of it.
The bcma prefix lookup moves into a helper shared by both paths.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/bcma/sprom.c                      |  3 ++
 drivers/firmware/broadcom/bcm47xx_sprom.c | 86 +++++++++++++++++++++++--------
 include/linux/bcm47xx_sprom.h             | 15 ++++++
 include/linux/ssb/ssb.h                   |  1 +
 4 files changed, 83 insertions(+), 22 deletions(-)

diff --git a/drivers/bcma/sprom.c b/drivers/bcma/sprom.c
index 339111519..0d562d5d4 100644
--- a/drivers/bcma/sprom.c
+++ b/drivers/bcma/sprom.c
@@ -11,6 +11,7 @@
 
 #include <linux/bcma/bcma.h>
 #include <linux/bcma/bcma_regs.h>
+#include <linux/bcm47xx_sprom.h>
 #include <linux/pci.h>
 #include <linux/io.h>
 #include <linux/dma-mapping.h>
@@ -847,6 +848,8 @@ int bcma_sprom_get(struct bcma_bus *bus)
 		else
 			bcma_sprom_extract_r8(bus, sprom);
 		kfree(sprom);
+		/* Most hosts have no NVRAM: ignore the result. */
+		bcm47xx_sprom_fill_bcma_nvram(bus, &bus->sprom);
 	}
 
 	return err;
diff --git a/drivers/firmware/broadcom/bcm47xx_sprom.c b/drivers/firmware/broadcom/bcm47xx_sprom.c
index 956ce2099..e2c4e3307 100644
--- a/drivers/firmware/broadcom/bcm47xx_sprom.c
+++ b/drivers/firmware/broadcom/bcm47xx_sprom.c
@@ -29,6 +29,7 @@
 #include <linux/bcm47xx_nvram.h>
 #include <linux/bcm47xx_sprom.h>
 #include <linux/bcma/bcma.h>
+#include <linux/err.h>
 #include <linux/etherdevice.h>
 #include <linux/hex.h>
 #include <linux/if_ether.h>
@@ -204,6 +205,20 @@ static void nvram_read_alpha2(const char *prefix, const char *name,
 	memcpy(val, buf, 2);
 }
 
+/* Variables read from NVRAM whether or not the SPROM itself comes from it. */
+static void bcm47xx_sprom_fill_nvram_only(struct ssb_sprom *sprom,
+					  const char *prefix, bool fallback)
+{
+	char name[sizeof("ledbh15")];
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(sprom->gpio_ext); i++) {
+		snprintf(name, sizeof(name), "ledbh%d", i + 4);
+		nvram_read_u8(prefix, NULL, name, &sprom->gpio_ext[i], 0xff,
+			      fallback);
+	}
+}
+
 /* This is one-function-only macro, it uses local "sprom" variable! */
 #define ENTRY(_revmask, _type, _prefix, _name, _val, _allset, _fallback) \
 	if (_revmask & BIT(sprom->revision)) \
@@ -241,6 +256,8 @@ static void bcm47xx_sprom_fill_auto(struct ssb_sprom *sprom,
 	ENTRY(0xfffffffe, u8, pre, "ledbh1", gpio1, 0xff, fb);
 	ENTRY(0xfffffffe, u8, pre, "ledbh2", gpio2, 0xff, fb);
 	ENTRY(0xfffffffe, u8, pre, "ledbh3", gpio3, 0xff, fb);
+	if (sprom->revision)
+		bcm47xx_sprom_fill_nvram_only(sprom, pre, fb);
 
 	ENTRY(0x0000070e, u16, pre, "pa0b0", pa0b0, 0, fb);
 	ENTRY(0x0000070e, u16, pre, "pa0b1", pa0b1, 0, fb);
@@ -811,45 +828,70 @@ static void bcm47xx_sprom_apply_prefix_alias(char *prefix, size_t prefix_size)
 	}
 }
 
-static int bcm47xx_get_sprom_bcma(struct bcma_bus *bus, struct ssb_sprom *out)
+/*
+ * The NVRAM prefix of a bcma bus's variables: pci/<bus>/<slot>/ or its
+ * devpathN alias for a PCI device, sb/<core>/ for the SoC's own core.
+ * Returns the prefix, NULL for a SoC bus without an 802.11 core, or an
+ * error pointer for a host type NVRAM knows nothing about. *fallback is
+ * set when the caller may fall back to unprefixed variables.
+ */
+static char *bcm47xx_sprom_bcma_prefix(struct bcma_bus *bus, char *buf,
+				       size_t size, bool *fallback)
 {
-	struct bcma_boardinfo *binfo = &bus->boardinfo;
 	struct bcma_device *core;
-	char buf[10];
-	char *prefix;
-	bool fallback = false;
 
+	*fallback = false;
 	switch (bus->hosttype) {
 	case BCMA_HOSTTYPE_PCI:
-		memset(out, 0, sizeof(struct ssb_sprom));
 		/* On BCM47XX all PCI buses share the same domain */
 		if (IS_ENABLED(CONFIG_BCM47XX))
-			snprintf(buf, sizeof(buf), "pci/%u/%u/",
+			snprintf(buf, size, "pci/%u/%u/",
 				 bus->host_pci->bus->number + 1,
 				 PCI_SLOT(bus->host_pci->devfn));
 		else
-			snprintf(buf, sizeof(buf), "pci/%u/%u/",
+			snprintf(buf, size, "pci/%u/%u/",
 				 pci_domain_nr(bus->host_pci->bus) + 1,
 				 bus->host_pci->bus->number);
-		bcm47xx_sprom_apply_prefix_alias(buf, sizeof(buf));
-		prefix = buf;
-		break;
+		bcm47xx_sprom_apply_prefix_alias(buf, size);
+		return buf;
 	case BCMA_HOSTTYPE_SOC:
-		memset(out, 0, sizeof(struct ssb_sprom));
 		core = bcma_find_core(bus, BCMA_CORE_80211);
-		if (core) {
-			snprintf(buf, sizeof(buf), "sb/%u/",
-				 core->core_index);
-			prefix = buf;
-			fallback = true;
-		} else {
-			prefix = NULL;
-		}
-		break;
+		if (!core)
+			return NULL;
+		snprintf(buf, size, "sb/%u/", core->core_index);
+		*fallback = true;
+		return buf;
 	default:
+		return ERR_PTR(-EINVAL);
+	}
+}
+
+int bcm47xx_sprom_fill_bcma_nvram(struct bcma_bus *bus, struct ssb_sprom *out)
+{
+	char buf[10];
+	char *prefix;
+	bool fallback;
+
+	prefix = bcm47xx_sprom_bcma_prefix(bus, buf, sizeof(buf), &fallback);
+	if (IS_ERR(prefix))
+		return PTR_ERR(prefix);
+	bcm47xx_sprom_fill_nvram_only(out, prefix, fallback);
+	return 0;
+}
+
+static int bcm47xx_get_sprom_bcma(struct bcma_bus *bus, struct ssb_sprom *out)
+{
+	struct bcma_boardinfo *binfo = &bus->boardinfo;
+	char buf[10];
+	char *prefix;
+	bool fallback;
+
+	prefix = bcm47xx_sprom_bcma_prefix(bus, buf, sizeof(buf), &fallback);
+	if (IS_ERR(prefix)) {
 		pr_warn("Unable to fill SPROM for given bustype.\n");
-		return -EINVAL;
+		return PTR_ERR(prefix);
 	}
+	memset(out, 0, sizeof(struct ssb_sprom));
 
 	nvram_read_u16(prefix, NULL, "boardvendor", &binfo->vendor, 0, true);
 	if (!binfo->vendor)
diff --git a/include/linux/bcm47xx_sprom.h b/include/linux/bcm47xx_sprom.h
index 40a7da3ef..47e9922ec 100644
--- a/include/linux/bcm47xx_sprom.h
+++ b/include/linux/bcm47xx_sprom.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 #include <linux/vmalloc.h>
 
+struct bcma_bus;
 struct ssb_sprom;
 
 #ifdef CONFIG_BCM47XX_SPROM
@@ -28,4 +29,18 @@ static inline int bcm47xx_sprom_register_fallbacks(void)
 };
 #endif
 
+/*
+ * Fill the NVRAM-only variables of a bcma bus whose SPROM was read from the
+ * device. Like the SPROM fallback, only with bcma built in.
+ */
+#if defined(CONFIG_BCM47XX_SPROM) && IS_BUILTIN(CONFIG_BCMA)
+int bcm47xx_sprom_fill_bcma_nvram(struct bcma_bus *bus, struct ssb_sprom *out);
+#else
+static inline int bcm47xx_sprom_fill_bcma_nvram(struct bcma_bus *bus,
+						struct ssb_sprom *out)
+{
+	return -EOPNOTSUPP;
+}
+#endif
+
 #endif /* __BCM47XX_SPROM_H */
diff --git a/include/linux/ssb/ssb.h b/include/linux/ssb/ssb.h
index a89bdbf56..91de70aa3 100644
--- a/include/linux/ssb/ssb.h
+++ b/include/linux/ssb/ssb.h
@@ -76,6 +76,7 @@ struct ssb_sprom {
 	u8 gpio1;		/* GPIO pin 1 */
 	u8 gpio2;		/* GPIO pin 2 */
 	u8 gpio3;		/* GPIO pin 3 */
+	u8 gpio_ext[12];	/* GPIO pins 4-15, NVRAM ledbh4-15 only */
 	u8 maxpwr_bg;		/* 2.4GHz Amplifier Max Power (in dBm Q5.2) */
 	u8 maxpwr_al;		/* 5.2GHz Amplifier Max Power (in dBm Q5.2) */
 	u8 maxpwr_a;		/* 5.3GHz Amplifier Max Power (in dBm Q5.2) */

-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
