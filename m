Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AF160A2603
	for <b43-dev@archiver.kernel.org>; Sat, 31 Oct 2026 09:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1e5/x/eY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=L3Op+E0b
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mob4j9VhzSEHniWxV9KkG/QtVoupHDIj5LHFQKStmSI=; b=1e5/x/eYlGYdDVyL6ZG8HT+5SE
	fCa5Z0PHcIYLNFYMsYttp+jtAXVI8wrXLZOCiXx3iwZtG368jRJhKJ1POKKhBfc1rnjBsCd+8gM9k
	DFEg9aPJqz+3+zeFd832ok+awKuz7vDyt34miFkfGTYpkn7ycdfEHtBHLr+82ewV+Mut6n2tuijSB
	JiSw6HCAVRboKJUH7lGwYFc9cep9E/nnI0UJ6GfCzdxEUZ8ZrkLDc7qn53AWt2ivoRqa8ohop5PWI
	fqwobkW94pWuDRBuSi/KBEU/eky/qrIw3YQFdt2tuYfHVm3b2tPUNxpVaZnN9E9ZAZclYzWEQawuV
	qp6ZHXkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5Bh-0000000D7YN-1LpA;
	Sat, 31 Oct 2026 09:15:45 +0000
Received: from smtpcmd0986.aruba.it ([62.149.156.86])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5BV-0000000D7Pi-3Rxp
	for b43-dev@lists.infradead.org;
	Sat, 31 Oct 2026 09:15:40 +0000
Received: from [127.0.0.1] ([79.43.52.162])
	by Aruba SMTP with ESMTPSA
	id N5BMx1hYL6q8sN5BRxVoUi; Sat, 31 Oct 2026 10:15:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793438129; bh=8f5UgKMcuAyNs+Cvdxg257LcBIIUIRGaXx1FhL+pExo=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=L3Op+E0bmuzmh62bprUycy+hmyE9ns+90bYk8p/StO8duJuCyVZUcMtobcwHntpPa
	 MNkdt0lxOfcEftt5qBdTNeFK6T7yumG3T7Rexk/2JCpkkoRbnW33B4uYsJk/klGnS/
	 Dspa0d2JreY1oMiw7CLEm6LNuu1mV6HXR5LDYHP+DOaCHl2deMXQ/pqqs/mH8Mt7qf
	 /URLx9S209K91RNtW0u+0d1LpwggkndYRtgrcyth3OUH8/RV8RXjmNvHBsCF5wgkq8
	 XsP9ySU94pcdpkFvhm6Cb4QXRv3Tuxiq5qm874dJbh7k7GF5c0emlA7Pc5TZ0yspsf
	 H0w0CMovuUwbQ==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Sat, 31 Oct 2026 10:15:29 +0100
Subject: [PATCH wireless-next v3 07/10] firmware: bcm47xx_sprom: read
 ledbh4..ledbh15 from NVRAM
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261031-bcma-ac-rev1-v3-7-1fbe38e8179b@mythread.it>
References: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
In-Reply-To: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>, vit9696 <vit9696@protonmail.com>
X-Mailer: b4 0.15.2
X-CMAE-Envelope: MS4xfBquXWVKbtw0SEhOKbdbXouZGKYZ2kXTor0QTiJO8zQvI85TLhqBw8PYg59AlNu1D76ywnY2MifXuPuhC8YHJRxx9Gadh1YXjDH/n70ilvRUd/nX5cgp
 LYOORtmUFcp1/HKwJDjHpM4WIggOKfwQ5MKsUM5uxr+9xszmNkdAjcu0zp/5Mw8LwyPyQVn2YO+689yVat7rW3goCXT0VbKBfdJ7c5Q2z7YyTrLJ9Fl6A0Og
 C0wY2Cx87zgQOYQn4QmwkZkBC+dm+tiRm5ZSDGTJa5miqfLDJQGQ1TiJUY1TApotFzYS22MXgKnD7kdhfXR1bi5PyW6E51WFFrRo7GOkNVA/IEWllvTfPWn5
 +dhg94o/yhFLdqpi1Gb3ZQxqMKuBeO33GWQtQnLuV4O4IFqY2lXyJ3zmcQzUSE8MpdG5z+l3KXxZQd0OWS+TflwWSLEEOw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_021534_434823_F9053972 
X-CRM114-Status: GOOD (  18.32  )
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
index d68bc3822..d78615c53 100644
--- a/drivers/bcma/sprom.c
+++ b/drivers/bcma/sprom.c
@@ -11,6 +11,7 @@
 
 #include <linux/bcma/bcma.h>
 #include <linux/bcma/bcma_regs.h>
+#include <linux/bcm47xx_sprom.h>
 #include <linux/pci.h>
 #include <linux/io.h>
 #include <linux/dma-mapping.h>
@@ -837,6 +838,8 @@ int bcma_sprom_get(struct bcma_bus *bus)
 		else
 			bcma_sprom_extract_r8(bus, sprom);
 		kfree(sprom);
+		/* Most hosts have no NVRAM: ignore the result. */
+		bcm47xx_sprom_fill_bcma_nvram(bus, &bus->sprom);
 	}
 
 	return err;
diff --git a/drivers/firmware/broadcom/bcm47xx_sprom.c b/drivers/firmware/broadcom/bcm47xx_sprom.c
index d0303f2ee..46a817d71 100644
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
@@ -807,45 +824,70 @@ static void bcm47xx_sprom_apply_prefix_alias(char *prefix, size_t prefix_size)
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
index 49b34c153..c91d47592 100644
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
