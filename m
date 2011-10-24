From: Arseny Klimovsky <arseny.klimovsky@gmail.com>
Date: Tue, 25 Oct 2011 00:10:01 +0400
Subject: Problem with BCM4312 and EAP mode
Message-ID: <4EA5C619.4010408@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello, list

I'm using b43 driver on laptop Dell Latitude E4300. It works great at 
home with WPA-PSK mode, thank you!
But I cannot use it in a WPA-EAP mode.

The system log is full with such errors when I try to connect to the net:
Oct 24 11:32:26 odette-laptop kernel: [596357.880058] b43-phy0 ERROR: 
MAC suspend failed

It is Ubuntu 10.04.3 with new vanilla kernel
$ uname -a
Linux odette-laptop 3.0.4-030004-generic #201108301138 SMP Tue Aug 30 
11:42:30 UTC 2011 x86_64 GNU/Linux
$ lspci -v
0c:00.0 Network controller: Broadcom Corporation BCM4312 802.11b/g (rev 01)
         Subsystem: Dell Device 000c
         Flags: bus master, fast devsel, latency 0, IRQ 17
         Memory at f69fc000 (64-bit, non-prefetchable) [size=16K]
         Capabilities: [40] Power Management version 3
         Capabilities: [58] Vendor Specific Information <?>
         Capabilities: [e8] Message Signalled Interrupts: Mask- 64bit+ 
Queue=0/0 Enable-
         Capabilities: [d0] Express Endpoint, MSI 00
         Capabilities: [100] Advanced Error Reporting <?>
         Capabilities: [13c] Virtual Channel <?>
         Capabilities: [160] Device Serial Number 60-0c-59-ff-ff-76-4f-97
         Capabilities: [16c] Power Budgeting <?>
         Kernel driver in use: b43-pci-bridge
         Kernel modules: ssb


I've seen a similar message in the list:
http://lists.infradead.org/pipermail/b43-dev/2011-September/002090.html

What information should I provide to help you to debug the problem?

-- 
Arseny Klimovsky
