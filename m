From: Ben Prescott <b43-dev.lists@thewatertower.org>
Date: Tue, 27 Mar 2012 20:42:20 +0100
Subject: b43: system hangs during kernel initialisation [14e4:4318]
Message-ID: <4F72181C.3030903@thewatertower.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


I've been testing the 12.04 Ubuntu release, and hit an immediate issue 
with one machine; the live ISO boots only as far as the b43 driver, and 
then the machine is entirely non responsive and has to be powered off.

The last thing displayed is ..

b43-phy0 ERROR: Firmware file "b43/ucode5.fw" not found
b43-phy0 ERROR: Firmware file "b43-open/ucode5.fw" not found
b43-phy0 ERROR: You must go to 
http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and 
download the correct firmware for this driver version. Please carefully 
read all instructions on this website.

If I put the following in the kernel command line

b43.blacklist=yes

the module behaves differently

"b43: Unknown parameter 'blacklist'"

and the problem goes away.  There's probably a better way to achieve the 
same goal, but this solution has the benefit that it is easy to switch 
it on and off via grub.



I've not attempted to install firmware, as for most 'normal' users, the 
opportunity doesn't arise. Appreciate that for your understanding that 
maybe of interest.  Let me know.



You may find further useful detail on the bug over at: 
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/950295 - including 
various diagnostic data that was captured automatically for kernel issues.

The system is 32bit.

The 12.04 kernel is, currently: "Ubuntu 3.2.0-20.32-generic-pae 3.2.12"

The only way to make that boot is with the kernel argument.



As requested on the b43 linuxwireless.org page,  please find below the 
uname info and lspci info, and attached the dmesg.

As part of the investigation for the ubuntu bug, I've been testing 
Canonical's vanilla kernel builds;  more info about those here: 
https://wiki.ubuntu.com/Kernel/MainlineBuilds

I booted the system off a kernel that works; obviously the bug isn't 
illustrated.  This is the most recent canonical provided mainline 
'trunk' (3.x.0) kernel which boots.

$ uname -a
Linux tecumseh 3.1.0-030100-generic #201110241006 SMP Mon Oct 24 
14:20:44 UTC 2011 i686 i686 i386 GNU/Linux

ben at tecumseh:~$ lspci -vvn|grep 4318  -A7
06:02.0 0280: 14e4:4318 (rev 02)
     Subsystem: 1468:0312
     Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- 
Stepping- SERR- FastB2B- DisINTx-
     Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- 
<TAbort- <MAbort- >SERR- <PERR- INTx-
     Latency: 64
     Interrupt: pin A routed to IRQ 22
     Region 0: Memory@d0002000 (32-bit, non-prefetchable) [size=8K]
     Kernel driver in use: b43-pci-bridge

I've tried lots of other kernels; including

3.3.0 - hangs
3.2.0 - hangs

I've also tested a few of the 3.2.0 release candidates.  I worked back 
to 3.2.0-rc2;   It also hangs.  Canonical didn't do a 32bit 3.2.0-rc1, 
so I can't test that.

None of the kernels I've tested down the 3.1.x branch have the problem.

The Ubuntu bug page has all the kernels I've tried;  where /proc/cmdline 
doesn't show the argument, I was able to boot it.

Please do let me know what other info / procedures would help to 
troubleshoot this.

thanks, Ben
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120327/010c01e0/attachment-0001.html>
-------------- next part --------------
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Linux version 3.1.0-030100-generic (root at gomeisa) (gcc version 4.4.3 (Ubuntu 4.4.3-4ubuntu5) ) #201110241006 SMP Mon Oct 24 14:20:44 UTC 2011
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   NSC Geode by NSC
[    0.000000]   Cyrix CyrixInstead
[    0.000000]   Centaur CentaurHauls
[    0.000000]   Transmeta GenuineTMx86
[    0.000000]   Transmeta TransmetaCPU
[    0.000000]   UMC UMC UMC UMC
[    0.000000] Disabled fast string operations
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009f800 (usable)
[    0.000000]  BIOS-e820: 000000000009f800 - 00000000000a0000 (reserved)
[    0.000000]  BIOS-e820: 00000000000e0000 - 0000000000100000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 000000007f680000 (usable)
[    0.000000]  BIOS-e820: 000000007f680000 - 000000007f700000 (ACPI NVS)
[    0.000000]  BIOS-e820: 000000007f700000 - 0000000080000000 (reserved)
[    0.000000]  BIOS-e820: 00000000e0000000 - 00000000f0000000 (reserved)
[    0.000000]  BIOS-e820: 00000000fec00000 - 00000000fec10000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed00000 - 00000000fed00400 (reserved)
[    0.000000]  BIOS-e820: 00000000fed14000 - 00000000fed1a000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed1c000 - 00000000fed90000 (reserved)
[    0.000000]  BIOS-e820: 00000000fee00000 - 00000000fee01000 (reserved)
[    0.000000]  BIOS-e820: 00000000ff000000 - 0000000100000000 (reserved)
[    0.000000] Notice: NX (Execute Disable) protection cannot be enabled: non-PAE kernel!
[    0.000000] DMI present.
[    0.000000] DMI: Acer             TravelMate 2490 /Grapevine, BIOS V2.90 09/20/2006
[    0.000000] e820 update range: 0000000000000000 - 0000000000010000 (usable) ==> (reserved)
[    0.000000] e820 remove range: 00000000000a0000 - 0000000000100000 (usable)
[    0.000000] last_pfn = 0x7f680 max_arch_pfn = 0x100000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-CFFFF write-protect
[    0.000000]   D0000-DFFFF uncachable
[    0.000000]   E0000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 000000000 mask F80000000 write-back
[    0.000000]   1 base 07F700000 mask FFFF00000 uncachable
[    0.000000]   2 base 07F800000 mask FFF800000 uncachable
[    0.000000]   3 disabled
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000] PAT not supported by CPU.
[    0.000000] original variable MTRRs
[    0.000000] reg 0, base: 0GB, range: 2GB, type WB
[    0.000000] reg 1, base: 2039MB, range: 1MB, type UC
[    0.000000] reg 2, base: 2040MB, range: 8MB, type UC
[    0.000000] total RAM covered: 2039M
[    0.000000] Found optimal setting for mtrr clean up
[    0.000000]  gran_size: 64K 	chunk_size: 16M 	num_reg: 3  	lose cover RAM: 0G
[    0.000000] New variable MTRRs
[    0.000000] reg 0, base: 0GB, range: 2GB, type WB
[    0.000000] reg 1, base: 2039MB, range: 1MB, type UC
[    0.000000] reg 2, base: 2040MB, range: 8MB, type UC
[    0.000000] found SMP MP-table at [c00f6520] f6520
[    0.000000] initial memory mapped : 0 - 01c00000
[    0.000000] Base memory trampoline at [c009b000] 9b000 size 16384
[    0.000000] init_memory_mapping: 0000000000000000-00000000377fe000
[    0.000000]  0000000000 - 0000400000 page 4k
[    0.000000]  0000400000 - 0037400000 page 2M
[    0.000000]  0037400000 - 00377fe000 page 4k
[    0.000000] kernel direct mapping tables up to 377fe000 @ 1bfb000-1c00000
[    0.000000] RAMDISK: 365b8000 - 372d4000
[    0.000000] ACPI: RSDP 000f64f0 00014 (v00 PTLTD )
[    0.000000] ACPI: RSDT 7f687449 00048 (v01 PTLTD  Capell00 06040000  LTP 00000000)
[    0.000000] ACPI: FACP 7f68de2e 00074 (v01 Acer   Grape    06040000 LOHR 0000005A)
[    0.000000] ACPI: DSDT 7f688098 05D96 (v01 Acer   CALISTGA 06040000 INTL 20050228)
[    0.000000] ACPI: FACS 7f68efc0 00040
[    0.000000] ACPI: APIC 7f68dea2 00068 (v01 Acer   Grape    06040000 LOHR 0000005A)
[    0.000000] ACPI: HPET 7f68df0a 00038 (v01 Acer   Grape    06040000 LOHR 0000005A)
[    0.000000] ACPI: MCFG 7f68df42 0003C (v01 Acer   Grape    06040000 LOHR 0000005A)
[    0.000000] ACPI: APIC 7f68df7e 0005A (v01 PTLTD  ? APIC   06040000  LTP 00000000)
[    0.000000] ACPI: BOOT 7f68dfd8 00028 (v01 PTLTD  $SBFTBL$ 06040000  LTP 00000001)
[    0.000000] ACPI: SSDT 7f687bd6 004C2 (v01  PmRef  Cpu0Cst 00003001 INTL 20050228)
[    0.000000] ACPI: SSDT 7f687977 0025F (v01  PmRef  Cpu0Tst 00003000 INTL 20050228)
[    0.000000] ACPI: SSDT 7f687491 004E6 (v01  PmRef    CpuPm 00003000 INTL 20050228)
[    0.000000] ACPI: BIOS bug: multiple APIC/MADT found, using 0
[    0.000000] ACPI: If "acpi_apic_instance=2" works better, notify linux-acpi at vger.kernel.org
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] 1150MB HIGHMEM available.
[    0.000000] 887MB LOWMEM available.
[    0.000000]   mapped low ram: 0 - 377fe000
[    0.000000]   low ram: 0 - 377fe000
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000010 -> 0x00001000
[    0.000000]   Normal   0x00001000 -> 0x000377fe
[    0.000000]   HighMem  0x000377fe -> 0x0007f680
[    0.000000] Movable zone start PFN for each node
[    0.000000] early_node_map[2] active PFN ranges
[    0.000000]     0: 0x00000010 -> 0x0000009f
[    0.000000]     0: 0x00000100 -> 0x0007f680
[    0.000000] On node 0 totalpages: 521743
[    0.000000] free_area_init_node: node 0, pgdat c17be680, node_mem_map f55c8200
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 3951 pages, LIFO batch:0
[    0.000000]   Normal zone: 1744 pages used for memmap
[    0.000000]   Normal zone: 221486 pages, LIFO batch:31
[    0.000000]   HighMem zone: 2302 pages used for memmap
[    0.000000]   HighMem zone: 292228 pages, LIFO batch:31
[    0.000000] Using APIC driver default
[    0.000000] ACPI: PM-Timer IO Port: 0x1008
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] disabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x01] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 1, version 32, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ2 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.000000] SMP: Allowing 2 CPUs, 1 hotplug CPUs
[    0.000000] nr_irqs_gsi: 40
[    0.000000] PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000e0000
[    0.000000] PM: Registered nosave memory: 00000000000e0000 - 0000000000100000
[    0.000000] Allocating PCI resources starting at 80000000 (gap: 80000000:60000000)
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:2 nr_node_ids:1
[    0.000000] PERCPU: Embedded 13 pages/cpu @f5000000 s30144 r0 d23104 u2097152
[    0.000000] pcpu-alloc: s30144 r0 d23104 u2097152 alloc=1*4194304
[    0.000000] pcpu-alloc: [0] 0 1 
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 517665
[    0.000000] Kernel command line: BOOT_IMAGE=/vmlinuz-3.1.0-030100-generic root=UUID=ee8d8fac-4004-4e28-a442-b0c4357c9631 ro
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Initializing CPU#0
[    0.000000] allocated 8349440 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't want memory cgroups
[    0.000000] Initializing HighMem for node 0 (000377fe:0007f680)
[    0.000000] Memory: 2038520k/2087424k available (5360k kernel code, 48452k reserved, 2609k data, 704k init, 1178120k highmem)
[    0.000000] virtual kernel memory layout:
[    0.000000]     fixmap  : 0xfff16000 - 0xfffff000   ( 932 kB)
[    0.000000]     pkmap   : 0xff800000 - 0xffc00000   (4096 kB)
[    0.000000]     vmalloc : 0xf7ffe000 - 0xff7fe000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf77fe000   ( 887 MB)
[    0.000000]       .init : 0xc17c9000 - 0xc1879000   ( 704 kB)
[    0.000000]       .data : 0xc153c3ad - 0xc17c89c0   (2609 kB)
[    0.000000]       .text : 0xc1000000 - 0xc153c3ad   (5360 kB)
[    0.000000] Checking if this processor honours the WP bit even in supervisor mode...Ok.
[    0.000000] SLUB: Genslabs=15, HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] 	RCU dyntick-idle grace-period acceleration is enabled.
[    0.000000] NR_IRQS:2304 nr_irqs:512 16
[    0.000000] CPU 0 irqstacks, hard=f4408000 soft=f440a000
[    0.000000] Console: colour dummy device 80x25
[    0.000000] console [tty0] enabled
[    0.000000] hpet clockevent registered
[    0.000000] Fast TSC calibration using PIT
[    0.000000] Detected 1462.865 MHz processor.
[    0.004002] Calibrating delay loop (skipped), value calculated using timer frequency.. 2925.73 BogoMIPS (lpj=5851460)
[    0.004019] pid_max: default: 32768 minimum: 301
[    0.004058] Security Framework initialized
[    0.004086] AppArmor: AppArmor initialized
[    0.004161] Mount-cache hash table entries: 512
[    0.004370] Initializing cgroup subsys cpuacct
[    0.004383] Initializing cgroup subsys memory
[    0.004400] Initializing cgroup subsys devices
[    0.004408] Initializing cgroup subsys freezer
[    0.004416] Initializing cgroup subsys net_cls
[    0.004424] Initializing cgroup subsys blkio
[    0.004439] Initializing cgroup subsys perf_event
[    0.004484] Disabled fast string operations
[    0.004497] mce: CPU supports 6 MCE banks
[    0.004515] CPU0: Thermal monitoring enabled (TM1)
[    0.004525] using mwait in idle threads.
[    0.008163] SMP alternatives: switching to UP code
[    0.019100] ACPI: Core revision 20110623
[    0.028017] ftrace: allocating 23650 entries in 47 pages
[    0.036077] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.036473] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.078053] CPU0: Intel(R) Celeron(R) M CPU        410  @ 1.46GHz stepping 08
[    0.080004] Performance Events: Core events, core PMU driver.
[    0.080004] ... version:                1
[    0.080004] ... bit width:              40
[    0.080004] ... generic registers:      2
[    0.080004] ... value mask:             000000ffffffffff
[    0.080004] ... max period:             000000007fffffff
[    0.080004] ... fixed-purpose events:   0
[    0.080004] ... event mask:             0000000000000003
[    0.080004] Brought up 1 CPUs
[    0.080004] Total of 1 processors activated (2925.73 BogoMIPS).
[    0.080004] devtmpfs: initialized
[    0.080004] PM: Registering ACPI NVS region at 7f680000 (524288 bytes)
[    0.080004] print_constraints: dummy: 
[    0.080004] RTC time: 18:38:03, date: 03/27/12
[    0.080004] NET: Registered protocol family 16
[    0.080004] EISA bus registered
[    0.080004] ACPI: bus type pci registered
[    0.080004] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000-0xefffffff] (base 0xe0000000)
[    0.080004] PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in E820
[    0.080004] PCI: Using MMCONFIG for extended config space
[    0.080004] PCI: Using configuration type 1 for base access
[    0.080937] bio: create slab <bio-0> at 0
[    0.081059] ACPI: Added _OSI(Module Device)
[    0.081067] ACPI: Added _OSI(Processor Device)
[    0.081074] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.081081] ACPI: Added _OSI(Processor Aggregator Device)
[    0.082870] ACPI: EC: Look up EC in DSDT
[    0.086910] [Firmware Bug]: ACPI: BIOS _OSI(Linux) query ignored
[    0.087976] ACPI: Interpreter enabled
[    0.087991] ACPI: (supports S0 S3 S4 S5)
[    0.088036] ACPI: Using IOAPIC for interrupt routing
[    0.137601] ACPI: EC: GPE = 0x19, I/O: command/status = 0x66, data = 0x62
[    0.137843] ACPI: No dock devices found.
[    0.137850] HEST: Table not found.
[    0.137860] PCI: Ignoring host bridge windows from ACPI; if necessary, use "pci=use_crs" and report a bug
[    0.138270] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    0.139047] pci_root PNP0A08:00: host bridge window [io  0x0000-0x0cf7] (ignored)
[    0.139052] pci_root PNP0A08:00: host bridge window [io  0x0d00-0xffff] (ignored)
[    0.139057] pci_root PNP0A08:00: host bridge window [mem 0x000a0000-0x000bffff] (ignored)
[    0.139062] pci_root PNP0A08:00: host bridge window [mem 0x000d0000-0x000d3fff] (ignored)
[    0.139066] pci_root PNP0A08:00: host bridge window [mem 0x000d4000-0x000d7fff] (ignored)
[    0.139071] pci_root PNP0A08:00: host bridge window [mem 0x000d8000-0x000dbfff] (ignored)
[    0.139075] pci_root PNP0A08:00: host bridge window [mem 0x000dc000-0x000dffff] (ignored)
[    0.139081] pci_root PNP0A08:00: host bridge window [mem 0x80000000-0xfebfffff] (ignored)
[    0.139097] pci 0000:00:00.0: [8086:27a0] type 0 class 0x000600
[    0.139158] pci 0000:00:02.0: [8086:27a2] type 0 class 0x000300
[    0.139174] pci 0000:00:02.0: reg 10: [mem 0xd0100000-0xd017ffff]
[    0.139183] pci 0000:00:02.0: reg 14: [io  0x1800-0x1807]
[    0.139192] pci 0000:00:02.0: reg 18: [mem 0xc0000000-0xcfffffff pref]
[    0.139202] pci 0000:00:02.0: reg 1c: [mem 0xd0200000-0xd023ffff]
[    0.139250] pci 0000:00:02.1: [8086:27a6] type 0 class 0x000380
[    0.139263] pci 0000:00:02.1: reg 10: [mem 0xd0180000-0xd01fffff]
[    0.139381] pci 0000:00:1b.0: [8086:27d8] type 0 class 0x000403
[    0.139408] pci 0000:00:1b.0: reg 10: [mem 0xd0240000-0xd0243fff 64bit]
[    0.139499] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.139507] pci 0000:00:1b.0: PME# disabled
[    0.139541] pci 0000:00:1c.0: [8086:27d0] type 1 class 0x000604
[    0.139636] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.139642] pci 0000:00:1c.0: PME# disabled
[    0.139680] pci 0000:00:1c.1: [8086:27d2] type 1 class 0x000604
[    0.139773] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.139780] pci 0000:00:1c.1: PME# disabled
[    0.139817] pci 0000:00:1c.2: [8086:27d4] type 1 class 0x000604
[    0.139911] pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
[    0.139918] pci 0000:00:1c.2: PME# disabled
[    0.139954] pci 0000:00:1c.3: [8086:27d6] type 1 class 0x000604
[    0.140059] pci 0000:00:1c.3: PME# supported from D0 D3hot D3cold
[    0.140066] pci 0000:00:1c.3: PME# disabled
[    0.140104] pci 0000:00:1d.0: [8086:27c8] type 0 class 0x000c03
[    0.140167] pci 0000:00:1d.0: reg 20: [io  0x1820-0x183f]
[    0.140212] pci 0000:00:1d.1: [8086:27c9] type 0 class 0x000c03
[    0.140275] pci 0000:00:1d.1: reg 20: [io  0x1840-0x185f]
[    0.140320] pci 0000:00:1d.2: [8086:27ca] type 0 class 0x000c03
[    0.140382] pci 0000:00:1d.2: reg 20: [io  0x1860-0x187f]
[    0.140427] pci 0000:00:1d.3: [8086:27cb] type 0 class 0x000c03
[    0.140489] pci 0000:00:1d.3: reg 20: [io  0x1880-0x189f]
[    0.140547] pci 0000:00:1d.7: [8086:27cc] type 0 class 0x000c03
[    0.140576] pci 0000:00:1d.7: reg 10: [mem 0xd0444000-0xd04443ff]
[    0.140674] pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
[    0.140681] pci 0000:00:1d.7: PME# disabled
[    0.140711] pci 0000:00:1e.0: [8086:2448] type 1 class 0x000604
[    0.140806] pci 0000:00:1f.0: [8086:27b9] type 0 class 0x000601
[    0.140929] pci 0000:00:1f.0: quirk: [io  0x1000-0x107f] claimed by ICH6 ACPI/GPIO/TCO
[    0.140945] pci 0000:00:1f.0: quirk: [io  0x1180-0x11bf] claimed by ICH6 GPIO
[    0.140957] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 1 PIO at 0230 (mask 000f)
[    0.140970] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 2 PIO at ff20 (mask 000f)
[    0.141027] pci 0000:00:1f.1: [8086:27df] type 0 class 0x000101
[    0.141047] pci 0000:00:1f.1: reg 10: [io  0x0000-0x0007]
[    0.141062] pci 0000:00:1f.1: reg 14: [io  0x0000-0x0003]
[    0.141076] pci 0000:00:1f.1: reg 18: [io  0x0000-0x0007]
[    0.141091] pci 0000:00:1f.1: reg 1c: [io  0x0000-0x0003]
[    0.141105] pci 0000:00:1f.1: reg 20: [io  0x1810-0x181f]
[    0.141156] pci 0000:00:1f.3: [8086:27da] type 0 class 0x000c05
[    0.141236] pci 0000:00:1f.3: reg 20: [io  0x18a0-0x18bf]
[    0.141353] pci 0000:00:1c.0: PCI bridge to [bus 02-02]
[    0.141439] pci 0000:00:1c.1: PCI bridge to [bus 03-03]
[    0.141525] pci 0000:00:1c.2: PCI bridge to [bus 04-04]
[    0.141609] pci 0000:00:1c.3: PCI bridge to [bus 05-05]
[    0.141678] pci 0000:06:01.0: [14e4:170c] type 0 class 0x000200
[    0.141704] pci 0000:06:01.0: reg 10: [mem 0xd0000000-0xd0001fff]
[    0.141794] pci 0000:06:01.0: supports D1 D2
[    0.141798] pci 0000:06:01.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.141805] pci 0000:06:01.0: PME# disabled
[    0.141825] pci 0000:06:02.0: [14e4:4318] type 0 class 0x000280
[    0.141845] pci 0000:06:02.0: reg 10: [mem 0xd0002000-0xd0003fff]
[    0.141943] pci 0000:06:04.0: [1524:1412] type 2 class 0x000607
[    0.141972] pci 0000:06:04.0: reg 10: [mem 0xd0004000-0xd0004fff]
[    0.142003] pci 0000:06:04.0: supports D1 D2
[    0.142007] pci 0000:06:04.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.142015] pci 0000:06:04.0: PME# disabled
[    0.142043] pci 0000:06:04.1: [1524:0530] type 0 class 0x000501
[    0.142072] pci 0000:06:04.1: reg 10: [mem 0xd0005000-0xd000507f]
[    0.142183] pci 0000:06:04.1: supports D1 D2
[    0.142187] pci 0000:06:04.1: PME# supported from D0 D1 D2 D3hot
[    0.142194] pci 0000:06:04.1: PME# disabled
[    0.142222] pci 0000:06:04.2: [1524:0550] type 0 class 0x000805
[    0.142252] pci 0000:06:04.2: reg 10: [mem 0xd0005400-0xd00054ff]
[    0.142363] pci 0000:06:04.2: supports D1 D2
[    0.142366] pci 0000:06:04.2: PME# supported from D0 D1 D2 D3hot
[    0.142374] pci 0000:06:04.2: PME# disabled
[    0.142406] pci 0000:06:04.3: [1524:0520] type 0 class 0x000501
[    0.142435] pci 0000:06:04.3: reg 10: [mem 0xd0005800-0xd000587f]
[    0.142547] pci 0000:06:04.3: supports D1 D2
[    0.142550] pci 0000:06:04.3: PME# supported from D0 D1 D2 D3hot
[    0.142558] pci 0000:06:04.3: PME# disabled
[    0.142586] pci 0000:06:04.4: [1524:0551] type 0 class 0x000501
[    0.142615] pci 0000:06:04.4: reg 10: [mem 0x00000000-0x000000ff]
[    0.142726] pci 0000:06:04.4: supports D1 D2
[    0.142729] pci 0000:06:04.4: PME# supported from D0 D1 D2 D3hot
[    0.142737] pci 0000:06:04.4: PME# disabled
[    0.142808] pci 0000:00:1e.0: PCI bridge to [bus 06-07] (subtractive decode)
[    0.142823] pci 0000:00:1e.0:   bridge window [mem 0xd0000000-0xd00fffff]
[    0.142834] pci 0000:00:1e.0:   bridge window [io  0x0000-0xffff] (subtractive decode)
[    0.142839] pci 0000:00:1e.0:   bridge window [mem 0x00000000-0xffffffff] (subtractive decode)
[    0.142898] pci_bus 0000:07: [bus 07-0a] partially hidden behind transparent bridge 0000:06 [bus 06-07]
[    0.142945] pci_bus 0000:00: on NUMA node 0
[    0.142950] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    0.143184] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
[    0.143255] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
[    0.143325] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
[    0.143394] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP04._PRT]
[    0.143490] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PCIB._PRT]
[    0.143611]  pci0000:00: Requesting ACPI _OSC control (0x1d)
[    0.143622]  pci0000:00: ACPI _OSC request failed (AE_NOT_FOUND), returned control mask: 0x1d
[    0.143632] ACPI _OSC control for PCIe not granted, disabling ASPM
[    0.148910] ACPI: PCI Interrupt Link [LNKA] (IRQs 1 5 *6 10 12 14 15)
[    0.148991] ACPI: PCI Interrupt Link [LNKB] (IRQs 1 5 6 *11 12 14 15)
[    0.149067] ACPI: PCI Interrupt Link [LNKC] (IRQs 1 5 6 10 12 14 15) *11
[    0.149144] ACPI: PCI Interrupt Link [LNKD] (IRQs 1 5 6 11 12 14 15) *10
[    0.149220] ACPI: PCI Interrupt Link [LNKE] (IRQs 1 5 6 10 12 14 15) *0, disabled.
[    0.149299] ACPI: PCI Interrupt Link [LNKF] (IRQs 1 5 6 11 12 14 15) *10
[    0.149375] ACPI: PCI Interrupt Link [LNKG] (IRQs 1 5 6 *10 12 14 15)
[    0.149450] ACPI: PCI Interrupt Link [LNKH] (IRQs 1 *5 6 11 12 14 15)
[    0.149596] vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
[    0.149619] vgaarb: loaded
[    0.149624] vgaarb: bridge control possible 0000:00:02.0
[    0.149949] SCSI subsystem initialized
[    0.150023] libata version 3.00 loaded.
[    0.150093] usbcore: registered new interface driver usbfs
[    0.150116] usbcore: registered new interface driver hub
[    0.150156] usbcore: registered new device driver usb
[    0.150283] PCI: Using ACPI for IRQ routing
[    0.161871] PCI: pci_cache_line_size set to 64 bytes
[    0.161994] reserve RAM buffer: 000000000009f800 - 000000000009ffff 
[    0.161998] reserve RAM buffer: 000000007f680000 - 000000007fffffff 
[    0.162145] NetLabel: Initializing
[    0.162152] NetLabel:  domain hash size = 128
[    0.162158] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.162179] NetLabel:  unlabeled traffic allowed by default
[    0.162252] HPET: 3 timers in total, 0 timers will be used for per-cpu timer
[    0.162269] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    0.162280] hpet0: 3 comparators, 64-bit 14.318180 MHz counter
[    0.168064] Switching to clocksource hpet
[    0.171974] Switched to NOHz mode on CPU #0
[    0.178875] AppArmor: AppArmor Filesystem Enabled
[    0.178934] pnp: PnP ACPI init
[    0.178963] ACPI: bus type pnp registered
[    0.179435] pnp 00:00: [bus 00-ff]
[    0.179441] pnp 00:00: [io  0x0000-0x0cf7 window]
[    0.179445] pnp 00:00: [io  0x0cf8-0x0cff]
[    0.179448] pnp 00:00: [io  0x0d00-0xffff window]
[    0.179452] pnp 00:00: [mem 0x000a0000-0x000bffff window]
[    0.179457] pnp 00:00: [mem 0x000c0000-0x000c3fff window]
[    0.179461] pnp 00:00: [mem 0x000c4000-0x000c7fff window]
[    0.179465] pnp 00:00: [mem 0x000c8000-0x000cbfff window]
[    0.179469] pnp 00:00: [mem 0x000cc000-0x000cffff window]
[    0.179473] pnp 00:00: [mem 0x000d0000-0x000d3fff window]
[    0.179476] pnp 00:00: [mem 0x000d4000-0x000d7fff window]
[    0.179480] pnp 00:00: [mem 0x000d8000-0x000dbfff window]
[    0.179484] pnp 00:00: [mem 0x000dc000-0x000dffff window]
[    0.179488] pnp 00:00: [mem 0x000e0000-0x000e3fff window]
[    0.179492] pnp 00:00: [mem 0x000e4000-0x000e7fff window]
[    0.179496] pnp 00:00: [mem 0x000e8000-0x000ebfff window]
[    0.179500] pnp 00:00: [mem 0x000ec000-0x000effff window]
[    0.179504] pnp 00:00: [mem 0x000f0000-0x000fffff window]
[    0.179509] pnp 00:00: [mem 0x80000000-0xfebfffff window]
[    0.179513] pnp 00:00: [mem 0xfed40000-0xfed44fff window]
[    0.179620] pnp 00:00: Plug and Play ACPI device, IDs PNP0a08 PNP0a03 (active)
[    0.179639] pnp 00:01: [mem 0xe0000000-0xefffffff]
[    0.179643] pnp 00:01: [mem 0xfed14000-0xfed17fff]
[    0.179646] pnp 00:01: [mem 0xfed18000-0xfed18fff]
[    0.179650] pnp 00:01: [mem 0xfed19000-0xfed19fff]
[    0.179654] pnp 00:01: [mem 0xfed1c000-0xfed1ffff]
[    0.179657] pnp 00:01: [mem 0xfed20000-0xfed3ffff]
[    0.179735] system 00:01: [mem 0xe0000000-0xefffffff] has been reserved
[    0.179746] system 00:01: [mem 0xfed14000-0xfed17fff] has been reserved
[    0.179756] system 00:01: [mem 0xfed18000-0xfed18fff] has been reserved
[    0.179765] system 00:01: [mem 0xfed19000-0xfed19fff] has been reserved
[    0.179774] system 00:01: [mem 0xfed1c000-0xfed1ffff] has been reserved
[    0.179784] system 00:01: [mem 0xfed20000-0xfed3ffff] has been reserved
[    0.179794] system 00:01: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.200041] pnp 00:02: [io  0x0000-0x001f]
[    0.200045] pnp 00:02: [io  0x0081-0x0091]
[    0.200049] pnp 00:02: [io  0x0093-0x009f]
[    0.200052] pnp 00:02: [io  0x00c0-0x00df]
[    0.200056] pnp 00:02: [dma 4]
[    0.200116] pnp 00:02: Plug and Play ACPI device, IDs PNP0200 (active)
[    0.200130] pnp 00:03: [mem 0xff000000-0xffffffff]
[    0.200184] pnp 00:03: Plug and Play ACPI device, IDs INT0800 (active)
[    0.200286] pnp 00:04: [mem 0xfed00000-0xfed003ff]
[    0.200366] system 00:04: [mem 0xfed00000-0xfed003ff] has been reserved
[    0.200378] system 00:04: Plug and Play ACPI device, IDs PNP0103 PNP0c01 (active)
[    0.200395] pnp 00:05: [io  0x00f0]
[    0.200411] pnp 00:05: [irq 13]
[    0.200474] pnp 00:05: Plug and Play ACPI device, IDs PNP0c04 (active)
[    0.200509] pnp 00:06: [io  0x002e-0x002f]
[    0.200513] pnp 00:06: [io  0x004e-0x004f]
[    0.200516] pnp 00:06: [io  0x0061]
[    0.200519] pnp 00:06: [io  0x0063]
[    0.200523] pnp 00:06: [io  0x0065]
[    0.200526] pnp 00:06: [io  0x0067]
[    0.200529] pnp 00:06: [io  0x0070]
[    0.200532] pnp 00:06: [io  0x0080]
[    0.200535] pnp 00:06: [io  0x0092]
[    0.200539] pnp 00:06: [io  0x00b2-0x00b3]
[    0.200542] pnp 00:06: [io  0x0800-0x080f]
[    0.200546] pnp 00:06: [io  0x1000-0x107f]
[    0.200549] pnp 00:06: [io  0x1180-0x11bf]
[    0.200553] pnp 00:06: [io  0x1640-0x164f]
[    0.200556] pnp 00:06: [io  0xfe00-0xfefe]
[    0.200560] pnp 00:06: [io  0xff2c-0xff2f]
[    0.200649] system 00:06: [io  0x0800-0x080f] has been reserved
[    0.200658] system 00:06: [io  0x1000-0x107f] has been reserved
[    0.200667] system 00:06: [io  0x1180-0x11bf] has been reserved
[    0.200676] system 00:06: [io  0x1640-0x164f] has been reserved
[    0.200684] system 00:06: [io  0xfe00-0xfefe] has been reserved
[    0.200693] system 00:06: [io  0xff2c-0xff2f] has been reserved
[    0.200703] system 00:06: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.200717] pnp 00:07: [io  0x0070-0x0077]
[    0.200725] pnp 00:07: [irq 8]
[    0.200782] pnp 00:07: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.200798] pnp 00:08: [io  0x0060]
[    0.200806] pnp 00:08: [io  0x0064]
[    0.200814] pnp 00:08: [irq 1]
[    0.200871] pnp 00:08: Plug and Play ACPI device, IDs PNP0303 (active)
[    0.200933] pnp 00:09: [irq 12]
[    0.200997] pnp 00:09: Plug and Play ACPI device, IDs SYN0703 SYN0700 SYN0002 PNP0f13 (active)
[    0.201051] pnp: PnP ACPI: found 10 devices
[    0.201059] ACPI: ACPI bus type pnp unregistered
[    0.201067] PnPBIOS: Disabled by ACPI PNP
[    0.238374] PCI: max bus depth: 2 pci_try_num: 3
[    0.238455] pci 0000:00:1e.0: BAR 15: assigned [mem 0x80000000-0x83ffffff pref]
[    0.238470] pci 0000:00:1e.0: BAR 13: assigned [io  0x2000-0x2fff]
[    0.238480] pci 0000:00:1c.3: BAR 14: assigned [mem 0x84000000-0x841fffff]
[    0.238491] pci 0000:00:1c.3: BAR 15: assigned [mem 0x84200000-0x843fffff 64bit pref]
[    0.238503] pci 0000:00:1c.3: BAR 13: assigned [io  0x3000-0x3fff]
[    0.238513] pci 0000:00:1c.2: BAR 14: assigned [mem 0x84400000-0x845fffff]
[    0.238523] pci 0000:00:1c.2: BAR 15: assigned [mem 0x84600000-0x847fffff 64bit pref]
[    0.238535] pci 0000:00:1c.2: BAR 13: assigned [io  0x4000-0x4fff]
[    0.238545] pci 0000:00:1c.1: BAR 14: assigned [mem 0x84800000-0x849fffff]
[    0.238555] pci 0000:00:1c.1: BAR 15: assigned [mem 0x84a00000-0x84bfffff 64bit pref]
[    0.238567] pci 0000:00:1c.1: BAR 13: assigned [io  0x5000-0x5fff]
[    0.238577] pci 0000:00:1c.0: BAR 14: assigned [mem 0x84c00000-0x84dfffff]
[    0.238587] pci 0000:00:1c.0: BAR 15: assigned [mem 0x84e00000-0x84ffffff 64bit pref]
[    0.238599] pci 0000:00:1c.0: BAR 13: assigned [io  0x6000-0x6fff]
[    0.238609] pci 0000:00:1c.0: PCI bridge to [bus 02-02]
[    0.238619] pci 0000:00:1c.0:   bridge window [io  0x6000-0x6fff]
[    0.238632] pci 0000:00:1c.0:   bridge window [mem 0x84c00000-0x84dfffff]
[    0.238644] pci 0000:00:1c.0:   bridge window [mem 0x84e00000-0x84ffffff 64bit pref]
[    0.238661] pci 0000:00:1c.1: PCI bridge to [bus 03-03]
[    0.238670] pci 0000:00:1c.1:   bridge window [io  0x5000-0x5fff]
[    0.238683] pci 0000:00:1c.1:   bridge window [mem 0x84800000-0x849fffff]
[    0.238695] pci 0000:00:1c.1:   bridge window [mem 0x84a00000-0x84bfffff 64bit pref]
[    0.238711] pci 0000:00:1c.2: PCI bridge to [bus 04-04]
[    0.238720] pci 0000:00:1c.2:   bridge window [io  0x4000-0x4fff]
[    0.238733] pci 0000:00:1c.2:   bridge window [mem 0x84400000-0x845fffff]
[    0.238745] pci 0000:00:1c.2:   bridge window [mem 0x84600000-0x847fffff 64bit pref]
[    0.238762] pci 0000:00:1c.3: PCI bridge to [bus 05-05]
[    0.238771] pci 0000:00:1c.3:   bridge window [io  0x3000-0x3fff]
[    0.238784] pci 0000:00:1c.3:   bridge window [mem 0x84000000-0x841fffff]
[    0.238796] pci 0000:00:1c.3:   bridge window [mem 0x84200000-0x843fffff 64bit pref]
[    0.238815] pci 0000:06:04.4: BAR 0: assigned [mem 0xd0005100-0xd00051ff]
[    0.238829] pci 0000:06:04.4: BAR 0: set to [mem 0xd0005100-0xd00051ff] (PCI address [0xd0005100-0xd00051ff])
[    0.238843] pci 0000:06:04.0: BAR 16: assigned [mem 0x88000000-0x8bffffff]
[    0.238853] pci 0000:06:04.0: BAR 15: assigned [mem 0x80000000-0x83ffffff pref]
[    0.238863] pci 0000:06:04.0: BAR 14: assigned [io  0x2000-0x20ff]
[    0.238872] pci 0000:06:04.0: BAR 13: assigned [io  0x2400-0x24ff]
[    0.238880] pci 0000:06:04.0: CardBus bridge to [bus 07-0a]
[    0.238888] pci 0000:06:04.0:   bridge window [io  0x2400-0x24ff]
[    0.238901] pci 0000:06:04.0:   bridge window [io  0x2000-0x20ff]
[    0.238913] pci 0000:06:04.0:   bridge window [mem 0x80000000-0x83ffffff pref]
[    0.238928] pci 0000:06:04.0:   bridge window [mem 0x88000000-0x8bffffff]
[    0.238940] pci 0000:00:1e.0: PCI bridge to [bus 06-07]
[    0.238949] pci 0000:00:1e.0:   bridge window [io  0x2000-0x2fff]
[    0.238962] pci 0000:00:1e.0:   bridge window [mem 0xd0000000-0xd00fffff]
[    0.238974] pci 0000:00:1e.0:   bridge window [mem 0x80000000-0x83ffffff pref]
[    0.238997] pci 0000:00:1c.0: enabling device (0100 -> 0103)
[    0.239020] pci 0000:00:1c.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
[    0.239035] pci 0000:00:1c.0: setting latency timer to 64
[    0.239050] pci 0000:00:1c.1: PCI INT B -> GSI 16 (level, low) -> IRQ 16
[    0.239061] pci 0000:00:1c.1: setting latency timer to 64
[    0.239076] pci 0000:00:1c.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    0.239087] pci 0000:00:1c.2: setting latency timer to 64
[    0.239101] pci 0000:00:1c.3: PCI INT D -> GSI 19 (level, low) -> IRQ 19
[    0.239113] pci 0000:00:1c.3: setting latency timer to 64
[    0.239121] pci 0000:00:1e.0: enabling device (0004 -> 0007)
[    0.239133] pci 0000:00:1e.0: setting latency timer to 64
[    0.239144] pci 0000:06:04.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    0.239159] pci_bus 0000:00: resource 0 [io  0x0000-0xffff]
[    0.239163] pci_bus 0000:00: resource 1 [mem 0x00000000-0xffffffff]
[    0.239167] pci_bus 0000:02: resource 0 [io  0x6000-0x6fff]
[    0.239172] pci_bus 0000:02: resource 1 [mem 0x84c00000-0x84dfffff]
[    0.239176] pci_bus 0000:02: resource 2 [mem 0x84e00000-0x84ffffff 64bit pref]
[    0.239181] pci_bus 0000:03: resource 0 [io  0x5000-0x5fff]
[    0.239185] pci_bus 0000:03: resource 1 [mem 0x84800000-0x849fffff]
[    0.239189] pci_bus 0000:03: resource 2 [mem 0x84a00000-0x84bfffff 64bit pref]
[    0.239194] pci_bus 0000:04: resource 0 [io  0x4000-0x4fff]
[    0.239198] pci_bus 0000:04: resource 1 [mem 0x84400000-0x845fffff]
[    0.239202] pci_bus 0000:04: resource 2 [mem 0x84600000-0x847fffff 64bit pref]
[    0.239206] pci_bus 0000:05: resource 0 [io  0x3000-0x3fff]
[    0.239210] pci_bus 0000:05: resource 1 [mem 0x84000000-0x841fffff]
[    0.239215] pci_bus 0000:05: resource 2 [mem 0x84200000-0x843fffff 64bit pref]
[    0.239219] pci_bus 0000:06: resource 0 [io  0x2000-0x2fff]
[    0.239223] pci_bus 0000:06: resource 1 [mem 0xd0000000-0xd00fffff]
[    0.239228] pci_bus 0000:06: resource 2 [mem 0x80000000-0x83ffffff pref]
[    0.239232] pci_bus 0000:06: resource 4 [io  0x0000-0xffff]
[    0.239236] pci_bus 0000:06: resource 5 [mem 0x00000000-0xffffffff]
[    0.239241] pci_bus 0000:07: resource 0 [io  0x2400-0x24ff]
[    0.239244] pci_bus 0000:07: resource 1 [io  0x2000-0x20ff]
[    0.239249] pci_bus 0000:07: resource 2 [mem 0x80000000-0x83ffffff pref]
[    0.239253] pci_bus 0000:07: resource 3 [mem 0x88000000-0x8bffffff]
[    0.239309] NET: Registered protocol family 2
[    0.239409] IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.239722] TCP established hash table entries: 131072 (order: 8, 1048576 bytes)
[    0.240650] TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
[    0.241147] TCP: Hash tables configured (established 131072 bind 65536)
[    0.241159] TCP reno registered
[    0.241168] UDP hash table entries: 512 (order: 2, 16384 bytes)
[    0.241192] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
[    0.241347] NET: Registered protocol family 1
[    0.241381] pci 0000:00:02.0: Boot video device
[    0.241532] PCI: CLS mismatch (64 != 32), using 64 bytes
[    0.241617] Trying to unpack rootfs image as initramfs...
[    0.733568] Freeing initrd memory: 13424k freed
[    0.742806] Simple Boot Flag at 0x36 set to 0x1
[    0.743331] audit: initializing netlink socket (disabled)
[    0.743357] type=2000 audit(1332873482.736:1): initialized
[    0.786759] highmem bounce pool size: 64 pages
[    0.786777] HugeTLB registered 4 MB page size, pre-allocated 0 pages
[    0.799635] VFS: Disk quotas dquot_6.5.2
[    0.799749] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    0.800822] fuse init (API version 7.17)
[    0.800974] msgmni has been set to 1706
[    0.801432] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
[    0.801474] io scheduler noop registered
[    0.801482] io scheduler deadline registered
[    0.801508] io scheduler cfq registered (default)
[    0.801684] pcieport 0000:00:1c.0: setting latency timer to 64
[    0.801756] pcieport 0000:00:1c.0: irq 40 for MSI/MSI-X
[    0.801853] pcieport 0000:00:1c.1: setting latency timer to 64
[    0.801914] pcieport 0000:00:1c.1: irq 41 for MSI/MSI-X
[    0.802005] pcieport 0000:00:1c.2: setting latency timer to 64
[    0.802066] pcieport 0000:00:1c.2: irq 42 for MSI/MSI-X
[    0.802169] pcieport 0000:00:1c.3: setting latency timer to 64
[    0.802230] pcieport 0000:00:1c.3: irq 43 for MSI/MSI-X
[    0.802352] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    0.802393] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    0.802470] intel_idle: MWAIT substates: 0x1110
[    0.802473] intel_idle: does not run on family 6 model 14
[    0.804041] ACPI: Deprecated procfs I/F for AC is loaded, please retry with CONFIG_ACPI_PROCFS_POWER cleared
[    0.808946] ACPI: EC: GPE storm detected, transactions will use polling mode
[    0.809094] ACPI: AC Adapter [ACAD] (on-line)
[    0.809229] input: Lid Switch as /devices/LNXSYSTM:00/device:00/PNP0C0D:00/input/input0
[    0.809264] ACPI: Lid Switch [LID]
[    0.809333] input: Sleep Button as /devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/input1
[    0.809347] ACPI: Sleep Button [SLPB]
[    0.809409] input: Power Button as /devices/LNXSYSTM:00/device:00/PNP0C0C:00/input/input2
[    0.809422] ACPI: Power Button [PWRB]
[    0.809500] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input3
[    0.809512] ACPI: Power Button [PWRF]
[    0.809552] ACPI: acpi_idle registered with cpuidle
[    0.840099] Marking TSC unstable due to TSC halts in idle
[    0.908052] thermal LNXTHERM:00: registered as thermal_zone0
[    0.908062] ACPI: Thermal Zone [TZ00] (44 C)
[    0.940051] thermal LNXTHERM:01: registered as thermal_zone1
[    0.940060] ACPI: Thermal Zone [TZ01] (44 C)
[    0.940083] ERST: Table is not found!
[    0.940134] isapnp: Scanning for PnP cards...
[    1.294392] isapnp: No Plug & Play device found
[    1.294512] Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
[    1.916151] ACPI: Deprecated procfs I/F for battery is loaded, please retry with CONFIG_ACPI_PROCFS_POWER cleared
[    1.916171] ACPI: Battery Slot [BAT1] (battery present)
[    1.916296] Linux agpgart interface v0.103
[    1.916392] agpgart-intel 0000:00:00.0: Intel 945GM Chipset
[    1.916455] agpgart-intel 0000:00:00.0: detected gtt size: 262144K total, 262144K mappable
[    1.916662] agpgart-intel 0000:00:00.0: detected 8192K stolen memory
[    1.916862] agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xc0000000
[    1.918791] brd: module loaded
[    1.919800] loop: module loaded
[    1.920061] ata_piix 0000:00:1f.1: version 2.13
[    1.920082] ata_piix 0000:00:1f.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    1.920142] ata_piix 0000:00:1f.1: setting latency timer to 64
[    1.920548] scsi0 : ata_piix
[    1.920667] scsi1 : ata_piix
[    1.921254] ata1: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0x1810 irq 14
[    1.921265] ata2: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0x1818 irq 15
[    1.921799] Fixed MDIO Bus: probed
[    1.921841] PPP generic driver version 2.4.2
[    1.921960] tun: Universal TUN/TAP device driver, 1.6
[    1.921969] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    1.922122] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.922167] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    1.922194] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[    1.922199] ehci_hcd 0000:00:1d.7: EHCI Host Controller
[    1.922259] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1
[    1.922301] ehci_hcd 0000:00:1d.7: using broken periodic workaround
[    1.922321] ehci_hcd 0000:00:1d.7: debug port 1
[    1.926201] ehci_hcd 0000:00:1d.7: cache line size of 64 is not supported
[    1.926380] ata2: port disabled--ignoring
[    1.926419] ehci_hcd 0000:00:1d.7: irq 23, io mem 0xd0444000
[    1.940022] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
[    1.940243] hub 1-0:1.0: USB hub found
[    1.940255] hub 1-0:1.0: 8 ports detected
[    1.940365] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.940389] uhci_hcd: USB Universal Host Controller Interface driver
[    1.940440] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    1.940456] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[    1.940461] uhci_hcd 0000:00:1d.0: UHCI Host Controller
[    1.940524] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
[    1.940566] uhci_hcd 0000:00:1d.0: irq 23, io base 0x00001820
[    1.940743] hub 2-0:1.0: USB hub found
[    1.940754] hub 2-0:1.0: 2 ports detected
[    1.940837] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    1.940851] uhci_hcd 0000:00:1d.1: setting latency timer to 64
[    1.940856] uhci_hcd 0000:00:1d.1: UHCI Host Controller
[    1.940912] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3
[    1.940966] uhci_hcd 0000:00:1d.1: irq 19, io base 0x00001840
[    1.941139] hub 3-0:1.0: USB hub found
[    1.941149] hub 3-0:1.0: 2 ports detected
[    1.941234] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    1.941248] uhci_hcd 0000:00:1d.2: setting latency timer to 64
[    1.941254] uhci_hcd 0000:00:1d.2: UHCI Host Controller
[    1.941311] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4
[    1.941366] uhci_hcd 0000:00:1d.2: irq 18, io base 0x00001860
[    1.941544] hub 4-0:1.0: USB hub found
[    1.941554] hub 4-0:1.0: 2 ports detected
[    1.941634] uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) -> IRQ 16
[    1.941649] uhci_hcd 0000:00:1d.3: setting latency timer to 64
[    1.941655] uhci_hcd 0000:00:1d.3: UHCI Host Controller
[    1.941715] uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5
[    1.941767] uhci_hcd 0000:00:1d.3: irq 16, io base 0x00001880
[    1.941949] hub 5-0:1.0: USB hub found
[    1.941959] hub 5-0:1.0: 2 ports detected
[    1.942123] i8042: PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:MSS0] at 0x60,0x64 irq 1,12
[    1.943813] i8042: Detected active multiplexing controller, rev 1.1
[    1.943906] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.943919] serio: i8042 AUX0 port at 0x60,0x64 irq 12
[    1.943968] serio: i8042 AUX1 port at 0x60,0x64 irq 12
[    1.944035] serio: i8042 AUX2 port at 0x60,0x64 irq 12
[    1.944076] serio: i8042 AUX3 port at 0x60,0x64 irq 12
[    1.944244] mousedev: PS/2 mouse device common for all mice
[    1.944520] rtc_cmos 00:07: RTC can wake from S4
[    1.944671] rtc_cmos 00:07: rtc core: registered rtc_cmos as rtc0
[    1.944713] rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    1.944878] device-mapper: uevent: version 1.0.3
[    1.945019] device-mapper: ioctl: 4.21.0-ioctl (2011-07-06) initialised: dm-devel at redhat.com
[    1.945079] EISA: Probing bus 0 at eisa.0
[    1.945100] Cannot allocate resource for EISA slot 1
[    1.945108] Cannot allocate resource for EISA slot 2
[    1.945115] Cannot allocate resource for EISA slot 3
[    1.945122] Cannot allocate resource for EISA slot 4
[    1.945129] Cannot allocate resource for EISA slot 5
[    1.945136] Cannot allocate resource for EISA slot 6
[    1.945151] EISA: Detected 0 cards.
[    1.945169] cpufreq-nforce2: No nForce2 chipset.
[    1.945228] cpuidle: using governor ladder
[    1.945302] cpuidle: using governor menu
[    1.945309] EFI Variables Facility v0.08 2004-May-17
[    1.945682] TCP cubic registered
[    1.945886] NET: Registered protocol family 10
[    1.946694] NET: Registered protocol family 17
[    1.946740] Registering the dns_resolver key type
[    1.946773] Using IPI No-Shortcut mode
[    1.946908] PM: Hibernation image not present or could not be loaded.
[    1.946932] registered taskstats version 1
[    1.952313] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input4
[    1.961631]   Magic number: 4:501:646
[    1.961659] scsi_host host0: hash matches
[    1.961666] scsi host0: hash matches
[    1.961797] rtc_cmos 00:07: setting system clock to 2012-03-27 18:38:05 UTC (1332873485)
[    1.961831] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
[    1.961838] EDD information not available.
[    2.150245] ata1.00: ATA-7: WDC WD1200BEVE-00UYT0, 01.04A01, max UDMA/100
[    2.150257] ata1.00: 234441648 sectors, multi 16: LBA48 
[    2.150271] ata1.01: ATAPI: PHILIPS CD-RW/DVD-ROM SCB5265, TX07, max UDMA/33
[    2.165243] ata1.00: configured for UDMA/100
[    2.180293] ata1.01: configured for UDMA/33
[    2.180744] scsi 0:0:0:0: Direct-Access     ATA      WDC WD1200BEVE-0 01.0 PQ: 0 ANSI: 5
[    2.181011] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    2.181491] sd 0:0:0:0: [sda] 234441648 512-byte logical blocks: (120 GB/111 GiB)
[    2.181869] scsi 0:0:1:0: CD-ROM            PHILIPS  CDRW/DVD SCB5265 TX07 PQ: 0 ANSI: 5
[    2.185358] sd 0:0:0:0: [sda] Write Protect is off
[    2.185368] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    2.185385] sr0: scsi3-mmc drive: 4x/24x writer cd/rw xa/form2 cdda tray
[    2.185394] cdrom: Uniform CD-ROM driver Revision: 3.20
[    2.185570] sr 0:0:1:0: Attached scsi CD-ROM sr0
[    2.185652] sr 0:0:1:0: Attached scsi generic sg1 type 5
[    2.185748] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    2.215650]  sda: sda1 sda2 sda3 sda4
[    2.216113] sd 0:0:0:0: [sda] Attached SCSI disk
[    2.216166] Freeing unused kernel memory: 704k freed
[    2.216502] Write protecting the kernel text: 5364k
[    2.216563] Write protecting the kernel read-only data: 2192k
[    2.242336] udevd[81]: starting version 173
[    2.492078] usb 4-1: new low speed USB device number 2 using uhci_hcd
[    2.526463] b43-pci-bridge 0000:06:02.0: enabling device (0000 -> 0002)
[    2.526501] b43-pci-bridge 0000:06:02.0: PCI INT A -> GSI 22 (level, low) -> IRQ 22
[    2.526523] b43-pci-bridge 0000:06:02.0: setting latency timer to 64
[    2.543248] sdhci: Secure Digital Host Controller Interface driver
[    2.543262] sdhci: Copyright(c) Pierre Ossman
[    2.556210] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x0D, vendor 0x4243)
[    2.556227] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x09, vendor 0x4243)
[    2.556236] ssb: Core 2 found: PCI (cc 0x804, rev 0x0C, vendor 0x4243)
[    2.556246] ssb: Core 3 found: PCMCIA (cc 0x80D, rev 0x07, vendor 0x4243)
[    2.596144] ssb: Sonics Silicon Backplane found on PCI device 0000:06:02.0
[    2.596342] sdhci-pci 0000:06:04.2: SDHCI controller found [1524:0550] (rev 1)
[    2.596364] sdhci-pci 0000:06:04.2: enabling device (0000 -> 0002)
[    2.596381] sdhci-pci 0000:06:04.2: PCI INT B -> GSI 17 (level, low) -> IRQ 17
[    2.596447] mmc0: no vmmc regulator found
[    2.596487] Registered led device: mmc0::
[    2.596694] mmc0: SDHCI controller on PCI [0000:06:04.2] using PIO
[    2.596716] sdhci-pci 0000:06:04.4: SDHCI controller found [1524:0551] (rev 1)
[    2.596735] sdhci-pci 0000:06:04.4: enabling device (0000 -> 0002)
[    2.596748] sdhci-pci 0000:06:04.4: PCI INT B -> GSI 17 (level, low) -> IRQ 17
[    2.596778] mmc1: no vmmc regulator found
[    2.596814] Registered led device: mmc1::
[    2.596867] mmc1: SDHCI controller on PCI [0000:06:04.4] using PIO
[    2.631800] b44 0000:06:01.0: PCI INT A -> GSI 21 (level, low) -> IRQ 21
[    2.631825] b44 0000:06:01.0: setting latency timer to 64
[    2.649066] ssb: Core 0 found: Fast Ethernet (cc 0x806, rev 0x07, vendor 0x4243)
[    2.649077] ssb: Core 1 found: V90 (cc 0x807, rev 0x03, vendor 0x4243)
[    2.649087] ssb: Core 2 found: PCI (cc 0x804, rev 0x0A, vendor 0x4243)
[    2.688243] ssb: Sonics Silicon Backplane found on PCI device 0000:06:01.0
[    2.688286] b44: Broadcom 44xx/47xx 10/100 PCI ethernet driver version 2.0
[    2.707116] input: NOVATEK USB Keyboard as /devices/pci0000:00/0000:00:1d.2/usb4/4-1/4-1:1.0/input/input5
[    2.707933] generic-usb 0003:0603:00F2.0001: input,hidraw0: USB HID v1.10 Keyboard [NOVATEK USB Keyboard] on usb-0000:00:1d.2-1/input0
[    2.709048] b44 ssb1:0: eth0: Broadcom 44xx/47xx 10/100 PCI ethernet driver 00:16:d4:4f:c3:3a
[    2.745258] input: NOVATEK USB Keyboard as /devices/pci0000:00/0000:00:1d.2/usb4/4-1/4-1:1.1/input/input6
[    2.745882] generic-usb 0003:0603:00F2.0002: input,hiddev0,hidraw1: USB HID v1.10 Device [NOVATEK USB Keyboard] on usb-0000:00:1d.2-1/input1
[    2.746118] usbcore: registered new interface driver usbhid
[    2.746128] usbhid: USB HID core driver
[    2.912085] usb 5-1: new low speed USB device number 2 using uhci_hcd
[    2.960950] EXT4-fs (sda3): mounted filesystem with ordered data mode. Opts: (null)
[    3.104907] input: Logitech Optical USB Mouse as /devices/pci0000:00/0000:00:1d.3/usb5/5-1/5-1:1.0/input/input7
[    3.105101] generic-usb 0003:046D:C016.0003: input,hidraw2: USB HID v1.10 Mouse [Logitech Optical USB Mouse] on usb-0000:00:1d.3-1/input0
[   17.719966] Adding 7906300k swap on /dev/sda2.  Priority:-1 extents:1 across:7906300k 
[   17.745135] udevd[396]: starting version 173
[   18.017905] lp: driver loaded but no devices found
[   18.039880] input: Video Bus as /devices/LNXSYSTM:00/device:00/PNP0A08:00/LNXVIDEO:01/input/input8
[   18.041334] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[   18.303743] wmi: Mapper loaded
[   18.481108] [drm] Initialized drm 1.1.0 20060810
[   18.488753] intel_rng: FWH not detected
[   18.519177] leds_ss4200: no LED devices found
[   18.760573] yenta_cardbus 0000:06:04.0: CardBus bridge found [1025:0090]
[   18.760602] yenta_cardbus 0000:06:04.0: Using CSCINT to route CSC interrupts to PCI
[   18.760607] yenta_cardbus 0000:06:04.0: Routing CardBus interrupts to PCI
[   18.760615] yenta_cardbus 0000:06:04.0: TI: mfunc 0x90501212, devctl 0x44
[   18.829391] cfg80211: Calling CRDA to update world regulatory domain
[   18.996852] yenta_cardbus 0000:06:04.0: ISA IRQ mask 0x0cf8, PCI irq 16
[   18.996859] yenta_cardbus 0000:06:04.0: Socket status: 30000006
[   18.996866] pci_bus 0000:06: Raising subordinate bus# of parent bus (#06) from #07 to #0a
[   18.996880] yenta_cardbus 0000:06:04.0: pcmcia: parent PCI bridge window: [io  0x2000-0x2fff]
[   18.996886] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x2000-0x2fff: excluding 0x2000-0x20ff 0x2400-0x24ff
[   19.123844] yenta_cardbus 0000:06:04.0: pcmcia: parent PCI bridge window: [mem 0xd0000000-0xd00fffff]
[   19.123852] pcmcia_socket pcmcia_socket0: cs: memory probe 0xd0000000-0xd00fffff: excluding 0xd0000000-0xd000ffff
[   19.123872] yenta_cardbus 0000:06:04.0: pcmcia: parent PCI bridge window: [mem 0x80000000-0x83ffffff pref]
[   19.123877] pcmcia_socket pcmcia_socket0: cs: memory probe 0x80000000-0x83ffffff: excluding 0x80000000-0x83ffffff
[   19.141815] i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[   19.141825] i915 0000:00:02.0: setting latency timer to 64
[   19.184344] [drm] Supports vblank timestamp caching Rev 1 (10.10.2010).
[   19.184350] [drm] Driver supports precise vblank timestamp query.
[   19.214918] vgaarb: device changed decodes: PCI:0000:00:02.0,olddecodes=io+mem,decodes=io+mem:owns=io+mem
[   19.434977] b43-phy0: Broadcom 4318 WLAN found (core revision 9)
[   19.516744] cfg80211: Updating information on frequency 2412 MHz for a 20 MHz width channel with regulatory rule:
[   19.516752] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516756] cfg80211: Updating information on frequency 2417 MHz for a 20 MHz width channel with regulatory rule:
[   19.516761] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516765] cfg80211: Updating information on frequency 2422 MHz for a 20 MHz width channel with regulatory rule:
[   19.516770] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516774] cfg80211: Updating information on frequency 2427 MHz for a 20 MHz width channel with regulatory rule:
[   19.516778] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516782] cfg80211: Updating information on frequency 2432 MHz for a 20 MHz width channel with regulatory rule:
[   19.516787] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516791] cfg80211: Updating information on frequency 2437 MHz for a 20 MHz width channel with regulatory rule:
[   19.516796] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516800] cfg80211: Updating information on frequency 2442 MHz for a 20 MHz width channel with regulatory rule:
[   19.516804] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516808] cfg80211: Updating information on frequency 2447 MHz for a 20 MHz width channel with regulatory rule:
[   19.516813] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516817] cfg80211: Updating information on frequency 2452 MHz for a 20 MHz width channel with regulatory rule:
[   19.516822] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516826] cfg80211: Updating information on frequency 2457 MHz for a 20 MHz width channel with regulatory rule:
[   19.516830] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516834] cfg80211: Updating information on frequency 2462 MHz for a 20 MHz width channel with regulatory rule:
[   19.516839] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516843] cfg80211: Updating information on frequency 2467 MHz for a 20 MHz width channel with regulatory rule:
[   19.516848] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516852] cfg80211: Updating information on frequency 2472 MHz for a 20 MHz width channel with regulatory rule:
[   19.516856] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.516860] cfg80211: Updating information on frequency 2484 MHz for a 20 MHz width channel with regulatory rule:
[   19.516865] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (600 mBi, 2000 mBm)
[   19.652220] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   19.653369] Registered led device: b43-phy0::tx
[   19.653437] Registered led device: b43-phy0::rx
[   19.653537] Registered led device: b43-phy0::radio
[   19.653595] Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]
[   19.745432] EXT4-fs (sda3): re-mounted. Opts: errors=remount-ro
[   19.994039] acer_wmi: Acer Laptop ACPI-WMI Extras
[   20.063181] Registered led device: acer-wmi::mail
[   20.069928] cfg80211: Updating information on frequency 2412 MHz for a 20 MHz width channel with regulatory rule:
[   20.069935] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.069940] cfg80211: Updating information on frequency 2417 MHz for a 20 MHz width channel with regulatory rule:
[   20.069945] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.069949] cfg80211: Updating information on frequency 2422 MHz for a 20 MHz width channel with regulatory rule:
[   20.069954] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.069958] cfg80211: Updating information on frequency 2427 MHz for a 20 MHz width channel with regulatory rule:
[   20.069962] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.069966] cfg80211: Updating information on frequency 2432 MHz for a 20 MHz width channel with regulatory rule:
[   20.069971] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.069975] cfg80211: Updating information on frequency 2437 MHz for a 20 MHz width channel with regulatory rule:
[   20.069980] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.070129] cfg80211: Updating information on frequency 2442 MHz for a 20 MHz width channel with regulatory rule:
[   20.070134] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.070138] cfg80211: Updating information on frequency 2447 MHz for a 20 MHz width channel with regulatory rule:
[   20.070143] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.070147] cfg80211: Updating information on frequency 2452 MHz for a 20 MHz width channel with regulatory rule:
[   20.070152] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.070156] cfg80211: Updating information on frequency 2457 MHz for a 20 MHz width channel with regulatory rule:
[   20.070160] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.070164] cfg80211: Updating information on frequency 2462 MHz for a 20 MHz width channel with regulatory rule:
[   20.070169] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.070173] cfg80211: Updating information on frequency 2467 MHz for a 20 MHz width channel with regulatory rule:
[   20.070178] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.070182] cfg80211: Updating information on frequency 2472 MHz for a 20 MHz width channel with regulatory rule:
[   20.070187] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.070191] cfg80211: Updating information on frequency 2484 MHz for a 20 MHz width channel with regulatory rule:
[   20.070195] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (300 mBi, 2000 mBm)
[   20.070201] cfg80211: World regulatory domain updated:
[   20.070204] cfg80211:     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[   20.070208] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   20.070213] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[   20.070217] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[   20.070222] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   20.070226] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   20.148881] [drm] initialized overlay support
[   20.240358] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x100-0x3af: excluding 0x170-0x177 0x1f0-0x1f7 0x370-0x377
[   20.242357] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x3e0-0x4ff: excluding 0x3f0-0x3f7 0x4d0-0x4d7
[   20.243178] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x820-0x8ff: clean.
[   20.243863] pcmcia_socket pcmcia_socket0: cs: IO port probe 0xc00-0xcf7: clean.
[   20.266328] pcmcia_socket pcmcia_socket0: cs: memory probe 0x0c0000-0x0fffff: excluding 0xc0000-0xc7fff 0xcc000-0xcffff 0xe0000-0xfffff
[   20.266408] pcmcia_socket pcmcia_socket0: cs: memory probe 0xa0000000-0xa0ffffff: clean.
[   20.266485] pcmcia_socket pcmcia_socket0: cs: memory probe 0x60000000-0x60ffffff: excluding 0x60000000-0x60ffffff
[   20.266562] pcmcia_socket pcmcia_socket0: cs: IO port probe 0xa00-0xaff: clean.
[   20.328861] EXT4-fs (sda1): mounted filesystem with ordered data mode. Opts: (null)
[   20.459989] type=1400 audit(1332873503.990:2): apparmor="STATUS" operation="profile_load" name="/sbin/dhclient" pid=532 comm="apparmor_parser"
[   20.480239] type=1400 audit(1332873504.014:3): apparmor="STATUS" operation="profile_load" name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=532 comm="apparmor_parser"
[   20.480461] type=1400 audit(1332873504.014:4): apparmor="STATUS" operation="profile_load" name="/usr/lib/connman/scripts/dhclient-script" pid=532 comm="apparmor_parser"
[   20.524252] fbcon: inteldrmfb (fb0) is primary device
[   20.608231] Console: switching to colour frame buffer device 128x48
[   20.613489] fb0: inteldrmfb frame buffer device
[   20.613492] drm: registered panic notifier
[   20.628112] [drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
[   20.628183] snd_hda_intel 0000:00:1b.0: PCI INT A -> GSI 22 (level, low) -> IRQ 22
[   20.628434] snd_hda_intel 0000:00:1b.0: irq 44 for MSI/MSI-X
[   20.628475] snd_hda_intel 0000:00:1b.0: setting latency timer to 64
[   20.630048] EXT4-fs (sda4): mounted filesystem with ordered data mode. Opts: (null)
[   20.891944] hda_codec: ALC883: SKU not ready 0x411111f0
[   20.920544] input: HDA Intel Headphone as /devices/pci0000:00/0000:00:1b.0/sound/card0/input9
[   21.224968] type=1400 audit(1332873504.758:5): apparmor="STATUS" operation="profile_replace" name="/sbin/dhclient" pid=626 comm="apparmor_parser"
[   21.225099] type=1400 audit(1332873504.758:6): apparmor="STATUS" operation="profile_replace" name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=626 comm="apparmor_parser"
[   21.225202] type=1400 audit(1332873504.758:7): apparmor="STATUS" operation="profile_replace" name="/usr/lib/connman/scripts/dhclient-script" pid=626 comm="apparmor_parser"
[   21.503528] ppdev: user-space parallel port driver
[   21.531341] init: failsafe main process (767) killed by TERM signal
[   22.557197] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   22.651068] b43-phy0 ERROR: Firmware file "b43/ucode5.fw" not found
[   22.651144] b43-phy0 ERROR: Firmware file "b43-open/ucode5.fw" not found
[   22.651214] b43-phy0 ERROR: You must go to http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and download the correct firmware for this driver version. Please carefully read all instructions on this website.
[   22.723641] type=1400 audit(1332873506.254:8): apparmor="STATUS" operation="profile_replace" name="/sbin/dhclient" pid=718 comm="apparmor_parser"
[   22.723769] type=1400 audit(1332873506.254:9): apparmor="STATUS" operation="profile_replace" name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=718 comm="apparmor_parser"
[   22.723873] type=1400 audit(1332873506.254:10): apparmor="STATUS" operation="profile_replace" name="/usr/lib/connman/scripts/dhclient-script" pid=718 comm="apparmor_parser"
[   22.800261] type=1400 audit(1332873506.334:11): apparmor="STATUS" operation="profile_load" name="/usr/lib/lightdm/lightdm-guest-session-wrapper" pid=855 comm="apparmor_parser"
[   25.816208] b44 ssb1:0: eth0: Link is up at 100 Mbps, full duplex
[   25.816215] b44 ssb1:0: eth0: Flow control is off for TX and off for RX
[   25.816549] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   34.344706] audit_printk_skb: 15 callbacks suppressed
[   34.344712] type=1400 audit(1332873517.878:17): apparmor="STATUS" operation="profile_load" name="/usr/bin/evince" pid=867 comm="apparmor_parser"
[   34.346401] type=1400 audit(1332873517.878:18): apparmor="STATUS" operation="profile_load" name="/usr/bin/evince-previewer" pid=867 comm="apparmor_parser"
[   34.347698] type=1400 audit(1332873517.878:19): apparmor="STATUS" operation="profile_load" name="/usr/bin/evince-thumbnailer" pid=867 comm="apparmor_parser"
[   34.998600] type=1400 audit(1332873518.530:20): apparmor="STATUS" operation="profile_load" name="/usr/lib/telepathy/mission-control-5" pid=927 comm="apparmor_parser"
[   34.999118] type=1400 audit(1332873518.530:21): apparmor="STATUS" operation="profile_load" name="/usr/lib/telepathy/telepathy-*" pid=927 comm="apparmor_parser"
[   35.865954] type=1400 audit(1332873519.398:22): apparmor="STATUS" operation="profile_replace" name="/usr/lib/cups/backend/cups-pdf" pid=928 comm="apparmor_parser"
[   35.866468] type=1400 audit(1332873519.398:23): apparmor="STATUS" operation="profile_replace" name="/usr/sbin/cupsd" pid=928 comm="apparmor_parser"
[   36.207073] type=1400 audit(1332873519.738:24): apparmor="STATUS" operation="profile_load" name="/usr/sbin/tcpdump" pid=930 comm="apparmor_parser"
[   36.406479] init: apport pre-start process (963) terminated with status 1
[   36.448026] eth0: no IPv6 routers present
[   36.488620] init: apport post-stop process (994) terminated with status 1
[   37.012269] Bluetooth: Core ver 2.16
[   37.012330] NET: Registered protocol family 31
[   37.012334] Bluetooth: HCI device and connection manager initialized
[   37.012338] Bluetooth: HCI socket layer initialized
[   37.012342] Bluetooth: L2CAP socket layer initialized
[   37.013373] Bluetooth: SCO socket layer initialized
[   37.047489] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   37.047495] Bluetooth: BNEP filters: protocol multicast
[   37.056063] Bluetooth: RFCOMM TTY layer initialized
[   37.056073] Bluetooth: RFCOMM socket layer initialized
[   37.056076] Bluetooth: RFCOMM ver 1.11
[   38.420683] EXT4-fs (sda3): re-mounted. Opts: errors=remount-ro,commit=0
[   38.432789] EXT4-fs (sda1): re-mounted. Opts: commit=0
[   38.513937] EXT4-fs (sda4): re-mounted. Opts: commit=0
[   38.719172] init: plymouth-stop pre-start process (1267) terminated with status 1
[   40.650492] EXT4-fs (sda3): re-mounted. Opts: errors=remount-ro,commit=0
[   40.915949] EXT4-fs (sda1): re-mounted. Opts: commit=0
[   41.144498] EXT4-fs (sda4): re-mounted. Opts: commit=0
