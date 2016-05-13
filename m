From: Rod Manning <rod.t.manning@gmail.com>
Date: Fri, 13 May 2016 14:20:08 +0930
Subject: Broadcom BCM43162 [14e4:43ae] Support
Message-ID: <1463115008.17952.11.camel@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

Wondering if anyone can provide information on plans to support the
Broadcom BCM43162 adapter in the b43 kernel drivers?

Have tried other options with ndiswrapper etc. to no success. Wondering
whether to keep trying to get a solution/wait for driver vs just
replace the card...

(Happy to provide testing etc. if it helps out.)

--
Thanks for any info,

Rod

lspci output:
-----------------------------------------------------------------
03:00.0 Network controller [0280]: Broadcom Corporation BCM43162 802.11ac
Wireless Network Adapter [14e4:43ae] (rev 02)
????????Subsystem: Lenovo Device [17aa:0622]
????????Flags: bus master, fast devsel, latency 0, IRQ 255
????????Memory at f0c00000 (64-bit, non-prefetchable) [size=32K]
????????Memory at f0800000 (64-bit, non-prefetchable) [size=4M]
????????Capabilities: [48] Power Management version 3
????????Capabilities: [58] MSI: Enable- Count=1/1 Maskable- 64bit+
????????Capabilities: [68] Vendor Specific Information: Len=44 <?>
????????Capabilities: [ac] Express Endpoint, MSI 00
????????Capabilities: [100] Advanced Error Reporting
????????Capabilities: [13c] Device Serial Number 00-00-08-ff-ff-00-30-0e
????????Capabilities: [150] Power Budgeting <?>
????????Capabilities: [160] Virtual Channel
????????Capabilities: [1b0] Latency Tolerance Reporting
????????Capabilities: [220] #15
