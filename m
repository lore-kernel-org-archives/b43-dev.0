From: Igor Korot <ikorot01@gmail.com>
Date: Fri, 22 Aug 2014 02:20:06 -0700
Subject: B43 driver problem
In-Reply-To: <CA+FnnTz4cSJDxaXNBj_Z5KkpeYq_Z3vRvomEpTFtHvLk3zwLfA@mail.gmail.com>
References: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>
 <CACna6rwkJRKp_cxVPEkJuwV7OVQf0frP1q5RLc9+oWRVN0P+Dg@mail.gmail.com>
 <CA+FnnTy2LENG+W_oXvwKKehHfibmjE3MziRgdNEzOMTG1CRTVg@mail.gmail.com>
 <CACna6ryRcMxcw7e+yHw5yMAAo91HhfTOfNK-rcW+H_4xbMA7TQ@mail.gmail.com>
 <CA+FnnTwagOv2Wun6L0SL7XDca62mrLZan5bgZi+kJ1bSx64Eow@mail.gmail.com>
 <CACna6rwWQ0GGhj2NNcPUPiBMK1WfcX7d=qyM2==eTJ0C8NFKhg@mail.gmail.com>
 <CA+FnnTzAmzZ5vR48m2Q0=i20VCRS85w424m7QySDu26nYHpaCw@mail.gmail.com>
 <CACna6rz6V0X4go0AYZEJ1jPmUBF9rs3iP05jvGeDxrCGg4K6Cg@mail.gmail.com>
 <CA+FnnTz4cSJDxaXNBj_Z5KkpeYq_Z3vRvomEpTFtHvLk3zwLfA@mail.gmail.com>
Message-ID: <CA+FnnTx627viHXvmhD8P44W0BwK9tGFDbTp6gwzDNHatcDEEHA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

This is "lspci -v" output from the laptop:

IgorDellGentoo igor # lspci -v
00:00.0 Host bridge: Intel Corporation Mobile 4 Series Chipset Memory
Controller Hub (rev 07)
        Subsystem: Dell Device 02aa
        Flags: bus master, fast devsel, latency 0
        Capabilities: [e0] Vendor Specific Information: Len=0a <?>
        Kernel driver in use: agpgart-intel

00:02.0 VGA compatible controller: Intel Corporation Mobile 4 Series
Chipset Integrated Graphics Controller (rev 07) (prog-if 00 [VGA
controller])
        Subsystem: Dell Device 02aa
        Flags: bus master, fast devsel, latency 0, IRQ 44
        Memory at f6c00000 (64-bit, non-prefetchable) [size=4M]
        Memory at e0000000 (64-bit, prefetchable) [size=256M]
        I/O ports at efe8 [size=8]
        Expansion ROM at <unassigned> [disabled]
        Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
        Capabilities: [d0] Power Management version 3
        Kernel driver in use: i915

00:02.1 Display controller: Intel Corporation Mobile 4 Series Chipset
Integrated Graphics Controller (rev 07)
        Subsystem: Dell Device 02aa
        Flags: bus master, fast devsel, latency 0
        Memory at f6b00000 (64-bit, non-prefetchable) [size=1M]
        Capabilities: [d0] Power Management version 3

00:1a.0 USB controller: Intel Corporation 82801I (ICH9 Family) USB
UHCI Controller #4 (rev 03) (prog-if 00 [UHCI])
        Subsystem: Dell Device 02aa
        Flags: bus master, medium devsel, latency 0, IRQ 20
        I/O ports at 6f60 [size=32]
        Capabilities: [50] PCI Advanced Features
        Kernel driver in use: uhci_hcd

00:1a.1 USB controller: Intel Corporation 82801I (ICH9 Family) USB
UHCI Controller #5 (rev 03) (prog-if 00 [UHCI])
        Subsystem: Dell Device 02aa
        Flags: bus master, medium devsel, latency 0, IRQ 21
        I/O ports at 6f80 [size=32]
        Capabilities: [50] PCI Advanced Features
        Kernel driver in use: uhci_hcd

00:1a.2 USB controller: Intel Corporation 82801I (ICH9 Family) USB
UHCI Controller #6 (rev 03) (prog-if 00 [UHCI])
        Subsystem: Dell Device 02aa
        Flags: bus master, medium devsel, latency 0, IRQ 22
        I/O ports at 6fa0 [size=32]
        Capabilities: [50] PCI Advanced Features
        Kernel driver in use: uhci_hcd

00:1a.7 USB controller: Intel Corporation 82801I (ICH9 Family) USB2
EHCI Controller #2 (rev 03) (prog-if 20 [EHCI])
        Subsystem: Dell Device 02aa
        Flags: bus master, medium devsel, latency 0, IRQ 22
        Memory at fed1c400 (32-bit, non-prefetchable) [size=1K]
        Capabilities: [50] Power Management version 2
        Capabilities: [58] Debug port: BAR=1 offset=00a0
        Capabilities: [98] PCI Advanced Features
        Kernel driver in use: ehci-pci

00:1b.0 Audio device: Intel Corporation 82801I (ICH9 Family) HD Audio
Controller (rev 03)
        Subsystem: Dell Device 02aa
        Flags: bus master, fast devsel, latency 0, IRQ 46
        Memory at f6afc000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: [50] Power Management version 2
        Capabilities: [60] MSI: Enable+ Count=1/1 Maskable- 64bit+
        Capabilities: [70] Express Root Complex Integrated Endpoint, MSI 00
        Capabilities: [100] Virtual Channel
        Capabilities: [130] Root Complex Link
        Kernel driver in use: snd_hda_intel

00:1c.0 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express
Port 1 (rev 03) (prog-if 00 [Normal decode])
        Flags: bus master, fast devsel, latency 0
        Bus: primary=00, secondary=0b, subordinate=0b, sec-latency=0
        I/O behind bridge: 00002000-00002fff
        Memory behind bridge: 80000000-801fffff
        Prefetchable memory behind bridge: 0000000080200000-00000000803fffff
        Capabilities: [40] Express Root Port (Slot+), MSI 00
        Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
        Capabilities: [90] Subsystem: Dell Device 02aa
        Capabilities: [a0] Power Management version 2
        Capabilities: [100] Virtual Channel
        Capabilities: [180] Root Complex Link
        Kernel driver in use: pcieport

00:1c.1 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express
Port 2 (rev 03) (prog-if 00 [Normal decode])
        Flags: bus master, fast devsel, latency 0
        Bus: primary=00, secondary=0c, subordinate=0c, sec-latency=0
        Memory behind bridge: f6900000-f69fffff
        Capabilities: [40] Express Root Port (Slot+), MSI 00
        Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
        Capabilities: [90] Subsystem: Dell Device 02aa
        Capabilities: [a0] Power Management version 2
        Capabilities: [100] Virtual Channel
        Capabilities: [180] Root Complex Link
        Kernel driver in use: pcieport

00:1c.2 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express
Port 3 (rev 03) (prog-if 00 [Normal decode])
        Flags: bus master, fast devsel, latency 0
        Bus: primary=00, secondary=09, subordinate=09, sec-latency=0
        I/O behind bridge: 0000d000-0000dfff
        Memory behind bridge: f6800000-f68fffff
        Prefetchable memory behind bridge: 0000000080600000-00000000807fffff
        Capabilities: [40] Express Root Port (Slot+), MSI 00
        Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
        Capabilities: [90] Subsystem: Dell Device 02aa
        Capabilities: [a0] Power Management version 2
        Capabilities: [100] Virtual Channel
        Capabilities: [180] Root Complex Link
        Kernel driver in use: pcieport

00:1c.4 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express
Port 5 (rev 03) (prog-if 00 [Normal decode])
        Flags: bus master, fast devsel, latency 0
        Bus: primary=00, secondary=0d, subordinate=0e, sec-latency=0
        I/O behind bridge: 0000c000-0000cfff
        Memory behind bridge: f6600000-f67fffff
        Prefetchable memory behind bridge: 00000000f0000000-00000000f01fffff
        Capabilities: [40] Express Root Port (Slot+), MSI 00
        Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
        Capabilities: [90] Subsystem: Dell Device 02aa
        Capabilities: [a0] Power Management version 2
        Capabilities: [100] Virtual Channel
        Capabilities: [180] Root Complex Link
        Kernel driver in use: pcieport

00:1d.0 USB controller: Intel Corporation 82801I (ICH9 Family) USB
UHCI Controller #1 (rev 03) (prog-if 00 [UHCI])
        Subsystem: Dell Device 02aa
        Flags: bus master, medium devsel, latency 0, IRQ 20
        I/O ports at 6f00 [size=32]
        Capabilities: [50] PCI Advanced Features
        Kernel driver in use: uhci_hcd

00:1d.1 USB controller: Intel Corporation 82801I (ICH9 Family) USB
UHCI Controller #2 (rev 03) (prog-if 00 [UHCI])
        Subsystem: Dell Device 02aa
        Flags: bus master, medium devsel, latency 0, IRQ 21
        I/O ports at 6f20 [size=32]
        Capabilities: [50] PCI Advanced Features
        Kernel driver in use: uhci_hcd

00:1d.2 USB controller: Intel Corporation 82801I (ICH9 Family) USB
UHCI Controller #3 (rev 03) (prog-if 00 [UHCI])
        Subsystem: Dell Device 02aa
        Flags: bus master, medium devsel, latency 0, IRQ 22
        I/O ports at 6f40 [size=32]
        Capabilities: [50] PCI Advanced Features
        Kernel driver in use: uhci_hcd

00:1d.7 USB controller: Intel Corporation 82801I (ICH9 Family) USB2
EHCI Controller #1 (rev 03) (prog-if 20 [EHCI])
        Subsystem: Dell Device 02aa
        Flags: bus master, medium devsel, latency 0, IRQ 20
        Memory at fed1c000 (32-bit, non-prefetchable) [size=1K]
        Capabilities: [50] Power Management version 2
        Capabilities: [58] Debug port: BAR=1 offset=00a0
        Capabilities: [98] PCI Advanced Features
        Kernel driver in use: ehci-pci

00:1e.0 PCI bridge: Intel Corporation 82801 Mobile PCI Bridge (rev 93)
(prog-if 01 [Subtractive decode])
        Flags: bus master, fast devsel, latency 0
        Bus: primary=00, secondary=03, subordinate=03, sec-latency=32
        Capabilities: [50] Subsystem: Dell Device 02aa

00:1f.0 ISA bridge: Intel Corporation ICH9M LPC Interface Controller (rev 03)
        Subsystem: Dell Device 02aa
        Flags: bus master, medium devsel, latency 0
        Capabilities: [e0] Vendor Specific Information: Len=0c <?>

00:1f.2 SATA controller: Intel Corporation 82801IBM/IEM
(ICH9M/ICH9M-E) 4 port SATA Controller [AHCI mode] (rev 03) (prog-if
01 [AHCI 1.0])
        Subsystem: Dell Device 02aa
        Flags: bus master, 66MHz, medium devsel, latency 0, IRQ 45
        I/O ports at 6e70 [size=8]
        I/O ports at 6e78 [size=4]
        I/O ports at 6e80 [size=8]
        I/O ports at 6e88 [size=4]
        I/O ports at 6ea0 [size=32]
        Memory at fed1c800 (32-bit, non-prefetchable) [size=2K]
        Capabilities: [80] MSI: Enable+ Count=1/16 Maskable- 64bit-
        Capabilities: [70] Power Management version 3
        Capabilities: [a8] SATA HBA v1.0
        Capabilities: [b0] PCI Advanced Features
        Kernel driver in use: ahci

00:1f.3 SMBus: Intel Corporation 82801I (ICH9 Family) SMBus Controller (rev 03)
        Subsystem: Dell Device 02aa
        Flags: medium devsel, IRQ 18
        Memory at f6afbf00 (64-bit, non-prefetchable) [size=256]
        I/O ports at 1100 [size=32]
        Kernel driver in use: i801_smbus

09:00.0 Ethernet controller: Marvell Technology Group Ltd. 88E8040
PCI-E Fast Ethernet Controller (rev 13)
        Subsystem: Dell Device 02aa
        Flags: bus master, fast devsel, latency 0, IRQ 47
        Memory at f68fc000 (64-bit, non-prefetchable) [size=16K]
        I/O ports at de00 [size=256]
        Capabilities: [48] Power Management version 3
        Capabilities: [5c] MSI: Enable+ Count=1/1 Maskable- 64bit+
        Capabilities: [c0] Express Legacy Endpoint, MSI 00
        Capabilities: [100] Advanced Error Reporting
        Capabilities: [130] Device Serial Number ff-64-25-00-8f-08-43-ff
        Kernel driver in use: sky2
        Kernel modules: sky2

0c:00.0 Network controller: Broadcom Corporation BCM4312 802.11b/g
LP-PHY (rev 01)
        Subsystem: Dell Wireless 1397 WLAN Mini-Card
        Flags: bus master, fast devsel, latency 0, IRQ 17
        Memory at f69fc000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: [40] Power Management version 3
        Capabilities: [58] Vendor Specific Information: Len=78 <?>
        Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
        Capabilities: [d0] Express Endpoint, MSI 00
        Capabilities: [100] Advanced Error Reporting
        Capabilities: [13c] Virtual Channel
        Capabilities: [160] Device Serial Number 66-4a-5f-ff-ff-ce-00-22
        Capabilities: [16c] Power Budgeting <?>
        Kernel driver in use: b43-pci-bridge

Thank you.


On 8/22/14, Igor Korot <ikorot01@gmail.com> wrote:
> Rafal,
>
> On Fri, Aug 22, 2014 at 2:06 AM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> On 22 August 2014 11:04, Igor Korot <ikorot01@gmail.com> wrote:
>>> Rafal,
>>> Maybe all I need is to upgrade the kernel?
>>
>> LP-PHY is supported for ages. You just need to install kernel/modules
>> correctly.
> All I'm doing is issuing:
>
> make && make modules_install
> make install
>
> Maybe there is a conflict somewhere, because dmesg does not say that
> the driver has been loaded after modprobe.
>
> Thank you.
>
