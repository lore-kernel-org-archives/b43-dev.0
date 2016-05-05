From: Jan Sobotka <xSobotkaJ@seznam.cz>
Date: Thu, 05 May 2016 18:22:56 +0200 (CEST)
Subject: Planned Support for BCM 43162 [14e4:43ae] rev 02 ?
References: <3Fn.2TId.FHuvjLBV4z.1NAsIY@seznam.cz>
 <75r.2THk.1aVrEGdo1ry.1N96yR@seznam.cz>
 <CACna6rypnsgK4DeMxL6F8jwuFpzYhvG8O_TA1M4A6j8X6Eh5_A@mail.gmail.com>
 <CACna6rx90=u7ZSY6ZXjWw4CicEQR6Ty-iEc_G9ACLL0j9EfJLg@mail.gmail.com>
Message-ID: <3L}.2TJP.BPtk86KPbh.1NAtDW@seznam.cz>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Sorry, I used reply instead reply to all. It was not intention. 

Great, now it works. Output:

root at chobot-lenovo-laptop:/home/chobot# echo "14e4 43ae" > /sys/bus/pci/drivers/bcma-pci-bridge/new_id
root at chobot-lenovo-laptop:/home/chobot# dmesg | egrep "bcma|b43"
[ 5295.114902] bcma: bus0: Found chip with id 0x4335, rev 0x02 and package 0x01
[ 5295.114950] bcma: bus0: Core 0 found: ChipCommon (manuf 0x4BF, id 0x800, rev 0x2E, class 0x0)
[ 5295.114974] bcma: bus0: Core 1 found: IEEE 802.11 (manuf 0x4BF, id 0x812, rev 0x2E, class 0x0)
[ 5295.115026] bcma: bus0: Core 2 found: ARM CR4 (manuf 0x4BF, id 0x83E, rev 0x04, class 0x0)
[ 5295.115073] bcma: bus0: Core 3 found: PCIe Gen2 (manuf 0x4BF, id 0x83C, rev 0x04, class 0x0)
[ 5295.115096] bcma: bus0: Core 4 found: USB 2.0 Device (manuf 0x4BF, id 0x81A, rev 0x14, class 0x0)
[ 5295.115119] bcma: bus0: Core 5 found: SDIO Device (manuf 0x4BF, id 0x829, rev 0x15, class 0x0)
[ 5295.115170] bcma: bus0: Bridge found
[ 5295.115221] bcma-pci-bridge: probe of 0000:02:00.0 failed with error -84

---------- P?vodn? zpr?va ----------
Od: Rafa? Mi?ecki 
Komu: Jan Sobotka , b43-dev 
Datum: 5. 5. 2016 17:37:24
P?edm?t: Re: Planned Support for BCM 43162 [14e4:43ae] rev 02 ?

Don't drop ML from To/Cc. It's a bad habit and there are other ppl who
are interested in this and may be able to help as well.

On 5 May 2016 at 17:20, Jan Sobotka  wrote:
> Hi,
>
> I have problem with command:
> sudo echo "14e4 43ae" > /sys/bus/pci/drivers/bcma-pci-bridge/new_id
> bash: /sys/bus/pci/drivers/bcma-pci-bridge/new_id: Permission denied
>
> Module bcma is loaded:
> lsmod | egrep bcma
> bcma                   53248  0
>
> than dmesg | egrep "bcma|b43" produce no output.
>
> Do you have some advice for echo "14e4 43ae"... command modification?

Not sure why it happens. Could you try
sudo su
echo "14e4 43ae" > /sys/bus/pci/drivers/bcma-pci-bridge/new_id
instead?
