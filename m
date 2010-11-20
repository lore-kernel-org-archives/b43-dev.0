From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 19 Nov 2010 21:25:21 -0600
Subject: [PATCH] ssb: b43-pci-bridge: Add new vendor for BCM4318
Message-ID: <4ce73fa1.GbdqTWKHqw8VpIT4%Larry.Finger@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John W Linville <linville@tuxdriver.com>, Michael Buesch <mb@bu3sch.de>
Cc: danielklaffenbach@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

From: Daniel Klaffenbach <danielklaffenbach@gmail.com>

Add new vendor for Broadcom 4318.

Signed-off-by: Daniel Klaffenbach <danielklaffenbach@gmail.com>
Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Stable <stable@kernel.org>
---

John - for 2.6.37

Larry

Index: wireless-testing/drivers/ssb/b43_pci_bridge.c
===================================================================
--- wireless-testing.orig/drivers/ssb/b43_pci_bridge.c
+++ wireless-testing/drivers/ssb/b43_pci_bridge.c
@@ -24,6 +24,7 @@ static const struct pci_device_id b43_pc
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4312) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4315) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4318) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_BCM_GVC,  0x4318) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4319) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4320) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4321) },
Index: wireless-testing/include/linux/pci_ids.h
===================================================================
--- wireless-testing.orig/include/linux/pci_ids.h
+++ wireless-testing/include/linux/pci_ids.h
@@ -2047,6 +2047,7 @@
 #define PCI_DEVICE_ID_AFAVLAB_P030	0x2182
 #define PCI_SUBDEVICE_ID_AFAVLAB_P061		0x2150
 
+#define PCI_VENDOR_ID_BCM_GVC          0x14a4
 #define PCI_VENDOR_ID_BROADCOM		0x14e4
 #define PCI_DEVICE_ID_TIGON3_5752	0x1600
 #define PCI_DEVICE_ID_TIGON3_5752M	0x1601
