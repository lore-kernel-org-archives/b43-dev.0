From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sat, 03 Aug 2013 17:28:14 +0200
Subject: b43: DMA errors with BCM4331 on BCM4706
Message-ID: <51FD218E.9040700@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <m@bues.ch>, Larry Finger <Larry.Finger@lwfinger.net>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

Hi,

I am trying to get the BCM4331 working on the BCM4706 (Mips SoC), on a
x86 this is working. Currently the bcma bus gets initialized without any
problems and b43 starts and send beacons like excepted.

When a client wants to connect to the Access point the whole system
breaks. On the DMA core 1, which is used to send the packages I get a
Fatal DMA error:
b43-phy0 ERROR: Fatal DMA error: 0x00000000, 0x00000800, 0x00000000,
0x00000000, 0x00000000, 0x00000000

After this error the driver tries to recover, by reseting the DMA
controller, but that fails:
b43-phy0: Controller RESET (DMA error) ...
bcma: bus1: Timeout waiting for register 0x0804!
Data bus error, epc == 801ac888, ra == 801ac890

This is descried in [0] as PCIData (PD)

PCI Data Error
This field is set to 1 when a PCI bus error occurs while transferring
data to or from host memory. The PCI status register (see ?Status
Register (Status, offset 0x06)? on page 184) can be read to determine
the cause  of the error. This field is cleared to 0 by resetting the
channel that caused the error.

I can not find the description of the PCI status register.

I used wireshark to see what actually happens and the device send out
beacons and answers to probe requests without problems. I see the
Authentication, Association Request and Association Response frames and
then only Beacon frames and probe responses. When I do not try to
connect to this access Point there is no problem and the device stays up
for a long time, the problem is caused by the frames send or received.

I think this is a problem in the DMA controller or in the PCIe host
controller, sadly I do not have a BCM4706 SoC with a pluggable PCIe slot
to verify which part causes the problems (the card, or the PCIe controller).

Does anybody have any thought on this topic?

Hauke

[0]: http://www.broadcom.com/collateral/pg/440X-PG02-R.pdf
