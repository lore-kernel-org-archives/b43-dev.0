From: Katharina Miwege <k.miwege@googlemail.com>
Date: Tue, 27 Sep 2011 17:28:00 +0200
Subject: Can't connect to university network using WPA 2 Enterprise, PEAP,
	MSCHAPv2
Message-ID: <CA+VHVs14cLW=aRPn885nCed43y_Jb66mp_weXBdD+7+xNgoM-w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I cannot connect to my university network, which uses WPA 2
Enterprise, PEAP and MSCHAPv2 with a certificate. I can see the
network though. It tries to connect, then after some minutes wants me
to enter my authentification data again, but that is correct.
I have the newest ubuntu version, but not the newest kernel. That
means I encounter these DMA errors. Do I really need to wait for the
newest kernel for ubuntu or is this independent?
Here is the data you asked for on linuxwireless.org:

Linux bluerelax 2.6.38-11-generic-pae #51~pre201109200902-Ubuntu SMP
Tue Sep 20 11:10:49 UTC 2011 i686 i686 i386 GNU/Linux

	Interrupt: pin A routed to IRQ 43
	Region 0: I/O ports at 3000 [size=256]
	Region 2: Memory at f0504000 (64-bit, prefetchable) [size=4K]
	Region 4: Memory at f0500000 (64-bit, prefetchable) [size=16K]
	[virtual] Expansion ROM at f0520000 [disabled] [size=128K]
	Capabilities: <access denied>
	Kernel driver in use: r8169
	Kernel modules: r8169
--
03:00.0 0280: 14e4:4315 (rev 01)
	Subsystem: 14e4:04ad
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@f0300000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: <access denied>
	Kernel driver in use: b43-pci-bridge
	Kernel modules: ssb

[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Linux version 2.6.38-11-generic-pae (buildd at platinum)
(gcc version 4.5.2 (Ubuntu/Linaro 4.5.2-8ubuntu4) )
#51~pre201109200902-Ubuntu SMP Tue Sep 20 11:10:49 UTC 2011 (Ubuntu
2.6.38-11.51~pre201109200902-generic-pae 2.6.38.8)
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009f400 (usable)
[    0.000000]  BIOS-e820: 000000000009f400 - 00000000000a0000 (reserved)
[    0.000000]  BIOS-e820: 00000000000d2000 - 00000000000d4000 (reserved)
[    0.000000]  BIOS-e820: 00000000000dc000 - 0000000000100000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 00000000bdaa1000 (usable)
[    0.000000]  BIOS-e820: 00000000bdaa1000 - 00000000bdaa7000 (reserved)
[    0.000000]  BIOS-e820: 00000000bdaa7000 - 00000000bdbba000 (usable)
[    0.000000]  BIOS-e820: 00000000bdbba000 - 00000000bdc0f000 (reserved)
[    0.000000]  BIOS-e820: 00000000bdc0f000 - 00000000bdd08000 (usable)
[    0.000000]  BIOS-e820: 00000000bdd08000 - 00000000bdf0f000 (reserved)
[    0.000000]  BIOS-e820: 00000000bdf0f000 - 00000000bdf19000 (usable)
[    0.000000]  BIOS-e820: 00000000bdf19000 - 00000000bdf1f000 (reserved)
[    0.000000]  BIOS-e820: 00000000bdf1f000 - 00000000bdf54000 (usable)
[    0.000000]  BIOS-e820: 00000000bdf54000 - 00000000bdf9f000 (ACPI NVS)
[    0.000000]  BIOS-e820: 00000000bdf9f000 - 00000000be000000 (ACPI data)
[    0.000000]  BIOS-e820: 0000000100000000 - 0000000140000000 (usable)
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] DMI present.
[    0.000000] DMI: LENOVO 3389                /NITU1, BIOS
22CN35WW(V2.02)          01/20/2010
[    0.000000] e820 update range: 0000000000000000 - 0000000000010000
(usable) ==> (reserved)
[    0.000000] e820 remove range: 00000000000a0000 - 0000000000100000 (usable)
[    0.000000] last_pfn = 0x140000 max_arch_pfn = 0x1000000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-D3FFF write-protect
[    0.000000]   D4000-DBFFF uncachable
[    0.000000]   DC000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 000000000 mask F80000000 write-back
[    0.000000]   1 base 080000000 mask FC0000000 write-back
[    0.000000]   2 base 100000000 mask FC0000000 write-back
[    0.000000]   3 base 0FFE00000 mask FFFE00000 write-through
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] found SMP MP-table at [c00f75d0] f75d0
[    0.000000] initial memory mapped : 0 - 01e00000
[    0.000000] init_memory_mapping: 0000000000000000-0000000037bfe000
[    0.000000]  0000000000 - 0000200000 page 4k
[    0.000000]  0000200000 - 0037a00000 page 2M
[    0.000000]  0037a00000 - 0037bfe000 page 4k
[    0.000000] kernel direct mapping tables up to 37bfe000 @ 1dfb000-1e00000
[    0.000000] RAMDISK: 35b70000 - 36db0000
[    0.000000] ACPI: RSDP 000f7540 00024 (v02 LENOVO)
[    0.000000] ACPI: XSDT bdff744b 00074 (v01 LENOVO CB-01    00000000
 LTP 00000000)
[    0.000000] ACPI: FACP bdfe7000 000F4 (v03 LENOVO CB-01    00000001
ALAN 00000001)
[    0.000000] ACPI: DSDT bdfe8000 07703 (v02 LENOVO CB-01    00000001
INTL 20050624)
[    0.000000] ACPI: FACS bdf9efc0 00040
[    0.000000] ACPI: HPET bdffed52 00038 (v01 LENOVO CB-01    00000001
LOHR 0000005A)
[    0.000000] ACPI: MCFG bdffed8a 0003C (v01 LENOVO CB-01    00000001
LOHR 0000005A)
[    0.000000] ACPI: SLIC bdffedc6 00176 (v01 LENOVO CB-01    00000001
TBD  00000001)
[    0.000000] ACPI: DBGP bdffef3c 00034 (v01 LENOVO CB-01    00000001
LOHR 00000000)
[    0.000000] ACPI: APIC bdffef70 00068 (v01 PTLTD  ? APIC   00000000
 LTP 00000000)
[    0.000000] ACPI: BOOT bdffefd8 00028 (v01 PTLTD  $SBFTBL$ 00000000
 LTP 00000001)
[    0.000000] ACPI: SSDT bdfe6000 00655 (v01  PmRef    CpuPm 00003000
INTL 20050624)
[    0.000000] ACPI: SSDT bdfe5000 00259 (v01  PmRef  Cpu0Tst 00003000
INTL 20050624)
[    0.000000] ACPI: SSDT bdfe4000 0020F (v01  PmRef    ApTst 00003000
INTL 20050624)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] 4228MB HIGHMEM available.
[    0.000000] 891MB LOWMEM available.
[    0.000000]   mapped low ram: 0 - 37bfe000
[    0.000000]   low ram: 0 - 37bfe000
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000010 -> 0x00001000
[    0.000000]   Normal   0x00001000 -> 0x00037bfe
[    0.000000]   HighMem  0x00037bfe -> 0x00140000
[    0.000000] Movable zone start PFN for each node
[    0.000000] early_node_map[7] active PFN ranges
[    0.000000]     0: 0x00000010 -> 0x0000009f
[    0.000000]     0: 0x00000100 -> 0x000bdaa1
[    0.000000]     0: 0x000bdaa7 -> 0x000bdbba
[    0.000000]     0: 0x000bdc0f -> 0x000bdd08
[    0.000000]     0: 0x000bdf0f -> 0x000bdf19
[    0.000000]     0: 0x000bdf1f -> 0x000bdf54
[    0.000000]     0: 0x00100000 -> 0x00140000
[    0.000000] On node 0 totalpages: 1039483
[    0.000000] free_area_init_node: node 0, pgdat c17bcc40,
node_mem_map f3370200
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 3951 pages, LIFO batch:0
[    0.000000]   Normal zone: 1752 pages used for memmap
[    0.000000]   Normal zone: 222502 pages, LIFO batch:31
[    0.000000]   HighMem zone: 8457 pages used for memmap
[    0.000000]   HighMem zone: 802789 pages, LIFO batch:31
[    0.000000] Using APIC driver default
[    0.000000] ACPI: PM-Timer IO Port: 0x408
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 high edge)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ2 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.000000] SMP: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] nr_irqs_gsi: 40
[    0.000000] PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000d2000
[    0.000000] PM: Registered nosave memory: 00000000000d2000 - 00000000000d4000
[    0.000000] PM: Registered nosave memory: 00000000000d4000 - 00000000000dc000
[    0.000000] PM: Registered nosave memory: 00000000000dc000 - 0000000000100000
[    0.000000] Allocating PCI resources starting at be000000 (gap:
be000000:42000000)
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:2
nr_node_ids:1
[    0.000000] PERCPU: Embedded 13 pages/cpu @f7800000 s32320 r0 d20928 u1048576
[    0.000000] pcpu-alloc: s32320 r0 d20928 u1048576 alloc=1*2097152
[    0.000000] pcpu-alloc: [0] 0 1
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
Total pages: 1029242
[    0.000000] Kernel command line:
BOOT_IMAGE=/vmlinuz-2.6.38-11-generic-pae root=/dev/mapper/lvmlen-root
ro quiet splash nomodeset
video=uvesafb:mode_option=1280x1024-24,mtrr=3,scroll=ywrap
vt.handoff=7
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Initializing CPU#0
[    0.000000] xsave/xrstor: enabled xstate_bv 0x3, cntxt size 0x240
[    0.000000] allocated 26214080 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't
want memory cgroups
[    0.000000] Initializing HighMem for node 0 (00037bfe:00140000)
[    0.000000] Memory: 4062056k/5242880k available (5352k kernel code,
95876k reserved, 2605k data, 720k init, 3244984k highmem)
[    0.000000] virtual kernel memory layout:
[    0.000000]     fixmap  : 0xfff16000 - 0xfffff000   ( 932 kB)
[    0.000000]     pkmap   : 0xffc00000 - 0xffe00000   (2048 kB)
[    0.000000]     vmalloc : 0xf83fe000 - 0xffbfe000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf7bfe000   ( 891 MB)
[    0.000000]       .init : 0xc17c6000 - 0xc187a000   ( 720 kB)
[    0.000000]       .data : 0xc153a175 - 0xc17c55c0   (2605 kB)
[    0.000000]       .text : 0xc1000000 - 0xc153a175   (5352 kB)
[    0.000000] Checking if this processor honours the WP bit even in
supervisor mode...Ok.
[    0.000000] SLUB: Genslabs=15, HWalign=64, Order=0-3, MinObjects=0,
CPUs=2, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] 	RCU dyntick-idle grace-period acceleration is enabled.
[    0.000000] 	RCU-based detection of stalled CPUs is disabled.
[    0.000000] NR_IRQS:2304 nr_irqs:512 16
[    0.000000] CPU 0 irqstacks, hard=f7408000 soft=f740a000
[    0.000000] Extended CMOS year: 2000
[    0.000000] vt handoff: transparent VT on vt#7
[    0.000000] Console: colour VGA+ 80x25
[    0.000000] console [tty0] enabled
[    0.000000] hpet clockevent registered
[    0.000000] Fast TSC calibration using PIT
[    0.000000] Detected 1296.932 MHz processor.
[    0.004004] Calibrating delay loop (skipped), value calculated
using timer frequency.. 2593.86 BogoMIPS (lpj=5187728)
[    0.004012] pid_max: default: 32768 minimum: 301
[    0.004044] Security Framework initialized
[    0.004065] AppArmor: AppArmor initialized
[    0.004068] Yama: becoming mindful.
[    0.004153] Mount-cache hash table entries: 512
[    0.004335] Initializing cgroup subsys ns
[    0.004341] ns_cgroup deprecated: consider using the
'clone_children' flag without the ns_cgroup.
[    0.004346] Initializing cgroup subsys cpuacct
[    0.004353] Initializing cgroup subsys memory
[    0.004364] Initializing cgroup subsys devices
[    0.004368] Initializing cgroup subsys freezer
[    0.004371] Initializing cgroup subsys net_cls
[    0.004374] Initializing cgroup subsys blkio
[    0.004426] CPU: Physical Processor ID: 0
[    0.004429] CPU: Processor Core ID: 0
[    0.004433] mce: CPU supports 6 MCE banks
[    0.004445] CPU0: Thermal monitoring enabled (TM2)
[    0.004450] using mwait in idle threads.
[    0.010861] ACPI: Core revision 20110112
[    0.024021] ftrace: allocating 24262 entries in 48 pages
[    0.028065] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.028448] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.068656] CPU0: Genuine Intel(R) CPU           U4100  @ 1.30GHz stepping 0a
[    0.072003] Performance Events: PEBS fmt0+, Core2 events, Intel PMU driver.
[    0.072003] ... version:                2
[    0.072003] ... bit width:              40
[    0.072003] ... generic registers:      2
[    0.072003] ... value mask:             000000ffffffffff
[    0.072003] ... max period:             000000007fffffff
[    0.072003] ... fixed-purpose events:   3
[    0.072003] ... event mask:             0000000700000003
[    0.072003] CPU 1 irqstacks, hard=f74ca000 soft=f74cc000
[    0.072003] Booting Node   0, Processors  #1 Ok.
[    0.008000] Initializing CPU#1
[    0.160028] Brought up 2 CPUs
[    0.160032] Total of 2 processors activated (5187.35 BogoMIPS).
[    0.161529] devtmpfs: initialized
[    0.161940] print_constraints: dummy:
[    0.161979] Time: 16:40:19  Date: 09/27/11
[    0.162038] NET: Registered protocol family 16
[    0.164075] Trying to unpack rootfs image as initramfs...
[    0.164101] EISA bus registered
[    0.164123] ACPI: bus type pci registered
[    0.164237] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem
0xe0000000-0xefffffff] (base 0xe0000000)
[    0.164242] PCI: not using MMCONFIG
[    0.164451] PCI : PCI BIOS aera is rw and x. Use pci=nobios if you
want it NX.
[    0.168015] PCI: PCI BIOS revision 3.00 entry at 0xfde51, last bus=4
[    0.168018] PCI: Using configuration type 1 for base access
[    0.180270] bio: create slab <bio-0> at 0
[    0.183575] ACPI: EC: Look up EC in DSDT
[    0.216088] [Firmware Bug]: ACPI: BIOS _OSI(Linux) query ignored
[    0.220651] ACPI: SSDT bdf1aca0 001E1 (v01  PmRef  Cpu0Ist 00003000
INTL 20050624)
[    0.221449] ACPI: Dynamic OEM Table Load:
[    0.221455] ACPI: SSDT   (null) 001E1 (v01  PmRef  Cpu0Ist 00003000
INTL 20050624)
[    0.221711] ACPI: SSDT bdf19620 00549 (v01  PmRef  Cpu0Cst 00003001
INTL 20050624)
[    0.222472] ACPI: Dynamic OEM Table Load:
[    0.222477] ACPI: SSDT   (null) 00549 (v01  PmRef  Cpu0Cst 00003001
INTL 20050624)
[    0.296564] ACPI: SSDT bdf1aa20 001CF (v01  PmRef    ApIst 00003000
INTL 20050624)
[    0.297401] ACPI: Dynamic OEM Table Load:
[    0.297407] ACPI: SSDT   (null) 001CF (v01  PmRef    ApIst 00003000
INTL 20050624)
[    0.316230] ACPI: SSDT bdf1af20 0008D (v01  PmRef    ApCst 00003000
INTL 20050624)
[    0.317022] ACPI: Dynamic OEM Table Load:
[    0.317027] ACPI: SSDT   (null) 0008D (v01  PmRef    ApCst 00003000
INTL 20050624)
[    0.380544] ACPI: Interpreter enabled
[    0.380544] ACPI: (supports S0 S3 S4 S5)
[    0.380544] ACPI: Using IOAPIC for interrupt routing
[    0.380544] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem
0xe0000000-0xefffffff] (base 0xe0000000)
[    0.382128] PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved
in ACPI motherboard resources
[    0.382132] PCI: Using MMCONFIG for extended config space
[    0.429465] ACPI: EC: GPE = 0x1c, I/O: command/status = 0x66, data = 0x62
[    0.448317] ACPI: No dock devices found.
[    0.448321] HEST: Table not found.
[    0.448328] PCI: Using host bridge windows from ACPI; if necessary,
use "pci=nocrs" and report a bug
[    0.448990] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    0.450269] pci_root PNP0A08:00: host bridge window [io  0x0000-0x0cf7]
[    0.450274] pci_root PNP0A08:00: host bridge window [io  0x0d00-0xffff]
[    0.450279] pci_root PNP0A08:00: host bridge window [mem
0x000a0000-0x000bffff]
[    0.450284] pci_root PNP0A08:00: host bridge window [mem
0x000d4000-0x000d7fff]
[    0.450288] pci_root PNP0A08:00: host bridge window [mem
0x000d8000-0x000dbfff]
[    0.450293] pci_root PNP0A08:00: host bridge window [mem
0xc0000000-0xdfffffff]
[    0.450298] pci_root PNP0A08:00: host bridge window [mem
0xf0000000-0xfebfffff]
[    0.450325] pci 0000:00:00.0: [8086:2a40] type 0 class 0x000600
[    0.450361] DMAR: Forcing write-buffer flush capability
[    0.450364] DMAR: Disabling IOMMU for graphics on this chipset
[    0.450399] pci 0000:00:01.0: [8086:2a41] type 1 class 0x000604
[    0.450454] pci 0000:00:01.0: PME# supported from D0 D3hot D3cold
[    0.450460] pci 0000:00:01.0: PME# disabled
[    0.450534] pci 0000:00:1a.0: [8086:2937] type 0 class 0x000c03
[    0.450609] pci 0000:00:1a.0: reg 20: [io  0x1800-0x181f]
[    0.450685] pci 0000:00:1a.1: [8086:2938] type 0 class 0x000c03
[    0.450760] pci 0000:00:1a.1: reg 20: [io  0x1820-0x183f]
[    0.450854] pci 0000:00:1a.7: [8086:293c] type 0 class 0x000c03
[    0.450888] pci 0000:00:1a.7: reg 10: [mem 0xf0405800-0xf0405bff]
[    0.451003] pci 0000:00:1a.7: PME# supported from D0 D3hot D3cold
[    0.451011] pci 0000:00:1a.7: PME# disabled
[    0.451051] pci 0000:00:1b.0: [8086:293e] type 0 class 0x000403
[    0.451080] pci 0000:00:1b.0: reg 10: [mem 0xf0400000-0xf0403fff 64bit]
[    0.451182] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.451189] pci 0000:00:1b.0: PME# disabled
[    0.451225] pci 0000:00:1c.0: [8086:2940] type 1 class 0x000604
[    0.451333] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.451339] pci 0000:00:1c.0: PME# disabled
[    0.451379] pci 0000:00:1c.1: [8086:2942] type 1 class 0x000604
[    0.451485] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.451492] pci 0000:00:1c.1: PME# disabled
[    0.451542] pci 0000:00:1d.0: [8086:2934] type 0 class 0x000c03
[    0.451617] pci 0000:00:1d.0: reg 20: [io  0x1840-0x185f]
[    0.451694] pci 0000:00:1d.1: [8086:2935] type 0 class 0x000c03
[    0.451768] pci 0000:00:1d.1: reg 20: [io  0x1860-0x187f]
[    0.451845] pci 0000:00:1d.2: [8086:2936] type 0 class 0x000c03
[    0.451920] pci 0000:00:1d.2: reg 20: [io  0x1880-0x189f]
[    0.452011] pci 0000:00:1d.7: [8086:293a] type 0 class 0x000c03
[    0.452054] pci 0000:00:1d.7: reg 10: [mem 0xf0405c00-0xf0405fff]
[    0.452170] pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
[    0.452177] pci 0000:00:1d.7: PME# disabled
[    0.452214] pci 0000:00:1e.0: [8086:2448] type 1 class 0x000604
[    0.452321] pci 0000:00:1f.0: [8086:2917] type 0 class 0x000601
[    0.452510] pci 0000:00:1f.2: [8086:2929] type 0 class 0x000106
[    0.452548] pci 0000:00:1f.2: reg 10: [io  0x18d0-0x18d7]
[    0.452564] pci 0000:00:1f.2: reg 14: [io  0x18c4-0x18c7]
[    0.452579] pci 0000:00:1f.2: reg 18: [io  0x18c8-0x18cf]
[    0.452595] pci 0000:00:1f.2: reg 1c: [io  0x18c0-0x18c3]
[    0.452610] pci 0000:00:1f.2: reg 20: [io  0x18a0-0x18bf]
[    0.452626] pci 0000:00:1f.2: reg 24: [mem 0xf0405000-0xf04057ff]
[    0.452692] pci 0000:00:1f.2: PME# supported from D3hot
[    0.452698] pci 0000:00:1f.2: PME# disabled
[    0.452730] pci 0000:00:1f.3: [8086:2930] type 0 class 0x000c05
[    0.452758] pci 0000:00:1f.3: reg 10: [mem 0x00000000-0x000000ff 64bit]
[    0.452798] pci 0000:00:1f.3: reg 20: [io  0x18e0-0x18ff]
[    0.452860] pci 0000:00:1f.6: [8086:2932] type 0 class 0x001180
[    0.452901] pci 0000:00:1f.6: reg 10: [mem 0xf0404000-0xf0404fff 64bit]
[    0.453084] pci 0000:01:00.0: [1002:9552] type 0 class 0x000300
[    0.453105] pci 0000:01:00.0: reg 10: [mem 0xd0000000-0xdfffffff pref]
[    0.453121] pci 0000:01:00.0: reg 14: [io  0x2000-0x20ff]
[    0.453136] pci 0000:01:00.0: reg 18: [mem 0xf0200000-0xf020ffff]
[    0.453186] pci 0000:01:00.0: reg 30: [mem 0x00000000-0x0001ffff pref]
[    0.453224] pci 0000:01:00.0: supports D1 D2
[    0.453262] pci 0000:01:00.1: [1002:aa38] type 0 class 0x000403
[    0.453283] pci 0000:01:00.1: reg 10: [mem 0xf0210000-0xf0213fff]
[    0.453388] pci 0000:01:00.1: supports D1 D2
[    0.460049] pci 0000:00:01.0: PCI bridge to [bus 01-01]
[    0.460056] pci 0000:00:01.0:   bridge window [io  0x2000-0x2fff]
[    0.460061] pci 0000:00:01.0:   bridge window [mem 0xf0200000-0xf02fffff]
[    0.460069] pci 0000:00:01.0:   bridge window [mem
0xd0000000-0xdfffffff 64bit pref]
[    0.460220] pci 0000:02:00.0: [10ec:8168] type 0 class 0x000200
[    0.460290] pci 0000:02:00.0: reg 10: [io  0x3000-0x30ff]
[    0.460413] pci 0000:02:00.0: reg 18: [mem 0xf0504000-0xf0504fff 64bit pref]
[    0.460489] pci 0000:02:00.0: reg 20: [mem 0xf0500000-0xf0503fff 64bit pref]
[    0.460539] pci 0000:02:00.0: reg 30: [mem 0x00000000-0x0001ffff pref]
[    0.460711] pci 0000:02:00.0: supports D1 D2
[    0.460715] pci 0000:02:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.460745] pci 0000:02:00.0: PME# disabled
[    0.460927] pci 0000:00:1c.0: PCI bridge to [bus 02-02]
[    0.460934] pci 0000:00:1c.0:   bridge window [io  0x3000-0x3fff]
[    0.460942] pci 0000:00:1c.0:   bridge window [mem
0xfff00000-0x000fffff] (disabled)
[    0.460953] pci 0000:00:1c.0:   bridge window [mem
0xf0500000-0xf05fffff 64bit pref]
[    0.461288] pci 0000:03:00.0: [14e4:4315] type 0 class 0x000280
[    0.461364] pci 0000:03:00.0: reg 10: [mem 0xf0300000-0xf0303fff 64bit]
[    0.461678] pci 0000:03:00.0: supports D1 D2
[    0.461861] pci 0000:00:1c.1: PCI bridge to [bus 03-03]
[    0.461868] pci 0000:00:1c.1:   bridge window [io  0xf000-0x0000] (disabled)
[    0.461876] pci 0000:00:1c.1:   bridge window [mem 0xf0300000-0xf03fffff]
[    0.461886] pci 0000:00:1c.1:   bridge window [mem
0xfff00000-0x000fffff pref] (disabled)
[    0.462000] pci 0000:00:1e.0: PCI bridge to [bus 04-04] (subtractive decode)
[    0.462008] pci 0000:00:1e.0:   bridge window [io  0xf000-0x0000] (disabled)
[    0.462015] pci 0000:00:1e.0:   bridge window [mem
0xfff00000-0x000fffff] (disabled)
[    0.462026] pci 0000:00:1e.0:   bridge window [mem
0xfff00000-0x000fffff pref] (disabled)
[    0.462031] pci 0000:00:1e.0:   bridge window [io  0x0000-0x0cf7]
(subtractive decode)
[    0.462035] pci 0000:00:1e.0:   bridge window [io  0x0d00-0xffff]
(subtractive decode)
[    0.462039] pci 0000:00:1e.0:   bridge window [mem
0x000a0000-0x000bffff] (subtractive decode)
[    0.462043] pci 0000:00:1e.0:   bridge window [mem
0x000d4000-0x000d7fff] (subtractive decode)
[    0.462048] pci 0000:00:1e.0:   bridge window [mem
0x000d8000-0x000dbfff] (subtractive decode)
[    0.462052] pci 0000:00:1e.0:   bridge window [mem
0xc0000000-0xdfffffff] (subtractive decode)
[    0.462057] pci 0000:00:1e.0:   bridge window [mem
0xf0000000-0xfebfffff] (subtractive decode)
[    0.462088] pci_bus 0000:00: on NUMA node 0
[    0.462095] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    0.462327] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P2._PRT]
[    0.462491] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
[    0.462578] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
[    0.462690]  pci0000:00: Requesting ACPI _OSC control (0x1d)
[    0.472846] ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 *5 6 7 10 12 14 15)
[    0.472939] ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 7 *11 12 14 15)
[    0.473028] ACPI: PCI Interrupt Link [LNKC] (IRQs 1 *3 4 5 6 7 10 12 14 15)
[    0.473117] ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12
14 15) *10
[    0.473206] ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 *7 10 12 14 15)
[    0.473294] ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 *5 6 7 11 12 14 15)
[    0.473382] ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 7 *10 12 14 15)
[    0.473470] ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 *4 5 6 7 11 12 14 15)
[    0.473666] vgaarb: device added:
PCI:0000:01:00.0,decodes=io+mem,owns=io+mem,locks=none
[    0.473674] vgaarb: loaded
[    0.474010] SCSI subsystem initialized
[    0.474098] libata version 3.00 loaded.
[    0.474179] usbcore: registered new interface driver usbfs
[    0.474199] usbcore: registered new interface driver hub
[    0.474243] usbcore: registered new device driver usb
[    0.474424] wmi: Mapper loaded
[    0.474427] PCI: Using ACPI for IRQ routing
[    0.474432] PCI: pci_cache_line_size set to 64 bytes
[    0.474969] reserve RAM buffer: 000000000009f400 - 000000000009ffff
[    0.474973] reserve RAM buffer: 00000000bdaa1000 - 00000000bfffffff
[    0.474981] reserve RAM buffer: 00000000bdbba000 - 00000000bfffffff
[    0.474988] reserve RAM buffer: 00000000bdd08000 - 00000000bfffffff
[    0.474995] reserve RAM buffer: 00000000bdf19000 - 00000000bfffffff
[    0.475000] reserve RAM buffer: 00000000bdf54000 - 00000000bfffffff
[    0.475163] NetLabel: Initializing
[    0.475166] NetLabel:  domain hash size = 128
[    0.475169] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.475186] NetLabel:  unlabeled traffic allowed by default
[    0.475247] HPET: 4 timers in total, 0 timers will be used for per-cpu timer
[    0.475257] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0
[    0.475266] hpet0: 4 comparators, 64-bit 14.318180 MHz counter
[    0.484093] Switching to clocksource hpet
[    0.487735] Switched to NOHz mode on CPU #0
[    0.487861] Switched to NOHz mode on CPU #1
[    0.496792] AppArmor: AppArmor Filesystem Enabled
[    0.496836] pnp: PnP ACPI init
[    0.496865] ACPI: bus type pnp registered
[    0.497544] pnp 00:00: [bus 00-ff]
[    0.497549] pnp 00:00: [io  0x0000-0x0cf7 window]
[    0.497553] pnp 00:00: [io  0x0cf8-0x0cff]
[    0.497557] pnp 00:00: [io  0x0d00-0xffff window]
[    0.497561] pnp 00:00: [mem 0x000a0000-0x000bffff window]
[    0.497565] pnp 00:00: [mem 0x000c0000-0x000c3fff window]
[    0.497569] pnp 00:00: [mem 0x000c4000-0x000c7fff window]
[    0.497573] pnp 00:00: [mem 0x000c8000-0x000cbfff window]
[    0.497577] pnp 00:00: [mem 0x000cc000-0x000cffff window]
[    0.497581] pnp 00:00: [mem 0x000d0000-0x000d3fff window]
[    0.497585] pnp 00:00: [mem 0x000d4000-0x000d7fff window]
[    0.497589] pnp 00:00: [mem 0x000d8000-0x000dbfff window]
[    0.497593] pnp 00:00: [mem 0x000dc000-0x000dffff window]
[    0.497597] pnp 00:00: [mem 0x000e0000-0x000e3fff window]
[    0.497601] pnp 00:00: [mem 0x000e4000-0x000e7fff window]
[    0.497604] pnp 00:00: [mem 0x000e8000-0x000ebfff window]
[    0.497609] pnp 00:00: [mem 0x000ec000-0x000effff window]
[    0.497613] pnp 00:00: [mem 0x000f0000-0x000fffff window]
[    0.497617] pnp 00:00: [mem 0xc0000000-0xdfffffff window]
[    0.497621] pnp 00:00: [mem 0xf0000000-0xfebfffff window]
[    0.497625] pnp 00:00: [mem 0xfed40000-0xfed44fff window]
[    0.497745] pnp 00:00: Plug and Play ACPI device, IDs PNP0a08
PNP0a03 (active)
[    0.497921] pnp 00:01: [io  0x0000-0x001f]
[    0.497925] pnp 00:01: [io  0x0081-0x0091]
[    0.497929] pnp 00:01: [io  0x0093-0x009f]
[    0.497932] pnp 00:01: [io  0x00c0-0x00df]
[    0.497936] pnp 00:01: [dma 4]
[    0.497995] pnp 00:01: Plug and Play ACPI device, IDs PNP0200 (active)
[    0.498012] pnp 00:02: [mem 0xff000000-0xffffffff]
[    0.498069] pnp 00:02: Plug and Play ACPI device, IDs INT0800 (active)
[    0.498193] pnp 00:03: [mem 0xfed00000-0xfed003ff]
[    0.498299] system 00:03: [mem 0xfed00000-0xfed003ff] has been reserved
[    0.498305] system 00:03: Plug and Play ACPI device, IDs PNP0103
PNP0c01 (active)
[    0.498325] pnp 00:04: [io  0x00f0]
[    0.498341] pnp 00:04: [irq 13]
[    0.498407] pnp 00:04: Plug and Play ACPI device, IDs PNP0c04 (active)
[    0.498481] pnp 00:05: [io  0x002e-0x002f]
[    0.498485] pnp 00:05: [io  0x004e-0x004f]
[    0.498489] pnp 00:05: [io  0x0061]
[    0.498492] pnp 00:05: [io  0x0063]
[    0.498495] pnp 00:05: [io  0x0065]
[    0.498499] pnp 00:05: [io  0x0067]
[    0.498502] pnp 00:05: [io  0x0068]
[    0.498505] pnp 00:05: [io  0x006c]
[    0.498508] pnp 00:05: [io  0x0070]
[    0.498511] pnp 00:05: [io  0x0080]
[    0.498514] pnp 00:05: [io  0x0092]
[    0.498518] pnp 00:05: [io  0x00b2-0x00b3]
[    0.498521] pnp 00:05: [io  0x0680-0x069f]
[    0.498525] pnp 00:05: [io  0x0480-0x048f]
[    0.498528] pnp 00:05: [io  0xffff]
[    0.498531] pnp 00:05: [io  0xffff]
[    0.498534] pnp 00:05: [io  0x0400-0x047f]
[    0.498538] pnp 00:05: [io  0x1180-0x11ff]
[    0.498542] pnp 00:05: [io  0x164e-0x164f]
[    0.498545] pnp 00:05: [io  0xfe00]
[    0.498663] system 00:05: [io  0x0680-0x069f] has been reserved
[    0.498668] system 00:05: [io  0x0480-0x048f] has been reserved
[    0.498672] system 00:05: [io  0xffff] has been reserved
[    0.498677] system 00:05: [io  0xffff] has been reserved
[    0.498681] system 00:05: [io  0x0400-0x047f] has been reserved
[    0.498689] system 00:05: [io  0x1180-0x11ff] has been reserved
[    0.498694] system 00:05: [io  0x164e-0x164f] has been reserved
[    0.498698] system 00:05: [io  0xfe00] has been reserved
[    0.498704] system 00:05: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.498781] pnp 00:06: [io  0x0070-0x0077]
[    0.498790] pnp 00:06: [irq 8]
[    0.498852] pnp 00:06: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.516066] pnp 00:07: [io  0x0060]
[    0.516071] pnp 00:07: [io  0x0064]
[    0.516083] pnp 00:07: [irq 1]
[    0.516168] pnp 00:07: Plug and Play ACPI device, IDs PNP0303 (active)
[    0.516226] pnp 00:08: [irq 12]
[    0.516297] pnp 00:08: Plug and Play ACPI device, IDs SYN0718
SYN0700 SYN0002 PNP0f13 (active)
[    0.516537] pnp 00:09: [mem 0xfed1c000-0xfed1ffff]
[    0.516542] pnp 00:09: [mem 0xfed10000-0xfed13fff]
[    0.516546] pnp 00:09: [mem 0xfed18000-0xfed18fff]
[    0.516549] pnp 00:09: [mem 0xfed19000-0xfed19fff]
[    0.516553] pnp 00:09: [mem 0xe0000000-0xefffffff]
[    0.516557] pnp 00:09: [mem 0xfed20000-0xfed3ffff]
[    0.516560] pnp 00:09: [mem 0xfed45000-0xfed8ffff]
[    0.516690] system 00:09: [mem 0xfed1c000-0xfed1ffff] has been reserved
[    0.516695] system 00:09: [mem 0xfed10000-0xfed13fff] has been reserved
[    0.516700] system 00:09: [mem 0xfed18000-0xfed18fff] has been reserved
[    0.516704] system 00:09: [mem 0xfed19000-0xfed19fff] has been reserved
[    0.516709] system 00:09: [mem 0xe0000000-0xefffffff] has been reserved
[    0.516714] system 00:09: [mem 0xfed20000-0xfed3ffff] has been reserved
[    0.516719] system 00:09: [mem 0xfed45000-0xfed8ffff] has been reserved
[    0.516725] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.516952] pnp: PnP ACPI: found 10 devices
[    0.516956] ACPI: ACPI bus type pnp unregistered
[    0.516961] PnPBIOS: Disabled by ACPI PNP
[    0.554728] pci 0000:00:1c.0: BAR 14: assigned [mem 0xc0000000-0xc03fffff]
[    0.554738] pci 0000:00:1c.1: BAR 15: assigned [mem
0xc0400000-0xc05fffff 64bit pref]
[    0.554746] pci 0000:00:1c.1: BAR 13: assigned [io  0x4000-0x4fff]
[    0.554753] pci 0000:00:1f.3: BAR 0: assigned [mem
0xc0600000-0xc06000ff 64bit]
[    0.554766] pci 0000:00:1f.3: BAR 0: set to [mem
0xc0600000-0xc06000ff 64bit] (PCI address [0xc0600000-0xc06000ff])
[    0.554774] pci 0000:01:00.0: BAR 6: assigned [mem
0xf0220000-0xf023ffff pref]
[    0.554779] pci 0000:00:01.0: PCI bridge to [bus 01-01]
[    0.554784] pci 0000:00:01.0:   bridge window [io  0x2000-0x2fff]
[    0.554790] pci 0000:00:01.0:   bridge window [mem 0xf0200000-0xf02fffff]
[    0.554796] pci 0000:00:01.0:   bridge window [mem
0xd0000000-0xdfffffff 64bit pref]
[    0.554806] pci 0000:02:00.0: BAR 6: assigned [mem
0xf0520000-0xf053ffff pref]
[    0.554810] pci 0000:00:1c.0: PCI bridge to [bus 02-02]
[    0.554815] pci 0000:00:1c.0:   bridge window [io  0x3000-0x3fff]
[    0.554824] pci 0000:00:1c.0:   bridge window [mem 0xc0000000-0xc03fffff]
[    0.554831] pci 0000:00:1c.0:   bridge window [mem
0xf0500000-0xf05fffff 64bit pref]
[    0.554842] pci 0000:00:1c.1: PCI bridge to [bus 03-03]
[    0.554847] pci 0000:00:1c.1:   bridge window [io  0x4000-0x4fff]
[    0.554856] pci 0000:00:1c.1:   bridge window [mem 0xf0300000-0xf03fffff]
[    0.554864] pci 0000:00:1c.1:   bridge window [mem
0xc0400000-0xc05fffff 64bit pref]
[    0.554874] pci 0000:00:1e.0: PCI bridge to [bus 04-04]
[    0.554877] pci 0000:00:1e.0:   bridge window [io  disabled]
[    0.554886] pci 0000:00:1e.0:   bridge window [mem disabled]
[    0.554892] pci 0000:00:1e.0:   bridge window [mem pref disabled]
[    0.554926] pci 0000:00:01.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    0.554933] pci 0000:00:01.0: setting latency timer to 64
[    0.554949] pci 0000:00:1c.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
[    0.554956] pci 0000:00:1c.0: setting latency timer to 64
[    0.554968] pci 0000:00:1c.1: PCI INT B -> GSI 16 (level, low) -> IRQ 16
[    0.554975] pci 0000:00:1c.1: setting latency timer to 64
[    0.554987] pci 0000:00:1e.0: setting latency timer to 64
[    0.554993] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7]
[    0.554998] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff]
[    0.555002] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]
[    0.555006] pci_bus 0000:00: resource 7 [mem 0x000d4000-0x000d7fff]
[    0.555011] pci_bus 0000:00: resource 8 [mem 0x000d8000-0x000dbfff]
[    0.555015] pci_bus 0000:00: resource 9 [mem 0xc0000000-0xdfffffff]
[    0.555019] pci_bus 0000:00: resource 10 [mem 0xf0000000-0xfebfffff]
[    0.555023] pci_bus 0000:01: resource 0 [io  0x2000-0x2fff]
[    0.555027] pci_bus 0000:01: resource 1 [mem 0xf0200000-0xf02fffff]
[    0.555032] pci_bus 0000:01: resource 2 [mem 0xd0000000-0xdfffffff
64bit pref]
[    0.555036] pci_bus 0000:02: resource 0 [io  0x3000-0x3fff]
[    0.555040] pci_bus 0000:02: resource 1 [mem 0xc0000000-0xc03fffff]
[    0.555044] pci_bus 0000:02: resource 2 [mem 0xf0500000-0xf05fffff
64bit pref]
[    0.555049] pci_bus 0000:03: resource 0 [io  0x4000-0x4fff]
[    0.555053] pci_bus 0000:03: resource 1 [mem 0xf0300000-0xf03fffff]
[    0.555057] pci_bus 0000:03: resource 2 [mem 0xc0400000-0xc05fffff
64bit pref]
[    0.555061] pci_bus 0000:04: resource 4 [io  0x0000-0x0cf7]
[    0.555065] pci_bus 0000:04: resource 5 [io  0x0d00-0xffff]
[    0.555069] pci_bus 0000:04: resource 6 [mem 0x000a0000-0x000bffff]
[    0.555073] pci_bus 0000:04: resource 7 [mem 0x000d4000-0x000d7fff]
[    0.555077] pci_bus 0000:04: resource 8 [mem 0x000d8000-0x000dbfff]
[    0.555081] pci_bus 0000:04: resource 9 [mem 0xc0000000-0xdfffffff]
[    0.555085] pci_bus 0000:04: resource 10 [mem 0xf0000000-0xfebfffff]
[    0.555140] NET: Registered protocol family 2
[    0.555247] IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.555616] TCP established hash table entries: 131072 (order: 8,
1048576 bytes)
[    0.556204] TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
[    0.556468] TCP: Hash tables configured (established 131072 bind 65536)
[    0.556471] TCP reno registered
[    0.556476] UDP hash table entries: 512 (order: 2, 16384 bytes)
[    0.556488] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
[    0.556615] NET: Registered protocol family 1
[    0.556835] pci 0000:01:00.0: Boot video device
[    0.557050] PCI: CLS 64 bytes, default 64
[    0.557088] Simple Boot Flag at 0x36 set to 0x1
[    0.557386] cpufreq-nforce2: No nForce2 chipset.
[    0.557593] audit: initializing netlink socket (disabled)
[    0.557606] type=2000 audit(1317141619.552:1): initialized
[    0.573836] highmem bounce pool size: 64 pages
[    0.573844] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[    0.576940] VFS: Disk quotas dquot_6.5.2
[    0.577045] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    0.578194] fuse init (API version 7.16)
[    0.578352] msgmni has been set to 1595
[    0.578715] Block layer SCSI generic (bsg) driver version 0.4
loaded (major 253)
[    0.578757] io scheduler noop registered
[    0.578761] io scheduler deadline registered
[    0.578786] io scheduler cfq registered (default)
[    0.578966] pcieport 0000:00:01.0: setting latency timer to 64
[    0.579021] pcieport 0000:00:01.0: irq 40 for MSI/MSI-X
[    0.579105] pcieport 0000:00:1c.0: setting latency timer to 64
[    0.579174] pcieport 0000:00:1c.0: irq 41 for MSI/MSI-X
[    0.579282] pcieport 0000:00:1c.1: setting latency timer to 64
[    0.579351] pcieport 0000:00:1c.1: irq 42 for MSI/MSI-X
[    0.579500] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    0.579541] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    0.579634] intel_idle: MWAIT substates: 0x22220
[    0.579637] intel_idle: does not run on family 6 model 23
[    0.581563] ACPI: Deprecated procfs I/F for AC is loaded, please
retry with CONFIG_ACPI_PROCFS_POWER cleared
[    0.584492] ACPI: AC Adapter [ACAD] (off-line)
[    0.584609] input: Lid Switch as
/devices/LNXSYSTM:00/device:00/PNP0C0D:00/input/input0
[    0.652021] ACPI: Lid Switch [LID0]
[    0.652133] input: Power Button as
/devices/LNXSYSTM:00/device:00/PNP0C0C:00/input/input1
[    0.652142] ACPI: Power Button [PWRB]
[    0.652225] input: Sleep Button as
/devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/input2
[    0.652231] ACPI: Sleep Button [SLPB]
[    0.652333] input: Power Button as
/devices/LNXSYSTM:00/LNXPWRBN:00/input/input3
[    0.652339] ACPI: Power Button [PWRF]
[    0.652710] ACPI: acpi_idle registered with cpuidle
[    0.665143] Monitor-Mwait will be used to enter C-1 state
[    0.672179] Monitor-Mwait will be used to enter C-2 state
[    0.672195] Marking TSC unstable due to TSC halts in idle
[    0.701683] ACPI: Invalid active0 threshold
[    0.703855] thermal LNXTHERM:00: registered as thermal_zone0
[    0.703859] ACPI: Thermal Zone [TZ00] (41 C)
[    0.703951] ERST: Table is not found!
[    0.704117] Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
[    0.704421] isapnp: Scanning for PnP cards...
[    0.873021] Freeing initrd memory: 18688k freed
[    1.002769] ACPI: Deprecated procfs I/F for battery is loaded,
please retry with CONFIG_ACPI_PROCFS_POWER cleared
[    1.002783] ACPI: Battery Slot [BAT1] (battery present)
[    1.059257] isapnp: No Plug & Play device found
[    1.063129] Linux agpgart interface v0.103
[    1.065621] brd: module loaded
[    1.066670] loop: module loaded
[    1.066827] i2c-core: driver [adp5520] using legacy suspend method
[    1.066830] i2c-core: driver [adp5520] using legacy resume method
[    1.067641] Fixed MDIO Bus: probed
[    1.067692] PPP generic driver version 2.4.2
[    1.067755] tun: Universal TUN/TAP device driver, 1.6
[    1.067758] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    1.067907] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.067948] ehci_hcd 0000:00:1a.7: PCI INT C -> GSI 20 (level, low) -> IRQ 20
[    1.067968] ehci_hcd 0000:00:1a.7: setting latency timer to 64
[    1.067973] ehci_hcd 0000:00:1a.7: EHCI Host Controller
[    1.068051] ehci_hcd 0000:00:1a.7: new USB bus registered, assigned
bus number 1
[    1.068128] ehci_hcd 0000:00:1a.7: debug port 1
[    1.072025] ehci_hcd 0000:00:1a.7: cache line size of 64 is not supported
[    1.072051] ehci_hcd 0000:00:1a.7: irq 20, io mem 0xf0405800
[    1.084023] ehci_hcd 0000:00:1a.7: USB 2.0 started, EHCI 1.00
[    1.084230] hub 1-0:1.0: USB hub found
[    1.084237] hub 1-0:1.0: 4 ports detected
[    1.084370] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    1.084389] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[    1.084394] ehci_hcd 0000:00:1d.7: EHCI Host Controller
[    1.084461] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned
bus number 2
[    1.084530] ehci_hcd 0000:00:1d.7: debug port 1
[    1.088429] ehci_hcd 0000:00:1d.7: cache line size of 64 is not supported
[    1.088451] ehci_hcd 0000:00:1d.7: irq 23, io mem 0xf0405c00
[    1.104023] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
[    1.104220] hub 2-0:1.0: USB hub found
[    1.104227] hub 2-0:1.0: 6 ports detected
[    1.104361] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.104384] uhci_hcd: USB Universal Host Controller Interface driver
[    1.104425] uhci_hcd 0000:00:1a.0: PCI INT B -> GSI 21 (level, low) -> IRQ 21
[    1.104435] uhci_hcd 0000:00:1a.0: setting latency timer to 64
[    1.104440] uhci_hcd 0000:00:1a.0: UHCI Host Controller
[    1.104507] uhci_hcd 0000:00:1a.0: new USB bus registered, assigned
bus number 3
[    1.104578] uhci_hcd 0000:00:1a.0: irq 21, io base 0x00001800
[    1.104782] hub 3-0:1.0: USB hub found
[    1.104789] hub 3-0:1.0: 2 ports detected
[    1.104908] uhci_hcd 0000:00:1a.1: PCI INT B -> GSI 21 (level, low) -> IRQ 21
[    1.104918] uhci_hcd 0000:00:1a.1: setting latency timer to 64
[    1.104923] uhci_hcd 0000:00:1a.1: UHCI Host Controller
[    1.104995] uhci_hcd 0000:00:1a.1: new USB bus registered, assigned
bus number 4
[    1.105056] uhci_hcd 0000:00:1a.1: irq 21, io base 0x00001820
[    1.105261] hub 4-0:1.0: USB hub found
[    1.105268] hub 4-0:1.0: 2 ports detected
[    1.105386] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    1.105396] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[    1.105401] uhci_hcd 0000:00:1d.0: UHCI Host Controller
[    1.105462] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned
bus number 5
[    1.108064] uhci_hcd 0000:00:1d.0: irq 23, io base 0x00001840
[    1.108268] hub 5-0:1.0: USB hub found
[    1.108274] hub 5-0:1.0: 2 ports detected
[    1.108398] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    1.108408] uhci_hcd 0000:00:1d.1: setting latency timer to 64
[    1.108413] uhci_hcd 0000:00:1d.1: UHCI Host Controller
[    1.108475] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned
bus number 6
[    1.108544] uhci_hcd 0000:00:1d.1: irq 19, io base 0x00001860
[    1.108758] hub 6-0:1.0: USB hub found
[    1.108765] hub 6-0:1.0: 2 ports detected
[    1.108882] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    1.108891] uhci_hcd 0000:00:1d.2: setting latency timer to 64
[    1.108896] uhci_hcd 0000:00:1d.2: UHCI Host Controller
[    1.108960] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned
bus number 7
[    1.109030] uhci_hcd 0000:00:1d.2: irq 18, io base 0x00001880
[    1.109230] hub 7-0:1.0: USB hub found
[    1.109236] hub 7-0:1.0: 2 ports detected
[    1.109447] i8042: PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:MSS1]
at 0x60,0x64 irq 1,12
[    1.144563] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.144572] serio: i8042 AUX port at 0x60,0x64 irq 12
[    1.144780] mousedev: PS/2 mouse device common for all mice
[    1.146379] rtc_cmos 00:06: RTC can wake from S4
[    1.146474] rtc_cmos 00:06: rtc core: registered rtc_cmos as rtc0
[    1.146511] rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    1.146638] device-mapper: uevent: version 1.0.3
[    1.146776] device-mapper: ioctl: 4.19.1-ioctl (2011-01-07)
initialised: dm-devel at redhat.com
[    1.146887] device-mapper: multipath: version 1.2.0 loaded
[    1.146891] device-mapper: multipath round-robin: version 1.0.0 loaded
[    1.147005] EISA: Probing bus 0 at eisa.0
[    1.147009] EISA: Cannot allocate resource for mainboard
[    1.147012] Cannot allocate resource for EISA slot 1
[    1.147016] Cannot allocate resource for EISA slot 2
[    1.147019] Cannot allocate resource for EISA slot 3
[    1.147022] Cannot allocate resource for EISA slot 4
[    1.147025] Cannot allocate resource for EISA slot 5
[    1.147028] Cannot allocate resource for EISA slot 6
[    1.147031] Cannot allocate resource for EISA slot 7
[    1.147034] Cannot allocate resource for EISA slot 8
[    1.147037] EISA: Detected 0 cards.
[    1.147198] cpuidle: using governor ladder
[    1.147329] cpuidle: using governor menu
[    1.147800] TCP cubic registered
[    1.148040] NET: Registered protocol family 10
[    1.149001] NET: Registered protocol family 17
[    1.149024] Registering the dns_resolver key type
[    1.153940] Using IPI No-Shortcut mode
[    1.154087] PM: Hibernation image not present or could not be loaded.
[    1.154103] registered taskstats version 1
[    1.154851]   Magic number: 11:876:692
[    1.154959] rtc_cmos 00:06: setting system clock to 2011-09-27
16:40:20 UTC (1317141620)
[    1.154964] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
[    1.154967] EDD information not available.
[    1.155258] Freeing unused kernel memory: 720k freed
[    1.155672] Write protecting the kernel text: 5356k
[    1.155798] Write protecting the kernel read-only data: 2192k
[    1.155801] NX-protecting the kernel data: 4884k
[    1.175758] input: AT Translated Set 2 keyboard as
/devices/platform/i8042/serio0/input/input4
[    1.201531] <30>udev[73]: starting version 167
[    1.381660] r8169 Gigabit Ethernet driver 2.3LK-NAPI loaded
[    1.381720] r8169 0000:02:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    1.381778] r8169 0000:02:00.0: setting latency timer to 64
[    1.381864] r8169 0000:02:00.0: irq 43 for MSI/MSI-X
[    1.382704] r8169 0000:02:00.0: eth0: RTL8168d/8111d at 0xf8460000,
00:26:22:d3:fe:bd, XID 081000c0 IRQ 43
[    1.386501] b43-pci-bridge 0000:03:00.0: PCI INT A -> GSI 17
(level, low) -> IRQ 17
[    1.386520] b43-pci-bridge 0000:03:00.0: setting latency timer to 64
[    1.396060] usb 1-2: new high speed USB device using ehci_hcd and address 2
[    1.404553] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor 0x4243)
[    1.404574] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F,
vendor 0x4243)
[    1.404593] ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor 0x4243)
[    1.404613] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor 0x4243)
[    1.425378] [drm] Initialized drm 1.1.0 20060810
[    1.429352] acpi device:04: registered as cooling_device2
[    1.429536] input: Video Bus as
/devices/LNXSYSTM:00/device:00/PNP0A08:00/device:01/LNXVIDEO:00/input/input5
[    1.429614] ACPI: Video Device [VGA] (multi-head: yes  rom: no  post: no)
[    1.436333] ahci 0000:00:1f.2: version 3.0
[    1.436351] ahci 0000:00:1f.2: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    1.436426] ahci 0000:00:1f.2: irq 44 for MSI/MSI-X
[    1.436483] ahci: SSS flag set, parallel bus scan disabled
[    1.436529] ahci 0000:00:1f.2: AHCI 0001.0200 32 slots 4 ports 3
Gbps 0x13 impl SATA mode
[    1.436535] ahci 0000:00:1f.2: flags: 64bit ncq sntf stag pm led
clo pio slum part ccc ems sxs
[    1.436543] ahci 0000:00:1f.2: setting latency timer to 64
[    1.444399] ssb: Sonics Silicon Backplane found on PCI device 0000:03:00.0
[    1.457415] scsi0 : ahci
[    1.459710] scsi1 : ahci
[    1.459922] scsi2 : ahci
[    1.460143] scsi3 : ahci
[    1.460328] scsi4 : ahci
[    1.460436] ata1: SATA max UDMA/133 abar m2048 at 0xf0405000 port
0xf0405100 irq 44
[    1.460442] ata2: SATA max UDMA/133 abar m2048 at 0xf0405000 port
0xf0405180 irq 44
[    1.460445] ata3: DUMMY
[    1.460447] ata4: DUMMY
[    1.460451] ata5: SATA max UDMA/133 abar m2048 at 0xf0405000 port
0xf0405300 irq 44
[    1.496827] [drm] radeon kernel modesetting enabled.
[    1.496903] radeon 0000:01:00.0: power state changed by ACPI to D0
[    1.496911] radeon 0000:01:00.0: power state changed by ACPI to D0
[    1.496923] radeon 0000:01:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    1.496932] radeon 0000:01:00.0: setting latency timer to 64
[    1.498531] [drm] initializing kernel modesetting (RV710 0x1002:0x9552).
[    1.498597] [drm] register mmio base: 0xF0200000
[    1.498600] [drm] register mmio size: 65536
[    1.498868] ATOM BIOS: BR34503.001
[    1.498907] radeon 0000:01:00.0: VRAM: 512M 0x0000000000000000 -
0x000000001FFFFFFF (512M used)
[    1.498912] radeon 0000:01:00.0: GTT: 512M 0x0000000020000000 -
0x000000003FFFFFFF
[    1.500052] [drm] Detected VRAM RAM=512M, BAR=256M
[    1.500057] [drm] RAM width 64bits DDR
[    1.500180] [TTM] Zone  kernel: Available graphics memory: 418240 kiB.
[    1.500185] [TTM] Zone highmem: Available graphics memory: 2040732 kiB.
[    1.500188] [TTM] Initializing pool allocator.
[    1.500214] [drm] radeon: 512M of VRAM memory ready
[    1.500218] [drm] radeon: 512M of GTT memory ready.
[    1.500246] [drm] Supports vblank timestamp caching Rev 1 (10.10.2010).
[    1.500249] [drm] Driver supports precise vblank timestamp query.
[    1.500321] radeon 0000:01:00.0: irq 45 for MSI/MSI-X
[    1.500332] radeon 0000:01:00.0: radeon: using MSI.
[    1.500377] [drm] radeon: irq initialized.
[    1.500381] [drm] GART: num cpu pages 131072, num gpu pages 131072
[    1.501269] [drm] Loading RV710 Microcode
[    1.514272] radeon 0000:01:00.0: WB enabled
[    1.560550] [drm] ring test succeeded in 1 usecs
[    1.560786] [drm] radeon: ib pool ready.
[    1.560894] [drm] ib test succeeded in 0 usecs
[    1.560898] [drm] Enabling audio support
[    1.561779] [drm] Radeon Display Connectors
[    1.561782] [drm] Connector 0:
[    1.561785] [drm]   LVDS
[    1.561789] [drm]   DDC: 0x7f68 0x7f68 0x7f6c 0x7f6c 0x7f70 0x7f70
0x7f74 0x7f74
[    1.561792] [drm]   Encoders:
[    1.561795] [drm]     LCD1: INTERNAL_UNIPHY2
[    1.561797] [drm] Connector 1:
[    1.561800] [drm]   VGA
[    1.561803] [drm]   DDC: 0x7e40 0x7e40 0x7e44 0x7e44 0x7e48 0x7e48
0x7e4c 0x7e4c
[    1.561806] [drm]   Encoders:
[    1.561808] [drm]     CRT1: INTERNAL_KLDSCP_DAC1
[    1.561811] [drm] Connector 2:
[    1.561813] [drm]   HDMI-A
[    1.561815] [drm]   HPD1
[    1.561819] [drm]   DDC: 0x7e50 0x7e50 0x7e54 0x7e54 0x7e58 0x7e58
0x7e5c 0x7e5c
[    1.561821] [drm]   Encoders:
[    1.561823] [drm]     DFP1: INTERNAL_UNIPHY
[    1.620259] [drm] radeon: power management initialized
[    1.780101] ata1: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[    1.833606] ata1.00: ATA-8: ST9320325AS, 0010LVM1, max UDMA/100
[    1.833611] ata1.00: 625142448 sectors, multi 16: LBA48 NCQ (depth 31/32)
[    1.835603] ata1.00: configured for UDMA/100
[    1.835827] scsi 0:0:0:0: Direct-Access     ATA      ST9320325AS
  0010 PQ: 0 ANSI: 5
[    1.836127] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    1.836167] sd 0:0:0:0: [sda] 625142448 512-byte logical blocks:
(320 GB/298 GiB)
[    1.836259] sd 0:0:0:0: [sda] Write Protect is off
[    1.836264] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.836303] sd 0:0:0:0: [sda] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[    1.900079] usb 6-2: new low speed USB device using uhci_hcd and address 2
[    1.929894]  sda: sda1 sda2 sda3 < sda5 sda6 sda7 sda8 sda9 > sda4
[    1.930710] sd 0:0:0:0: [sda] Attached SCSI disk
[    2.156167] ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[    2.169230] ata2.00: ATAPI: TSSTcorp CDDVDW TS-U633A, LEW1, max UDMA/100
[    2.169237] ata2.00: applying bridge limits
[    2.182610] ata2.00: configured for UDMA/100
[    2.185972] scsi 1:0:0:0: CD-ROM            TSSTcorp CDDVDW
TS-U633A  LEW1 PQ: 0 ANSI: 5
[    2.190990] sr0: scsi3-mmc drive: 24x/24x writer dvd-ram cd/rw
xa/form2 cdda tray
[    2.190995] cdrom: Uniform CD-ROM driver Revision: 3.20
[    2.191201] sr 1:0:0:0: Attached scsi CD-ROM sr0
[    2.191319] sr 1:0:0:0: Attached scsi generic sg1 type 5
[    2.508225] ata5: SATA link down (SStatus 0 SControl 300)
[    2.532713] input: PIXART USB OPTICAL MOUSE as
/devices/pci0000:00/0000:00:1d.1/usb6/6-2/6-2:1.0/input/input6
[    2.533051] generic-usb 0003:093A:2510.0001: input,hidraw0: USB HID
v1.11 Mouse [PIXART USB OPTICAL MOUSE] on usb-0000:00:1d.1-2/input0
[    2.533341] usbcore: registered new interface driver usbhid
[    2.533345] usbhid: USB HID core driver
[    2.613849] [drm] fb mappable at 0xD0142000
[    2.613853] [drm] vram apper at 0xD0000000
[    2.613856] [drm] size 4325376
[    2.613858] [drm] fb depth is 24
[    2.613861] [drm]    pitch is 5632
[    2.613962] fbcon: radeondrmfb (fb0) is primary device
[    2.614819] Console: switching to colour frame buffer device 170x48
[    2.614864] fb0: radeondrmfb frame buffer device
[    2.614866] drm: registered panic notifier
[    2.614875] [drm] Initialized radeon 2.8.0 20080528 for
0000:01:00.0 on minor 0
[    4.403237] uvesafb: (C) 1988-2005, ATI Technologies Inc. , M92,
01.00, OEM: ATI ATOMBIOS, VBE v3.0
[    4.426175] uvesafb: protected mode interface info at c000:a3d2
[    4.426180] uvesafb: pmi: set display start = c00ca474, set palette
= c00ca532
[    4.426245] uvesafb: VBIOS/hardware supports DDC2 transfers
[    4.460315] uvesafb: monitor limits: vf = 60 Hz, hf = 48 kHz, clk = 72 MHz
[    4.460431] uvesafb: scrolling: ywrap using protected mode
interface, yres_virtual=1536
[    4.462885] uvesafb: framebuffer at 0xd0000000, mapped to
0xf9180000, using 6144k, total 16384k
[    4.462889] fb1: VESA VGA frame buffer device
[   16.296184] Intel AES-NI instructions are not detected.
[   17.897639] EXT4-fs (dm-1): mounted filesystem with ordered data
mode. Opts: (null)
[   30.741188] <30>udev[458]: starting version 167
[   30.762592] Adding 978940k swap on /dev/mapper/lvmlen-swap.
Priority:-1 extents:1 across:978940k
[   30.807361] lp: driver loaded but no devices found
[   30.926078] EXT4-fs (dm-1): re-mounted. Opts: errors=remount-ro
[   31.063465] EXT4-fs (sda5): mounted filesystem with ordered data
mode. Opts: (null)
[   31.069014] input: Ideapad extra buttons as
/devices/platform/ideapad/input/input7
[   31.169511] type=1400 audit(1317134450.512:2): apparmor="STATUS"
operation="profile_load" name="/sbin/dhclient" pid=704
comm="apparmor_parser"
[   31.171109] type=1400 audit(1317134450.512:3): apparmor="STATUS"
operation="profile_load"
name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=704
comm="apparmor_parser"
[   31.172360] type=1400 audit(1317134450.516:4): apparmor="STATUS"
operation="profile_load"
name="/usr/lib/connman/scripts/dhclient-script" pid=704
comm="apparmor_parser"
[   31.657992] type=1400 audit(1317134451.000:5): apparmor="STATUS"
operation="profile_load" name="/usr/share/gdm/guest-session/Xsession"
pid=954 comm="apparmor_parser"
[   31.662724] type=1400 audit(1317134451.004:6): apparmor="STATUS"
operation="profile_replace" name="/sbin/dhclient" pid=955
comm="apparmor_parser"
[   31.666711] type=1400 audit(1317134451.008:7): apparmor="STATUS"
operation="profile_replace"
name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=955
comm="apparmor_parser"
[   31.667636] type=1400 audit(1317134451.008:8): apparmor="STATUS"
operation="profile_replace"
name="/usr/lib/connman/scripts/dhclient-script" pid=955
comm="apparmor_parser"
[   31.707968] type=1400 audit(1317134451.048:9): apparmor="STATUS"
operation="profile_load" name="/usr/lib/cups/backend/cups-pdf" pid=960
comm="apparmor_parser"
[   31.709799] type=1400 audit(1317134451.052:10): apparmor="STATUS"
operation="profile_load" name="/usr/bin/evince" pid=957
comm="apparmor_parser"
[   31.713773] type=1400 audit(1317134451.056:11): apparmor="STATUS"
operation="profile_load" name="/usr/sbin/cupsd" pid=960
comm="apparmor_parser"
[   31.898153] Linux video capture interface: v2.00
[   31.931478] HDA Intel 0000:00:1b.0: power state changed by ACPI to D0
[   31.931488] HDA Intel 0000:00:1b.0: power state changed by ACPI to D0
[   31.931511] HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level,
low) -> IRQ 22
[   31.931596] HDA Intel 0000:00:1b.0: irq 46 for MSI/MSI-X
[   31.947619] HDA Intel 0000:00:1b.0: setting latency timer to 64
[   31.971897] uvcvideo: Found UVC 1.00 device USB 2.0 Camera (0c45:64b0)
[   32.020466] hda_codec: ALC272: BIOS auto-probing.
[   32.048977] input: HDA Intel Mic as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input8
[   32.049371] input: HDA Intel Headphone as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input9
[   32.050834] HDA Intel 0000:01:00.1: PCI INT B -> GSI 17 (level,
low) -> IRQ 17
[   32.050943] HDA Intel 0000:01:00.1: irq 47 for MSI/MSI-X
[   32.050984] HDA Intel 0000:01:00.1: setting latency timer to 64
[   32.053749] input: USB 2.0 Camera as
/devices/pci0000:00/0000:00:1a.7/usb1/1-2/1-2:1.0/input/input10
[   32.054418] usbcore: registered new interface driver uvcvideo
[   32.054423] USB Video Class driver (v1.0.0)
[   32.070981] hda-intel: Enable sync_write for AMD chipset
[   32.132230] r8169 0000:02:00.0: eth0: link down
[   32.143562] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   32.144416] cfg80211: Calling CRDA to update world regulatory domain
[   32.219448] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[   32.219870] cfg80211: World regulatory domain updated:
[   32.219875] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[   32.219880] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[   32.219884] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[   32.219889] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[   32.219893] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[   32.219897] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[   32.284461] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284468] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284471] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284476] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284479] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284484] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284487] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284491] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284495] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284499] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284503] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284507] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284510] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284515] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284518] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284523] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284526] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284530] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284534] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284538] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284542] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284546] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284550] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284554] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284558] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284562] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.284566] cfg80211: Updating information on frequency 2484 MHz
for a 20 MHz width channel with regulatory rule:
[   32.284570] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (300 mBi, 2000 mBm)
[   32.297160] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   32.298359] Registered led device: b43-phy0::tx
[   32.298538] Registered led device: b43-phy0::rx
[   32.298586] Registered led device: b43-phy0::radio
[   32.298612] Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]
[   32.658190] Synaptics Touchpad, model: 1, fw: 7.2, id: 0x1c0b1,
caps: 0xd04733/0xa40000/0xa0000
[   32.777124] input: SynPS/2 Synaptics TouchPad as
/devices/platform/i8042/serio1/input/input11
[   37.603093] ppdev: user-space parallel port driver
[   37.653193] audit_printk_skb: 15 callbacks suppressed
[   37.653198] type=1400 audit(1317134456.996:17): apparmor="STATUS"
operation="profile_replace" name="/usr/lib/cups/backend/cups-pdf"
pid=1572 comm="apparmor_parser"
[   37.654908] type=1400 audit(1317134456.996:18): apparmor="STATUS"
operation="profile_replace" name="/usr/sbin/cupsd" pid=1572
comm="apparmor_parser"
[   39.722033] EXT4-fs (dm-1): re-mounted. Opts: errors=remount-ro,commit=600
[   39.726543] EXT4-fs (sda5): re-mounted. Opts: commit=600
[   54.864601] hda-intel: IRQ timing workaround is activated for card
#1. Suggest a bigger bdl_pos_adj.
[  120.752047] usb 5-2: new full speed USB device using uhci_hcd and address 2
[  121.066984] Bluetooth: Core ver 2.15
[  121.067020] NET: Registered protocol family 31
[  121.067023] Bluetooth: HCI device and connection manager initialized
[  121.067027] Bluetooth: HCI socket layer initialized
[  121.111148] Bluetooth: Generic Bluetooth USB driver ver 0.6
[  121.122102] usbcore: registered new interface driver btusb
[  121.235770] Bluetooth: L2CAP ver 2.15
[  121.235774] Bluetooth: L2CAP socket layer initialized
[  121.278158] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[  121.278163] Bluetooth: BNEP filters: protocol multicast
[  121.327344] Bluetooth: SCO (Voice Link) ver 0.6
[  121.327348] Bluetooth: SCO socket layer initialized
[  153.728282] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  159.305030] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  162.301776] wlan0: authenticate with 00:19:a9:cd:aa:24 (try 1)
[  162.303315] wlan0: authenticated
[  162.303900] wlan0: associate with 00:19:a9:cd:aa:24 (try 1)
[  162.307428] wlan0: RX AssocResp from 00:19:a9:cd:aa:24 (capab=0x431
status=0 aid=182)
[  162.307434] wlan0: associated
[  162.308905] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  162.308994] cfg80211: Calling CRDA for country: DE
[  162.315248] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315255] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315259] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315263] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315267] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315271] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315275] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315279] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315283] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315287] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315291] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315295] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315299] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315303] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315306] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315311] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315315] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315319] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315323] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315327] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315330] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315335] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315338] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315343] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315346] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  162.315351] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  162.315354] cfg80211: Disabling freq 2484 MHz
[  162.315359] cfg80211: Regulatory domain changed to country: DE
[  162.315361] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  162.315366] cfg80211:     (2400000 KHz - 2483500 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  162.315369] cfg80211:     (5150000 KHz - 5250000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  162.315373] cfg80211:     (5250000 KHz - 5350000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  162.315377] cfg80211:     (5470000 KHz - 5725000 KHz @ 40000 KHz),
(N/A, 2698 mBm)
[  165.857949] b43-phy0 ERROR: Fatal DMA error: 0x00000800,
0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[  165.857956] b43-phy0 ERROR: This device does not support DMA on
your system. It will now be switched to PIO.
[  165.857961] b43-phy0: Controller RESET (DMA error) ...
[  165.857991] b43-phy0 ERROR: Fatal DMA error: 0x00000800,
0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[  165.857996] b43-phy0 ERROR: This device does not support DMA on
your system. It will now be switched to PIO.
[  165.858000] b43-phy0: Controller RESET (DMA error) ...
[  166.084442] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  171.738416] b43-phy0: Controller restarted
[  171.924250] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  172.496137] wlan0: no IPv6 routers present
[  177.537641] b43-phy0: Controller restarted
[  208.203954] wlan0: deauthenticating from 00:19:a9:cd:aa:24 by local
choice (reason=3)
[  208.252686] cfg80211: All devices are disconnected, going to
restore regulatory settings
[  208.252694] cfg80211: Restoring regulatory settings
[  208.252706] cfg80211: Calling CRDA to update world regulatory domain
[  208.259689] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259696] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259700] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259705] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259708] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259713] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259717] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259721] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259724] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259729] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259732] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259737] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259740] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259745] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259748] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259753] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259756] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259760] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259764] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259768] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259772] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259777] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259780] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259785] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259788] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259792] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259796] cfg80211: Updating information on frequency 2484 MHz
for a 20 MHz width channel with regulatory rule:
[  208.259800] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (300 mBi, 2000 mBm)
[  208.259805] cfg80211: World regulatory domain updated:
[  208.259808] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  208.259812] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  208.259816] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  208.259820] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  208.259825] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  208.259829] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  233.968866] wlan0: authenticate with 00:19:a9:cd:aa:20 (try 1)
[  233.971284] wlan0: authenticated
[  233.971641] wlan0: associate with 00:19:a9:cd:aa:20 (try 1)
[  234.168034] wlan0: associate with 00:19:a9:cd:aa:20 (try 2)
[  234.171326] wlan0: RX AssocResp from 00:19:a9:cd:aa:20 (capab=0x21
status=12 aid=0)
[  234.171332] wlan0: 00:19:a9:cd:aa:20 denied association (code=12)
[  234.171576] wlan0: deauthenticating from 00:19:a9:cd:aa:20 by local
choice (reason=3)
[  245.260439] wlan0: authenticate with 00:19:a9:cd:aa:20 (try 1)
[  245.262286] wlan0: authenticated
[  245.262644] wlan0: associate with 00:19:a9:cd:aa:20 (try 1)
[  245.266197] wlan0: RX AssocResp from 00:19:a9:cd:aa:20 (capab=0x21
status=0 aid=187)
[  245.266202] wlan0: associated
[  245.267868] cfg80211: Calling CRDA for country: DE
[  245.274318] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274325] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274329] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274333] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274337] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274341] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274345] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274349] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274353] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274357] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274361] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274365] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274368] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274373] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274376] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274381] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274384] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274388] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274392] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274396] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274400] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274404] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274408] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274412] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274416] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  245.274420] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  245.274423] cfg80211: Disabling freq 2484 MHz
[  245.274428] cfg80211: Regulatory domain changed to country: DE
[  245.274430] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  245.274435] cfg80211:     (2400000 KHz - 2483500 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  245.274438] cfg80211:     (5150000 KHz - 5250000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  245.274442] cfg80211:     (5250000 KHz - 5350000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  245.274446] cfg80211:     (5470000 KHz - 5725000 KHz @ 40000 KHz),
(N/A, 2698 mBm)
[  250.304053] ieee80211 phy0: wlan0: No probe response from AP
00:19:a9:cd:aa:20 after 500ms, disconnecting.
[  250.305396] cfg80211: All devices are disconnected, going to
restore regulatory settings
[  250.305403] cfg80211: Restoring regulatory settings
[  250.305409] cfg80211: Calling CRDA to update world regulatory domain
[  250.311725] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311732] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311736] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311741] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311745] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311750] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311754] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311759] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311762] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311767] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311771] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311775] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311779] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311784] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311788] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311793] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311797] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311801] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311805] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311810] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311814] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311818] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311822] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311827] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311831] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311836] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311840] cfg80211: Updating information on frequency 2484 MHz
for a 20 MHz width channel with regulatory rule:
[  250.311845] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (300 mBi, 2000 mBm)
[  250.311849] cfg80211: World regulatory domain updated:
[  250.311852] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  250.311857] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  250.311862] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  250.311866] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  250.311870] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  250.311875] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  251.704918] wlan0: authenticate with 00:19:a9:cd:aa:20 (try 1)
[  251.904241] wlan0: authenticate with 00:19:a9:cd:aa:20 (try 2)
[  252.104235] wlan0: authenticate with 00:19:a9:cd:aa:20 (try 3)
[  252.304225] wlan0: authentication with 00:19:a9:cd:aa:20 timed out
[  718.376272] usb 6-2: USB disconnect, address 2
[  719.033866] EXT4-fs (dm-1): re-mounted. Opts: errors=remount-ro,commit=0
[  719.039015] EXT4-fs (sda5): re-mounted. Opts: commit=0
[  721.654838] r8169 0000:02:00.0: eth0: link down
[  721.655431] ADDRCONF(NETDEV_UP): eth0: link is not ready
[  721.825842] r8169 0000:02:00.0: eth0: link down
[  721.826711] ADDRCONF(NETDEV_UP): eth0: link is not ready
[  722.253704] r8169 0000:02:00.0: eth0: link down
[  722.254015] ADDRCONF(NETDEV_UP): eth0: link is not ready
[  722.976735] PM: Syncing filesystems ... done.
[  722.982150] PM: Preparing system for mem sleep
[  723.048834] Freezing user space processes ... (elapsed 0.01 seconds) done.
[  723.064272] Freezing remaining freezable tasks ... (elapsed 0.01
seconds) done.
[  723.080233] PM: Entering mem sleep
[  723.080280] Suspending console(s) (use no_console_suspend to debug)
[  723.084484] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[  723.136136] sd 0:0:0:0: [sda] Stopping disk
[  723.189140] PM: suspend of drv:psmouse dev:serio1 complete after
104.409 msecs
[  723.197987] HDA Intel 0000:01:00.1: PCI INT B disabled
[  723.198444] b43-pci-bridge 0000:03:00.0: PCI INT A disabled
[  723.198808] uhci_hcd 0000:00:1d.2: PCI INT C disabled
[  723.198813] ehci_hcd 0000:00:1d.7: PCI INT A disabled
[  723.198834] uhci_hcd 0000:00:1d.1: PCI INT B disabled
[  723.198851] uhci_hcd 0000:00:1d.0: PCI INT A disabled
[  723.198877] ehci_hcd 0000:00:1a.7: PCI INT C disabled
[  723.198894] uhci_hcd 0000:00:1a.1: PCI INT B disabled
[  723.198916] uhci_hcd 0000:00:1a.0: PCI INT B disabled
[  723.300407] HDA Intel 0000:00:1b.0: PCI INT A disabled
[  723.316068] HDA Intel 0000:00:1b.0: power state changed by ACPI to D3
[  723.316076] PM: suspend of drv:HDA Intel dev:0000:00:1b.0 complete
after 117.213 msecs
[  723.515562] PM: suspend of drv:sd dev:0:0:0:0 complete after 431.083 msecs
[  723.515576] PM: suspend of drv:scsi dev:target0:0:0 complete after
431.001 msecs
[  723.515600] PM: suspend of drv:scsi dev:host0 complete after 430.923 msecs
[  723.528025] PM: suspend of drv:ahci dev:0000:00:1f.2 complete after
329.303 msecs
[  724.410684] [drm] Disabling audio support
[  724.532060] radeon 0000:01:00.0: power state changed by ACPI to D3
[  724.532074] PM: suspend of drv:radeon dev:0000:01:00.0 complete
after 1333.602 msecs
[  724.532097] PM: suspend of drv:pcieport dev:0000:00:01.0 complete
after 1333.169 msecs
[  724.532137] PM: suspend of drv: dev:pci0000:00 complete after 1333.151 msecs
[  724.532145] PM: suspend of devices complete after 1451.385 msecs
[  724.532149] PM: suspend devices took 1.452 seconds
[  724.532968] r8169 0000:02:00.0: PME# enabled
[  724.580258] PM: late suspend of devices complete after 48.102 msecs
[  724.580708] ACPI: Preparing to enter system sleep state S3
[  724.580966] PM: Saving platform NVS memory
[  724.581922] Disabling non-boot CPUs ...
[  724.684030] CPU 1 is now offline
[  724.684454] Extended CMOS year: 2000
[  724.684454] Back to C!
[  724.684454] PM: Restoring platform NVS memory
[  724.684454] Extended CMOS year: 2000
[  724.684454] Enabling non-boot CPUs ...
[  724.684454] Booting Node 0 Processor 1 APIC 0x1
[  724.583295] Initializing CPU#1
[  724.776017] Switched to NOHz mode on CPU #1
[  724.776086] CPU1 is up
[  724.777829] ACPI: Waking up from system sleep state S3
[  724.896252] pcieport 0000:00:01.0: restoring config space at offset
0x7 (was 0x20002020, writing 0x2020)
[  724.896262] pcieport 0000:00:01.0: restoring config space at offset
0x3 (was 0x10000, writing 0x10010)
[  724.896269] pcieport 0000:00:01.0: restoring config space at offset
0x1 (was 0x100007, writing 0x100407)
[  724.896332] uhci_hcd 0000:00:1a.0: restoring config space at offset
0x1 (was 0x2900005, writing 0x2900001)
[  724.896384] uhci_hcd 0000:00:1a.1: restoring config space at offset
0x1 (was 0x2900005, writing 0x2900001)
[  724.896444] ehci_hcd 0000:00:1a.7: restoring config space at offset
0x1 (was 0x2900006, writing 0x2900002)
[  724.896488] HDA Intel 0000:00:1b.0: restoring config space at
offset 0xf (was 0x100, writing 0x10a)
[  724.896515] HDA Intel 0000:00:1b.0: restoring config space at
offset 0x3 (was 0x0, writing 0x10)
[  724.896524] HDA Intel 0000:00:1b.0: restoring config space at
offset 0x1 (was 0x100006, writing 0x100002)
[  724.896566] pcieport 0000:00:1c.0: restoring config space at offset
0xf (was 0x40100, writing 0x4010b)
[  724.896582] pcieport 0000:00:1c.0: restoring config space at offset
0x9 (was 0x10001, writing 0xf051f051)
[  724.896589] pcieport 0000:00:1c.0: restoring config space at offset
0x8 (was 0x0, writing 0xc030c000)
[  724.896596] pcieport 0000:00:1c.0: restoring config space at offset
0x7 (was 0x20000000, writing 0x3030)
[  724.896609] pcieport 0000:00:1c.0: restoring config space at offset
0x3 (was 0x810000, writing 0x810010)
[  724.896618] pcieport 0000:00:1c.0: restoring config space at offset
0x1 (was 0x100000, writing 0x100407)
[  724.896683] pcieport 0000:00:1c.1: restoring config space at offset
0xf (was 0x40200, writing 0x40205)
[  724.896699] pcieport 0000:00:1c.1: restoring config space at offset
0x9 (was 0x10001, writing 0xc051c041)
[  724.896708] pcieport 0000:00:1c.1: restoring config space at offset
0x7 (was 0x20000000, writing 0x4040)
[  724.896720] pcieport 0000:00:1c.1: restoring config space at offset
0x3 (was 0x810000, writing 0x810010)
[  724.896729] pcieport 0000:00:1c.1: restoring config space at offset
0x1 (was 0x100000, writing 0x100407)
[  724.896810] uhci_hcd 0000:00:1d.0: restoring config space at offset
0x1 (was 0x2900005, writing 0x2900001)
[  724.896862] uhci_hcd 0000:00:1d.1: restoring config space at offset
0x1 (was 0x2900005, writing 0x2900001)
[  724.896914] uhci_hcd 0000:00:1d.2: restoring config space at offset
0x1 (was 0x2900005, writing 0x2900001)
[  724.896975] ehci_hcd 0000:00:1d.7: restoring config space at offset
0x1 (was 0x2900006, writing 0x2900002)
[  724.897011] pci 0000:00:1e.0: restoring config space at offset 0xf
(was 0x40000, writing 0x400ff)
[  724.897026] pci 0000:00:1e.0: restoring config space at offset 0x9
(was 0x10001, writing 0x1fff1)
[  724.897033] pci 0000:00:1e.0: restoring config space at offset 0x8
(was 0x0, writing 0xfff0)
[  724.897040] pci 0000:00:1e.0: restoring config space at offset 0x7
(was 0x22800000, writing 0x228000f0)
[  724.897056] pci 0000:00:1e.0: restoring config space at offset 0x1
(was 0x100000, writing 0x100007)
[  724.897151] ahci 0000:00:1f.2: restoring config space at offset 0xf
(was 0x200, writing 0x20a)
[  724.897181] ahci 0000:00:1f.2: restoring config space at offset 0x1
(was 0x2b00007, writing 0x2b00407)
[  724.897248] pci 0000:00:1f.3: restoring config space at offset 0x4
(was 0x4, writing 0xc0600004)
[  724.897350] radeon 0000:01:00.0: restoring config space at offset
0xf (was 0x1ff, writing 0x105)
[  724.897378] radeon 0000:01:00.0: restoring config space at offset
0x3 (was 0x800000, writing 0x800010)
[  724.897388] radeon 0000:01:00.0: restoring config space at offset
0x1 (was 0x100007, writing 0x100407)
[  724.897458] HDA Intel 0000:01:00.1: restoring config space at
offset 0xf (was 0x2ff, writing 0x20b)
[  724.897484] HDA Intel 0000:01:00.1: restoring config space at
offset 0x4 (was 0x0, writing 0xf0210000)
[  724.897491] HDA Intel 0000:01:00.1: restoring config space at
offset 0x3 (was 0x800000, writing 0x800010)
[  724.897501] HDA Intel 0000:01:00.1: restoring config space at
offset 0x1 (was 0x100000, writing 0x100003)
[  724.897639] r8169 0000:02:00.0: restoring config space at offset
0xf (was 0x1ff, writing 0x105)
[  724.897695] r8169 0000:02:00.0: restoring config space at offset
0x8 (was 0xc, writing 0xf050000c)
[  724.897719] r8169 0000:02:00.0: restoring config space at offset
0x6 (was 0xc, writing 0xf050400c)
[  724.897742] r8169 0000:02:00.0: restoring config space at offset
0x4 (was 0x1, writing 0x3001)
[  724.897758] r8169 0000:02:00.0: restoring config space at offset
0x3 (was 0x0, writing 0x10)
[  724.897782] r8169 0000:02:00.0: restoring config space at offset
0x1 (was 0x100000, writing 0x100407)
[  724.898204] b43-pci-bridge 0000:03:00.0: restoring config space at
offset 0xf (was 0x100, writing 0x10b)
[  724.898269] b43-pci-bridge 0000:03:00.0: restoring config space at
offset 0x4 (was 0x4, writing 0xf0300004)
[  724.898283] b43-pci-bridge 0000:03:00.0: restoring config space at
offset 0x3 (was 0x0, writing 0x10)
[  724.898302] b43-pci-bridge 0000:03:00.0: restoring config space at
offset 0x1 (was 0x100000, writing 0x100006)
[  724.899086] PM: early resume of devices complete after 3.033 msecs
[  724.899351] uhci_hcd 0000:00:1a.0: PCI INT B -> GSI 21 (level, low) -> IRQ 21
[  724.899361] uhci_hcd 0000:00:1a.0: setting latency timer to 64
[  724.899392] usb usb3: root hub lost power or was reset
[  724.899411] uhci_hcd 0000:00:1a.1: PCI INT B -> GSI 21 (level, low) -> IRQ 21
[  724.899421] uhci_hcd 0000:00:1a.1: setting latency timer to 64
[  724.899456] usb usb4: root hub lost power or was reset
[  724.899480] ehci_hcd 0000:00:1a.7: PCI INT C -> GSI 20 (level, low) -> IRQ 20
[  724.899489] ehci_hcd 0000:00:1a.7: setting latency timer to 64
[  724.899634] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[  724.899643] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[  724.899677] usb usb5: root hub lost power or was reset
[  724.899764] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[  724.899772] uhci_hcd 0000:00:1d.1: setting latency timer to 64
[  724.899803] usb usb6: root hub lost power or was reset
[  724.899823] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[  724.899832] uhci_hcd 0000:00:1d.2: setting latency timer to 64
[  724.899862] usb usb7: root hub lost power or was reset
[  724.899881] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[  724.899890] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[  724.899954] pci 0000:00:1e.0: setting latency timer to 64
[  724.900035] r8169 0000:02:00.0: PME# disabled
[  724.908366] ahci 0000:00:1f.2: setting latency timer to 64
[  724.908550] sd 0:0:0:0: [sda] Starting disk
[  724.908591] HDA Intel 0000:01:00.1: PCI INT B -> GSI 17 (level,
low) -> IRQ 17
[  724.908605] HDA Intel 0000:01:00.1: setting latency timer to 64
[  724.908693] HDA Intel 0000:01:00.1: irq 46 for MSI/MSI-X
[  724.908953] b43-pci-bridge 0000:03:00.0: PCI INT A -> GSI 17
(level, low) -> IRQ 17
[  724.909039] HDA Intel 0000:00:1b.0: power state changed by ACPI to D0
[  724.909046] HDA Intel 0000:00:1b.0: power state changed by ACPI to D0
[  724.909055] HDA Intel 0000:00:1b.0: power state changed by ACPI to D0
[  724.909061] HDA Intel 0000:00:1b.0: power state changed by ACPI to D0
[  724.909070] HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level,
low) -> IRQ 22
[  724.909080] HDA Intel 0000:00:1b.0: setting latency timer to 64
[  724.909142] HDA Intel 0000:00:1b.0: irq 47 for MSI/MSI-X
[  724.909184] radeon 0000:01:00.0: power state changed by ACPI to D0
[  724.909191] radeon 0000:01:00.0: power state changed by ACPI to D0
[  724.909199] radeon 0000:01:00.0: power state changed by ACPI to D0
[  724.909205] radeon 0000:01:00.0: power state changed by ACPI to D0
[  724.909216] radeon 0000:01:00.0: setting latency timer to 64
[  724.944160] radeon 0000:01:00.0: WB enabled
[  724.971251] r8169 0000:02:00.0: eth0: link down
[  724.990184] [drm] ring test succeeded in 1 usecs
[  724.990209] [drm] ib test succeeded in 0 usecs
[  724.990212] [drm] Enabling audio support
[  725.016083] PM: resume of drv:usb dev:usb3 complete after 116.199 msecs
[  725.016120] PM: resume of drv: dev:ep_00 complete after 116.177 msecs
[  725.016125] PM: resume of drv:usb dev:usb4 complete after 116.156 msecs
[  725.016138] PM: resume of drv:hub dev:3-0:1.0 complete after 116.226 msecs
[  725.016147] PM: resume of drv:hub dev:4-0:1.0 complete after 116.146 msecs
[  725.016158] PM: resume of drv: dev:ep_00 complete after 116.065 msecs
[  725.016166] PM: resume of drv: dev:ep_81 complete after 116.230 msecs
[  725.016174] PM: resume of drv: dev:ep_81 complete after 116.110 msecs
[  725.020131] PM: resume of drv:usb dev:usb6 complete after 119.903 msecs
[  725.020136] PM: resume of drv:usb dev:usb7 complete after 119.805 msecs
[  725.020145] PM: resume of drv:hub dev:6-0:1.0 complete after 119.887 msecs
[  725.020151] PM: resume of drv:hub dev:7-0:1.0 complete after 119.791 msecs
[  725.020155] PM: resume of drv: dev:ep_00 complete after 119.849 msecs
[  725.020161] PM: resume of drv: dev:ep_00 complete after 119.758 msecs
[  725.020165] PM: resume of drv: dev:ep_81 complete after 119.879 msecs
[  725.020169] PM: resume of drv: dev:ep_81 complete after 119.788 msecs
[  725.028031] PM: resume of drv:usb dev:usb1 complete after 128.326 msecs
[  725.028061] PM: resume of drv:hub dev:1-0:1.0 complete after 128.321 msecs
[  725.028086] PM: resume of drv: dev:ep_00 complete after 128.278 msecs
[  725.028593] PM: resume of drv: dev:ep_81 complete after 128.810 msecs
[  725.124049] PM: resume of drv:usb dev:usb5 complete after 223.933 msecs
[  725.124134] PM: resume of drv:hub dev:5-0:1.0 complete after 223.925 msecs
[  725.124271] PM: resume of drv: dev:ep_00 complete after 224.075 msecs
[  725.124282] PM: resume of drv: dev:ep_81 complete after 224.116 msecs
[  725.144051] usb 1-2: reset high speed USB device using ehci_hcd and address 2
[  725.148047] PM: resume of drv:usb dev:usb2 complete after 248.228 msecs
[  725.148062] PM: resume of drv:hub dev:2-0:1.0 complete after 248.231 msecs
[  725.148091] PM: resume of drv: dev:ep_81 complete after 248.235 msecs
[  725.148178] PM: resume of drv: dev:ep_00 complete after 248.302 msecs
[  725.159818] PM: resume of drv:battery dev:PNP0C0A:00 complete after
260.099 msecs
[  725.240069] ata5: SATA link down (SStatus 0 SControl 300)
[  725.240120] ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[  725.301417] ata2.00: configured for UDMA/100
[  725.350033] PM: resume of drv:usb dev:1-2 complete after 449.365 msecs
[  725.350049] PM: resume of drv:uvcvideo dev:1-2:1.0 complete after
449.355 msecs
[  725.350058] PM: resume of drv:uvcvideo dev:1-2:1.1 complete after
449.320 msecs
[  725.350067] PM: resume of drv: dev:ep_00 complete after 449.304 msecs
[  725.350075] PM: resume of drv: dev:ep_83 complete after 449.359 msecs
[  725.388046] usb 5-2: reset full speed USB device using uhci_hcd and address 2
[  725.539169] btusb 5-2:1.0: no reset_resume for driver btusb?
[  725.539173] btusb 5-2:1.1: no reset_resume for driver btusb?
[  725.539320] PM: resume of drv:usb dev:5-2 complete after 638.389 msecs
[  725.539347] PM: resume of drv:usb dev:5-2:1.1 complete after 638.298 msecs
[  725.539351] PM: resume of drv:usb dev:5-2:1.0 complete after 638.397 msecs
[  725.539361] PM: resume of drv: dev:ep_83 complete after 638.291 msecs
[  725.539365] PM: resume of drv:usb dev:5-2:1.2 complete after 638.247 msecs
[  725.539369] PM: resume of drv: dev:ep_03 complete after 638.272 msecs
[  725.539377] PM: resume of drv:usb dev:5-2:1.3 complete after 638.188 msecs
[  725.539386] PM: resume of drv: dev:ep_04 complete after 638.219 msecs
[  725.539390] PM: resume of drv: dev:ep_00 complete after 638.175 msecs
[  725.539402] PM: resume of drv: dev:ep_84 complete after 638.261 msecs
[  725.539406] PM: resume of drv: dev:ep_81 complete after 638.428 msecs
[  725.539418] PM: resume of drv: dev:ep_02 complete after 638.396 msecs
[  725.539421] PM: resume of drv: dev:ep_82 complete after 638.418 msecs
[  727.472065] ata1: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[  727.475936] ata1.00: configured for UDMA/100
[  727.520860] PM: resume of drv:sd dev:0:0:0:0 complete after 2620.045 msecs
[  727.520872] PM: resume of drv:scsi_device dev:0:0:0:0 complete
after 2620.036 msecs
[  727.712679] PM: resume of drv:radeon dev:0000:01:00.0 complete
after 2813.077 msecs
[  727.712707] PM: resume of drv:drm dev:controlD64 complete after
2528.268 msecs
[  727.713019] PM: resume of devices complete after 2813.713 msecs
[  727.713729] PM: resume devices took 2.816 seconds
[  727.713791] PM: Finishing wakeup.
[  727.713794] Restarting tasks ... done.
[  727.857644] video LNXVIDEO:00: Restoring backlight state
[  727.863688] [drm:drm_mode_getfb] *ERROR* invalid framebuffer id
[  730.496446] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  736.045450] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  736.677749] r8169 0000:02:00.0: eth0: link down
[  736.677763] r8169 0000:02:00.0: eth0: link down
[  736.679460] ADDRCONF(NETDEV_UP): eth0: link is not ready
[  737.399683] EXT4-fs (dm-1): re-mounted. Opts: errors=remount-ro,commit=0
[  737.406057] EXT4-fs (sda5): re-mounted. Opts: commit=0
[  738.240908] EXT4-fs (dm-1): re-mounted. Opts: errors=remount-ro,commit=0
[  738.246011] EXT4-fs (sda5): re-mounted. Opts: commit=0
[  738.291526] r8169 0000:02:00.0: eth0: link up
[  738.291788] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[  738.704080] usb 5-1: new low speed USB device using uhci_hcd and address 3
[  738.897380] input: Logitech USB-PS/2 Optical Mouse as
/devices/pci0000:00/0000:00:1d.0/usb5/5-1/5-1:1.0/input/input12
[  738.897586] generic-usb 0003:046D:C00E.0002: input,hidraw0: USB HID
v1.10 Mouse [Logitech USB-PS/2 Optical Mouse] on
usb-0000:00:1d.0-1/input0
[  749.056065] eth0: no IPv6 routers present
[  758.648836] wlan0: direct probe to 00:12:da:ae:7c:d1 (try 1/3)
[  758.848040] wlan0: direct probe to 00:12:da:ae:7c:d1 (try 2/3)
[  758.849803] wlan0: direct probe responded
[  758.864064] wlan0: authenticate with 00:12:da:ae:7c:d1 (try 1)
[  759.068045] wlan0: authenticate with 00:12:da:ae:7c:d1 (try 2)
[  759.268034] wlan0: authenticate with 00:12:da:ae:7c:d1 (try 3)
[  759.270684] wlan0: authenticated
[  759.271041] wlan0: associate with 00:12:da:ae:7c:d1 (try 1)
[  759.277816] wlan0: RX AssocResp from 00:12:da:ae:7c:d1 (capab=0x431
status=0 aid=162)
[  759.277822] wlan0: associated
[  759.279768] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  759.279863] cfg80211: Calling CRDA for country: DE
[  759.287165] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287172] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287176] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287181] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287184] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287189] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287192] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287196] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287200] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287204] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287208] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287212] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287216] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287220] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287224] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287228] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287232] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287236] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287240] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287244] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287247] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287252] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287255] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287259] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287263] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  759.287267] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  759.287270] cfg80211: Disabling freq 2484 MHz
[  759.287275] cfg80211: Regulatory domain changed to country: DE
[  759.287278] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  759.287282] cfg80211:     (2400000 KHz - 2483500 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  759.287286] cfg80211:     (5150000 KHz - 5250000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  759.287290] cfg80211:     (5250000 KHz - 5350000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  759.287294] cfg80211:     (5470000 KHz - 5725000 KHz @ 40000 KHz),
(N/A, 2698 mBm)
[  769.282291] wlan0: deauthenticating from 00:12:da:ae:7c:d1 by local
choice (reason=3)
[  769.304469] cfg80211: All devices are disconnected, going to
restore regulatory settings
[  769.304477] cfg80211: Restoring regulatory settings
[  769.304491] cfg80211: Calling CRDA to update world regulatory domain
[  769.310599] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310605] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310609] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310614] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310618] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310622] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310626] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310630] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310634] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310638] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310642] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310646] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310650] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310654] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310658] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310662] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310666] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310670] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310674] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310678] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310682] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310686] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310690] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310694] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310698] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310702] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310706] cfg80211: Updating information on frequency 2484 MHz
for a 20 MHz width channel with regulatory rule:
[  769.310710] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (300 mBi, 2000 mBm)
[  769.310714] cfg80211: World regulatory domain updated:
[  769.310717] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  769.310722] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  769.310726] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  769.310730] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  769.310734] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  769.310738] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  769.896036] wlan0: no IPv6 routers present
[  770.604842] wlan0: authenticate with 00:12:da:ae:7c:d1 (try 1)
[  770.804251] wlan0: authenticate with 00:12:da:ae:7c:d1 (try 2)
[  771.004049] wlan0: authenticate with 00:12:da:ae:7c:d1 (try 3)
[  771.008760] wlan0: authenticated
[  771.009118] wlan0: associate with 00:12:da:ae:7c:d1 (try 1)
[  771.013432] wlan0: RX AssocResp from 00:12:da:ae:7c:d1 (capab=0x431
status=0 aid=162)
[  771.013437] wlan0: associated
[  771.015230] cfg80211: Calling CRDA for country: DE
[  771.022472] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022478] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022482] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022486] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022490] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022494] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022498] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022502] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022506] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022510] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022514] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022518] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022521] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022525] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022529] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022533] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022537] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022541] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022544] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022549] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022552] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022556] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022560] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022564] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022567] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  771.022572] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  771.022575] cfg80211: Disabling freq 2484 MHz
[  771.022579] cfg80211: Regulatory domain changed to country: DE
[  771.022582] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  771.022586] cfg80211:     (2400000 KHz - 2483500 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  771.022590] cfg80211:     (5150000 KHz - 5250000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  771.022594] cfg80211:     (5250000 KHz - 5350000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  771.022598] cfg80211:     (5470000 KHz - 5725000 KHz @ 40000 KHz),
(N/A, 2698 mBm)
[  776.488055] ieee80211 phy0: wlan0: No probe response from AP
00:12:da:ae:7c:d1 after 500ms, disconnecting.
[  776.508763] cfg80211: All devices are disconnected, going to
restore regulatory settings
[  776.508770] cfg80211: Restoring regulatory settings
[  776.508776] cfg80211: Calling CRDA to update world regulatory domain
[  776.515980] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  776.515987] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.515991] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  776.515996] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516028] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516032] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516036] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516040] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516044] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516048] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516052] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516056] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516060] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516064] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516068] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516073] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516076] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516081] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516084] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516089] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516092] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516097] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516100] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516105] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516108] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516113] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516116] cfg80211: Updating information on frequency 2484 MHz
for a 20 MHz width channel with regulatory rule:
[  776.516121] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (300 mBi, 2000 mBm)
[  776.516125] cfg80211: World regulatory domain updated:
[  776.516128] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  776.516133] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  776.516137] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  776.516141] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  776.516145] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  776.516149] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  777.897632] wlan0: authenticate with 00:12:da:ae:7c:d1 (try 1)
[  777.901316] wlan0: authenticated
[  777.901682] wlan0: associate with 00:12:da:ae:7c:d1 (try 1)
[  777.904833] wlan0: RX AssocResp from 00:12:da:ae:7c:d1 (capab=0x431
status=0 aid=162)
[  777.904839] wlan0: associated
[  777.906347] cfg80211: Calling CRDA for country: DE
[  777.912981] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  777.912988] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.912992] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  777.912996] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913000] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913004] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913008] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913012] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913015] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913020] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913023] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913028] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913031] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913035] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913039] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913043] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913047] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913051] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913055] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913060] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913063] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913067] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913071] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913075] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913079] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  777.913083] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  777.913086] cfg80211: Disabling freq 2484 MHz
[  777.913091] cfg80211: Regulatory domain changed to country: DE
[  777.913094] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  777.913098] cfg80211:     (2400000 KHz - 2483500 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  777.913102] cfg80211:     (5150000 KHz - 5250000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  777.913106] cfg80211:     (5250000 KHz - 5350000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  777.913110] cfg80211:     (5470000 KHz - 5725000 KHz @ 40000 KHz),
(N/A, 2698 mBm)
[  787.911425] wlan0: deauthenticating from 00:12:da:ae:7c:d1 by local
choice (reason=3)
[  787.928508] cfg80211: All devices are disconnected, going to
restore regulatory settings
[  787.928516] cfg80211: Restoring regulatory settings
[  787.928530] cfg80211: Calling CRDA to update world regulatory domain
[  787.935662] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935669] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935673] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935678] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935681] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935686] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935690] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935694] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935698] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935702] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935705] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935710] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935714] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935718] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935722] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935726] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935730] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935734] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935738] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935742] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935746] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935750] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935754] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935758] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935762] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935766] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935770] cfg80211: Updating information on frequency 2484 MHz
for a 20 MHz width channel with regulatory rule:
[  787.935774] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (300 mBi, 2000 mBm)
[  787.935779] cfg80211: World regulatory domain updated:
[  787.935781] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  787.935786] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  787.935790] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  787.935794] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  787.935798] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  787.935803] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  789.078850] wlan0: authenticate with 00:12:da:ae:7c:d1 (try 1)
[  789.276050] wlan0: authenticate with 00:12:da:ae:7c:d1 (try 2)
[  789.281353] wlan0: authenticated
[  789.281913] wlan0: associate with 00:12:da:ae:7c:d1 (try 1)
[  789.287029] wlan0: RX AssocResp from 00:12:da:ae:7c:d1 (capab=0x431
status=0 aid=162)
[  789.287034] wlan0: associated
[  789.288608] cfg80211: Calling CRDA for country: DE
[  789.295176] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295183] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295187] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295192] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295196] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295201] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295205] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295209] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295213] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295218] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295222] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295226] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295230] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295235] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295239] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295243] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295247] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295252] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295256] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295260] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295264] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295269] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295273] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295277] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295281] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  789.295286] cfg80211: 2400000 KHz - 2483500 KHz @  KHz), (N/A mBi, 2000 mBm)
[  789.295289] cfg80211: Disabling freq 2484 MHz
[  789.295294] cfg80211: Regulatory domain changed to country: DE
[  789.295297] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  789.295302] cfg80211:     (2400000 KHz - 2483500 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  789.295306] cfg80211:     (5150000 KHz - 5250000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  789.295311] cfg80211:     (5250000 KHz - 5350000 KHz @ 40000 KHz),
(N/A, 2000 mBm)
[  789.295315] cfg80211:     (5470000 KHz - 5725000 KHz @ 40000 KHz),
(N/A, 2698 mBm)
[  792.215153] wlan0: deauthenticating from 00:12:da:ae:7c:d1 by local
choice (reason=3)
[  792.232489] cfg80211: All devices are disconnected, going to
restore regulatory settings
[  792.232497] cfg80211: Restoring regulatory settings
[  792.232503] cfg80211: Calling CRDA to update world regulatory domain
[  792.238459] cfg80211: Updating information on frequency 2412 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238465] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238469] cfg80211: Updating information on frequency 2417 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238474] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238478] cfg80211: Updating information on frequency 2422 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238482] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238486] cfg80211: Updating information on frequency 2427 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238490] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238494] cfg80211: Updating information on frequency 2432 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238498] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238502] cfg80211: Updating information on frequency 2437 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238506] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238510] cfg80211: Updating information on frequency 2442 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238514] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238518] cfg80211: Updating information on frequency 2447 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238522] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238526] cfg80211: Updating information on frequency 2452 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238530] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238534] cfg80211: Updating information on frequency 2457 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238538] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238542] cfg80211: Updating information on frequency 2462 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238546] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238550] cfg80211: Updating information on frequency 2467 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238554] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238558] cfg80211: Updating information on frequency 2472 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238562] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238566] cfg80211: Updating information on frequency 2484 MHz
for a 20 MHz width channel with regulatory rule:
[  792.238570] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (300 mBi, 2000 mBm)
[  792.238575] cfg80211: World regulatory domain updated:
[  792.238577] cfg80211:     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[  792.238582] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  792.238587] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  792.238591] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[  792.238595] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  792.238599] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[  792.280099] usb 5-2: USB disconnect, address 2
[  796.020475] b43-phy0: Radio hardware status changed to DISABLED
