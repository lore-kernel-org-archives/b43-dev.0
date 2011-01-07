From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 07 Jan 2011 19:48:05 +0100
Subject: [PATCH] ssb: Ignore dangling ethernet cores on wireless devices
Message-ID: <1294426085.18385.8.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John Linville <linville@tuxdriver.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

Some Broadcom based wireless devices contain dangling ethernet cores.
This triggers the ssb probing mechanism and tries to load the b44 driver
on this core.
Ignore the dangling core in the ssb core scanning code to avoid
access to the core and failure of b44 probing.

Signed-off-by: Michael Buesch <mb@bu3sch.de>
Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

---

Does not need to go into stable, because probing of that core
doesn't hurt except for failure messages in the logs.

Index: linux-2.6.37/drivers/ssb/scan.c
===================================================================
--- linux-2.6.37.orig/drivers/ssb/scan.c	2011-01-07 15:35:10.518000002 +0100
+++ linux-2.6.37/drivers/ssb/scan.c	2011-01-07 15:45:54.231998930 +0100
@@ -420,6 +420,16 @@
 			bus->pcicore.dev = dev;
 #endif /* CONFIG_SSB_DRIVER_PCICORE */
 			break;
+		case SSB_DEV_ETHERNET:
+			if (bus->bustype == SSB_BUSTYPE_PCI) {
+				if (bus->host_pci->vendor == PCI_VENDOR_ID_BROADCOM &&
+				    (bus->host_pci->device & 0xFF00) == 0x4300) {
+					/* This is a dangling ethernet core on a
+					 * wireless device. Ignore it. */
+					continue;
+				}
+			}
+			break;
 		default:
 			break;
 		}

-- 
Greetings Michael.
