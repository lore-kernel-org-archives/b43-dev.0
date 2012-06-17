From: Greg Roth <gregoryroth@comcast.net>
Date: Sun, 17 Jun 2012 12:36:55 +0000
Subject: Mint tells me that I must download firmware
Message-ID: <4FDDCF67.6000608@comcast.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Broadcom's website is no help and the lspci -vvnn command comes back 
blank.  I'm following the instructions on this site:
http://wireless.kernel.org/en/users/Drivers/b43#switch_b43

I can't tell if it's a driver or firmware or what is broken, and I hope 
you can help me.  This netbook will be for a young lady whose father 
died of a brain tumor.


and here are the results of the 3 utilities  required.

mint at mint ~ $ uname -a
Linux mint 2.6.32-21-generic #32-Ubuntu SMP Fri Apr 16 08:10:02 UTC 2010 
i686 GNU/Linux



mint at mint ~ $ lspci -vvn|grep 43 -A7
03:00.0 0280: 14e4:4315 (rev 01)
     Subsystem: 14e4:04b5
     Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- 
Stepping- SERR- FastB2B- DisINTx-
     Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- 
<TAbort- <MAbort- >SERR- <PERR- INTx-
     Latency: 0, Cache Line Size: 64 bytes
     Interrupt: pin A routed to IRQ 17
     Region 0: Memory@f0200000 (64-bit, non-prefetchable) [size=16K]
     Capabilities: <access denied>
     Kernel driver in use: b43-pci-bridge
     Kernel modules: ssb

04:00.0 0200: 10ec:8136 (rev 02)
     Subsystem: 1028:02b0
     Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- 
Stepping- SERR- FastB2B- DisINTx+
     Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- 
<TAbort- <MAbort- >SERR- <PERR- INTx-
     Latency: 0, Cache Line Size: 64 bytes

dmesg scrolls too far to let me capture it all, but I'm hoping you can 
see the relevant part here.  I'm too much of a newbie to pipe the result 
to a file in Linux, tho I could in Windows.

orted from D0 D3hot D3cold
[    0.288941] pci 0000:00:1c.2: PME# disabled
[    0.289043] pci 0000:00:1d.0: reg 20 io port: [0x1820-0x183f]
[    0.289144] pci 0000:00:1d.1: reg 20 io port: [0x1840-0x185f]
[    0.289244] pci 0000:00:1d.2: reg 20 io port: [0x1860-0x187f]
[    0.289344] pci 0000:00:1d.3: reg 20 io port: [0x1880-0x189f]
[    0.289449] pci 0000:00:1d.7: reg 10 32bit mmio: [0xf0544000-0xf05443ff]
[    0.289540] pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
[    0.289552] pci 0000:00:1d.7: PME# disabled
[    0.289790] pci 0000:00:1f.0: quirk: region 1000-107f claimed by ICH6 
ACPI/GPIO/TCO
[    0.289803] pci 0000:00:1f.0: quirk: region 1180-11bf claimed by ICH6 
GPIO
[    0.289814] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 1 PIO at 
0680 (mask 007f)
[    0.289826] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 2 PIO at 
ff2c (mask 007f)
[    0.289839] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 4 PIO at 
0068 (mask 0007)
[    0.289915] pci 0000:00:1f.1: reg 10 io port: [0x00-0x07]
[    0.289931] pci 0000:00:1f.1: reg 14 io port: [0x00-0x03]
[    0.289948] pci 0000:00:1f.1: reg 18 io port: [0x00-0x07]
[    0.289964] pci 0000:00:1f.1: reg 1c io port: [0x00-0x03]
[    0.289980] pci 0000:00:1f.1: reg 20 io port: [0x1810-0x181f]
[    0.290091] pci 0000:00:1f.3: reg 20 io port: [0x18a0-0x18bf]
[    0.290219] pci 0000:02:00.0: reg 10 32bit mmio: [0xf0100000-0xf01000ff]
[    0.290293] pci 0000:02:00.0: reg 30 32bit mmio pref: [0x000000-0x00ffff]
[    0.290449] pci 0000:02:00.2: reg 10 32bit mmio: [0xf0100400-0xf01004ff]
[    0.290662] pci 0000:02:00.3: reg 10 32bit mmio: [0xf0100800-0xf01008ff]
[    0.290896] pci 0000:00:1c.0: bridge 32bit mmio: [0xf0100000-0xf01fffff]
[    0.291295] pci 0000:03:00.0: reg 10 64bit mmio: [0xf0200000-0xf0203fff]
[    0.291538] pci 0000:03:00.0: supports D1 D2
[    0.291546] pci 0000:03:00.0: PME# supported from D0 D3hot D3cold
[    0.291562] pci 0000:03:00.0: PME# disabled
[    0.291732] pci 0000:00:1c.1: bridge 32bit mmio: [0xf0200000-0xf02fffff]
[    0.291957] pci 0000:04:00.0: reg 10 io port: [0x2000-0x20ff]
[    0.292084] pci 0000:04:00.0: reg 18 64bit mmio pref: 
[0xf0610000-0xf0610fff]
[    0.292154] pci 0000:04:00.0: reg 20 64bit mmio pref: 
[0xf0600000-0xf060ffff]
[    0.292203] pci 0000:04:00.0: reg 30 32bit mmio pref: [0x000000-0x01ffff]
[    0.292382] pci 0000:04:00.0: supports D1 D2
[    0.292390] pci 0000:04:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.292406] pci 0000:04:00.0: PME# disabled
[    0.292602] pci 0000:00:1c.2: bridge io port: [0x2000-0x2fff]
[    0.292622] pci 0000:00:1c.2: bridge 64bit mmio pref: 
[0xf0600000-0xf06fffff]
[    0.292712] pci 0000:00:1e.0: transparent bridge
[    0.292768] pci_bus 0000:00: on NUMA node 0
[    0.292784] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    0.293349] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
[    0.293687] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
[    0.293919] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
[    0.294244] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PCIB._PRT]
[    0.315355] ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 5 6 *7 10 12 
14 15)
[    0.315640] ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 7 *11 12 
14 15)
[    0.315922] ACPI: PCI Interrupt Link [LNKC] (IRQs 1 3 4 5 6 7 10 12 
14 15) *11
[    0.316225] ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12 
14 15) *10
[    0.316506] ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 7 10 12 
14 15) *0, disabled.
[    0.316788] ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 11 12 
14 15) *0, disabled.
[    0.317073] ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 7 *10 12 
14 15)
[    0.317354] ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 *5 6 7 11 12 
14 15)
[    0.317675] vgaarb: device added: 
PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
[    0.317711] vgaarb: loaded
[    0.318068] SCSI subsystem initialized
[    0.318291] libata version 3.00 loaded.
[    0.318539] usbcore: registered new interface driver usbfs
[    0.318585] usbcore: registered new interface driver hub
[    0.318672] usbcore: registered new device driver usb
[    0.319104] ACPI: WMI: Mapper loaded
[    0.319111] PCI: Using ACPI for IRQ routing
[    0.319939] NetLabel: Initializing
[    0.319946] NetLabel:  domain hash size = 128
[    0.319951] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.319988] NetLabel:  unlabeled traffic allowed by default
[    0.320116] hpet0:@MMIO 0xfed00000, IRQs 2, 8, 0
[    0.320133] hpet0: 3 comparators, 64-bit 14.318180 MHz counter
[    1.683774] Switching to clocksource tsc
[    1.689662] AppArmor: AppArmor Filesystem Enabled
[    1.689724] pnp: PnP ACPI init
[    1.689780] ACPI: bus type pnp registered
[    1.717562] pnp: PnP ACPI: found 11 devices
[    1.717571] ACPI: ACPI bus type pnp unregistered
[    1.717582] PnPBIOS: Disabled by ACPI PNP
[    1.717616] system 00:01: iomem range 0xe0000000-0xefffffff has been 
reserved
[    1.717628] system 00:01: iomem range 0xfed14000-0xfed17fff has been 
reserved
[    1.717639] system 00:01: iomem range 0xfed18000-0xfed18fff has been 
reserved
[    1.717649] system 00:01: iomem range 0xfed19000-0xfed19fff has been 
reserved
[    1.717660] system 00:01: iomem range 0xfed1c000-0xfed1ffff has been 
reserved
[    1.717671] system 00:01: iomem range 0xfed20000-0xfed3ffff has been 
reserved
[    1.717682] system 00:01: iomem range 0xfed40000-0xfed44fff has been 
reserved
[    1.717693] system 00:01: iomem range 0xfed45000-0xfed8ffff has been 
reserved
[    1.717716] system 00:04: iomem range 0xfed00000-0xfed003ff has been 
reserved
[    1.717740] system 00:06: ioport range 0x680-0x69f has been reserved
[    1.717750] system 00:06: ioport range 0x800-0x80f has been reserved
[    1.717761] system 00:06: ioport range 0x1000-0x107f has been reserved
[    1.717771] system 00:06: ioport range 0x1180-0x11bf has been reserved
[    1.717782] system 00:06: ioport range 0x1640-0x164f has been reserved
[    1.717793] system 00:06: ioport range 0xfe00-0xfe7f has been reserved
[    1.717804] system 00:06: ioport range 0xff00-0xff7f has been reserved
[    1.717824] system 00:07: ioport range 0x6a0-0x6af has been reserved
[    1.717834] system 00:07: ioport range 0x6b0-0x6ff has been reserved
[    1.753089] pci 0000:00:1c.0: PCI bridge, secondary bus 0000:02
[    1.753103] pci 0000:00:1c.0:   IO window: 0x3000-0x3fff
[    1.753117] pci 0000:00:1c.0:   MEM window: 0xf0100000-0xf01fffff
[    1.753130] pci 0000:00:1c.0:   PREFETCH window: 0x80000000-0x801fffff
[    1.753146] pci 0000:00:1c.1: PCI bridge, secondary bus 0000:03
[    1.753156] pci 0000:00:1c.1:   IO window: 0x4000-0x4fff
[    1.753169] pci 0000:00:1c.1:   MEM window: 0xf0200000-0xf02fffff
[    1.753182] pci 0000:00:1c.1:   PREFETCH window: 
0x00000080200000-0x000000803fffff
[    1.753200] pci 0000:00:1c.2: PCI bridge, secondary bus 0000:04
[    1.753210] pci 0000:00:1c.2:   IO window: 0x2000-0x2fff
[    1.753224] pci 0000:00:1c.2:   MEM window: 0x80400000-0x807fffff
[    1.753236] pci 0000:00:1c.2:   PREFETCH window: 
0x000000f0600000-0x000000f06fffff
[    1.753252] pci 0000:00:1e.0: PCI bridge, secondary bus 0000:05
[    1.753259] pci 0000:00:1e.0:   IO window: disabled
[    1.753271] pci 0000:00:1e.0:   MEM window: disabled
[    1.753281] pci 0000:00:1e.0:   PREFETCH window: disabled
[    1.753319]   alloc irq_desc for 17 on node -1
[    1.753327]   alloc kstat_irqs on node -1
[    1.753346] pci 0000:00:1c.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
[    1.753360] pci 0000:00:1c.0: setting latency timer to 64
[    1.753381]   alloc irq_desc for 16 on node -1
[    1.753388]   alloc kstat_irqs on node -1
[    1.753400] pci 0000:00:1c.1: PCI INT B -> GSI 16 (level, low) -> IRQ 16
[    1.753412] pci 0000:00:1c.1: setting latency timer to 64
[    1.753433]   alloc irq_desc for 18 on node -1
[    1.753439]   alloc kstat_irqs on node -1
[    1.753451] pci 0000:00:1c.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    1.753463] pci 0000:00:1c.2: setting latency timer to 64
[    1.753481] pci 0000:00:1e.0: setting latency timer to 64
[    1.753493] pci_bus 0000:00: resource 0 io:  [0x00-0xffff]
[    1.753502] pci_bus 0000:00: resource 1 mem: [0x000000-0xffffffff]
[    1.753512] pci_bus 0000:02: resource 0 io:  [0x3000-0x3fff]
[    1.753521] pci_bus 0000:02: resource 1 mem: [0xf0100000-0xf01fffff]
[    1.753531] pci_bus 0000:02: resource 2 pref mem [0x80000000-0x801fffff]
[    1.753540] pci_bus 0000:03: resource 0 io:  [0x4000-0x4fff]
[    1.753549] pci_bus 0000:03: resource 1 mem: [0xf0200000-0xf02fffff]
[    1.753559] pci_bus 0000:03: resource 2 pref mem [0x80200000-0x803fffff]
[    1.753569] pci_bus 0000:04: resource 0 io:  [0x2000-0x2fff]
[    1.753578] pci_bus 0000:04: resource 1 mem: [0x80400000-0x807fffff]
[    1.753587] pci_bus 0000:04: resource 2 pref mem [0xf0600000-0xf06fffff]
[    1.753597] pci_bus 0000:05: resource 3 io:  [0x00-0xffff]
[    1.753606] pci_bus 0000:05: resource 4 mem: [0x000000-0xffffffff]
[    1.753711] NET: Registered protocol family 2
[    1.753993] IP route cache hash table entries: 32768 (order: 5, 
131072 bytes)
[    1.754938] TCP established hash table entries: 131072 (order: 8, 
1048576 bytes)
[    1.756201] TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
[    1.756805] TCP: Hash tables configured (established 131072 bind 65536)
[    1.756815] TCP reno registered
[    1.757138] NET: Registered protocol family 1
[    1.757200] pci 0000:00:02.0: Boot video device
[    1.757445] Simple Boot Flag at 0x36 set to 0x1
[    1.757978] cpufreq-nforce2: No nForce2 chipset.
[    1.758065] Scanning for low memory corruption every 60 seconds
[    1.758420] audit: initializing netlink socket (disabled)
[    1.758448] type=2000 audit(1339915678.756:1): initialized
[    1.781194] highmem bounce pool size: 64 pages
[    1.781213] HugeTLB registered 4 MB page size, pre-allocated 0 pages
[    1.786533] VFS: Disk quotas dquot_6.5.2
[    1.786737] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    1.788757] fuse init (API version 7.13)
[    1.789083] msgmni has been set to 1687
[    1.789732] alg: No test for stdrng (krng)
[    1.789920] Block layer SCSI generic (bsg) driver version 0.4 loaded 
(major 253)
[    1.789930] io scheduler noop registered
[    1.789937] io scheduler anticipatory registered
[    1.789943] io scheduler deadline registered
[    1.790086] io scheduler cfq registered (default)
[    1.790468]   alloc irq_desc for 24 on node -1
[    1.790476]   alloc kstat_irqs on node -1
[    1.790500] pcieport 0000:00:1c.0: irq 24 for MSI/MSI-X
[    1.790521] pcieport 0000:00:1c.0: setting latency timer to 64
[    1.790811]   alloc irq_desc for 25 on node -1
[    1.790819]   alloc kstat_irqs on node -1
[    1.790838] pcieport 0000:00:1c.1: irq 25 for MSI/MSI-X
[    1.790857] pcieport 0000:00:1c.1: setting latency timer to 64
[    1.791145]   alloc irq_desc for 26 on node -1
[    1.791153]   alloc kstat_irqs on node -1
[    1.791172] pcieport 0000:00:1c.2: irq 26 for MSI/MSI-X
[    1.791191] pcieport 0000:00:1c.2: setting latency timer to 64
[    1.791436] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    1.791735] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    1.793306] ACPI: AC Adapter [ACAD] (on-line)
[    1.793555] input: Lid Switch as 
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input0
[    1.793663] ACPI: Lid Switch [LID0]
[    1.793807] input: Power Button as 
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input1
[    1.793817] ACPI: Power Button [PWRB]
[    1.793968] input: Sleep Button as 
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input2
[    1.793978] ACPI: Sleep Button [SLPB]
[    1.794158] input: Power Button as 
/devices/LNXSYSTM:00/LNXPWRBN:00/input/input3
[    1.794168] ACPI: Power Button [PWRF]
[    1.796156] ACPI: SSDT 7f6dca9e 00245 (v02  PmRef  Cpu0Ist 00003000 
INTL 20050624)
[    1.797443] ACPI: SSDT 7f6dc434 005E5 (v02  PmRef  Cpu0Cst 00003001 
INTL 20050624)
[    2.894811] Monitor-Mwait will be used to enter C-1 state
[    2.894917] Monitor-Mwait will be used to enter C-2 state
[    2.894999] Monitor-Mwait will be used to enter C-3 state
[    2.895025] Marking TSC unstable due to TSC halts in idle
[    2.895204] processor LNXCPU:00: registered as cooling_device0
[    2.896695] ACPI: SSDT 7f6dcce3 000D4 (v02  PmRef  Cpu1Ist 00003000 
INTL 20050624)
[    2.897735] ACPI: SSDT 7f6dca19 00085 (v02  PmRef  Cpu1Cst 00003000 
INTL 20050624)
[    2.898885] Switching to clocksource hpet
[    2.905373] processor LNXCPU:01: registered as cooling_device1
[    2.933432] thermal LNXTHERM:01: registered as thermal_zone0
[    2.933462] ACPI: Thermal Zone [TZ01] (60 C)
[    2.938834] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    2.943084] brd: module loaded
[    2.944770] loop: module loaded
[    2.945082] input: Macintosh mouse button emulation as 
/devices/virtual/input/input4
[    2.945365] ata_piix 0000:00:1f.1: version 2.13
[    2.945398]   alloc irq_desc for 19 on node -1
[    2.945405]   alloc kstat_irqs on node -1
[    2.945431] ata_piix 0000:00:1f.1: PCI INT B -> GSI 19 (level, low) 
-> IRQ 19
[    2.945518] ata_piix 0000:00:1f.1: setting latency timer to 64
[    2.945706] scsi0 : ata_piix
[    2.945958] scsi1 : ata_piix
[    2.947481] ata1: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0x1810 
irq 14
[    2.947492] ata2: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0x1818 
irq 15
[    2.948743] Fixed MDIO Bus: probed
[    2.948868] PPP generic driver version 2.4.2
[    2.949005] tun: Universal TUN/TAP device driver, 1.6
[    2.949012] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    2.949288] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    2.949344]   alloc irq_desc for 23 on node -1
[    2.949352]   alloc kstat_irqs on node -1
[    2.949369] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) 
-> IRQ 23
[    2.949409] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[    2.949420] ehci_hcd 0000:00:1d.7: EHCI Host Controller
[    2.949535] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned 
bus number 1
[    2.949585] ehci_hcd 0000:00:1d.7: using broken periodic workaround
[    2.949608] ehci_hcd 0000:00:1d.7: debug port 1
[    2.953504] ehci_hcd 0000:00:1d.7: cache line size of 32 is not supported
[    2.953563] ehci_hcd 0000:00:1d.7: irq 23, io mem 0xf0544000
[    2.957872] isapnp: Scanning for PnP cards...
[    3.007310] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
[    3.007633] usb usb1: configuration #1 chosen from 1 choice
[    3.007729] hub 1-0:1.0: USB hub found
[    3.007757] hub 1-0:1.0: 8 ports detected
[    3.007941] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    3.008039] uhci_hcd: USB Universal Host Controller Interface driver
[    3.008189] uhci_hcd 0000:00:1d.0: power state changed by ACPI to D0
[    3.008211] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) 
-> IRQ 23
[    3.008230] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[    3.008240] uhci_hcd 0000:00:1d.0: UHCI Host Controller
[    3.008370] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned 
bus number 2
[    3.008420] uhci_hcd 0000:00:1d.0: irq 23, io base 0x00001820
[    3.008702] usb usb2: configuration #1 chosen from 1 choice
[    3.008794] hub 2-0:1.0: USB hub found
[    3.008816] hub 2-0:1.0: 2 ports detected
[    3.008964] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) 
-> IRQ 19
[    3.008981] uhci_hcd 0000:00:1d.1: setting latency timer to 64
[    3.008991] uhci_hcd 0000:00:1d.1: UHCI Host Controller
[    3.009098] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned 
bus number 3
[    3.009164] uhci_hcd 0000:00:1d.1: irq 19, io base 0x00001840
[    3.009453] usb usb3: configuration #1 chosen from 1 choice
[    3.009543] hub 3-0:1.0: USB hub found
[    3.009566] hub 3-0:1.0: 2 ports detected
[    3.009696] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) 
-> IRQ 18
[    3.009713] uhci_hcd 0000:00:1d.2: setting latency timer to 64
[    3.009723] uhci_hcd 0000:00:1d.2: UHCI Host Controller
[    3.009827] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned 
bus number 4
[    3.009889] uhci_hcd 0000:00:1d.2: irq 18, io base 0x00001860
[    3.010164] usb usb4: configuration #1 chosen from 1 choice
[    3.010262] hub 4-0:1.0: USB hub found
[    3.010283] hub 4-0:1.0: 2 ports detected
[    3.010480] uhci_hcd 0000:00:1d.3: power state changed by ACPI to D0
[    3.010497] uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) 
-> IRQ 16
[    3.010514] uhci_hcd 0000:00:1d.3: setting latency timer to 64
[    3.010524] uhci_hcd 0000:00:1d.3: UHCI Host Controller
[    3.010634] uhci_hcd 0000:00:1d.3: new USB bus registered, assigned 
bus number 5
[    3.010698] uhci_hcd 0000:00:1d.3: irq 16, io base 0x00001880
[    3.010988] usb usb5: configuration #1 chosen from 1 choice
[    3.011086] hub 5-0:1.0: USB hub found
[    3.011108] hub 5-0:1.0: 2 ports detected
[    3.011378] PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:PS2M] at 
0x60,0x64 irq 1,12
[    3.041734] serio: i8042 KBD port at 0x60,0x64 irq 1
[    3.041773] serio: i8042 AUX port at 0x60,0x64 irq 12
[    3.042230] mice: PS/2 mouse device common for all mice
[    3.042992] rtc_cmos 00:08: RTC can wake from S4
[    3.043124] rtc_cmos 00:08: rtc core: registered rtc_cmos as rtc0
[    3.043398] rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    3.043767] device-mapper: uevent: version 1.0.3
[    3.306251] input: AT Translated Set 2 keyboard as 
/devices/platform/i8042/serio0/input/input5
[    3.351376] isapnp: No Plug & Play device found
[    3.356304] ata2: port disabled. ignoring.
[    3.356648] device-mapper: ioctl: 4.15.0-ioctl (2009-04-01) 
initialised: dm-devel at redhat.com
[    3.356881] device-mapper: multipath: version 1.1.0 loaded
[    3.356890] device-mapper: multipath round-robin: version 1.0.0 loaded
[    3.357285] EISA: Probing bus 0 at eisa.0
[    3.357301] Cannot allocate resource for EISA slot 1
[    3.357310] Cannot allocate resource for EISA slot 2
[    3.357317] Cannot allocate resource for EISA slot 3
[    3.357324] Cannot allocate resource for EISA slot 4
[    3.357353] EISA: Detected 0 cards.
[    3.357832] cpuidle: using governor ladder
[    3.358208] cpuidle: using governor menu
[    3.359733] TCP cubic registered
[    3.360337] NET: Registered protocol family 10
[    3.361744] lo: Disabled Privacy Extensions
[    3.362762] NET: Registered protocol family 17
[    3.364316] Using IPI No-Shortcut mode
[    3.364595] PM: Resume from disk failed.
[    3.364626] registered taskstats version 1
[    3.366339]   Magic number: 0:148:772
[    3.366504] rtc_cmos 00:08: setting system clock to 2012-06-17 
06:48:01 UTC (1339915681)
[    3.366517] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
[    3.366524] EDD information not available.
[    3.412084] usb 1-3: new high speed USB device using ehci_hcd and 
address 2
[    3.513616] ata1.00: native sectors (9960864) is smaller than sectors 
(60292512)
[    3.513632] ata1.00: CFA: STT_FEM32GFDL, Ver6.P1B, max UDMA/133
[    3.513642] ata1.00: 60292512 sectors, multi 1: LBA48
[    3.529555] ata1.00: configured for UDMA/100
[    3.529850] scsi 0:0:0:0: Direct-Access     ATA      STT_FEM32GFDL    
Ver6 PQ: 0 ANSI: 5
[    3.530301] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    3.530570] sd 0:0:0:0: [sda] 60292512 512-byte logical blocks: (30.8 
GB/28.7 GiB)
[    3.530755] sd 0:0:0:0: [sda] Write Protect is off
[    3.530766] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    3.530863] sd 0:0:0:0: [sda] Write cache: disabled, read cache: 
enabled, doesn't support DPO or FUA
[    3.531339]  sda: sda1 sda2 < sda5 >
[    3.533964] sd 0:0:0:0: [sda] Attached SCSI disk
[    3.538036] ACPI: Battery Slot [BAT1] (battery present)
[    3.545652] usb 1-3: configuration #1 chosen from 1 choice
[    5.079225] Freeing initrd memory: 9224k freed
[    5.088130] Freeing unused kernel memory: 656k freed
[    5.088893] Write protecting the kernel text: 4676k
[    5.088966] Write protecting the kernel read-only data: 1840k
[    5.136976] udev: starting version 151
[    5.406375] acpi device:00: registered as cooling_device2
[    5.406785] input: Video Bus as 
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input6
[    5.406933] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  
post: no)
[    5.485617] Linux agpgart interface v0.103
[    5.524203] agpgart-intel 0000:00:00.0: Intel 945GME Chipset
[    5.524552] agpgart-intel 0000:00:00.0: detected 7932K stolen memory
[    5.527992] agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xd0000000
[    5.573446] b43-pci-bridge 0000:03:00.0: PCI INT A -> GSI 17 (level, 
low) -> IRQ 17
[    5.573476] b43-pci-bridge 0000:03:00.0: setting latency timer to 64
[    5.584190] r8169 Gigabit Ethernet driver 2.3LK-NAPI loaded
[    5.584252] r8169 0000:04:00.0: PCI INT A -> GSI 18 (level, low) -> 
IRQ 18
[    5.584412] r8169 0000:04:00.0: setting latency timer to 64
[    5.584598]   alloc irq_desc for 27 on node -1
[    5.584605]   alloc kstat_irqs on node -1
[    5.584666] r8169 0000:04:00.0: irq 27 for MSI/MSI-X
[    5.586648] eth0: RTL8102e at 0xf8022000, 00:24:e8:91:c3:a3, XID 
04a00000 IRQ 27
[    5.642009] [drm] Initialized drm 1.1.0 20060810
[    5.648400] ssb: Sonics Silicon Backplane found on PCI device 
0000:03:00.0
[    5.657085] Initializing USB Mass Storage driver...
[    5.657510] scsi2 : SCSI emulation for USB Mass Storage devices
[    5.658072] usbcore: registered new interface driver usb-storage
[    5.658083] USB Mass Storage support registered.
[    5.665366] usb-storage: device found at 2
[    5.665374] usb-storage: waiting for device to settle before scanning
[    5.725837] i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    5.725848] i915 0000:00:02.0: setting latency timer to 64
[    5.737347] [drm] set up 7M of stolen space
[    5.840297] [drm] initialized overlay support
[    6.239299] fb0: inteldrmfb frame buffer device
[    6.239305] registered panic notifier
[    6.239321] [drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on 
minor 0
[    6.245279] vga16fb: initializing
[    6.245293] vga16fb: mapped to 0xc00a0000
[    6.245304] vga16fb: not registering due to another framebuffer present
[    6.575598] Console: switching to colour frame buffer device 128x37
[    7.303199] xor: automatically using best checksumming function: pIII_sse
[    7.320023]    pIII_sse  :  4720.000 MB/sec
[    7.320031] xor: using function: pIII_sse (4720.000 MB/sec)
[    7.327458] device-mapper: dm-raid45: initialized v0.2594b
[    7.555682] EXT4-fs (sda1): mounted filesystem with ordered data mode
[   10.664428] usb-storage: device scan complete
[   10.665215] scsi 2:0:0:0: CD-ROM            TSSTcorp CDDVDW SE-S084C  
TS01 PQ: 0 ANSI: 0
[   10.673757] sr0: scsi3-mmc drive: 24x/24x writer dvd-ram cd/rw 
xa/form2 cdda tray
[   10.673778] Uniform CD-ROM driver Revision: 3.20
[   10.674742] sr 2:0:0:0: Attached scsi CD-ROM sr0
[   10.676847] sr 2:0:0:0: Attached scsi generic sg1 type 5
[   13.151831] ISO 9660 Extensions: Microsoft Joliet Level 3
[   13.190822] ISO 9660 Extensions: RRIP_1991A
[   13.752324] aufs 2-standalone.tree-20091207
[   13.822498] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[   80.180660] Adding 1288184k swap on /dev/sda5.  Priority:-1 extents:1 
across:1288184k
[   81.450536] udev: starting version 151
[   86.500954] dcdbas dcdbas: Dell Systems Management Base Driver 
(version 5.6.0-3.2)
[   86.897778] sdhci: Secure Digital Host Controller Interface driver
[   86.897787] sdhci: Copyright(c) Pierre Ossman
[   87.395106] intel_rng: FWH not detected
[   87.888177] cfg80211: Calling CRDA to update world regulatory domain
[   87.890900] compal-laptop: Identified laptop model 'Dell Mini 9'.
[   87.901710] compal-laptop: driver 0.2.6 successfully loaded.
[   87.903852] sdhci-pci 0000:02:00.0: SDHCI controller found 
[197b:2382] (rev 0)
[   87.903896] sdhci-pci 0000:02:00.0: PCI INT A -> GSI 16 (level, low) 
-> IRQ 16
[   87.903979] sdhci-pci 0000:02:00.0: setting latency timer to 64
[   87.905559] Registered led device: mmc0::
[   87.905847] mmc0: SDHCI controller on PCI [0000:02:00.0] using ADMA
[   87.905909] sdhci-pci 0000:02:00.2: SDHCI controller found 
[197b:2381] (rev 0)
[   87.905951] sdhci-pci 0000:02:00.2: PCI INT A -> GSI 16 (level, low) 
-> IRQ 16
[   87.905971] sdhci-pci 0000:02:00.2: Refusing to bind to secondary 
interface.
[   87.905988] sdhci-pci 0000:02:00.2: PCI INT A disabled
[   87.914294] jmb38x_ms 0000:02:00.3: PCI INT A -> GSI 16 (level, low) 
-> IRQ 16
[   87.914312] jmb38x_ms 0000:02:00.3: setting latency timer to 64
[   88.214332] dell-laptop: Blacklisted hardware detected - not loading
[   88.816306] dell-wmi: No known WMI GUID found
[   88.952590] Synaptics Touchpad, model: 1, fw: 7.0, id: 0x1c0b1, caps: 
0xd04711/0xa00000
[   89.040495] input: SynPS/2 Synaptics TouchPad as 
/devices/platform/i8042/serio1/input/input7
[   89.918532] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[   91.194994] phy0: Selected rate control algorithm 'minstrel'
[   91.198107] Registered led device: b43-phy0::tx
[   91.198411] Registered led device: b43-phy0::rx
[   91.198706] Registered led device: b43-phy0::radio
[   91.200185] Broadcom 43xx driver loaded [ Features: PL, Firmware-ID: 
FW13 ]
[   91.662567] cfg80211: World regulatory domain updated:
[   91.662578]     (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[   91.662589]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   91.662598]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[   91.662607]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[   91.662616]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   91.662625]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   95.833328] b43 ssb0:0: firmware: requesting b43/ucode15.fw
[   96.166532] b43 ssb0:0: firmware: requesting b43-open/ucode15.fw
[   96.187881] b43-phy0 ERROR: Firmware file "b43/ucode15.fw" not found
[   96.188054] b43-phy0 ERROR: Firmware file "b43-open/ucode15.fw" not found
[   96.188230] b43-phy0 ERROR: You must go to 
http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and 
download the correct firmware for this driver version. Please carefully 
read all instructions on this website.
[   96.196045] r8169: eth0: link up
[   96.196077] r8169: eth0: link up
[   97.011455]   alloc irq_desc for 22 on node -1
[   97.011462]   alloc kstat_irqs on node -1
[   97.011478] HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level, low) 
-> IRQ 22
[   97.011548] HDA Intel 0000:00:1b.0: setting latency timer to 64
[   97.356359] b43 ssb0:0: firmware: requesting b43/ucode15.fw
[   97.361238] b43 ssb0:0: firmware: requesting b43-open/ucode15.fw
[   97.367079] b43-phy0 ERROR: Firmware file "b43/ucode15.fw" not found
[   97.367210] b43-phy0 ERROR: Firmware file "b43-open/ucode15.fw" not found
[   97.367336] b43-phy0 ERROR: You must go to 
http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and 
download the correct firmware for this driver version. Please carefully 
read all instructions on this website.
[   97.835897] input: HDA Digital PCBeep as 
/devices/pci0000:00/0000:00:1b.0/input/input8
[  106.384079] eth0: no IPv6 routers present
[  121.420264] lp: driver loaded but no devices found
[  122.027675] ppdev: user-space parallel port driver
[ 2368.884204] usb 1-8: new high speed USB device using ehci_hcd and 
address 3
[ 2369.018295] usb 1-8: configuration #1 chosen from 1 choice
[ 2369.020228] scsi3 : SCSI emulation for USB Mass Storage devices
[ 2369.020871] usb-storage: device found at 3
[ 2369.020885] usb-storage: waiting for device to settle before scanning
[ 2374.020591] usb-storage: device scan complete
[ 2374.021538] scsi 3:0:0:0: Direct-Access     ChipsBnk   Multi-Reader   
4082 PQ: 0 ANSI: 2
[ 2374.025349] sd 3:0:0:0: Attached scsi generic sg2 type 0
[ 2374.034809] sd 3:0:0:0: [sdb] 15564800 512-byte logical blocks: (7.96 
GB/7.42 GiB)
[ 2374.035416] sd 3:0:0:0: [sdb] Write Protect is off
[ 2374.035428] sd 3:0:0:0: [sdb] Mode Sense: 0b 00 00 08
[ 2374.035436] sd 3:0:0:0: [sdb] Assuming drive cache: write through
[ 2374.037921] sd 3:0:0:0: [sdb] Assuming drive cache: write through
[ 2374.037939]  sdb: sdb1
[ 2374.046662] sd 3:0:0:0: [sdb] Assuming drive cache: write through
[ 2374.046678] sd 3:0:0:0: [sdb] Attached SCSI removable disk
