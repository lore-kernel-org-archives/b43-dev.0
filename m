From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 07 Jan 2011 15:45:55 +0100
Subject: Odd behavior of ssb, b43, b43legacy, and b44
In-Reply-To: <4D269711.1040003@lwfinger.net>
	(sfid-20110107_053108_647486_0233929A)
References: <4D262109.20504@lwfinger.net>
	(sfid-20110106_210800_770742_63AA2C67)
	<1294371276.15564.0.camel@maggie>
	<4D269711.1040003@lwfinger.net> (sfid-20110107_053108_647486_0233929A)
Message-ID: <1294411555.18385.1.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

On Thu, 2011-01-06 at 22:31 -0600, Larry Finger wrote: 
> On 01/06/2011 09:34 PM, Michael B?sch wrote:
> > 
> > Does one of these wireless cards have a dangling ethernet core? I would
> > not be surprised...
> 
> Yes. The core scan for the BCM4303 is as follows:
> 
> ssb: Core 0 found: IEEE 802.11 (cc 0x812, rev 0x02, vendor 0x4243)
> ssb: Core 1 found: PCMCIA (cc 0x80D, rev 0x00, vendor 0x4243)
> ssb: Core 2 found: Fast Ethernet (cc 0x806, rev 0x02, vendor 0x4243)
> ssb: Core 3 found: V90 (cc 0x807, rev 0x01, vendor 0x4243)
> ssb: Core 4 found: PCI (cc 0x804, rev 0x03, vendor 0x4243)
> ssb: Sonics Silicon Backplane found on PCI device 0000:01:09.0
> 
> Larry
> 

Can you please try this patch?


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
