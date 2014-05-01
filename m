From: Crazybob <crazybob2@arcor.de>
Date: Thu, 01 May 2014 10:19:01 +0200
Subject: archlinux kernel 3.14.1-1 Broadcom BCM4312 firmware-file not found
Message-ID: <53620375.1050109@arcor.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello List,

my Netbook:
Packard Bell DOT M
Intel Z520 1.33G
1GB RAM
Broadcom BCM4312 802.11b/g LP-PHY (rev 01)

arch 32-bit fully updated.

uname -a:
Linux laptop 3.14.1-1-ARCH #1  SMP PREEMPT Mon 14 April 21:01:08 CEST
2014 i686 GNU/Linux

With Kernel 3.13.8-1 and b43-firmware-5.100.130 all works very well.

After Upgrade my System with Kernel 3.14.1-1 with same package of
Firmware installed and a reboot, i got this message on every boot:


Apr 30 15:50:47 laptop kernel: b43-pci-bridge 0000:03:00.0: enabling
device (0004 -> 0006)
Apr 30 15:50:47 laptop kernel: ssb: Found chip with id 0x4312, rev 0x01
and package 0x00
Apr 30 15:50:47 laptop kernel: ssb: Core 0 found: ChipCommon (cc 0x800,
rev 0x16, vendor 0x4243)
Apr 30 15:50:47 laptop kernel: ssb: Core 1 found: IEEE 802.11 (cc 0x812,
rev 0x0F, vendor 0x4243)
Apr 30 15:50:47 laptop kernel: ssb: Core 2 found: PCMCIA (cc 0x80D, rev
0x0A, vendor 0x4243)
Apr 30 15:50:47 laptop kernel: ssb: Core 3 found: PCI-E (cc 0x820, rev
0x09, vendor 0x4243)
Apr 30 15:50:47 laptop kernel: ssb: Sonics Silicon Backplane found on
PCI device 0000:03:00.0
Apr 30 15:50:47 laptop kernel: b43-phy0: Broadcom 4312 WLAN found (core
revision 15)
Apr 30 15:50:47 laptop kernel: b43-phy0: Found PHY: Analog 6, Type 5
(LP), Revision 1
Apr 30 15:50:47 laptop kernel: b43-phy0 ERROR: Firmware file
"b43/lp0initvals15.fw" not found
Apr 30 15:50:47 laptop kernel: Broadcom 43xx driver loaded [ Features:
PMNLS ]
Apr 30 15:50:47 laptop kernel: b43-phy0 ERROR: Firmware file
"b43-open/ucode15.fw" not found
Apr 30 15:50:47 laptop kernel: b43-phy0 ERROR: You must go to
http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and
download the correct firmware for this driver version. Please carefully
read all instructions on this website.


The files are propper installed under /usr/lib/firmware/b43/


What have i done:
rebuild and reinstalled firmware b43-firmware-5.100.130 by using Kernel
3.14.1-1 - no success.

Updating to b43-firmware-6.30.163.46 using Kernel 3.14.1-1 - no success.

Downgrading to Kernel 3.13.8-1 both firmware versions works as expected.

Sorry for my bad english.

Regards
