From: Camille Prevost <cam@home108.com>
Date: Tue, 24 Jun 2014 17:12:49 +0200
Subject: Unable to use b43 using a BCM43222 mini-PCI
Message-ID: <53A99571.9020805@home108.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello to all the team developing the b43 driver,

I write to you because I despair of not being able to run the b43 driver 
with a BCM43222 mini-PCI card mounted on an Alix Board (feat. AMD Geode 
processor : http://www.pcengines.ch/alix.htm). The aim is to make a wifi 
access point using hostapd.
The chipset is described as being usable with b43 on 
http://wireless.kernel.org/en/users/Drivers/b43#Supported_devices, but 
despite all my efforts, there is nothing to do ! No error appears 
anywhere : the driver seems to load correctly, but the device never 
spawned (please see my dmesg below).
I also tried to extract the firmware files using fwcutter, like this: 
b43-fwcutter-w /lib/firmwarebroadcom-wl-5.100.138/linux/wl_apsta.obut it 
does not solve the problem...
The device is unsupported by the proprietary STA wl driver 6_30_223_141 
or earlier (please see my last dmesg "unsupported chip" at boot time) 
... Folder /etc/modprobe.d is clean ... no polluantblacklist.confinside !

If you have an idea to help me, thank in advance ...


Here are some interesting informations, but you surely can ask me for 
more if needed :)

# lspci

00:01.0 Host bridge: Advanced Micro Devices, Inc. [AMD] CS5536 [Geode 
companion] Host Bridge (rev 33)
00:01.2 Entertainment encryption device: Advanced Micro Devices, Inc. 
[AMD] Geode LX AES Security Block
00:09.0 Ethernet controller: VIA Technologies, Inc. VT6105M [Rhine-III] 
(rev 96)
00:0a.0 Ethernet controller: VIA Technologies, Inc. VT6105M [Rhine-III] 
(rev 96)
00:0b.0 Ethernet controller: VIA Technologies, Inc. VT6105M [Rhine-III] 
(rev 96)
00:0c.0 Network controller: Broadcom Corporation BCM43222 Wireless 
Network Adapter
00:0f.0 ISA bridge: Advanced Micro Devices, Inc. [AMD] CS5536 [Geode 
companion] ISA (rev 03)
00:0f.2 IDE interface: Advanced Micro Devices, Inc. [AMD] CS5536 [Geode 
companion] IDE (rev 01)
00:0f.4 USB controller: Advanced Micro Devices, Inc. [AMD] CS5536 [Geode 
companion] OHC (rev 02)
00:0f.5 USB controller: Advanced Micro Devices, Inc. [AMD] CS5536 [Geode 
companion] EHC (rev 02)

# lspci -vvn|grep 43 -A7

00:0c.0 0280: 14e4:4350
Subsystem: 14e4:04d2
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- 
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- 
<MAbort- >SERR- <PERR- INTx-
Latency: 32
Interrupt: pin A routed to IRQ 9
Region 0: Memory at e00c0000 (32-bit, non-prefetchable) [size=16K]
Capabilities: [40] Power Management version 2

# uname -a

Linux alix 3.2.0-4-486 #1 Debian 3.2.57-3+deb7u2 i586 GNU/Linux

# lsb_release -a

No LSB modules are available.
Distributor ID: Debian
Description: Debian GNU/Linux 7.5 (wheezy)
Release: 7.5
Codename: wheezy

# dpkg -l |grep b43

ii b43-fwcutter 1:015-14.1 i386 Utility for extracting Broadcom 43xx 
firmware
ii firmware-b43-installer 1:015-14.1 all Installer package for firmware 
for the b43 driver

# dmesg

[ 0.000000] Initializing cgroup subsys cpuset
[ 0.000000] Initializing cgroup subsys cpu
[ 0.000000] Linux version 3.2.0-4-486 (debian-kernel@lists.debian.org) 
(gcc version 4.6.3 (Debian 4.6.3-14) ) #1 Debian 3.2.57-3+deb7u2
[ 0.000000] BIOS-provided physical RAM map:
[ 0.000000] BIOS-e820: 0000000000000000 - 00000000000a0000 (usable)
[ 0.000000] BIOS-e820: 00000000000f0000 - 0000000000100000 (reserved)
[ 0.000000] BIOS-e820: 0000000000100000 - 0000000010000000 (usable)
[ 0.000000] BIOS-e820: 00000000fff00000 - 0000000100000000 (reserved)
[ 0.000000] Notice: NX (Execute Disable) protection missing in CPU!
[ 0.000000] DMI not present or invalid.
[ 0.000000] e820 update range: 0000000000000000 - 0000000000010000 
(usable) ==> (reserved)
[ 0.000000] e820 remove range: 00000000000a0000 - 0000000000100000 (usable)
[ 0.000000] last_pfn = 0x10000 max_arch_pfn = 0x100000
[ 0.000000] initial memory mapped : 0 - 01800000
[ 0.000000] Base memory trampoline at [c009c000] 9c000 size 12288
[ 0.000000] init_memory_mapping: 0000000000000000-0000000010000000
[ 0.000000] 0000000000 - 0000400000 page 4k
[ 0.000000] 0000400000 - 0010000000 page 2M
[ 0.000000] kernel direct mapping tables up to 10000000 @ 17f9000-1800000
[ 0.000000] RAMDISK: 0f1a3000 - 0faf3000
[ 0.000000] ACPI Error: A valid RSDP was not found (20110623/tbxfroot-219)
[ 0.000000] 0MB HIGHMEM available.
[ 0.000000] 256MB LOWMEM available.
[ 0.000000] mapped low ram: 0 - 10000000
[ 0.000000] low ram: 0 - 10000000
[ 0.000000] Zone PFN ranges:
[ 0.000000] DMA 0x00000010 -> 0x00001000
[ 0.000000] Normal 0x00001000 -> 0x00010000
[ 0.000000] HighMem empty
[ 0.000000] Movable zone start PFN for each node
[ 0.000000] early_node_map[2] active PFN ranges
[ 0.000000] 0: 0x00000010 -> 0x000000a0
[ 0.000000] 0: 0x00000100 -> 0x00010000
[ 0.000000] On node 0 totalpages: 65424
[ 0.000000] free_area_init_node: node 0, pgdat c13c5ad8, node_mem_map 
cfdff200
[ 0.000000] DMA zone: 32 pages used for memmap
[ 0.000000] DMA zone: 0 pages reserved
[ 0.000000] DMA zone: 3952 pages, LIFO batch:0
[ 0.000000] Normal zone: 480 pages used for memmap
[ 0.000000] Normal zone: 60960 pages, LIFO batch:15
[ 0.000000] Using APIC driver default
[ 0.000000] SFI: Simple Firmware Interface v0.81 http://simplefirmware.org
[ 0.000000] No local APIC present or hardware disabled
[ 0.000000] APIC: disable apic facility
[ 0.000000] APIC: switched to apic NOOP
[ 0.000000] nr_irqs_gsi: 16
[ 0.000000] PM: Registered nosave memory: 00000000000a0000 - 
00000000000f0000
[ 0.000000] PM: Registered nosave memory: 00000000000f0000 - 
0000000000100000
[ 0.000000] Allocating PCI resources starting at 10000000 (gap: 
10000000:eff00000)
[ 0.000000] Booting paravirtualized kernel on bare hardware
[ 0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[ 0.000000] pcpu-alloc: [0] 0
[ 0.000000] Built 1 zonelists in Zone order, mobility grouping on. Total 
pages: 64912
[ 0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-3.2.0-4-486 
root=UUID=122e2097-a051-4408-aabb-1154ef9b7def ro console=tty0 
console=ttyS0,38400n8 reboot=bios quiet
[ 0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
[ 0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
[ 0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
[ 0.000000] Initializing CPU#0
[ 0.000000] Initializing HighMem for node 0 (00000000:00000000)
[ 0.000000] Memory: 244984k/262144k available (2599k kernel code, 16712k 
reserved, 1290k data, 456k init, 0k highmem)
[ 0.000000] virtual kernel memory layout:
[ 0.000000] fixmap : 0xfffa1000 - 0xfffff000 ( 376 kB)
[ 0.000000] pkmap : 0xff800000 - 0xffc00000 (4096 kB)
[ 0.000000] vmalloc : 0xd0800000 - 0xff7fe000 ( 751 MB)
[ 0.000000] lowmem : 0xc0000000 - 0xd0000000 ( 256 MB)
[ 0.000000] .init : 0xc13cd000 - 0xc143f000 ( 456 kB)
[ 0.000000] .data : 0xc1289cec - 0xc13cc700 (1290 kB)
[ 0.000000] .text : 0xc1000000 - 0xc1289cec (2599 kB)
[ 0.000000] Checking if this processor honours the WP bit even in 
supervisor mode...Ok.
[ 0.000000] NR_IRQS:2304 nr_irqs:256 16
[ 0.000000] CPU 0 irqstacks, hard=cec06000 soft=cec08000
[ 0.000000] Console: colour dummy device 80x25
[ 0.000000] console [tty0] enabled
[ 0.000000] console [ttyS0] enabled
[ 0.000000] Fast TSC calibration using PIT
[ 0.000000] Detected 498.130 MHz processor.
[ 0.004007] Calibrating delay loop (skipped), value calculated using 
timer frequency.. 996.26 BogoMIPS (lpj=1992520)
[ 0.004041] pid_max: default: 32768 minimum: 301
[ 0.004266] Security Framework initialized
[ 0.004294] AppArmor: AppArmor disabled by boot time parameter
[ 0.004375] Mount-cache hash table entries: 512
[ 0.004781] Initializing cgroup subsys cpuacct
[ 0.004804] Initializing cgroup subsys memory
[ 0.004844] Initializing cgroup subsys devices
[ 0.004861] Initializing cgroup subsys freezer
[ 0.004877] Initializing cgroup subsys net_cls
[ 0.004893] Initializing cgroup subsys blkio
[ 0.004928] Initializing cgroup subsys perf_event
[ 0.005065] CPU: Geode(TM) Integrated Processor by AMD PCS stepping 02
[ 0.008381] Performance Events: no PMU driver, software events only.
[ 0.008782] NMI watchdog disabled (cpu0): hardware events not enabled
[ 0.009348] devtmpfs: initialized
[ 0.010890] print_constraints: dummy:
[ 0.011145] NET: Registered protocol family 16
[ 0.011728] EISA bus registered
[ 0.012653] PCI: PCI BIOS revision 2.10 entry at 0xfcf35, last bus=0
[ 0.012672] PCI: Using configuration type 1 for base access
[ 0.017509] bio: create slab <bio-0> at 0
[ 0.017859] ACPI: Interpreter disabled.
[ 0.018167] vgaarb: loaded
[ 0.018464] PCI: Probing PCI hardware
[ 0.018481] PCI: Probing PCI hardware (bus 00)
[ 0.018738] pci 0000:00:01.0: [1022:2080] type 0 class 0x000600
[ 0.018784] pci 0000:00:01.0: reg 10: [io 0xac1c-0xac1f]
[ 0.018968] pci 0000:00:01.2: [1022:2082] type 0 class 0x001010
[ 0.019026] pci 0000:00:01.2: reg 10: [mem 0xefff4000-0xefff7fff]
[ 0.019262] pci 0000:00:09.0: [1106:3053] type 0 class 0x000200
[ 0.019303] pci 0000:00:09.0: reg 10: [io 0x1000-0x10ff]
[ 0.019334] pci 0000:00:09.0: reg 14: [mem 0xe0000000-0xe00000ff]
[ 0.019437] pci 0000:00:09.0: supports D1 D2
[ 0.019458] pci 0000:00:09.0: PME# supported from D0 D1 D2 D3hot D3cold
[ 0.019523] pci 0000:00:0a.0: [1106:3053] type 0 class 0x000200
[ 0.019564] pci 0000:00:0a.0: reg 10: [io 0x1400-0x14ff]
[ 0.019595] pci 0000:00:0a.0: reg 14: [mem 0xe0040000-0xe00400ff]
[ 0.019695] pci 0000:00:0a.0: supports D1 D2
[ 0.019714] pci 0000:00:0a.0: PME# supported from D0 D1 D2 D3hot D3cold
[ 0.019774] pci 0000:00:0b.0: [1106:3053] type 0 class 0x000200
[ 0.019814] pci 0000:00:0b.0: reg 10: [io 0x1800-0x18ff]
[ 0.019845] pci 0000:00:0b.0: reg 14: [mem 0xe0080000-0xe00800ff]
[ 0.019945] pci 0000:00:0b.0: supports D1 D2
[ 0.019964] pci 0000:00:0b.0: PME# supported from D0 D1 D2 D3hot D3cold
[ 0.020059] pci 0000:00:0c.0: [14e4:4350] type 0 class 0x000280
[ 0.020100] pci 0000:00:0c.0: reg 10: [mem 0xe00c0000-0xe00c3fff]
[ 0.020201] pci 0000:00:0c.0: supports D1 D2
[ 0.020221] pci 0000:00:0c.0: PME# supported from D0 D3hot D3cold
[ 0.020287] pci 0000:00:0f.0: [1022:2090] type 0 class 0x000601
[ 0.020402] pci 0000:00:0f.0: reg 10: [io 0x6000-0x6007]
[ 0.020506] pci 0000:00:0f.0: reg 14: [io 0x6100-0x61ff]
[ 0.020610] pci 0000:00:0f.0: reg 18: [io 0x6200-0x623f]
[ 0.020766] pci 0000:00:0f.0: reg 20: [io 0x9d00-0x9d7f]
[ 0.020870] pci 0000:00:0f.0: reg 24: [io 0x9c00-0x9c3f]
[ 0.021019] pci 0000:00:0f.2: [1022:209a] type 0 class 0x000101
[ 0.021247] pci 0000:00:0f.2: reg 20: [io 0xff00-0xff0f]
[ 0.021430] pci 0000:00:0f.4: [1022:2094] type 0 class 0x000c03
[ 0.021517] pci 0000:00:0f.4: reg 10: [mem 0xefffe000-0xefffefff]
[ 0.021813] pci 0000:00:0f.4: PME# supported from D0 D3hot D3cold
[ 0.021913] pci 0000:00:0f.5: [1022:2095] type 0 class 0x000c03
[ 0.022003] pci 0000:00:0f.5: reg 10: [mem 0xefffd000-0xefffdfff]
[ 0.022308] pci 0000:00:0f.5: PME# supported from D0 D3hot D3cold
[ 0.024879] PCI: pci_cache_line_size set to 32 bytes
[ 0.025687] Switching to clocksource pit
[ 0.032168] pnp: PnP ACPI: disabled
[ 0.032184] PnPBIOS: Scanning system for PnP BIOS support...
[ 0.032411] PnPBIOS: PnP BIOS support was not detected.
[ 0.045714] PCI: max bus depth: 0 pci_try_num: 1
[ 0.045763] pci_bus 0000:00: resource 0 [io 0x0000-0xffff]
[ 0.045786] pci_bus 0000:00: resource 1 [mem 0x00000000-0xffffffff]
[ 0.046016] NET: Registered protocol family 2
[ 0.046379] IP route cache hash table entries: 2048 (order: 1, 8192 bytes)
[ 0.047571] TCP established hash table entries: 8192 (order: 4, 65536 bytes)
[ 0.047793] TCP bind hash table entries: 8192 (order: 3, 32768 bytes)
[ 0.047929] TCP: Hash tables configured (established 8192 bind 8192)
[ 0.047945] TCP reno registered
[ 0.047964] UDP hash table entries: 256 (order: 0, 4096 bytes)
[ 0.048005] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[ 0.048296] NET: Registered protocol family 1
[ 0.048609] PCI: CLS 32 bytes, default 32
[ 0.048902] Unpacking initramfs...
[ 2.128779] Freeing initrd memory: 9536k freed
[ 2.139585] platform rtc_cmos: registered platform RTC device (no PNP 
device found)
[ 2.140718] audit: initializing netlink socket (disabled)
[ 2.140771] type=2000 audit(1403614623.136:1): initialized
[ 2.287875] HugeTLB registered 4 MB page size, pre-allocated 0 pages
[ 2.288477] VFS: Disk quotas dquot_6.5.2
[ 2.288606] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[ 2.288844] msgmni has been set to 497
[ 2.289662] alg: No test for stdrng (krng)
[ 2.289785] Block layer SCSI generic (bsg) driver version 0.4 loaded 
(major 253)
[ 2.289806] io scheduler noop registered
[ 2.289821] io scheduler deadline registered
[ 2.289877] io scheduler cfq registered (default)
[ 2.290503] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[ 2.290667] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[ 2.290685] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[ 2.291392] isapnp: Scanning for PnP cards...
[ 2.646871] isapnp: No Plug & Play device found
[ 2.647160] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[ 2.647426] serial8250: ttyS0 at I/O 0x3f8 (irq = 4) is a NS16550A
[ 2.647757] serial8250: ttyS1 at I/O 0x2f8 (irq = 3) is a NS16550A
[ 2.649394] Linux agpgart interface v0.103
[ 2.650720] i8042: PNP: No PS/2 controller found. Probing ports directly.
[ 2.662895] i8042: No controller found
[ 2.670589] mousedev: PS/2 mouse device common for all mice
[ 2.671103] rtc_cmos rtc_cmos: rtc core: registered rtc_cmos as rtc0
[ 2.671163] rtc0: alarms up to one day, 114 bytes nvram
[ 2.671437] EISA: Probing bus 0 at eisa.0
[ 2.671470] Cannot allocate resource for EISA slot 1
[ 2.671537] Cannot allocate resource for EISA slot 6
[ 2.671578] EISA: Detected 0 cards.
[ 2.671594] cpuidle: using governor ladder
[ 2.671610] cpuidle: using governor menu
[ 2.673264] TCP cubic registered
[ 2.673412] NET: Registered protocol family 10
[ 2.677060] Mobile IPv6
[ 2.677077] NET: Registered protocol family 17
[ 2.677103] Registering the dns_resolver key type
[ 2.677189] Using IPI Shortcut mode
[ 2.677781] PM: Hibernation image not present or could not be loaded.
[ 2.677834] registered taskstats version 1
[ 2.678406] rtc_cmos rtc_cmos: setting system clock to 2014-06-24 
12:57:05 UTC (1403614625)
[ 2.678688] Initializing network drop monitor service
[ 2.679361] Freeing unused kernel memory: 456k freed
[ 2.680261] Write protecting the kernel text: 2600k
[ 2.680456] Write protecting the kernel read-only data: 1032k
[ 2.751086] udevd[42]: starting version 175
[ 2.886099] via_rhine: v1.10-LK1.5.1 2010-10-09 Written by Donald Becker
[ 2.934181] via-rhine 0000:00:09.0: eth0: VIA Rhine III (Management 
Adapter) at 0x11000, 00:0d:b9:15:94:38, IRQ 10
[ 2.934946] via-rhine 0000:00:09.0: eth0: MII PHY found at address 1, 
status 0x7849 advertising 05e1 Link 0000
[ 3.059501] via-rhine 0000:00:0a.0: eth1: VIA Rhine III (Management 
Adapter) at 0x11400, 00:0d:b9:15:94:39, IRQ 11
[ 3.060250] via-rhine 0000:00:0a.0: eth1: MII PHY found at address 1, 
status 0x7849 advertising 05e1 Link 0000
[ 3.105731] SCSI subsystem initialized
[ 3.110867] via-rhine 0000:00:0b.0: eth2: VIA Rhine III (Management 
Adapter) at 0x11800, 00:0d:b9:15:94:3a, IRQ 15
[ 3.111615] via-rhine 0000:00:0b.0: eth2: MII PHY found at address 1, 
status 0x786d advertising 05e1 Link cde1
[ 3.128417] usbcore: registered new interface driver usbfs
[ 3.128543] usbcore: registered new interface driver hub
[ 3.142652] usbcore: registered new device driver usb
[ 3.145414] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[ 3.145581] ehci_hcd 0000:00:0f.5: setting latency timer to 64
[ 3.145608] ehci_hcd 0000:00:0f.5: EHCI Host Controller
[ 3.145696] ehci_hcd 0000:00:0f.5: new USB bus registered, assigned bus 
number 1
[ 3.178232] ehci_hcd 0000:00:0f.5: irq 12, io mem 0xefffd000
[ 3.197317] ehci_hcd 0000:00:0f.5: USB 2.0 started, EHCI 1.00
[ 3.197444] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[ 3.197469] usb usb1: New USB device strings: Mfr=3, Product=2, 
SerialNumber=1
[ 3.197489] usb usb1: Product: EHCI Host Controller
[ 3.197507] usb usb1: Manufacturer: Linux 3.2.0-4-486 ehci_hcd
[ 3.197527] usb usb1: SerialNumber: 0000:00:0f.5
[ 3.220092] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[ 3.235008] hub 1-0:1.0: USB hub found
[ 3.235042] hub 1-0:1.0: 4 ports detected
[ 3.235534] ohci_hcd 0000:00:0f.4: setting latency timer to 64
[ 3.235560] ohci_hcd 0000:00:0f.4: OHCI Host Controller
[ 3.235613] ohci_hcd 0000:00:0f.4: new USB bus registered, assigned bus 
number 2
[ 3.235687] ohci_hcd 0000:00:0f.4: irq 12, io mem 0xefffe000
[ 3.240199] libata version 3.00 loaded.
[ 3.286576] Switching to clocksource tsc
[ 3.322393] usb usb2: New USB device found, idVendor=1d6b, idProduct=0001
[ 3.322419] usb usb2: New USB device strings: Mfr=3, Product=2, 
SerialNumber=1
[ 3.322440] usb usb2: Product: OHCI Host Controller
[ 3.322458] usb usb2: Manufacturer: Linux 3.2.0-4-486 ohci_hcd
[ 3.322502] usb usb2: SerialNumber: 0000:00:0f.4
[ 3.323720] hub 2-0:1.0: USB hub found
[ 3.323758] hub 2-0:1.0: 4 ports detected
[ 3.324155] pata_amd 0000:00:0f.2: version 0.4.1
[ 3.333043] scsi0 : pata_amd
[ 3.333958] scsi1 : pata_amd
[ 3.334324] ata1: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0xff00 irq 14
[ 3.334350] ata2: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0xff08 irq 15
[ 3.506813] ata1.00: CFA: 1024MB CompactFlash Card, CF_A408J, max PIO4
[ 3.506842] ata1.00: 2001888 sectors, multi 0: LBA
[ 3.514707] ata1.00: configured for PIO4
[ 3.515166] scsi 0:0:0:0: Direct-Access ATA 1024MB CompactFl CF_A PQ: 0 
ANSI: 5
[ 3.516725] ata2: port disabled--ignoring
[ 3.550282] sd 0:0:0:0: [sda] 2001888 512-byte logical blocks: (1.02 
GB/977 MiB)
[ 3.550639] sd 0:0:0:0: [sda] Write Protect is off
[ 3.550664] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[ 3.550801] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, 
doesn't support DPO or FUA
[ 3.554748] sda: sda1
[ 3.557177] sd 0:0:0:0: [sda] Attached SCSI disk
[ 3.568738] sd 0:0:0:0: Attached scsi generic sg0 type 0
[ 4.112835] EXT4-fs (sda1): mounted filesystem with ordered data mode. 
Opts: (null)
[ 7.653183] udevd[241]: starting version 175
[ 8.346449] cs5535-gpio cs5535-gpio: reserved resource region [io 
0x6100-0x61ff]
[ 8.346478] cs5535-gpio cs5535-gpio: GPIO support successfully loaded.
[ 8.346940] cs5535-mfd 0000:00:0f.0: 5 devices registered.
[ 8.615407] AMD Geode RNG detected
[ 9.388688] geode-aes: GEODE AES engine enabled.
[ 9.816367] cs5535-mfgpt cs5535-mfgpt: reserved resource region [io 
0x6200-0x623f]
[ 9.816403] cs5535-mfgpt cs5535-mfgpt: 8 MFGPT timers available
[ 9.830485] cs5535-smb cs5535-smb: SCx200 device 'CS5535 ACB0' registered
[ 11.625712] EXT4-fs (sda1): re-mounted. Opts: (null)
[ 12.066366] EXT4-fs (sda1): re-mounted. Opts: errors=remount-ro
[ 12.390014] loop: module loaded
[ 13.046298] cfg80211: Calling CRDA to update world regulatory domain
[ 14.126402] cfg80211: World regulatory domain updated:
[ 14.126424] cfg80211: (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 14.126451] cfg80211: (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 
mBi, 2000 mBm)
[ 14.126477] cfg80211: (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 
mBi, 2000 mBm)
[ 14.126501] cfg80211: (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 
mBi, 2000 mBm)
[ 14.126525] cfg80211: (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 
mBi, 2000 mBm)
[ 14.126550] cfg80211: (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 
mBi, 2000 mBm)
[ 14.144769] Broadcom 43xx driver loaded [ Features: PMNLS ]
[ 18.208579] Bridge firewalling registered
[ 18.241151] device eth0 entered promiscuous mode
[ 18.277431] via-rhine 0000:00:09.0: eth0: link down
[ 18.279987] ADDRCONF(NETDEV_UP): eth0: link is not ready
[ 18.291687] device eth1 entered promiscuous mode
[ 18.300919] via-rhine 0000:00:0a.0: eth1: link down
[ 18.310091] ADDRCONF(NETDEV_UP): eth1: link is not ready
[ 18.315030] device eth2 entered promiscuous mode
[ 18.329130] via-rhine 0000:00:0b.0: eth2: link up, 100Mbps, 
full-duplex, lpa 0xCDE1
[ 18.352556] br0: port 3(eth2) entering forwarding state
[ 18.352601] br0: port 3(eth2) entering forwarding state
[ 29.235915] br0: no IPv6 routers present
[ 33.371562] br0: port 3(eth2) entering forwarding state

# lsmod

Module Size Used by
bridge 51788 0
stp 12405 1 bridge
b43 289009 0
bcma 19156 1 b43
mac80211 167576 1 b43
cfg80211 113599 2 mac80211,b43
rfkill 18715 1 cfg80211
ssb 43403 1 b43
mmc_core 62150 2 ssb,b43
pcmcia 32047 2 ssb,b43
pcmcia_core 18063 1 pcmcia
lm90 17145 0
loop 17851 0
scx200_acb 12611 0
cs5535_mfgpt 12759 0
i2c_core 19116 2 scx200_acb,lm90
ecb 12649 0
cryptd 14125 0
aes_i586 16647 0
aes_generic 32970 1 aes_i586
geode_aes 12929 0
geode_rng 12436 0
rng_core 12580 2 geode_rng,b43
cs5535_mfd 12512 0
ext4 302427 1
crc16 12327 1 ext4
jbd2 51626 1 ext4
mbcache 12938 1 ext4
sg 21589 0
sd_mod 35425 2
crc_t10dif 12332 1 sd_mod
ata_generic 12439 0
pata_cs5536 12559 0
pata_amd 13114 1
libata 125348 3 pata_amd,pata_cs5536,ata_generic
ohci_hcd 22264 0
ehci_hcd 35702 0
usbcore 104793 3 ehci_hcd,ohci_hcd
scsi_mod 135542 3 libata,sd_mod,sg
usb_common 12338 1 usbcore
via_rhine 22412 0
mii 12595 1 via_rhine

# modinfo b43

filename: /lib/modules/3.2.0-4-486/kernel/drivers/net/wireless/b43/b43.ko
firmware: b43/ucode9.fw
firmware: b43/ucode5.fw
firmware: b43/ucode16_mimo.fw
firmware: b43/ucode15.fw
firmware: b43/ucode14.fw
firmware: b43/ucode13.fw
firmware: b43/ucode11.fw
license: GPL
author: Rafa? Mi?ecki
author: G?bor Stefanik
author: Michael Buesch
author: Stefano Brivio
author: Martin Langer
description: Broadcom B43 wireless driver
alias: pcmcia:m02D0c0476f*fn*pfn*pa*pb*pc*pd*
alias: pcmcia:m02D0c0448f*fn*pfn*pa*pb*pc*pd*
alias: bcma:m04BFid0812rev1Dcl*
alias: bcma:m04BFid0812rev18cl*
alias: bcma:m04BFid0812rev17cl*
alias: bcma:m04BFid0812rev11cl*
alias: ssb:v4243id0812rev10*
alias: ssb:v4243id0812rev0F*
alias: ssb:v4243id0812rev0D*
alias: ssb:v4243id0812rev0C*
alias: ssb:v4243id0812rev0B*
alias: ssb:v4243id0812rev0A*
alias: ssb:v4243id0812rev09*
alias: ssb:v4243id0812rev07*
alias: ssb:v4243id0812rev06*
alias: ssb:v4243id0812rev05*
depends: ssb,pcmcia,mac80211,mmc_core,bcma,cfg80211,rng-core
intree: Y
vermagic: 3.2.0-4-486 mod_unload modversions 486
parm: bad_frames_preempt:enable(1) / disable(0) Bad Frames Preemption (int)
parm: fwpostfix:Postfix for the .fw files to load. (string)
parm: hwpctl:Enable hardware-side power control (default off) (int)
parm: nohwcrypt:Disable hardware encryption. (int)
parm: hwtkip:Enable hardware tkip. (int)
parm: qos:Enable QOS support (default on) (int)
parm: btcoex:Enable Bluetooth coexistence (default on) (int)
parm: verbose:Log message verbosity: 0=error, 1=warn, 2=info(default), 
3=debug (int)
parm: pio:Use PIO accesses by default: 0=DMA, 1=PIO (int)

####

# dmesg using proprietary STA driver :
...
[ 12.327878] wl: module license 'MIXED/Proprietary' taints kernel.
[ 12.327900] Disabling lock debugging due to kernel taint
[ 12.757325] Broadcom vers 6.30.223.141 (r415941): Unsupported Chip (a8d6)
[ 12.760461] wl driver 6.30.223.141 (r415941) failed with code 1001
[ 12.760555] ------------[ cut here ]------------
[ 12.763491] kernel BUG at 
/usr/src/linux-headers-3.2.0-4-common/include/net/cfg80211.h:2209!
[ 12.763491] invalid opcode: 0000 [#1]
[ 12.763491] Modules linked in: wl(P+) scx200_acb i2c_core cs5535_mfgpt 
ecb lib80211 cryptd cs5535_mfd aes_i586 aes_generic cfg80211 geode_aes 
rfkill geode_rng rng_core ext4 crc16 jbd2 mbcache sg sd_mod crc_t10dif 
ata_generic pata_cs5536 pata_amd libata ohci_hcd ehci_hcd usbcore 
scsi_mod usb_common via_rhine mii [last unloaded: scsi_wait_scan]
[ 12.763491]
[ 12.763491] Pid: 283, comm: modprobe Tainted: P O 3.2.0-4-486 #1 Debian 
3.2.57-3+deb7u2
[ 12.763491] EIP: 0060:[<d0f45746>] EFLAGS: 00010246 CPU: 0
[ 12.763491] EIP is at wdev_priv+0x4/0xa [wl]
[ 12.763491] EAX: 00000000 EBX: cd79e800 ECX: ce22fe1c EDX: cd79e800
[ 12.763491] ESI: cd6e1a80 EDI: cd2b4000 EBP: cd79e800 ESP: ce22fd74
[ 12.763491] DS: 007b ES: 007b FS: 0000 GS: 00e0 SS: 0068
[ 12.763491] Process modprobe (pid: 283, ti=ce22e000 task=cd148810 
task.ti=ce22e000)
[ 12.763491] Stack:
[ 12.763491] d0f489d3 cd79e800 cd6e1a80 d0f43414 cd6e1a80 cd6e1a80 
d0f43eac 00000000
[ 12.763491] c146d447 ce22fdd1 00000246 c10237b1 f895324e 0000000f 
00000246 00000000
[ 12.763491] ce22fdd1 00000000 00000004 205b00c0 32312020 3036372e 
5d313634 d0960020
[ 12.763491] Call Trace:
[ 12.763491] [<d0f489d3>] ? wl_cfg80211_detach+0xd/0x8c [wl]
[ 12.763491] [<d0f43414>] ? wl_free_if+0x20/0x5f [wl]
[ 12.763491] [<d0f43eac>] ? wl_free+0x43/0x1dc [wl]
[ 12.763491] [<c10237b1>] ? vprintk+0x335/0x351
[ 12.763491] [<c128102c>] ? printk+0xe/0x11
[ 12.763491] [<d0f49230>] ? wl_pci_probe+0x43a/0x45b [wl]
[ 12.763491] [<c10e58d6>] ? sysfs_add_one+0xd/0x85
[ 12.763491] [<c11becbc>] ? spin_unlock_irqrestore.isra.4+0x5/0x6
[ 12.763491] [<c11bfab5>] ? __pm_runtime_set_status+0xde/0xfa
[ 12.763491] [<c1147534>] ? pci_device_probe+0x52/0x99
[ 12.763491] [<c11b9a6a>] ? driver_probe_device+0x109/0x109
[ 12.763491] [<c11b99eb>] ? driver_probe_device+0x8a/0x109
[ 12.763491] [<c11b9aaa>] ? __driver_attach+0x40/0x5b
[ 12.763491] [<c11b8b1c>] ? bus_for_each_dev+0x3b/0x5d
[ 12.763491] [<c11b9793>] ? driver_attach+0x14/0x17
[ 12.763491] [<c11b9a6a>] ? driver_probe_device+0x109/0x109
[ 12.763491] [<c11b94c7>] ? bus_add_driver+0x83/0x1ac
[ 12.763491] [<c1130af8>] ? kset_find_obj_hinted+0x42/0x7f
[ 12.763491] [<d11b5000>] ? 0xd11b4fff
[ 12.763491] [<c11b9e06>] ? driver_register+0x73/0xc6
[ 12.763491] [<d11b5000>] ? 0xd11b4fff
[ 12.763491] [<d11b5000>] ? 0xd11b4fff
[ 12.763491] [<c1147bf7>] ? __pci_register_driver+0x2c/0x81
[ 12.763491] [<d11b5000>] ? 0xd11b4fff
[ 12.763491] [<d11b5000>] ? 0xd11b4fff
[ 12.763491] [<c100115b>] ? do_one_initcall+0x65/0x10a
[ 12.763491] [<d11b5000>] ? 0xd11b4fff
[ 12.763491] [<c1048830>] ? sys_init_module+0x13f6/0x15af
[ 12.763491] [<c128508c>] ? syscall_call+0x7/0xb
[ 12.763491] Code: 68 d8 a8 11 d1 68 56 ef 11 d1 e8 f4 b8 33 f0 68 65 ef 
11 d1 e8 ea b8 33 f0 83 c4 0c 89 d8 e8 43 f9 ff ff 31 c0 5b c3 85 c0 75 
02 <0f> 0b 8b 00 eb b2 55 57 56 89 c6 53 89 cb 83 ec 3c 65 a1 14 00
[ 12.763491] EIP: [<d0f45746>] wdev_priv+0x4/0xa [wl] SS:ESP 0068:ce22fd74
[ 13.634718] ---[ end trace 3d8e36f1c38c81a8 ]---
....

-- 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Camille Pr?vost - cam at home108.com
