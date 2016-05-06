From: Jan Sobotka <xSobotkaJ@seznam.cz>
Date: Fri, 06 May 2016 13:19:40 +0200 (CEST)
Subject: Planned Support for BCM 43162 [14e4:43ae] rev 02 ?
References: <3L}.2TJP.BPtk86KPbh.1NAtDW@seznam.cz>
 <3Fn.2TId.FHuvjLBV4z.1NAsIY@seznam.cz>
 <75r.2THk.1aVrEGdo1ry.1N96yR@seznam.cz>
 <CACna6rypnsgK4DeMxL6F8jwuFpzYhvG8O_TA1M4A6j8X6Eh5_A@mail.gmail.com>
 <CACna6rx90=u7ZSY6ZXjWw4CicEQR6Ty-iEc_G9ACLL0j9EfJLg@mail.gmail.com>
 <CACna6rwe9mbcHW+AvtcXvpdvnwZMxkLKzvOLeNp0-XTLB5k6_A@mail.gmail.com>
Message-ID: <4fb.2TJ3.6U7giWWbPYr.1NB7tC@seznam.cz>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, =?utf-8?q?linux-wireless=40vger=2Ekernel=2Eorg?= <linux-wireless@vger.kernel.org>, brcm80211 development <brcm80211-dev-list@broadcom.com>

>>You may try:
>>sudo su
>>rmmod bcma
>>echo "14e4 43ae" > /sys/bus/pci/drivers/brcmfmac/new_id
>>dmesg | grep brcmfmac

Output:
[14054.947644] usbcore: registered new interface driver brcmfmac

Full command history:
root at chobot-lenovo-laptop:~# lsmod | grep bcma
root at chobot-lenovo-laptop:~# rmmod bcma
rmmod: ERROR: Module bcma is not currently loaded
root at chobot-lenovo-laptop:~# echo "14e4 43ae" > /sys/bus/pci/drivers/brcmfmac/new_id
-bash: /sys/bus/pci/drivers/brcmfmac/new_id: No such file or directory
root at chobot-lenovo-laptop:~# modprobe brcmfmac
root at chobot-lenovo-laptop:~# lsmod | grep brcmfmac
brcmfmac              290816  0
brcmutil               16384  1 brcmfmac
cfg80211              565248  2 brcmfmac,mac80211
root at chobot-lenovo-laptop:~# echo "14e4 43ae" > /sys/bus/pci/drivers/brcmfmac/new_id
root at chobot-lenovo-laptop:~# dmesg | grep brcmfmac
[14054.947644] usbcore: registered new interface driver brcmfmac


---------- P?vodn? zpr?va ----------
Od: Rafa? Mi?ecki 
Komu: Jan Sobotka , brcm80211 development 
Datum: 6. 5. 2016 2:03:08
P?edm?t: Re: Planned Support for BCM 43162 [14e4:43ae] rev 02 ?

On 5 May 2016 at 18:22, Jan Sobotka  wrote:
> Great, now it works. Output:
>
> root at chobot-lenovo-laptop:/home/chobot# echo "14e4 43ae" > /sys/bus/pci/drivers/bcma-pci-bridge/new_id
> root at chobot-lenovo-laptop:/home/chobot# dmesg | egrep "bcma|b43"
> [ 5295.114902] bcma: bus0: Found chip with id 0x4335, rev 0x02 and package 0x01
> [ 5295.114950] bcma: bus0: Core 0 found: ChipCommon (manuf 0x4BF, id 0x800, rev 0x2E, class 0x0)
> [ 5295.114974] bcma: bus0: Core 1 found: IEEE 802.11 (manuf 0x4BF, id 0x812, rev 0x2E, class 0x0)
> [ 5295.115026] bcma: bus0: Core 2 found: ARM CR4 (manuf 0x4BF, id 0x83E, rev 0x04, class 0x0)
> [ 5295.115073] bcma: bus0: Core 3 found: PCIe Gen2 (manuf 0x4BF, id 0x83C, rev 0x04, class 0x0)
> [ 5295.115096] bcma: bus0: Core 4 found: USB 2.0 Device (manuf 0x4BF, id 0x81A, rev 0x14, class 0x0)
> [ 5295.115119] bcma: bus0: Core 5 found: SDIO Device (manuf 0x4BF, id 0x829, rev 0x15, class 0x0)
> [ 5295.115170] bcma: bus0: Bridge found
> [ 5295.115221] bcma-pci-bridge: probe of 0000:02:00.0 failed with error -84

So this is device with BCM4335 chipset which is a FullMAC one AFAIK.
It may be supported by brcmfmac. There is already support for BCM4335
in brcmfmac but it was developed for SDIO devices only. I don't think
we ever met BCM4335 on PCIe device.

However I think brcmfmac may need some extra changes to support
BCM4335 on PCIe. Lets also see if Broadcom team can help us with this.
