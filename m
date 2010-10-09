From: Paul Fertser <fercerpav@gmail.com>
Date: Sun, 10 Oct 2010 01:32:20 +0400
Subject: Issues with 14e4:4315 on "lenovo ideapad s9" - works only after wl
In-Reply-To: <AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
Message-ID: <20101009213220.GU1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, Oct 09, 2010 at 10:37:04PM +0200, G?bor Stefanik wrote:
> On Sat, Oct 9, 2010 at 8:36 PM, Paul Fertser <fercerpav@gmail.com> wrote:
> > On Sat, Oct 09, 2010 at 03:53:20PM +0400, Paul Fertser wrote:
> >> The card works as expected with the sta driver, and b43 handles it nicely
> >> after unloading wl and loading b43
> >
> > I'd expect lack of txpower adjustment for LP might very well be the cause for
> > this. The specs seem to be ready so probably implementing this part would not
> > be too hard.
> >
> > In case it might be of interest, ssb sprom contents attached.
> 
> Please run: dmesg | grep -i "fatal dma error"
> Chances are that you are seeing the PhoenixBIOS LP-PHY DMA bug.
> (Lenovo S10 is known for showing the same bug.)

Indeed there's a fatal dma error there in the non-working case (and switching
to PIO doesn't help). But it doesn't happen after wl. Both dmesgs attached.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
-------------- next part --------------
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Linux version 2.6.32-25-generic (buildd at rothera) (gcc version 4.4.3 (Ubuntu 4.4.3-4ubuntu5) ) #44-Ubuntu SMP Fri Sep 17 20:26:08 UTC 2010 (Ubuntu 2.6.32-25.44-generic 2.6.32.21+drm33.7)
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   NSC Geode by NSC
[    0.000000]   Cyrix CyrixInstead
[    0.000000]   Centaur CentaurHauls
[    0.000000]   Transmeta GenuineTMx86
[    0.000000]   Transmeta TransmetaCPU
[    0.000000]   UMC UMC UMC UMC
[    0.000000] Atom PSE erratum detected, BIOS microcode update recommended
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009f800 (usable)
[    0.000000]  BIOS-e820: 000000000009f800 - 00000000000a0000 (reserved)
[    0.000000]  BIOS-e820: 00000000000d2000 - 00000000000d4000 (reserved)
[    0.000000]  BIOS-e820: 00000000000dc000 - 0000000000100000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 000000003f6d0000 (usable)
[    0.000000]  BIOS-e820: 000000003f6d0000 - 000000003f6e2000 (ACPI data)
[    0.000000]  BIOS-e820: 000000003f6e2000 - 000000003f6e3000 (ACPI NVS)
[    0.000000]  BIOS-e820: 000000003f6e3000 - 0000000040000000 (reserved)
[    0.000000]  BIOS-e820: 00000000e0000000 - 00000000f0000000 (reserved)
[    0.000000]  BIOS-e820: 00000000fec00000 - 00000000fec10000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed00000 - 00000000fed00400 (reserved)
[    0.000000]  BIOS-e820: 00000000fed14000 - 00000000fed1a000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed1c000 - 00000000fed90000 (reserved)
[    0.000000]  BIOS-e820: 00000000fee00000 - 00000000fee01000 (reserved)
[    0.000000]  BIOS-e820: 00000000ff000000 - 0000000100000000 (reserved)
[    0.000000] DMI 2.5 present.
[    0.000000] last_pfn = 0x3f6d0 max_arch_pfn = 0x100000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-CFFFF write-protect
[    0.000000]   D0000-DFFFF uncachable
[    0.000000]   E0000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 000000000 mask 0C0000000 write-back
[    0.000000]   1 base 03F700000 mask 0FFF00000 uncachable
[    0.000000]   2 base 03F800000 mask 0FF800000 uncachable
[    0.000000]   3 disabled
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] e820 update range: 0000000000002000 - 0000000000006000 (usable) ==> (reserved)
[    0.000000] Scanning 1 areas for low memory corruption
[    0.000000] modified physical RAM map:
[    0.000000]  modified: 0000000000000000 - 0000000000002000 (usable)
[    0.000000]  modified: 0000000000002000 - 0000000000006000 (reserved)
[    0.000000]  modified: 0000000000006000 - 000000000009f800 (usable)
[    0.000000]  modified: 000000000009f800 - 00000000000a0000 (reserved)
[    0.000000]  modified: 00000000000d2000 - 00000000000d4000 (reserved)
[    0.000000]  modified: 00000000000dc000 - 0000000000100000 (reserved)
[    0.000000]  modified: 0000000000100000 - 000000003f6d0000 (usable)
[    0.000000]  modified: 000000003f6d0000 - 000000003f6e2000 (ACPI data)
[    0.000000]  modified: 000000003f6e2000 - 000000003f6e3000 (ACPI NVS)
[    0.000000]  modified: 000000003f6e3000 - 0000000040000000 (reserved)
[    0.000000]  modified: 00000000e0000000 - 00000000f0000000 (reserved)
[    0.000000]  modified: 00000000fec00000 - 00000000fec10000 (reserved)
[    0.000000]  modified: 00000000fed00000 - 00000000fed00400 (reserved)
[    0.000000]  modified: 00000000fed14000 - 00000000fed1a000 (reserved)
[    0.000000]  modified: 00000000fed1c000 - 00000000fed90000 (reserved)
[    0.000000]  modified: 00000000fee00000 - 00000000fee01000 (reserved)
[    0.000000]  modified: 00000000ff000000 - 0000000100000000 (reserved)
[    0.000000] initial memory mapped : 0 - 00c00000
[    0.000000] init_memory_mapping: 0000000000000000-00000000377fe000
[    0.000000] Using x86 segment limits to approximate NX protection
[    0.000000]  0000000000 - 00377fe000 page 4k
[    0.000000] kernel direct mapping tables up to 377fe000 @ 8e1000-9c2000
[    0.000000] RAMDISK: 2eccd000 - 2f95bcb6
[    0.000000] ACPI: RSDP 000f7a50 00024 (v02 PTLTD )
[    0.000000] ACPI: XSDT 3f6d9f76 00084 (v01 LENOVO CB-01    06040000  LTP 00000000)
[    0.000000] ACPI: FACP 3f6e1bd7 000F4 (v03 INTEL  CALISTGA 06040000 ALAN 00000001)
[    0.000000] ACPI: DSDT 3f6db178 069EB (v01 INTEL  CALISTGA 06040000 INTL 20061109)
[    0.000000] ACPI: FACS 3f6e2fc0 00040
[    0.000000] ACPI: HPET 3f6e1ccb 00038 (v01 INTEL  CALISTGA 06040000 LOHR 0000005A)
[    0.000000] ACPI: MCFG 3f6e1d03 0003C (v01 INTEL  CALISTGA 06040000 LOHR 0000005A)
[    0.000000] ACPI: TCPA 3f6e1d3f 00032 (v01 PTLTD  CALISTGA 06040000  PTL 00000001)
[    0.000000] ACPI: TMOR 3f6e1d71 00026 (v01 PTLTD           06040000 PTL  00000003)
[    0.000000] ACPI: APIC 3f6e1d97 00068 (v01 PTLTD  ? APIC   06040000  LTP 00000000)
[    0.000000] ACPI: BOOT 3f6e1dff 00028 (v01 PTLTD  $SBFTBL$ 06040000  LTP 00000001)
[    0.000000] ACPI: SLIC 3f6e1e27 00176 (v01 LENOVO CB-01    06040000  LTP 00000000)
[    0.000000] ACPI: ASF! 3f6e1f9d 00063 (v16   CETP     CETP 06040000 PTL  00000001)
[    0.000000] ACPI: SSDT 3f6da596 0025F (v01  PmRef  Cpu0Tst 00003000 INTL 20050624)
[    0.000000] ACPI: SSDT 3f6da4f0 000A6 (v01  PmRef  Cpu1Tst 00003000 INTL 20050624)
[    0.000000] ACPI: SSDT 3f6d9ffa 004F6 (v02  PmRef    CpuPm 00003000 INTL 20050624)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] 126MB HIGHMEM available.
[    0.000000] 887MB LOWMEM available.
[    0.000000]   mapped low ram: 0 - 377fe000
[    0.000000]   low ram: 0 - 377fe000
[    0.000000]   node 0 low ram: 00000000 - 377fe000
[    0.000000]   node 0 bootmap 00007000 - 0000df00
[    0.000000] (9 early reservations) ==> bootmem [0000000000 - 00377fe000]
[    0.000000]   #0 [0000000000 - 0000001000]   BIOS data page ==> [0000000000 - 0000001000]
[    0.000000]   #1 [0000001000 - 0000002000]    EX TRAMPOLINE ==> [0000001000 - 0000002000]
[    0.000000]   #2 [0000006000 - 0000007000]       TRAMPOLINE ==> [0000006000 - 0000007000]
[    0.000000]   #3 [0000100000 - 00008dced8]    TEXT DATA BSS ==> [0000100000 - 00008dced8]
[    0.000000]   #4 [002eccd000 - 002f95bcb6]          RAMDISK ==> [002eccd000 - 002f95bcb6]
[    0.000000]   #5 [000009f800 - 0000100000]    BIOS reserved ==> [000009f800 - 0000100000]
[    0.000000]   #6 [00008dd000 - 00008e0210]              BRK ==> [00008dd000 - 00008e0210]
[    0.000000]   #7 [00008e1000 - 00009bc000]          PGTABLE ==> [00008e1000 - 00009bc000]
[    0.000000]   #8 [0000007000 - 000000e000]          BOOTMAP ==> [0000007000 - 000000e000]
[    0.000000] found SMP MP-table at [c00f7b60] f7b60
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000000 -> 0x00001000
[    0.000000]   Normal   0x00001000 -> 0x000377fe
[    0.000000]   HighMem  0x000377fe -> 0x0003f6d0
[    0.000000] Movable zone start PFN for each node
[    0.000000] early_node_map[3] active PFN ranges
[    0.000000]     0: 0x00000000 -> 0x00000002
[    0.000000]     0: 0x00000006 -> 0x0000009f
[    0.000000]     0: 0x00000100 -> 0x0003f6d0
[    0.000000] On node 0 totalpages: 259691
[    0.000000] free_area_init_node: node 0, pgdat c079a760, node_mem_map c1001000
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 3963 pages, LIFO batch:0
[    0.000000]   Normal zone: 1744 pages used for memmap
[    0.000000]   Normal zone: 221486 pages, LIFO batch:31
[    0.000000]   HighMem zone: 254 pages used for memmap
[    0.000000]   HighMem zone: 32212 pages, LIFO batch:7
[    0.000000] Using APIC driver default
[    0.000000] ACPI: PM-Timer IO Port: 0x1008
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ2 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.000000] SMP: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] nr_irqs_gsi: 24
[    0.000000] PM: Registered nosave memory: 0000000000002000 - 0000000000006000
[    0.000000] PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000d2000
[    0.000000] PM: Registered nosave memory: 00000000000d2000 - 00000000000d4000
[    0.000000] PM: Registered nosave memory: 00000000000d4000 - 00000000000dc000
[    0.000000] PM: Registered nosave memory: 00000000000dc000 - 0000000000100000
[    0.000000] Allocating PCI resources starting at 40000000 (gap: 40000000:a0000000)
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:2 nr_node_ids:1
[    0.000000] PERCPU: Embedded 14 pages/cpu @c17f7000 s36056 r0 d21288 u65536
[    0.000000] pcpu-alloc: s36056 r0 d21288 u65536 alloc=16*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 257661
[    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-2.6.32-25-generic root=UUID=565e7bee-9137-4bf0-970a-b9c42bdb4880 ro quiet splash
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Enabling fast FPU save and restore... done.
[    0.000000] Enabling unmasked SIMD FPU exception support... done.
[    0.000000] Initializing CPU#0
[    0.000000] allocated 5195840 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't want memory cgroups
[    0.000000] Initializing HighMem for node 0 (000377fe:0003f6d0)
[    0.000000] Memory: 1002396k/1039168k available (4680k kernel code, 35960k reserved, 2122k data, 656k init, 129864k highmem)
[    0.000000] virtual kernel memory layout:
[    0.000000]     fixmap  : 0xfff1d000 - 0xfffff000   ( 904 kB)
[    0.000000]     pkmap   : 0xff800000 - 0xffc00000   (4096 kB)
[    0.000000]     vmalloc : 0xf7ffe000 - 0xff7fe000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf77fe000   ( 887 MB)
[    0.000000]       .init : 0xc07a5000 - 0xc0849000   ( 656 kB)
[    0.000000]       .data : 0xc05922c7 - 0xc07a4e68   (2122 kB)
[    0.000000]       .text : 0xc0100000 - 0xc05922c7   (4680 kB)
[    0.000000] Checking if this processor honours the WP bit even in supervisor mode...Ok.
[    0.000000] SLUB: Genslabs=13, HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] NR_IRQS:2304 nr_irqs:424
[    0.000000] Extended CMOS year: 2000
[    0.000000] Console: colour VGA+ 80x25
[    0.000000] console [tty0] enabled
[    0.000000] hpet clockevent registered
[    0.000000] HPET: 3 timers in total, 0 timers will be used for per-cpu timer
[    0.000000] Fast TSC calibration using PIT
[    0.000000] Detected 1595.938 MHz processor.
[    0.004010] Calibrating delay loop (skipped), value calculated using timer frequency.. 3191.87 BogoMIPS (lpj=6383752)
[    0.004049] Security Framework initialized
[    0.004093] AppArmor: AppArmor initialized
[    0.004110] Mount-cache hash table entries: 512
[    0.004355] Initializing cgroup subsys ns
[    0.004365] Initializing cgroup subsys cpuacct
[    0.004375] Initializing cgroup subsys memory
[    0.004391] Initializing cgroup subsys devices
[    0.004398] Initializing cgroup subsys freezer
[    0.004403] Initializing cgroup subsys net_cls
[    0.004438] Atom PSE erratum detected, BIOS microcode update recommended
[    0.004448] CPU: L1 I cache: 32K, L1 D cache: 24K
[    0.004455] CPU: L2 cache: 512K
[    0.004460] CPU: Physical Processor ID: 0
[    0.004465] CPU: Processor Core ID: 0
[    0.008015] mce: CPU supports 5 MCE banks
[    0.008032] CPU0: Thermal monitoring handled by SMI
[    0.008040] using mwait in idle threads.
[    0.008052] Performance Events: Atom events, Intel PMU driver.
[    0.008070] ... version:                3
[    0.008075] ... bit width:              40
[    0.008080] ... generic registers:      2
[    0.008084] ... value mask:             000000ffffffffff
[    0.008090] ... max period:             000000007fffffff
[    0.008095] ... fixed-purpose events:   3
[    0.008099] ... event mask:             0000000700000003
[    0.008108] Checking 'hlt' instruction... OK.
[    0.024016] Disabling 4MB page tables to avoid TLB bug
[    0.028503] ACPI: Core revision 20090903
[    0.048018] ftrace: converting mcount calls to 0f 1f 44 00 00
[    0.048030] ftrace: allocating 21789 entries in 43 pages
[    0.052110] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.052517] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.093198] CPU0: Intel(R) Atom(TM) CPU N270   @ 1.60GHz stepping 02
[    0.096001] Booting processor 1 APIC 0x1 ip 0x6000
[    0.008000] Initializing CPU#1
[    0.008000] Atom PSE erratum detected, BIOS microcode update recommended
[    0.008000] CPU: L1 I cache: 32K, L1 D cache: 24K
[    0.008000] CPU: L2 cache: 512K
[    0.008000] CPU: Physical Processor ID: 0
[    0.008000] CPU: Processor Core ID: 0
[    0.008000] CPU1: Thermal monitoring handled by SMI
[    0.180068] CPU1: Intel(R) Atom(TM) CPU N270   @ 1.60GHz stepping 02
[    0.180099] checking TSC synchronization [CPU#0 -> CPU#1]: passed.
[    0.184036] Brought up 2 CPUs
[    0.184044] Total of 2 processors activated (6383.80 BogoMIPS).
[    0.184294] CPU0 attaching sched-domain:
[    0.184303]  domain 0: span 0-1 level SIBLING
[    0.184309]   groups: 0 (cpu_power = 589) 1 (cpu_power = 589)
[    0.184322]   domain 1: span 0-1 level MC
[    0.184327]    groups: 0-1 (cpu_power = 1178)
[    0.184341] CPU1 attaching sched-domain:
[    0.184346]  domain 0: span 0-1 level SIBLING
[    0.184351]   groups: 1 (cpu_power = 589) 0 (cpu_power = 589)
[    0.184362]   domain 1: span 0-1 level MC
[    0.184367]    groups: 0-1 (cpu_power = 1178)
[    0.184599] devtmpfs: initialized
[    0.184599] regulator: core version 0.5
[    0.184599] Time:  1:10:30  Date: 10/10/10
[    0.184599] NET: Registered protocol family 16
[    0.184599] Trying to unpack rootfs image as initramfs...
[    0.184599] EISA bus registered
[    0.184608] ACPI: bus type pci registered
[    0.184788] PCI: MCFG configuration 0: base e0000000 segment 0 buses 0 - 255
[    0.184798] PCI: MCFG area at e0000000 reserved in E820
[    0.184804] PCI: Using MMCONFIG for extended config space
[    0.184811] PCI: Using configuration type 1 for base access
[    0.189846] bio: create slab <bio-0> at 0
[    0.192324] ACPI: EC: Look up EC in DSDT
[    0.202486] ACPI: BIOS _OSI(Linux) query ignored
[    0.208292] ACPI: Interpreter enabled
[    0.208311] ACPI: (supports S0 S3 S4 S5)
[    0.208391] ACPI: Using IOAPIC for interrupt routing
[    0.227573] ACPI: EC: GPE = 0x17, I/O: command/status = 0x66, data = 0x62
[    0.228315] ACPI: No dock devices found.
[    0.229854] ACPI: PCI Root Bridge [PCI0] (0000:00)
[    0.230060] pci 0000:00:02.0: reg 10 32bit mmio: [0xf0500000-0xf057ffff]
[    0.230073] pci 0000:00:02.0: reg 14 io port: [0x1800-0x1807]
[    0.230086] pci 0000:00:02.0: reg 18 32bit mmio pref: [0xd0000000-0xdfffffff]
[    0.230099] pci 0000:00:02.0: reg 1c 32bit mmio: [0xf0600000-0xf063ffff]
[    0.230167] pci 0000:00:02.1: reg 10 32bit mmio: [0xf0580000-0xf05fffff]
[    0.230344] pci 0000:00:1b.0: reg 10 64bit mmio: [0xf0640000-0xf0643fff]
[    0.230431] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.230443] pci 0000:00:1b.0: PME# disabled
[    0.230575] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.230586] pci 0000:00:1c.0: PME# disabled
[    0.230721] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.230732] pci 0000:00:1c.1: PME# disabled
[    0.230867] pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
[    0.230878] pci 0000:00:1c.2: PME# disabled
[    0.230978] pci 0000:00:1d.0: reg 20 io port: [0x1820-0x183f]
[    0.231083] pci 0000:00:1d.1: reg 20 io port: [0x1840-0x185f]
[    0.231181] pci 0000:00:1d.2: reg 20 io port: [0x1860-0x187f]
[    0.231277] pci 0000:00:1d.3: reg 20 io port: [0x1880-0x189f]
[    0.231380] pci 0000:00:1d.7: reg 10 32bit mmio: [0xf0844000-0xf08443ff]
[    0.231469] pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
[    0.231480] pci 0000:00:1d.7: PME# disabled
[    0.231711] pci 0000:00:1f.0: quirk: region 1000-107f claimed by ICH6 ACPI/GPIO/TCO
[    0.231722] pci 0000:00:1f.0: quirk: region 1180-11bf claimed by ICH6 GPIO
[    0.231737] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 3 PIO at 0380 (mask 0007)
[    0.231818] pci 0000:00:1f.1: reg 10 io port: [0x00-0x07]
[    0.231837] pci 0000:00:1f.1: reg 14 io port: [0x00-0x03]
[    0.231852] pci 0000:00:1f.1: reg 18 io port: [0x00-0x07]
[    0.231868] pci 0000:00:1f.1: reg 1c io port: [0x00-0x03]
[    0.231883] pci 0000:00:1f.1: reg 20 io port: [0x1810-0x181f]
[    0.231970] pci 0000:00:1f.2: reg 10 io port: [0x18c8-0x18cf]
[    0.232018] pci 0000:00:1f.2: reg 14 io port: [0x18c0-0x18c3]
[    0.232035] pci 0000:00:1f.2: reg 18 io port: [0x18a8-0x18af]
[    0.232050] pci 0000:00:1f.2: reg 1c io port: [0x180c-0x180f]
[    0.232065] pci 0000:00:1f.2: reg 20 io port: [0x18b0-0x18bf]
[    0.232081] pci 0000:00:1f.2: reg 24 32bit mmio: [0xf0844400-0xf08447ff]
[    0.232129] pci 0000:00:1f.2: PME# supported from D3hot
[    0.232140] pci 0000:00:1f.2: PME# disabled
[    0.232225] pci 0000:00:1f.3: reg 20 io port: [0x18e0-0x18ff]
[    0.232522] pci 0000:02:00.0: reg 10 64bit mmio: [0xf0200000-0xf020ffff]
[    0.232796] pci 0000:02:00.0: PME# supported from D3hot D3cold
[    0.232815] pci 0000:02:00.0: PME# disabled
[    0.232946] pci 0000:00:1c.0: bridge io port: [0x2000-0x2fff]
[    0.232958] pci 0000:00:1c.0: bridge 32bit mmio: [0xf0200000-0xf02fffff]
[    0.232974] pci 0000:00:1c.0: bridge 64bit mmio pref: [0xf0000000-0xf00fffff]
[    0.233064] pci 0000:00:1c.1: bridge io port: [0x3000-0x3fff]
[    0.233075] pci 0000:00:1c.1: bridge 32bit mmio: [0xf0300000-0xf03fffff]
[    0.233091] pci 0000:00:1c.1: bridge 64bit mmio pref: [0xf0100000-0xf01fffff]
[    0.233484] pci 0000:05:00.0: reg 10 64bit mmio: [0xf0400000-0xf0403fff]
[    0.233726] pci 0000:05:00.0: supports D1 D2
[    0.233734] pci 0000:05:00.0: PME# supported from D0 D3hot D3cold
[    0.233749] pci 0000:05:00.0: PME# disabled
[    0.233915] pci 0000:00:1c.2: bridge 32bit mmio: [0xf0400000-0xf04fffff]
[    0.234010] pci 0000:00:1e.0: transparent bridge
[    0.234064] pci_bus 0000:00: on NUMA node 0
[    0.234086] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    0.234718] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
[    0.234961] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
[    0.235194] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
[    0.235483] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PCIB._PRT]
[    0.256397] ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 5 6 7 10 12 14 15) *11
[    0.256675] ACPI: PCI Interrupt Link [LNKB] (IRQs 1 *3 4 5 6 7 11 12 14 15)
[    0.256947] ACPI: PCI Interrupt Link [LNKC] (IRQs 1 *3 4 5 6 7 10 12 14 15)
[    0.257232] ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12 14 15) *10
[    0.257507] ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled.
[    0.257781] ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled.
[    0.258053] ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 *5 6 7 10 12 14 15)
[    0.258334] ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 *5 6 7 11 12 14 15)
[    0.258655] vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
[    0.258689] vgaarb: loaded
[    0.259103] SCSI subsystem initialized
[    0.259345] libata version 3.00 loaded.
[    0.259581] usbcore: registered new interface driver usbfs
[    0.259628] usbcore: registered new interface driver hub
[    0.259716] usbcore: registered new device driver usb
[    0.260357] ACPI: WMI: Mapper loaded
[    0.260365] PCI: Using ACPI for IRQ routing
[    0.261251] NetLabel: Initializing
[    0.261259] NetLabel:  domain hash size = 128
[    0.261264] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.261297] NetLabel:  unlabeled traffic allowed by default
[    0.261413] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    0.261429] hpet0: 3 comparators, 64-bit 14.318180 MHz counter
[    0.264132] Switching to clocksource tsc
[    0.269013] AppArmor: AppArmor Filesystem Enabled
[    0.269060] pnp: PnP ACPI init
[    0.269102] ACPI: bus type pnp registered
[    0.277853] pnp: PnP ACPI: found 10 devices
[    0.277862] ACPI: ACPI bus type pnp unregistered
[    0.277873] PnPBIOS: Disabled by ACPI PNP
[    0.277905] system 00:01: iomem range 0xe0000000-0xefffffff has been reserved
[    0.277916] system 00:01: iomem range 0xfed14000-0xfed17fff has been reserved
[    0.277926] system 00:01: iomem range 0xfed18000-0xfed18fff has been reserved
[    0.277937] system 00:01: iomem range 0xfed19000-0xfed19fff has been reserved
[    0.277949] system 00:01: iomem range 0xfed1c000-0xfed1ffff has been reserved
[    0.277959] system 00:01: iomem range 0xfed20000-0xfed3ffff has been reserved
[    0.277969] system 00:01: iomem range 0xfed40000-0xfed44fff has been reserved
[    0.277980] system 00:01: iomem range 0xfed45000-0xfed8ffff has been reserved
[    0.278005] system 00:03: iomem range 0xfed00000-0xfed003ff has been reserved
[    0.278029] system 00:05: ioport range 0x800-0x80f has been reserved
[    0.278041] system 00:05: ioport range 0x1000-0x107f has been reserved
[    0.278051] system 00:05: ioport range 0x1180-0x11bf has been reserved
[    0.278061] system 00:05: ioport range 0x1640-0x164f has been reserved
[    0.278071] system 00:05: ioport range 0xfe00-0xfe00 has been reserved
[    0.278081] system 00:05: ioport range 0x380-0x384 has been reserved
[    0.278091] system 00:05: ioport range 0x386-0x387 has been reserved
[    0.278110] system 00:06: ioport range 0x6a0-0x6af has been reserved
[    0.278120] system 00:06: ioport range 0x6b0-0x6ff has been reserved
[    0.313347] pci 0000:00:1c.0: PCI bridge, secondary bus 0000:02
[    0.313361] pci 0000:00:1c.0:   IO window: 0x2000-0x2fff
[    0.313375] pci 0000:00:1c.0:   MEM window: 0xf0200000-0xf02fffff
[    0.313388] pci 0000:00:1c.0:   PREFETCH window: 0x000000f0000000-0x000000f00fffff
[    0.313404] pci 0000:00:1c.1: PCI bridge, secondary bus 0000:03
[    0.313413] pci 0000:00:1c.1:   IO window: 0x3000-0x3fff
[    0.313426] pci 0000:00:1c.1:   MEM window: 0xf0300000-0xf03fffff
[    0.313438] pci 0000:00:1c.1:   PREFETCH window: 0x000000f0100000-0x000000f01fffff
[    0.313454] pci 0000:00:1c.2: PCI bridge, secondary bus 0000:05
[    0.313464] pci 0000:00:1c.2:   IO window: 0x4000-0x4fff
[    0.313477] pci 0000:00:1c.2:   MEM window: 0xf0400000-0xf04fffff
[    0.313489] pci 0000:00:1c.2:   PREFETCH window: 0x00000040000000-0x000000401fffff
[    0.313507] pci 0000:00:1e.0: PCI bridge, secondary bus 0000:06
[    0.313514] pci 0000:00:1e.0:   IO window: disabled
[    0.313526] pci 0000:00:1e.0:   MEM window: disabled
[    0.313538] pci 0000:00:1e.0:   PREFETCH window: disabled
[    0.313583]   alloc irq_desc for 17 on node -1
[    0.313590]   alloc kstat_irqs on node -1
[    0.313610] pci 0000:00:1c.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
[    0.313625] pci 0000:00:1c.0: setting latency timer to 64
[    0.313649]   alloc irq_desc for 16 on node -1
[    0.313655]   alloc kstat_irqs on node -1
[    0.313667] pci 0000:00:1c.1: PCI INT B -> GSI 16 (level, low) -> IRQ 16
[    0.313679] pci 0000:00:1c.1: setting latency timer to 64
[    0.313700]   alloc irq_desc for 18 on node -1
[    0.313706]   alloc kstat_irqs on node -1
[    0.313717] pci 0000:00:1c.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    0.313729] pci 0000:00:1c.2: setting latency timer to 64
[    0.313746] pci 0000:00:1e.0: setting latency timer to 64
[    0.313759] pci_bus 0000:00: resource 0 io:  [0x00-0xffff]
[    0.313767] pci_bus 0000:00: resource 1 mem: [0x000000-0xffffffff]
[    0.313776] pci_bus 0000:02: resource 0 io:  [0x2000-0x2fff]
[    0.313785] pci_bus 0000:02: resource 1 mem: [0xf0200000-0xf02fffff]
[    0.313793] pci_bus 0000:02: resource 2 pref mem [0xf0000000-0xf00fffff]
[    0.313802] pci_bus 0000:03: resource 0 io:  [0x3000-0x3fff]
[    0.313810] pci_bus 0000:03: resource 1 mem: [0xf0300000-0xf03fffff]
[    0.313819] pci_bus 0000:03: resource 2 pref mem [0xf0100000-0xf01fffff]
[    0.313828] pci_bus 0000:05: resource 0 io:  [0x4000-0x4fff]
[    0.313836] pci_bus 0000:05: resource 1 mem: [0xf0400000-0xf04fffff]
[    0.313845] pci_bus 0000:05: resource 2 pref mem [0x40000000-0x401fffff]
[    0.313856] pci_bus 0000:06: resource 3 io:  [0x00-0xffff]
[    0.313864] pci_bus 0000:06: resource 4 mem: [0x000000-0xffffffff]
[    0.313964] NET: Registered protocol family 2
[    0.314242] IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.315226] TCP established hash table entries: 131072 (order: 8, 1048576 bytes)
[    0.316407] TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
[    0.316970] TCP: Hash tables configured (established 131072 bind 65536)
[    0.316984] TCP reno registered
[    0.317261] NET: Registered protocol family 1
[    0.317317] pci 0000:00:02.0: Boot video device
[    0.317572] Simple Boot Flag at 0x36 set to 0x1
[    0.318085] cpufreq-nforce2: No nForce2 chipset.
[    0.318184] Scanning for low memory corruption every 60 seconds
[    0.318560] audit: initializing netlink socket (disabled)
[    0.318591] type=2000 audit(1286673030.314:1): initialized
[    0.340257] highmem bounce pool size: 64 pages
[    0.340273] HugeTLB registered 4 MB page size, pre-allocated 0 pages
[    0.345541] VFS: Disk quotas dquot_6.5.2
[    0.345732] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    0.347838] fuse init (API version 7.13)
[    0.348133] msgmni has been set to 1704
[    0.348837] alg: No test for stdrng (krng)
[    0.349032] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
[    0.349042] io scheduler noop registered
[    0.349048] io scheduler anticipatory registered
[    0.349054] io scheduler deadline registered
[    0.349191] io scheduler cfq registered (default)
[    0.349558]   alloc irq_desc for 24 on node -1
[    0.349566]   alloc kstat_irqs on node -1
[    0.349591] pcieport 0000:00:1c.0: irq 24 for MSI/MSI-X
[    0.349611] pcieport 0000:00:1c.0: setting latency timer to 64
[    0.349894]   alloc irq_desc for 25 on node -1
[    0.349901]   alloc kstat_irqs on node -1
[    0.349919] pcieport 0000:00:1c.1: irq 25 for MSI/MSI-X
[    0.349937] pcieport 0000:00:1c.1: setting latency timer to 64
[    0.350218]   alloc irq_desc for 26 on node -1
[    0.350225]   alloc kstat_irqs on node -1
[    0.350247] pcieport 0000:00:1c.2: irq 26 for MSI/MSI-X
[    0.350269] pcieport 0000:00:1c.2: setting latency timer to 64
[    0.350535] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    0.350827] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    0.355471] ACPI: AC Adapter [ACAD] (on-line)
[    0.355746] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input0
[    0.355757] ACPI: Power Button [PWRB]
[    0.355892] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input1
[    0.355902] ACPI: Sleep Button [SLPB]
[    0.356048] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input2
[    0.455190] ACPI: Lid Switch [LID]
[    0.455425] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input3
[    0.455437] ACPI: Power Button [PWRF]
[    0.457182] ACPI: SSDT 3f6dae5f 00245 (v02  PmRef  Cpu0Ist 00003000 INTL 20050624)
[    0.458469] ACPI: SSDT 3f6da7f5 005E5 (v02  PmRef  Cpu0Cst 00003001 INTL 20050624)
[    0.465283] Monitor-Mwait will be used to enter C-1 state
[    0.465394] Monitor-Mwait will be used to enter C-2 state
[    0.465488] Monitor-Mwait will be used to enter C-3 state
[    0.465513] Marking TSC unstable due to TSC halts in idle
[    0.465701] processor LNXCPU:00: registered as cooling_device0
[    0.466786] ACPI: SSDT 3f6db0a4 000D4 (v02  PmRef  Cpu1Ist 00003000 INTL 20050624)
[    0.467710] ACPI: SSDT 3f6dadda 00085 (v02  PmRef  Cpu1Cst 00003000 INTL 20050624)
[    0.469134] Switching to clocksource hpet
[    0.477459] processor LNXCPU:01: registered as cooling_device1
[    0.486897] thermal LNXTHERM:01: registered as thermal_zone0
[    0.486928] ACPI: Thermal Zone [TZ00] (60 C)
[    0.492574] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.497577] brd: module loaded
[    0.499535] loop: module loaded
[    0.499838] input: Macintosh mouse button emulation as /devices/virtual/input/input4
[    0.500286] isapnp: Scanning for PnP cards...
[    0.531253] ACPI: Battery Slot [BAT0] (battery present)
[    0.551821] ata_piix 0000:00:1f.1: version 2.13
[    0.551869]   alloc irq_desc for 19 on node -1
[    0.551878]   alloc kstat_irqs on node -1
[    0.551899] ata_piix 0000:00:1f.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    0.551988] ata_piix 0000:00:1f.1: setting latency timer to 64
[    0.595911] scsi0 : ata_piix
[    0.640001] scsi1 : ata_piix
[    0.641484] ata1: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0x1810 irq 14
[    0.641494] ata2: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0x1818 irq 15
[    0.641593] ata_piix 0000:00:1f.2: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    0.641608] ata_piix 0000:00:1f.2: MAP [ P0 P2 -- -- ]
[    0.673146] ata2: port disabled. ignoring.
[    0.801297] ata_piix 0000:00:1f.2: setting latency timer to 64
[    0.825296] scsi2 : ata_piix
[    0.860505] isapnp: No Plug & Play device found
[    0.861050] scsi3 : ata_piix
[    0.861216] ata3: SATA max UDMA/133 cmd 0x18c8 ctl 0x18c0 bmdma 0x18b0 irq 19
[    0.861225] ata4: SATA max UDMA/133 cmd 0x18a8 ctl 0x180c bmdma 0x18b8 irq 19
[    0.862445] Fixed MDIO Bus: probed
[    0.862573] PPP generic driver version 2.4.2
[    0.862744] tun: Universal TUN/TAP device driver, 1.6
[    0.862751] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    0.863021] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.863087]   alloc irq_desc for 23 on node -1
[    0.863094]   alloc kstat_irqs on node -1
[    0.863112] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    0.863154] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[    0.863165] ehci_hcd 0000:00:1d.7: EHCI Host Controller
[    0.863270] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1
[    0.863318] ehci_hcd 0000:00:1d.7: using broken periodic workaround
[    0.863341] ehci_hcd 0000:00:1d.7: debug port 1
[    0.867259] ehci_hcd 0000:00:1d.7: cache line size of 32 is not supported
[    0.867305] ehci_hcd 0000:00:1d.7: irq 23, io mem 0xf0844000
[    0.884085] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
[    0.884442] usb usb1: configuration #1 chosen from 1 choice
[    0.884541] hub 1-0:1.0: USB hub found
[    0.884573] hub 1-0:1.0: 8 ports detected
[    0.884781] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.884837] uhci_hcd: USB Universal Host Controller Interface driver
[    0.884933] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    0.884954] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[    0.884963] uhci_hcd 0000:00:1d.0: UHCI Host Controller
[    0.885100] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
[    0.885150] uhci_hcd 0000:00:1d.0: irq 23, io base 0x00001820
[    0.885450] usb usb2: configuration #1 chosen from 1 choice
[    0.885538] hub 2-0:1.0: USB hub found
[    0.885560] hub 2-0:1.0: 2 ports detected
[    0.885703] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    0.885722] uhci_hcd 0000:00:1d.1: setting latency timer to 64
[    0.885731] uhci_hcd 0000:00:1d.1: UHCI Host Controller
[    0.885858] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3
[    0.885904] uhci_hcd 0000:00:1d.1: irq 19, io base 0x00001840
[    0.886178] usb usb3: configuration #1 chosen from 1 choice
[    0.886265] hub 3-0:1.0: USB hub found
[    0.886287] hub 3-0:1.0: 2 ports detected
[    0.886408] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    0.886424] uhci_hcd 0000:00:1d.2: setting latency timer to 64
[    0.886433] uhci_hcd 0000:00:1d.2: UHCI Host Controller
[    0.886560] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4
[    0.886631] uhci_hcd 0000:00:1d.2: irq 18, io base 0x00001860
[    0.886928] usb usb4: configuration #1 chosen from 1 choice
[    0.887015] hub 4-0:1.0: USB hub found
[    0.887037] hub 4-0:1.0: 2 ports detected
[    0.887172] uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) -> IRQ 16
[    0.887188] uhci_hcd 0000:00:1d.3: setting latency timer to 64
[    0.887198] uhci_hcd 0000:00:1d.3: UHCI Host Controller
[    0.887304] uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5
[    0.887364] uhci_hcd 0000:00:1d.3: irq 16, io base 0x00001880
[    0.887670] usb usb5: configuration #1 chosen from 1 choice
[    0.887761] hub 5-0:1.0: USB hub found
[    0.887781] hub 5-0:1.0: 2 ports detected
[    0.888122] PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
[    0.900868] Failed to disable AUX port, but continuing anyway... Is this a SiS?
[    0.900880] If AUX port is really absent please use the 'i8042.noaux' option.
[    0.915371] serio: i8042 KBD port at 0x60,0x64 irq 1
[    0.915404] serio: i8042 AUX port at 0x60,0x64 irq 12
[    0.915892] mice: PS/2 mouse device common for all mice
[    0.917190] rtc_cmos 00:07: RTC can wake from S4
[    0.917340] rtc_cmos 00:07: rtc core: registered rtc_cmos as rtc0
[    0.917403] rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    0.917765] device-mapper: uevent: version 1.0.3
[    0.918145] device-mapper: ioctl: 4.15.0-ioctl (2009-04-01) initialised: dm-devel at redhat.com
[    0.918422] device-mapper: multipath: version 1.1.0 loaded
[    0.918431] device-mapper: multipath round-robin: version 1.0.0 loaded
[    0.918829] EISA: Probing bus 0 at eisa.0
[    0.918845] Cannot allocate resource for EISA slot 1
[    0.918853] Cannot allocate resource for EISA slot 2
[    0.918860] Cannot allocate resource for EISA slot 3
[    0.918867] Cannot allocate resource for EISA slot 4
[    0.918895] EISA: Detected 0 cards.
[    0.919413] cpuidle: using governor ladder
[    0.919782] cpuidle: using governor menu
[    0.921254] TCP cubic registered
[    0.921879] NET: Registered protocol family 10
[    0.923339] lo: Disabled Privacy Extensions
[    0.924397] NET: Registered protocol family 17
[    0.925885] Using IPI No-Shortcut mode
[    0.926206] PM: Resume from disk failed.
[    0.926241] registered taskstats version 1
[    0.927383]   Magic number: 14:493:154
[    0.927420] bdi 1:6: hash matches
[    0.927470] acpi device:21: hash matches
[    0.927586] rtc_cmos 00:07: setting system clock to 2010-10-10 01:10:31 UTC (1286673031)
[    0.927597] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
[    0.927603] EDD information not available.
[    0.927716] Freeing initrd memory: 12859k freed
[    0.936165] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input5
[    1.086649] ata3.00: ATA-8: WDC WD1600BEVT-22ZCT0, 11.01A11, max UDMA/133
[    1.086658] ata3.00: 312581808 sectors, multi 16: LBA48 NCQ (depth 0/32)
[    1.101348] ata3.00: configured for UDMA/133
[    1.101671] scsi 2:0:0:0: Direct-Access     ATA      WDC WD1600BEVT-2 11.0 PQ: 0 ANSI: 5
[    1.101999] sd 2:0:0:0: [sda] 312581808 512-byte logical blocks: (160 GB/149 GiB)
[    1.102063] sd 2:0:0:0: Attached scsi generic sg0 type 0
[    1.102201] sd 2:0:0:0: [sda] Write Protect is off
[    1.102211] sd 2:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.102313] sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    1.102694]  sda: sda1 sda2 < sda5 sda6 sda7 > sda3
[    1.141143] sd 2:0:0:0: [sda] Attached SCSI disk
[    1.141216] Freeing unused kernel memory: 656k freed
[    1.141774] Write protecting the kernel text: 4684k
[    1.141859] Write protecting the kernel read-only data: 1840k
[    1.184863] udev: starting version 151
[    1.192118] usb 1-3: new high speed USB device using ehci_hcd and address 2
[    1.503842] Linux agpgart interface v0.103
[    1.512208] tg3.c:v3.102 (September 1, 2009)
[    1.512296] tg3 0000:02:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    1.512321] tg3 0000:02:00.0: setting latency timer to 64
[    1.523062] usb 1-3: configuration #1 chosen from 1 choice
[    1.535548] acpi device:03: registered as cooling_device2
[    1.535972] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input6
[    1.536141] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    1.622202] agpgart-intel 0000:00:00.0: Intel 945GME Chipset
[    1.622544] agpgart-intel 0000:00:00.0: detected 7932K stolen memory
[    1.624519] [drm] Initialized drm 1.1.0 20060810
[    1.625851] agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xd0000000
[    1.668071] usb 1-5: new high speed USB device using ehci_hcd and address 3
[    1.696142] i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    1.696158] i915 0000:00:02.0: setting latency timer to 64
[    1.708866] [drm] set up 7M of stolen space
[    1.811259] usb 1-5: configuration #1 chosen from 1 choice
[    1.812284] [drm] initialized overlay support
[    1.838299] Initializing USB Mass Storage driver...
[    1.838623] scsi4 : SCSI emulation for USB Mass Storage devices
[    1.839038] usbcore: registered new interface driver usb-storage
[    1.839047] USB Mass Storage support registered.
[    1.839981] usb-storage: device found at 3
[    1.839987] usb-storage: waiting for device to settle before scanning
[    1.896092] eth0: Tigon3 [partno(BCM95906) rev c002] (PCI Express) MAC address 00:26:9e:70:80:c2
[    1.896104] eth0: attached PHY is 5906 (10/100Base-TX Ethernet) (WireSpeed[0])
[    1.896112] eth0: RXcsums[1] LinkChgREG[0] MIirq[0] ASF[0] TSOcap[0]
[    1.896118] eth0: dma_rwctrl[76180000] dma_mask[64-bit]
[    2.194845] fb0: inteldrmfb frame buffer device
[    2.194853] registered panic notifier
[    2.194871] [drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
[    2.199729] vga16fb: initializing
[    2.199740] vga16fb: mapped to 0xc00a0000
[    2.199750] vga16fb: not registering due to another framebuffer present
[    2.583283] Console: switching to colour frame buffer device 128x37
[    3.376823] EXT4-fs (sda6): mounted filesystem with ordered data mode
[    5.955595] Adding 2353480k swap on /dev/sda7.  Priority:-1 extents:1 across:2353480k 
[    6.636218] udev: starting version 151
[    6.856085] usb-storage: device scan complete
[    6.858246] scsi 4:0:0:0: Direct-Access     Generic- Multi-Card       1.00 PQ: 0 ANSI: 0 CCS
[    6.859837] sd 4:0:0:0: Attached scsi generic sg1 type 0
[    6.888112] sd 4:0:0:0: [sdb] Attached SCSI removable disk
[    7.706181] type=1505 audit(1286658638.277:2):  operation="profile_load" pid=514 name="/sbin/dhclient3"
[    7.706729] type=1505 audit(1286658638.277:3):  operation="profile_load" pid=514 name="/usr/lib/NetworkManager/nm-dhcp-client.action"
[    7.707043] type=1505 audit(1286658638.277:4):  operation="profile_load" pid=514 name="/usr/lib/connman/scripts/dhclient-script"
[    8.662274] lib80211: common routines for IEEE802.11 drivers
[    8.662285] lib80211_crypt: registered algorithm 'NULL'
[    8.740275] wl: module license 'MIXED/Proprietary' taints kernel.
[    8.740285] Disabling lock debugging due to kernel taint
[    8.743887] wl: disagrees about version of symbol lib80211_get_crypto_ops
[    8.743899] wl: Unknown symbol lib80211_get_crypto_ops
[    9.443680] intel_rng: FWH not detected
[    9.461693] Linux video capture interface: v2.00
[    9.561068] uvcvideo: Found UVC 1.00 device Lenovo EasyCamera (5986:0141)
[    9.566215] input: Lenovo EasyCamera as /devices/pci0000:00/0000:00:1d.7/usb1/1-3/1-3:1.0/input/input7
[    9.566566] usbcore: registered new interface driver uvcvideo
[    9.566689] USB Video Class driver (v0.1.0)
[    9.762104] Synaptics Touchpad, model: 1, fw: 7.2, id: 0x1c0b1, caps: 0xd04731/0xa40000
[    9.838553] input: SynPS/2 Synaptics TouchPad as /devices/platform/i8042/serio1/input/input8
[   10.103334] lp: driver loaded but no devices found
[   11.337875]   alloc irq_desc for 22 on node -1
[   11.337885]   alloc kstat_irqs on node -1
[   11.337906] HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level, low) -> IRQ 22
[   11.337998] HDA Intel 0000:00:1b.0: setting latency timer to 64
[   11.607910] input: HDA Digital PCBeep as /devices/pci0000:00/0000:00:1b.0/input/input9
[   12.042134] type=1505 audit(1286658642.612:5):  operation="profile_load" pid=765 name="/usr/share/gdm/guest-session/Xsession"
[   12.045803] type=1505 audit(1286658642.616:6):  operation="profile_replace" pid=777 name="/sbin/dhclient3"
[   12.046368] type=1505 audit(1286658642.616:7):  operation="profile_replace" pid=777 name="/usr/lib/NetworkManager/nm-dhcp-client.action"
[   12.046692] type=1505 audit(1286658642.616:8):  operation="profile_replace" pid=777 name="/usr/lib/connman/scripts/dhclient-script"
[   12.175679] type=1505 audit(1286658642.745:9):  operation="profile_load" pid=778 name="/usr/bin/evince"
[   12.192104] type=1505 audit(1286658642.764:10):  operation="profile_load" pid=778 name="/usr/bin/evince-previewer"
[   12.205429] type=1505 audit(1286658642.776:11):  operation="profile_load" pid=778 name="/usr/bin/evince-thumbnailer"
[   15.226932]   alloc irq_desc for 27 on node -1
[   15.226940]   alloc kstat_irqs on node -1
[   15.227013] tg3 0000:02:00.0: irq 27 for MSI/MSI-X
[   15.260605] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   20.716780] vboxdrv: Trying to deactivate the NMI watchdog permanently...
[   20.716791] vboxdrv: Successfully done.
[   20.716797] vboxdrv: Found 2 processor cores.
[   20.719211] vboxdrv: fAsync=0 offMin=0x198 offMax=0x8f4
[   20.720930] vboxdrv: TSC mode is 'synchronous', kernel timer mode is 'normal'.
[   20.720940] vboxdrv: Successfully loaded version 3.1.6_OSE (interface 0x00100001).
[   23.062824] ppdev: user-space parallel port driver
[   25.613469] CPU0 attaching NULL sched-domain.
[   25.613485] CPU1 attaching NULL sched-domain.
[   25.632190] CPU0 attaching sched-domain:
[   25.632201]  domain 0: span 0-1 level SIBLING
[   25.632211]   groups: 0 (cpu_power = 589) 1 (cpu_power = 589)
[   25.632230]   domain 1: span 0-1 level MC
[   25.632238]    groups: 0-1 (cpu_power = 1178)
[   25.632254] CPU1 attaching sched-domain:
[   25.632260]  domain 0: span 0-1 level SIBLING
[   25.632268]   groups: 1 (cpu_power = 589) 0 (cpu_power = 589)
[   25.632285]   domain 1: span 0-1 level MC
[   25.632292]    groups: 0-1 (cpu_power = 1178)
[   26.501102] CPU0 attaching NULL sched-domain.
[   26.501117] CPU1 attaching NULL sched-domain.
[   26.524196] CPU0 attaching sched-domain:
[   26.524205]  domain 0: span 0-1 level SIBLING
[   26.524211]   groups: 0 (cpu_power = 589) 1 (cpu_power = 589)
[   26.524224]   domain 1: span 0-1 level MC
[   26.524229]    groups: 0-1 (cpu_power = 1178)
[   26.524241] CPU1 attaching sched-domain:
[   26.524246]  domain 0: span 0-1 level SIBLING
[   26.524251]   groups: 1 (cpu_power = 589) 0 (cpu_power = 589)
[   26.524262]   domain 1: span 0-1 level MC
[   26.524267]    groups: 0-1 (cpu_power = 1178)
[  136.614492] Compat-wireless backport release: compat-wireless-2010-10-01-10-gb9b0a4f
[  136.614511] Backport based on linux-next.git next-20101008
[  136.749762] cfg80211: Calling CRDA to update world regulatory domain
[  136.816701] cfg80211: World regulatory domain updated:
[  136.816716]     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  136.816732]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  136.816745]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  136.816758]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  136.816771]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  136.816783]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  137.031176] b43-pci-bridge 0000:05:00.0: PCI INT A -> GSI 18 (level, low) -> IRQ 18
[  137.031206] b43-pci-bridge 0000:05:00.0: setting latency timer to 64
[  137.048722] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor 0x4243)
[  137.048794] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F, vendor 0x4243)
[  137.048824] ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor 0x4243)
[  137.048853] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor 0x4243)
[  137.097743] ssb: Sonics Silicon Backplane found on PCI device 0000:05:00.0
[  137.172490] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[  137.212386] b43-phy0 debug: Found PHY: Analog 6, Type 5, Revision 1
[  137.212456] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2062, Revision 2
[  137.311595] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[  137.318458] Registered led device: b43-phy0::tx
[  137.319365] Registered led device: b43-phy0::rx
[  137.325175] Registered led device: b43-phy0::radio
[  137.325251] Broadcom 43xx driver loaded [ Features: PMNLS, Firmware-ID: FW13 ]
[  137.652384] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  137.655225] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  143.092442] b43-phy0 debug: Chip initialized
[  143.092975] b43-phy0 debug: 64-bit DMA initialized
[  143.093743] b43-phy0 debug: QoS enabled
[  143.118198] b43-phy0 debug: Wireless interface started
[  143.125539] b43-phy0 debug: Adding Interface type 2
[  143.127280] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  143.526802] b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[  143.526831] b43-phy0 ERROR: This device does not support DMA on your system. It will now be switched to PIO.
[  143.526847] b43-phy0: Controller RESET (DMA error) ...
[  143.527397] b43-phy0 debug: Wireless interface stopped
[  143.528137] b43-phy0 debug: DMA-64 rx_ring: Used slots 1/64, Failed frames 0/0 = 0.0%, Average tries 0.00
[  143.528510] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  143.537216] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  143.545143] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  143.553165] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 2/256, Failed frames 0/3 = 0.0%, Average tries 1.00
[  143.561076] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  143.756456] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  143.759103] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  149.180419] b43-phy0 debug: Chip initialized
[  149.180543] b43-phy0 debug: PIO initialized
[  149.180657] b43-phy0 debug: QoS enabled
[  149.203137] b43-phy0 debug: Wireless interface started
[  149.203170] b43-phy0: Controller restarted
[  156.413333] wlan0: authenticate with 00:02:84:7d:3c:02 (try 1)
[  156.413363] wlan0: deauthenticating from 00:02:84:7d:3c:02 by local choice (reason=3)
[  156.429131] wlan0: authenticate with 00:02:84:7d:3c:02 (try 1)
[  156.430700] wlan0: authenticated
[  156.430798] wlan0: associate with 00:02:84:7d:3c:02 (try 1)
[  156.438443] wlan0: RX AssocResp from 00:02:84:7d:3c:02 (capab=0x431 status=0 aid=1)
[  156.438464] wlan0: associated
[  156.441553] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  159.370363] wlan0: disassociated from 00:02:84:7d:3c:02 (Reason: 15)
[  159.384685] wlan0: deauthenticating from 00:02:84:7d:3c:02 by local choice (reason=3)
[  159.400985] cfg80211: All devices are disconnected, going to restore regulatory settings
[  159.401010] cfg80211: Restoring regulatory settings
[  159.401028] cfg80211: Calling CRDA to update world regulatory domain
[  159.409187] cfg80211: World regulatory domain updated:
[  159.409195]     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  159.409204]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  159.409210]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  159.409217]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  159.409223]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  159.409230]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  160.797497] wlan0: authenticate with 00:02:84:7d:3c:02 (try 1)
[  160.799111] wlan0: authenticated
[  160.799210] wlan0: associate with 00:02:84:7d:3c:02 (try 1)
[  160.803643] wlan0: RX AssocResp from 00:02:84:7d:3c:02 (capab=0x431 status=0 aid=1)
[  160.803663] wlan0: associated
[  163.788434] wlan0: disassociated from 00:02:84:7d:3c:02 (Reason: 15)
[  163.812694] wlan0: deauthenticating from 00:02:84:7d:3c:02 by local choice (reason=3)
[  163.817482] cfg80211: All devices are disconnected, going to restore regulatory settings
[  163.817506] cfg80211: Restoring regulatory settings
[  163.817524] cfg80211: Calling CRDA to update world regulatory domain
[  163.834504] cfg80211: World regulatory domain updated:
[  163.834514]     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  163.834525]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  163.834534]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  163.834543]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  163.834552]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  163.834560]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  165.217755] wlan0: authenticate with 00:02:84:7d:3c:02 (try 1)
[  165.219316] wlan0: authenticated
[  165.219417] wlan0: associate with 00:02:84:7d:3c:02 (try 1)
[  165.223839] wlan0: RX AssocResp from 00:02:84:7d:3c:02 (capab=0x431 status=0 aid=1)
[  165.223859] wlan0: associated
[  166.809110] wlan0: no IPv6 routers present
[  168.206385] wlan0: disassociated from 00:02:84:7d:3c:02 (Reason: 15)
[  168.220589] wlan0: deauthenticating from 00:02:84:7d:3c:02 by local choice (reason=3)
[  168.236576] cfg80211: All devices are disconnected, going to restore regulatory settings
[  168.236591] cfg80211: Restoring regulatory settings
[  168.236600] cfg80211: Calling CRDA to update world regulatory domain
[  168.247823] cfg80211: World regulatory domain updated:
[  168.247837]     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  168.247853]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  168.247866]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  168.247879]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  168.247892]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  168.247905]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  169.637391] wlan0: authenticate with 00:02:84:7d:3c:02 (try 1)
[  169.639499] wlan0: authenticated
[  169.639596] wlan0: associate with 00:02:84:7d:3c:02 (try 1)
[  169.643837] wlan0: RX AssocResp from 00:02:84:7d:3c:02 (capab=0x431 status=0 aid=1)
[  169.643858] wlan0: associated
[  172.624353] wlan0: disassociated from 00:02:84:7d:3c:02 (Reason: 15)
[  172.636673] wlan0: deauthenticating from 00:02:84:7d:3c:02 by local choice (reason=3)
[  172.644950] cfg80211: All devices are disconnected, going to restore regulatory settings
[  172.644974] cfg80211: Restoring regulatory settings
[  172.644990] cfg80211: Calling CRDA to update world regulatory domain
[  172.658062] cfg80211: World regulatory domain updated:
[  172.658080]     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  172.658100]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  172.658119]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  172.658137]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  172.658155]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  172.658172]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  174.045029] wlan0: authenticate with 00:02:84:7d:3c:02 (try 1)
[  174.046878] wlan0: authenticated
[  174.047695] wlan0: associate with 00:02:84:7d:3c:02 (try 1)
[  174.051819] wlan0: RX AssocResp from 00:02:84:7d:3c:02 (capab=0x431 status=0 aid=1)
[  174.051840] wlan0: associated
[  177.042314] wlan0: disassociated from 00:02:84:7d:3c:02 (Reason: 15)
[  177.056640] wlan0: deauthenticating from 00:02:84:7d:3c:02 by local choice (reason=3)
[  177.065380] cfg80211: All devices are disconnected, going to restore regulatory settings
[  177.065404] cfg80211: Restoring regulatory settings
[  177.065420] cfg80211: Calling CRDA to update world regulatory domain
[  177.073865] cfg80211: World regulatory domain updated:
[  177.073877]     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  177.073888]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  177.073897]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  177.073905]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  177.073913]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  177.073957]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
-------------- next part --------------
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Linux version 2.6.32-25-generic (buildd at rothera) (gcc version 4.4.3 (Ubuntu 4.4.3-4ubuntu5) ) #44-Ubuntu SMP Fri Sep 17 20:26:08 UTC 2010 (Ubuntu 2.6.32-25.44-generic 2.6.32.21+drm33.7)
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   NSC Geode by NSC
[    0.000000]   Cyrix CyrixInstead
[    0.000000]   Centaur CentaurHauls
[    0.000000]   Transmeta GenuineTMx86
[    0.000000]   Transmeta TransmetaCPU
[    0.000000]   UMC UMC UMC UMC
[    0.000000] Atom PSE erratum detected, BIOS microcode update recommended
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009f800 (usable)
[    0.000000]  BIOS-e820: 000000000009f800 - 00000000000a0000 (reserved)
[    0.000000]  BIOS-e820: 00000000000d2000 - 00000000000d4000 (reserved)
[    0.000000]  BIOS-e820: 00000000000dc000 - 0000000000100000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 000000003f6d0000 (usable)
[    0.000000]  BIOS-e820: 000000003f6d0000 - 000000003f6e2000 (ACPI data)
[    0.000000]  BIOS-e820: 000000003f6e2000 - 000000003f6e3000 (ACPI NVS)
[    0.000000]  BIOS-e820: 000000003f6e3000 - 0000000040000000 (reserved)
[    0.000000]  BIOS-e820: 00000000e0000000 - 00000000f0000000 (reserved)
[    0.000000]  BIOS-e820: 00000000fec00000 - 00000000fec10000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed00000 - 00000000fed00400 (reserved)
[    0.000000]  BIOS-e820: 00000000fed14000 - 00000000fed1a000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed1c000 - 00000000fed90000 (reserved)
[    0.000000]  BIOS-e820: 00000000fee00000 - 00000000fee01000 (reserved)
[    0.000000]  BIOS-e820: 00000000ff000000 - 0000000100000000 (reserved)
[    0.000000] DMI 2.5 present.
[    0.000000] last_pfn = 0x3f6d0 max_arch_pfn = 0x100000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-CFFFF write-protect
[    0.000000]   D0000-DFFFF uncachable
[    0.000000]   E0000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 000000000 mask 0C0000000 write-back
[    0.000000]   1 base 03F700000 mask 0FFF00000 uncachable
[    0.000000]   2 base 03F800000 mask 0FF800000 uncachable
[    0.000000]   3 disabled
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] e820 update range: 0000000000002000 - 0000000000006000 (usable) ==> (reserved)
[    0.000000] Scanning 1 areas for low memory corruption
[    0.000000] modified physical RAM map:
[    0.000000]  modified: 0000000000000000 - 0000000000002000 (usable)
[    0.000000]  modified: 0000000000002000 - 0000000000006000 (reserved)
[    0.000000]  modified: 0000000000006000 - 000000000009f800 (usable)
[    0.000000]  modified: 000000000009f800 - 00000000000a0000 (reserved)
[    0.000000]  modified: 00000000000d2000 - 00000000000d4000 (reserved)
[    0.000000]  modified: 00000000000dc000 - 0000000000100000 (reserved)
[    0.000000]  modified: 0000000000100000 - 000000003f6d0000 (usable)
[    0.000000]  modified: 000000003f6d0000 - 000000003f6e2000 (ACPI data)
[    0.000000]  modified: 000000003f6e2000 - 000000003f6e3000 (ACPI NVS)
[    0.000000]  modified: 000000003f6e3000 - 0000000040000000 (reserved)
[    0.000000]  modified: 00000000e0000000 - 00000000f0000000 (reserved)
[    0.000000]  modified: 00000000fec00000 - 00000000fec10000 (reserved)
[    0.000000]  modified: 00000000fed00000 - 00000000fed00400 (reserved)
[    0.000000]  modified: 00000000fed14000 - 00000000fed1a000 (reserved)
[    0.000000]  modified: 00000000fed1c000 - 00000000fed90000 (reserved)
[    0.000000]  modified: 00000000fee00000 - 00000000fee01000 (reserved)
[    0.000000]  modified: 00000000ff000000 - 0000000100000000 (reserved)
[    0.000000] initial memory mapped : 0 - 00c00000
[    0.000000] init_memory_mapping: 0000000000000000-00000000377fe000
[    0.000000] Using x86 segment limits to approximate NX protection
[    0.000000]  0000000000 - 00377fe000 page 4k
[    0.000000] kernel direct mapping tables up to 377fe000 @ 8e1000-9c2000
[    0.000000] RAMDISK: 2eccd000 - 2f95bcb6
[    0.000000] ACPI: RSDP 000f7a50 00024 (v02 PTLTD )
[    0.000000] ACPI: XSDT 3f6d9f76 00084 (v01 LENOVO CB-01    06040000  LTP 00000000)
[    0.000000] ACPI: FACP 3f6e1bd7 000F4 (v03 INTEL  CALISTGA 06040000 ALAN 00000001)
[    0.000000] ACPI: DSDT 3f6db178 069EB (v01 INTEL  CALISTGA 06040000 INTL 20061109)
[    0.000000] ACPI: FACS 3f6e2fc0 00040
[    0.000000] ACPI: HPET 3f6e1ccb 00038 (v01 INTEL  CALISTGA 06040000 LOHR 0000005A)
[    0.000000] ACPI: MCFG 3f6e1d03 0003C (v01 INTEL  CALISTGA 06040000 LOHR 0000005A)
[    0.000000] ACPI: TCPA 3f6e1d3f 00032 (v01 PTLTD  CALISTGA 06040000  PTL 00000001)
[    0.000000] ACPI: TMOR 3f6e1d71 00026 (v01 PTLTD           06040000 PTL  00000003)
[    0.000000] ACPI: APIC 3f6e1d97 00068 (v01 PTLTD  ? APIC   06040000  LTP 00000000)
[    0.000000] ACPI: BOOT 3f6e1dff 00028 (v01 PTLTD  $SBFTBL$ 06040000  LTP 00000001)
[    0.000000] ACPI: SLIC 3f6e1e27 00176 (v01 LENOVO CB-01    06040000  LTP 00000000)
[    0.000000] ACPI: ASF! 3f6e1f9d 00063 (v16   CETP     CETP 06040000 PTL  00000001)
[    0.000000] ACPI: SSDT 3f6da596 0025F (v01  PmRef  Cpu0Tst 00003000 INTL 20050624)
[    0.000000] ACPI: SSDT 3f6da4f0 000A6 (v01  PmRef  Cpu1Tst 00003000 INTL 20050624)
[    0.000000] ACPI: SSDT 3f6d9ffa 004F6 (v02  PmRef    CpuPm 00003000 INTL 20050624)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] 126MB HIGHMEM available.
[    0.000000] 887MB LOWMEM available.
[    0.000000]   mapped low ram: 0 - 377fe000
[    0.000000]   low ram: 0 - 377fe000
[    0.000000]   node 0 low ram: 00000000 - 377fe000
[    0.000000]   node 0 bootmap 00007000 - 0000df00
[    0.000000] (9 early reservations) ==> bootmem [0000000000 - 00377fe000]
[    0.000000]   #0 [0000000000 - 0000001000]   BIOS data page ==> [0000000000 - 0000001000]
[    0.000000]   #1 [0000001000 - 0000002000]    EX TRAMPOLINE ==> [0000001000 - 0000002000]
[    0.000000]   #2 [0000006000 - 0000007000]       TRAMPOLINE ==> [0000006000 - 0000007000]
[    0.000000]   #3 [0000100000 - 00008dced8]    TEXT DATA BSS ==> [0000100000 - 00008dced8]
[    0.000000]   #4 [002eccd000 - 002f95bcb6]          RAMDISK ==> [002eccd000 - 002f95bcb6]
[    0.000000]   #5 [000009f800 - 0000100000]    BIOS reserved ==> [000009f800 - 0000100000]
[    0.000000]   #6 [00008dd000 - 00008e0210]              BRK ==> [00008dd000 - 00008e0210]
[    0.000000]   #7 [00008e1000 - 00009bc000]          PGTABLE ==> [00008e1000 - 00009bc000]
[    0.000000]   #8 [0000007000 - 000000e000]          BOOTMAP ==> [0000007000 - 000000e000]
[    0.000000] found SMP MP-table at [c00f7b60] f7b60
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000000 -> 0x00001000
[    0.000000]   Normal   0x00001000 -> 0x000377fe
[    0.000000]   HighMem  0x000377fe -> 0x0003f6d0
[    0.000000] Movable zone start PFN for each node
[    0.000000] early_node_map[3] active PFN ranges
[    0.000000]     0: 0x00000000 -> 0x00000002
[    0.000000]     0: 0x00000006 -> 0x0000009f
[    0.000000]     0: 0x00000100 -> 0x0003f6d0
[    0.000000] On node 0 totalpages: 259691
[    0.000000] free_area_init_node: node 0, pgdat c079a760, node_mem_map c1001000
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 3963 pages, LIFO batch:0
[    0.000000]   Normal zone: 1744 pages used for memmap
[    0.000000]   Normal zone: 221486 pages, LIFO batch:31
[    0.000000]   HighMem zone: 254 pages used for memmap
[    0.000000]   HighMem zone: 32212 pages, LIFO batch:7
[    0.000000] Using APIC driver default
[    0.000000] ACPI: PM-Timer IO Port: 0x1008
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ2 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.000000] SMP: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] nr_irqs_gsi: 24
[    0.000000] PM: Registered nosave memory: 0000000000002000 - 0000000000006000
[    0.000000] PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000d2000
[    0.000000] PM: Registered nosave memory: 00000000000d2000 - 00000000000d4000
[    0.000000] PM: Registered nosave memory: 00000000000d4000 - 00000000000dc000
[    0.000000] PM: Registered nosave memory: 00000000000dc000 - 0000000000100000
[    0.000000] Allocating PCI resources starting at 40000000 (gap: 40000000:a0000000)
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:2 nr_node_ids:1
[    0.000000] PERCPU: Embedded 14 pages/cpu @c17f7000 s36056 r0 d21288 u65536
[    0.000000] pcpu-alloc: s36056 r0 d21288 u65536 alloc=16*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 257661
[    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-2.6.32-25-generic root=UUID=565e7bee-9137-4bf0-970a-b9c42bdb4880 ro quiet splash
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Enabling fast FPU save and restore... done.
[    0.000000] Enabling unmasked SIMD FPU exception support... done.
[    0.000000] Initializing CPU#0
[    0.000000] allocated 5195840 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't want memory cgroups
[    0.000000] Initializing HighMem for node 0 (000377fe:0003f6d0)
[    0.000000] Memory: 1002396k/1039168k available (4680k kernel code, 35960k reserved, 2122k data, 656k init, 129864k highmem)
[    0.000000] virtual kernel memory layout:
[    0.000000]     fixmap  : 0xfff1d000 - 0xfffff000   ( 904 kB)
[    0.000000]     pkmap   : 0xff800000 - 0xffc00000   (4096 kB)
[    0.000000]     vmalloc : 0xf7ffe000 - 0xff7fe000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf77fe000   ( 887 MB)
[    0.000000]       .init : 0xc07a5000 - 0xc0849000   ( 656 kB)
[    0.000000]       .data : 0xc05922c7 - 0xc07a4e68   (2122 kB)
[    0.000000]       .text : 0xc0100000 - 0xc05922c7   (4680 kB)
[    0.000000] Checking if this processor honours the WP bit even in supervisor mode...Ok.
[    0.000000] SLUB: Genslabs=13, HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] NR_IRQS:2304 nr_irqs:424
[    0.000000] Extended CMOS year: 2000
[    0.000000] Console: colour VGA+ 80x25
[    0.000000] console [tty0] enabled
[    0.000000] hpet clockevent registered
[    0.000000] HPET: 3 timers in total, 0 timers will be used for per-cpu timer
[    0.000000] Fast TSC calibration using PIT
[    0.000000] Detected 1596.297 MHz processor.
[    0.004011] Calibrating delay loop (skipped), value calculated using timer frequency.. 3192.59 BogoMIPS (lpj=6385188)
[    0.004051] Security Framework initialized
[    0.004097] AppArmor: AppArmor initialized
[    0.004113] Mount-cache hash table entries: 512
[    0.004359] Initializing cgroup subsys ns
[    0.004370] Initializing cgroup subsys cpuacct
[    0.004380] Initializing cgroup subsys memory
[    0.004395] Initializing cgroup subsys devices
[    0.004401] Initializing cgroup subsys freezer
[    0.004406] Initializing cgroup subsys net_cls
[    0.004443] Atom PSE erratum detected, BIOS microcode update recommended
[    0.004453] CPU: L1 I cache: 32K, L1 D cache: 24K
[    0.004460] CPU: L2 cache: 512K
[    0.004465] CPU: Physical Processor ID: 0
[    0.004470] CPU: Processor Core ID: 0
[    0.008017] mce: CPU supports 5 MCE banks
[    0.008034] CPU0: Thermal monitoring handled by SMI
[    0.008043] using mwait in idle threads.
[    0.008055] Performance Events: Atom events, Intel PMU driver.
[    0.008072] ... version:                3
[    0.008077] ... bit width:              40
[    0.008082] ... generic registers:      2
[    0.008087] ... value mask:             000000ffffffffff
[    0.008092] ... max period:             000000007fffffff
[    0.008097] ... fixed-purpose events:   3
[    0.008101] ... event mask:             0000000700000003
[    0.008110] Checking 'hlt' instruction... OK.
[    0.024016] Disabling 4MB page tables to avoid TLB bug
[    0.028492] ACPI: Core revision 20090903
[    0.048018] ftrace: converting mcount calls to 0f 1f 44 00 00
[    0.048030] ftrace: allocating 21789 entries in 43 pages
[    0.052110] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.052518] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.093788] CPU0: Intel(R) Atom(TM) CPU N270   @ 1.60GHz stepping 02
[    0.096001] Booting processor 1 APIC 0x1 ip 0x6000
[    0.008000] Initializing CPU#1
[    0.008000] Atom PSE erratum detected, BIOS microcode update recommended
[    0.008000] CPU: L1 I cache: 32K, L1 D cache: 24K
[    0.008000] CPU: L2 cache: 512K
[    0.008000] CPU: Physical Processor ID: 0
[    0.008000] CPU: Processor Core ID: 0
[    0.008000] CPU1: Thermal monitoring handled by SMI
[    0.184126] CPU1: Intel(R) Atom(TM) CPU N270   @ 1.60GHz stepping 02
[    0.184155] checking TSC synchronization [CPU#0 -> CPU#1]: passed.
[    0.188037] Brought up 2 CPUs
[    0.188045] Total of 2 processors activated (6384.52 BogoMIPS).
[    0.188298] CPU0 attaching sched-domain:
[    0.188307]  domain 0: span 0-1 level SIBLING
[    0.188312]   groups: 0 (cpu_power = 589) 1 (cpu_power = 589)
[    0.188325]   domain 1: span 0-1 level MC
[    0.188330]    groups: 0-1 (cpu_power = 1178)
[    0.188343] CPU1 attaching sched-domain:
[    0.188347]  domain 0: span 0-1 level SIBLING
[    0.188353]   groups: 1 (cpu_power = 589) 0 (cpu_power = 589)
[    0.188364]   domain 1: span 0-1 level MC
[    0.188369]    groups: 0-1 (cpu_power = 1178)
[    0.188602] devtmpfs: initialized
[    0.188602] regulator: core version 0.5
[    0.188602] Time:  1:23:48  Date: 10/10/10
[    0.188602] NET: Registered protocol family 16
[    0.188602] Trying to unpack rootfs image as initramfs...
[    0.188602] EISA bus registered
[    0.188607] ACPI: bus type pci registered
[    0.188788] PCI: MCFG configuration 0: base e0000000 segment 0 buses 0 - 255
[    0.188797] PCI: MCFG area at e0000000 reserved in E820
[    0.188803] PCI: Using MMCONFIG for extended config space
[    0.188810] PCI: Using configuration type 1 for base access
[    0.193892] bio: create slab <bio-0> at 0
[    0.196364] ACPI: EC: Look up EC in DSDT
[    0.206507] ACPI: BIOS _OSI(Linux) query ignored
[    0.212305] ACPI: Interpreter enabled
[    0.212323] ACPI: (supports S0 S3 S4 S5)
[    0.212395] ACPI: Using IOAPIC for interrupt routing
[    0.233094] ACPI: EC: GPE = 0x17, I/O: command/status = 0x66, data = 0x62
[    0.233802] ACPI: No dock devices found.
[    0.235296] ACPI: PCI Root Bridge [PCI0] (0000:00)
[    0.235501] pci 0000:00:02.0: reg 10 32bit mmio: [0xf0500000-0xf057ffff]
[    0.235515] pci 0000:00:02.0: reg 14 io port: [0x1800-0x1807]
[    0.235527] pci 0000:00:02.0: reg 18 32bit mmio pref: [0xd0000000-0xdfffffff]
[    0.235540] pci 0000:00:02.0: reg 1c 32bit mmio: [0xf0600000-0xf063ffff]
[    0.235608] pci 0000:00:02.1: reg 10 32bit mmio: [0xf0580000-0xf05fffff]
[    0.235776] pci 0000:00:1b.0: reg 10 64bit mmio: [0xf0640000-0xf0643fff]
[    0.235872] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.235884] pci 0000:00:1b.0: PME# disabled
[    0.236047] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.236059] pci 0000:00:1c.0: PME# disabled
[    0.236198] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.236209] pci 0000:00:1c.1: PME# disabled
[    0.236346] pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
[    0.236357] pci 0000:00:1c.2: PME# disabled
[    0.236456] pci 0000:00:1d.0: reg 20 io port: [0x1820-0x183f]
[    0.236558] pci 0000:00:1d.1: reg 20 io port: [0x1840-0x185f]
[    0.236667] pci 0000:00:1d.2: reg 20 io port: [0x1860-0x187f]
[    0.236768] pci 0000:00:1d.3: reg 20 io port: [0x1880-0x189f]
[    0.236871] pci 0000:00:1d.7: reg 10 32bit mmio: [0xf0844000-0xf08443ff]
[    0.236960] pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
[    0.236971] pci 0000:00:1d.7: PME# disabled
[    0.237203] pci 0000:00:1f.0: quirk: region 1000-107f claimed by ICH6 ACPI/GPIO/TCO
[    0.237214] pci 0000:00:1f.0: quirk: region 1180-11bf claimed by ICH6 GPIO
[    0.237230] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 3 PIO at 0380 (mask 0007)
[    0.237310] pci 0000:00:1f.1: reg 10 io port: [0x00-0x07]
[    0.237328] pci 0000:00:1f.1: reg 14 io port: [0x00-0x03]
[    0.237346] pci 0000:00:1f.1: reg 18 io port: [0x00-0x07]
[    0.237362] pci 0000:00:1f.1: reg 1c io port: [0x00-0x03]
[    0.237378] pci 0000:00:1f.1: reg 20 io port: [0x1810-0x181f]
[    0.237465] pci 0000:00:1f.2: reg 10 io port: [0x18c8-0x18cf]
[    0.237480] pci 0000:00:1f.2: reg 14 io port: [0x18c0-0x18c3]
[    0.237495] pci 0000:00:1f.2: reg 18 io port: [0x18a8-0x18af]
[    0.237511] pci 0000:00:1f.2: reg 1c io port: [0x180c-0x180f]
[    0.237526] pci 0000:00:1f.2: reg 20 io port: [0x18b0-0x18bf]
[    0.237542] pci 0000:00:1f.2: reg 24 32bit mmio: [0xf0844400-0xf08447ff]
[    0.237587] pci 0000:00:1f.2: PME# supported from D3hot
[    0.237598] pci 0000:00:1f.2: PME# disabled
[    0.237678] pci 0000:00:1f.3: reg 20 io port: [0x18e0-0x18ff]
[    0.237973] pci 0000:02:00.0: reg 10 64bit mmio: [0xf0200000-0xf020ffff]
[    0.238238] pci 0000:02:00.0: PME# supported from D3hot D3cold
[    0.238256] pci 0000:02:00.0: PME# disabled
[    0.238387] pci 0000:00:1c.0: bridge io port: [0x2000-0x2fff]
[    0.238399] pci 0000:00:1c.0: bridge 32bit mmio: [0xf0200000-0xf02fffff]
[    0.238415] pci 0000:00:1c.0: bridge 64bit mmio pref: [0xf0000000-0xf00fffff]
[    0.238504] pci 0000:00:1c.1: bridge io port: [0x3000-0x3fff]
[    0.238515] pci 0000:00:1c.1: bridge 32bit mmio: [0xf0300000-0xf03fffff]
[    0.238531] pci 0000:00:1c.1: bridge 64bit mmio pref: [0xf0100000-0xf01fffff]
[    0.238922] pci 0000:05:00.0: reg 10 64bit mmio: [0xf0400000-0xf0403fff]
[    0.239164] pci 0000:05:00.0: supports D1 D2
[    0.239172] pci 0000:05:00.0: PME# supported from D0 D3hot D3cold
[    0.239189] pci 0000:05:00.0: PME# disabled
[    0.239356] pci 0000:00:1c.2: bridge 32bit mmio: [0xf0400000-0xf04fffff]
[    0.239451] pci 0000:00:1e.0: transparent bridge
[    0.239505] pci_bus 0000:00: on NUMA node 0
[    0.239526] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    0.240198] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
[    0.240446] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
[    0.240675] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
[    0.240982] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PCIB._PRT]
[    0.261863] ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 5 6 7 10 12 14 15) *11
[    0.262160] ACPI: PCI Interrupt Link [LNKB] (IRQs 1 *3 4 5 6 7 11 12 14 15)
[    0.262434] ACPI: PCI Interrupt Link [LNKC] (IRQs 1 *3 4 5 6 7 10 12 14 15)
[    0.262702] ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12 14 15) *10
[    0.262991] ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled.
[    0.263265] ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled.
[    0.263537] ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 *5 6 7 10 12 14 15)
[    0.263808] ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 *5 6 7 11 12 14 15)
[    0.264180] vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
[    0.264215] vgaarb: loaded
[    0.264617] SCSI subsystem initialized
[    0.264869] libata version 3.00 loaded.
[    0.265120] usbcore: registered new interface driver usbfs
[    0.265165] usbcore: registered new interface driver hub
[    0.265266] usbcore: registered new device driver usb
[    0.265878] ACPI: WMI: Mapper loaded
[    0.265886] PCI: Using ACPI for IRQ routing
[    0.266771] NetLabel: Initializing
[    0.266778] NetLabel:  domain hash size = 128
[    0.266783] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.266816] NetLabel:  unlabeled traffic allowed by default
[    0.266933] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    0.266949] hpet0: 3 comparators, 64-bit 14.318180 MHz counter
[    0.272082] Switching to clocksource tsc
[    0.277036] AppArmor: AppArmor Filesystem Enabled
[    0.277084] pnp: PnP ACPI init
[    0.277127] ACPI: bus type pnp registered
[    0.284253] pnp: PnP ACPI: found 10 devices
[    0.284261] ACPI: ACPI bus type pnp unregistered
[    0.284272] PnPBIOS: Disabled by ACPI PNP
[    0.284305] system 00:01: iomem range 0xe0000000-0xefffffff has been reserved
[    0.284316] system 00:01: iomem range 0xfed14000-0xfed17fff has been reserved
[    0.284327] system 00:01: iomem range 0xfed18000-0xfed18fff has been reserved
[    0.284337] system 00:01: iomem range 0xfed19000-0xfed19fff has been reserved
[    0.284347] system 00:01: iomem range 0xfed1c000-0xfed1ffff has been reserved
[    0.284358] system 00:01: iomem range 0xfed20000-0xfed3ffff has been reserved
[    0.284368] system 00:01: iomem range 0xfed40000-0xfed44fff has been reserved
[    0.284378] system 00:01: iomem range 0xfed45000-0xfed8ffff has been reserved
[    0.284400] system 00:03: iomem range 0xfed00000-0xfed003ff has been reserved
[    0.284422] system 00:05: ioport range 0x800-0x80f has been reserved
[    0.284432] system 00:05: ioport range 0x1000-0x107f has been reserved
[    0.284442] system 00:05: ioport range 0x1180-0x11bf has been reserved
[    0.284452] system 00:05: ioport range 0x1640-0x164f has been reserved
[    0.284462] system 00:05: ioport range 0xfe00-0xfe00 has been reserved
[    0.284472] system 00:05: ioport range 0x380-0x384 has been reserved
[    0.284481] system 00:05: ioport range 0x386-0x387 has been reserved
[    0.284500] system 00:06: ioport range 0x6a0-0x6af has been reserved
[    0.284510] system 00:06: ioport range 0x6b0-0x6ff has been reserved
[    0.319744] pci 0000:00:1c.0: PCI bridge, secondary bus 0000:02
[    0.319758] pci 0000:00:1c.0:   IO window: 0x2000-0x2fff
[    0.319771] pci 0000:00:1c.0:   MEM window: 0xf0200000-0xf02fffff
[    0.319785] pci 0000:00:1c.0:   PREFETCH window: 0x000000f0000000-0x000000f00fffff
[    0.319801] pci 0000:00:1c.1: PCI bridge, secondary bus 0000:03
[    0.319810] pci 0000:00:1c.1:   IO window: 0x3000-0x3fff
[    0.319823] pci 0000:00:1c.1:   MEM window: 0xf0300000-0xf03fffff
[    0.319834] pci 0000:00:1c.1:   PREFETCH window: 0x000000f0100000-0x000000f01fffff
[    0.319850] pci 0000:00:1c.2: PCI bridge, secondary bus 0000:05
[    0.319860] pci 0000:00:1c.2:   IO window: 0x4000-0x4fff
[    0.319872] pci 0000:00:1c.2:   MEM window: 0xf0400000-0xf04fffff
[    0.319884] pci 0000:00:1c.2:   PREFETCH window: 0x00000040000000-0x000000401fffff
[    0.319899] pci 0000:00:1e.0: PCI bridge, secondary bus 0000:06
[    0.319906] pci 0000:00:1e.0:   IO window: disabled
[    0.319917] pci 0000:00:1e.0:   MEM window: disabled
[    0.319927] pci 0000:00:1e.0:   PREFETCH window: disabled
[    0.319967]   alloc irq_desc for 17 on node -1
[    0.319974]   alloc kstat_irqs on node -1
[    0.319991] pci 0000:00:1c.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
[    0.320004] pci 0000:00:1c.0: setting latency timer to 64
[    0.320027]   alloc irq_desc for 16 on node -1
[    0.320033]   alloc kstat_irqs on node -1
[    0.320045] pci 0000:00:1c.1: PCI INT B -> GSI 16 (level, low) -> IRQ 16
[    0.320056] pci 0000:00:1c.1: setting latency timer to 64
[    0.320077]   alloc irq_desc for 18 on node -1
[    0.320083]   alloc kstat_irqs on node -1
[    0.320094] pci 0000:00:1c.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    0.320106] pci 0000:00:1c.2: setting latency timer to 64
[    0.320124] pci 0000:00:1e.0: setting latency timer to 64
[    0.320135] pci_bus 0000:00: resource 0 io:  [0x00-0xffff]
[    0.320144] pci_bus 0000:00: resource 1 mem: [0x000000-0xffffffff]
[    0.320152] pci_bus 0000:02: resource 0 io:  [0x2000-0x2fff]
[    0.320161] pci_bus 0000:02: resource 1 mem: [0xf0200000-0xf02fffff]
[    0.320170] pci_bus 0000:02: resource 2 pref mem [0xf0000000-0xf00fffff]
[    0.320179] pci_bus 0000:03: resource 0 io:  [0x3000-0x3fff]
[    0.320187] pci_bus 0000:03: resource 1 mem: [0xf0300000-0xf03fffff]
[    0.320196] pci_bus 0000:03: resource 2 pref mem [0xf0100000-0xf01fffff]
[    0.320205] pci_bus 0000:05: resource 0 io:  [0x4000-0x4fff]
[    0.320213] pci_bus 0000:05: resource 1 mem: [0xf0400000-0xf04fffff]
[    0.320222] pci_bus 0000:05: resource 2 pref mem [0x40000000-0x401fffff]
[    0.320231] pci_bus 0000:06: resource 3 io:  [0x00-0xffff]
[    0.320239] pci_bus 0000:06: resource 4 mem: [0x000000-0xffffffff]
[    0.320341] NET: Registered protocol family 2
[    0.320634] IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.321576] TCP established hash table entries: 131072 (order: 8, 1048576 bytes)
[    0.322738] TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
[    0.323375] TCP: Hash tables configured (established 131072 bind 65536)
[    0.323389] TCP reno registered
[    0.323697] NET: Registered protocol family 1
[    0.323756] pci 0000:00:02.0: Boot video device
[    0.323983] Simple Boot Flag at 0x36 set to 0x1
[    0.324504] cpufreq-nforce2: No nForce2 chipset.
[    0.324605] Scanning for low memory corruption every 60 seconds
[    0.324955] audit: initializing netlink socket (disabled)
[    0.324983] type=2000 audit(1286673828.322:1): initialized
[    0.346619] highmem bounce pool size: 64 pages
[    0.346637] HugeTLB registered 4 MB page size, pre-allocated 0 pages
[    0.351925] VFS: Disk quotas dquot_6.5.2
[    0.352118] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    0.354187] fuse init (API version 7.13)
[    0.354479] msgmni has been set to 1704
[    0.355204] alg: No test for stdrng (krng)
[    0.355398] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
[    0.355408] io scheduler noop registered
[    0.355414] io scheduler anticipatory registered
[    0.355420] io scheduler deadline registered
[    0.355564] io scheduler cfq registered (default)
[    0.355932]   alloc irq_desc for 24 on node -1
[    0.355939]   alloc kstat_irqs on node -1
[    0.355963] pcieport 0000:00:1c.0: irq 24 for MSI/MSI-X
[    0.355983] pcieport 0000:00:1c.0: setting latency timer to 64
[    0.356265]   alloc irq_desc for 25 on node -1
[    0.356272]   alloc kstat_irqs on node -1
[    0.356290] pcieport 0000:00:1c.1: irq 25 for MSI/MSI-X
[    0.356310] pcieport 0000:00:1c.1: setting latency timer to 64
[    0.356583]   alloc irq_desc for 26 on node -1
[    0.356590]   alloc kstat_irqs on node -1
[    0.356610] pcieport 0000:00:1c.2: irq 26 for MSI/MSI-X
[    0.356630] pcieport 0000:00:1c.2: setting latency timer to 64
[    0.356881] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    0.357172] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    0.361324] ACPI: AC Adapter [ACAD] (on-line)
[    0.361618] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input0
[    0.361631] ACPI: Power Button [PWRB]
[    0.361776] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input1
[    0.361786] ACPI: Sleep Button [SLPB]
[    0.361932] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input2
[    0.459133] ACPI: Lid Switch [LID]
[    0.459358] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input3
[    0.459369] ACPI: Power Button [PWRF]
[    0.461109] ACPI: SSDT 3f6dae5f 00245 (v02  PmRef  Cpu0Ist 00003000 INTL 20050624)
[    0.462397] ACPI: SSDT 3f6da7f5 005E5 (v02  PmRef  Cpu0Cst 00003001 INTL 20050624)
[    0.469210] Monitor-Mwait will be used to enter C-1 state
[    0.469322] Monitor-Mwait will be used to enter C-2 state
[    0.469409] Monitor-Mwait will be used to enter C-3 state
[    0.469430] Marking TSC unstable due to TSC halts in idle
[    0.469611] processor LNXCPU:00: registered as cooling_device0
[    0.470702] ACPI: SSDT 3f6db0a4 000D4 (v02  PmRef  Cpu1Ist 00003000 INTL 20050624)
[    0.471627] ACPI: SSDT 3f6dadda 00085 (v02  PmRef  Cpu1Cst 00003000 INTL 20050624)
[    0.473304] Switching to clocksource hpet
[    0.475198] processor LNXCPU:01: registered as cooling_device1
[    0.479445] ACPI: EC: GPE storm detected, transactions will use polling mode
[    0.513441] thermal LNXTHERM:01: registered as thermal_zone0
[    0.513472] ACPI: Thermal Zone [TZ00] (59 C)
[    0.519183] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.523494] brd: module loaded
[    0.525215] loop: module loaded
[    0.525514] input: Macintosh mouse button emulation as /devices/virtual/input/input4
[    0.525811] ata_piix 0000:00:1f.1: version 2.13
[    0.525846]   alloc irq_desc for 19 on node -1
[    0.525853]   alloc kstat_irqs on node -1
[    0.525871] ata_piix 0000:00:1f.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    0.525954] ata_piix 0000:00:1f.1: setting latency timer to 64
[    0.526122] isapnp: Scanning for PnP cards...
[    0.575321] scsi0 : ata_piix
[    0.619222] scsi1 : ata_piix
[    0.620718] ata1: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0x1810 irq 14
[    0.620729] ata2: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0x1818 irq 15
[    0.620826] ata_piix 0000:00:1f.2: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    0.620842] ata_piix 0000:00:1f.2: MAP [ P0 P2 -- -- ]
[    0.708435] ata2: port disabled. ignoring.
[    0.795644] ata_piix 0000:00:1f.2: setting latency timer to 64
[    0.851467] scsi2 : ata_piix
[    0.868809] ACPI: Battery Slot [BAT0] (battery present)
[    0.895345] isapnp: No Plug & Play device found
[    0.895424] scsi3 : ata_piix
[    0.895587] ata3: SATA max UDMA/133 cmd 0x18c8 ctl 0x18c0 bmdma 0x18b0 irq 19
[    0.895597] ata4: SATA max UDMA/133 cmd 0x18a8 ctl 0x180c bmdma 0x18b8 irq 19
[    0.896832] Fixed MDIO Bus: probed
[    0.896960] PPP generic driver version 2.4.2
[    0.897226] tun: Universal TUN/TAP device driver, 1.6
[    0.897234] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    0.897504] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.897567]   alloc irq_desc for 23 on node -1
[    0.897574]   alloc kstat_irqs on node -1
[    0.897592] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    0.897632] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[    0.897642] ehci_hcd 0000:00:1d.7: EHCI Host Controller
[    0.897751] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1
[    0.897801] ehci_hcd 0000:00:1d.7: using broken periodic workaround
[    0.897826] ehci_hcd 0000:00:1d.7: debug port 1
[    0.901729] ehci_hcd 0000:00:1d.7: cache line size of 32 is not supported
[    0.901890] ehci_hcd 0000:00:1d.7: irq 23, io mem 0xf0844000
[    0.917080] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
[    0.917414] usb usb1: configuration #1 chosen from 1 choice
[    0.917513] hub 1-0:1.0: USB hub found
[    0.917538] hub 1-0:1.0: 8 ports detected
[    0.917717] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.917769] uhci_hcd: USB Universal Host Controller Interface driver
[    0.917860] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    0.917880] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[    0.917891] uhci_hcd 0000:00:1d.0: UHCI Host Controller
[    0.918052] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
[    0.918107] uhci_hcd 0000:00:1d.0: irq 23, io base 0x00001820
[    0.918394] usb usb2: configuration #1 chosen from 1 choice
[    0.918483] hub 2-0:1.0: USB hub found
[    0.918505] hub 2-0:1.0: 2 ports detected
[    0.918638] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    0.918655] uhci_hcd 0000:00:1d.1: setting latency timer to 64
[    0.918665] uhci_hcd 0000:00:1d.1: UHCI Host Controller
[    0.918775] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3
[    0.918822] uhci_hcd 0000:00:1d.1: irq 19, io base 0x00001840
[    0.919100] usb usb3: configuration #1 chosen from 1 choice
[    0.919191] hub 3-0:1.0: USB hub found
[    0.919216] hub 3-0:1.0: 2 ports detected
[    0.919350] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    0.919369] uhci_hcd 0000:00:1d.2: setting latency timer to 64
[    0.919379] uhci_hcd 0000:00:1d.2: UHCI Host Controller
[    0.919504] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4
[    0.919568] uhci_hcd 0000:00:1d.2: irq 18, io base 0x00001860
[    0.919851] usb usb4: configuration #1 chosen from 1 choice
[    0.919938] hub 4-0:1.0: USB hub found
[    0.919960] hub 4-0:1.0: 2 ports detected
[    0.920107] uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) -> IRQ 16
[    0.920128] uhci_hcd 0000:00:1d.3: setting latency timer to 64
[    0.920138] uhci_hcd 0000:00:1d.3: UHCI Host Controller
[    0.920268] uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5
[    0.920333] uhci_hcd 0000:00:1d.3: irq 16, io base 0x00001880
[    0.920611] usb usb5: configuration #1 chosen from 1 choice
[    0.920699] hub 5-0:1.0: USB hub found
[    0.920722] hub 5-0:1.0: 2 ports detected
[    0.921076] PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
[    0.926388] Freeing initrd memory: 12859k freed
[    0.933222] Failed to disable AUX port, but continuing anyway... Is this a SiS?
[    0.933240] If AUX port is really absent please use the 'i8042.noaux' option.
[    0.946297] serio: i8042 KBD port at 0x60,0x64 irq 1
[    0.946320] serio: i8042 AUX port at 0x60,0x64 irq 12
[    0.946636] mice: PS/2 mouse device common for all mice
[    0.947012] rtc_cmos 00:07: RTC can wake from S4
[    0.947125] rtc_cmos 00:07: rtc core: registered rtc_cmos as rtc0
[    0.947180] rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    0.947520] device-mapper: uevent: version 1.0.3
[    0.947858] device-mapper: ioctl: 4.15.0-ioctl (2009-04-01) initialised: dm-devel at redhat.com
[    0.948065] device-mapper: multipath: version 1.1.0 loaded
[    0.948073] device-mapper: multipath round-robin: version 1.0.0 loaded
[    0.948434] EISA: Probing bus 0 at eisa.0
[    0.948449] Cannot allocate resource for EISA slot 1
[    0.948456] Cannot allocate resource for EISA slot 2
[    0.948463] Cannot allocate resource for EISA slot 3
[    0.948470] Cannot allocate resource for EISA slot 4
[    0.948498] EISA: Detected 0 cards.
[    0.948917] cpuidle: using governor ladder
[    0.949213] cpuidle: using governor menu
[    0.950234] TCP cubic registered
[    0.950646] NET: Registered protocol family 10
[    0.951666] lo: Disabled Privacy Extensions
[    0.952426] NET: Registered protocol family 17
[    0.953607] Using IPI No-Shortcut mode
[    0.953835] PM: Resume from disk failed.
[    0.953862] registered taskstats version 1
[    0.954825]   Magic number: 14:699:356
[    0.954837] input event2: hash matches
[    0.954983] rtc_cmos 00:07: setting system clock to 2010-10-10 01:23:49 UTC (1286673829)
[    0.954991] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
[    0.954995] EDD information not available.
[    0.968894] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input5
[    1.108958] ata3.00: ATA-8: WDC WD1600BEVT-22ZCT0, 11.01A11, max UDMA/133
[    1.108976] ata3.00: 312581808 sectors, multi 16: LBA48 NCQ (depth 0/32)
[    1.116978] ata3.00: configured for UDMA/133
[    1.117255] scsi 2:0:0:0: Direct-Access     ATA      WDC WD1600BEVT-2 11.0 PQ: 0 ANSI: 5
[    1.117648] sd 2:0:0:0: [sda] 312581808 512-byte logical blocks: (160 GB/149 GiB)
[    1.117717] sd 2:0:0:0: Attached scsi generic sg0 type 0
[    1.117853] sd 2:0:0:0: [sda] Write Protect is off
[    1.117863] sd 2:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.117968] sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    1.118365]  sda: sda1 sda2 < sda5 sda6 sda7 > sda3
[    1.163410] sd 2:0:0:0: [sda] Attached SCSI disk
[    1.163458] Freeing unused kernel memory: 656k freed
[    1.164080] Write protecting the kernel text: 4684k
[    1.164169] Write protecting the kernel read-only data: 1840k
[    1.206830] udev: starting version 151
[    1.229110] usb 1-3: new high speed USB device using ehci_hcd and address 2
[    1.468154] Linux agpgart interface v0.103
[    1.479285] tg3.c:v3.102 (September 1, 2009)
[    1.479378] tg3 0000:02:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    1.479405] tg3 0000:02:00.0: setting latency timer to 64
[    1.550974] usb 1-3: configuration #1 chosen from 1 choice
[    1.572832] agpgart-intel 0000:00:00.0: Intel 945GME Chipset
[    1.573423] agpgart-intel 0000:00:00.0: detected 7932K stolen memory
[    1.576383] agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xd0000000
[    1.604361] acpi device:03: registered as cooling_device2
[    1.604716] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input6
[    1.604829] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    1.690049] [drm] Initialized drm 1.1.0 20060810
[    1.700168] usb 1-5: new high speed USB device using ehci_hcd and address 3
[    1.758908] i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    1.758923] i915 0000:00:02.0: setting latency timer to 64
[    1.770241] [drm] set up 7M of stolen space
[    1.831569] eth0: Tigon3 [partno(BCM95906) rev c002] (PCI Express) MAC address 00:26:9e:70:80:c2
[    1.831580] eth0: attached PHY is 5906 (10/100Base-TX Ethernet) (WireSpeed[0])
[    1.831589] eth0: RXcsums[1] LinkChgREG[0] MIirq[0] ASF[0] TSOcap[0]
[    1.831596] eth0: dma_rwctrl[76180000] dma_mask[64-bit]
[    1.843455] usb 1-5: configuration #1 chosen from 1 choice
[    1.873137] Initializing USB Mass Storage driver...
[    1.873456] scsi4 : SCSI emulation for USB Mass Storage devices
[    1.873746] [drm] initialized overlay support
[    1.874073] usbcore: registered new interface driver usb-storage
[    1.874081] USB Mass Storage support registered.
[    1.875012] usb-storage: device found at 3
[    1.875018] usb-storage: waiting for device to settle before scanning
[    2.258850] fb0: inteldrmfb frame buffer device
[    2.258859] registered panic notifier
[    2.258878] [drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
[    2.263839] vga16fb: initializing
[    2.263850] vga16fb: mapped to 0xc00a0000
[    2.263860] vga16fb: not registering due to another framebuffer present
[    2.651285] Console: switching to colour frame buffer device 128x37
[    3.396805] EXT4-fs (sda6): INFO: recovery required on readonly filesystem
[    3.396817] EXT4-fs (sda6): write access will be enabled during recovery
[    3.838474] EXT4-fs (sda6): recovery complete
[    3.839626] EXT4-fs (sda6): mounted filesystem with ordered data mode
[    6.872552] usb-storage: device scan complete
[    6.874700] scsi 4:0:0:0: Direct-Access     Generic- Multi-Card       1.00 PQ: 0 ANSI: 0 CCS
[    6.875868] sd 4:0:0:0: Attached scsi generic sg1 type 0
[    6.879888] sd 4:0:0:0: [sdb] Attached SCSI removable disk
[   19.681972] udev: starting version 151
[   19.688149] Adding 2353480k swap on /dev/sda7.  Priority:-1 extents:1 across:2353480k 
[   19.830877] lp: driver loaded but no devices found
[   20.230717] lib80211: common routines for IEEE802.11 drivers
[   20.230726] lib80211_crypt: registered algorithm 'NULL'
[   20.317145] intel_rng: FWH not detected
[   20.386714] wl: module license 'MIXED/Proprietary' taints kernel.
[   20.386727] Disabling lock debugging due to kernel taint
[   20.390264] wl: disagrees about version of symbol lib80211_get_crypto_ops
[   20.390278] wl: Unknown symbol lib80211_get_crypto_ops
[   20.400750] Linux video capture interface: v2.00
[   20.564782] uvcvideo: Found UVC 1.00 device Lenovo EasyCamera (5986:0141)
[   20.568830] input: Lenovo EasyCamera as /devices/pci0000:00/0000:00:1d.7/usb1/1-3/1-3:1.0/input/input7
[   20.569229] usbcore: registered new interface driver uvcvideo
[   20.569838] USB Video Class driver (v0.1.0)
[   20.795529] type=1505 audit(1286659449.337:2):  operation="profile_load" pid=641 name="/sbin/dhclient3"
[   20.796440] type=1505 audit(1286659449.341:3):  operation="profile_load" pid=641 name="/usr/lib/NetworkManager/nm-dhcp-client.action"
[   20.796909] type=1505 audit(1286659449.341:4):  operation="profile_load" pid=641 name="/usr/lib/connman/scripts/dhclient-script"
[   21.095232]   alloc irq_desc for 22 on node -1
[   21.095241]   alloc kstat_irqs on node -1
[   21.095261] HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level, low) -> IRQ 22
[   21.095347] HDA Intel 0000:00:1b.0: setting latency timer to 64
[   21.293364] input: HDA Digital PCBeep as /devices/pci0000:00/0000:00:1b.0/input/input8
[   21.423653] type=1505 audit(1286659449.965:5):  operation="profile_load" pid=781 name="/usr/share/gdm/guest-session/Xsession"
[   21.450405] type=1505 audit(1286659449.993:6):  operation="profile_replace" pid=783 name="/sbin/dhclient3"
[   21.451207] type=1505 audit(1286659449.993:7):  operation="profile_replace" pid=783 name="/usr/lib/NetworkManager/nm-dhcp-client.action"
[   21.451668] type=1505 audit(1286659449.993:8):  operation="profile_replace" pid=783 name="/usr/lib/connman/scripts/dhclient-script"
[   21.504680] Synaptics Touchpad, model: 1, fw: 7.2, id: 0x1c0b1, caps: 0xd04731/0xa40000
[   21.516533] type=1505 audit(1286659450.061:9):  operation="profile_load" pid=785 name="/usr/bin/evince"
[   21.587982]   alloc irq_desc for 27 on node -1
[   21.587992]   alloc kstat_irqs on node -1
[   21.588075] tg3 0000:02:00.0: irq 27 for MSI/MSI-X
[   21.591131] input: SynPS/2 Synaptics TouchPad as /devices/platform/i8042/serio1/input/input9
[   21.630689] type=1505 audit(1286659450.173:10):  operation="profile_load" pid=785 name="/usr/bin/evince-previewer"
[   21.676652] type=1505 audit(1286659450.221:11):  operation="profile_load" pid=785 name="/usr/bin/evince-thumbnailer"
[   21.696438] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   23.747224] vboxdrv: Trying to deactivate the NMI watchdog permanently...
[   23.747235] vboxdrv: Successfully done.
[   23.747242] vboxdrv: Found 2 processor cores.
[   23.747622] vboxdrv: fAsync=0 offMin=0x1a4 offMax=0x984
[   23.749635] vboxdrv: TSC mode is 'synchronous', kernel timer mode is 'normal'.
[   23.749646] vboxdrv: Successfully loaded version 3.1.6_OSE (interface 0x00100001).
[   24.927789] ppdev: user-space parallel port driver
[   26.289115] CPU0 attaching NULL sched-domain.
[   26.289132] CPU1 attaching NULL sched-domain.
[   26.309197] CPU0 attaching sched-domain:
[   26.309208]  domain 0: span 0-1 level SIBLING
[   26.309216]   groups: 0 (cpu_power = 589) 1 (cpu_power = 589)
[   26.309233]   domain 1: span 0-1 level MC
[   26.309240]    groups: 0-1 (cpu_power = 1178)
[   26.309256] CPU1 attaching sched-domain:
[   26.309263]  domain 0: span 0-1 level SIBLING
[   26.309270]   groups: 1 (cpu_power = 589) 0 (cpu_power = 589)
[   26.309287]   domain 1: span 0-1 level MC
[   26.309294]    groups: 0-1 (cpu_power = 1178)
[   85.363903] lib80211_crypt: unregistered algorithm 'NULL'
[   93.427201] lib80211: common routines for IEEE802.11 drivers
[   93.427222] lib80211_crypt: registered algorithm 'NULL'
[  111.883611] lib80211_crypt: registered algorithm 'TKIP'
[  119.027432] wl 0000:05:00.0: PCI INT A -> GSI 18 (level, low) -> IRQ 18
[  119.027452] wl 0000:05:00.0: setting latency timer to 64
[  119.052388] eth1: Broadcom BCM4315 802.11 Hybrid Wireless Controller 5.60.48.36 
[  119.066187] udev: renamed network interface eth1 to eth2
[  130.004053] eth2: no IPv6 routers present
[  160.781672] wl 0000:05:00.0: PCI INT A disabled
[  167.156532] Compat-wireless backport release: compat-wireless-2010-10-01-10-gb9b0a4f
[  167.156551] Backport based on linux-next.git next-20101008
[  167.250142] cfg80211: Calling CRDA to update world regulatory domain
[  167.293442] cfg80211: World regulatory domain updated:
[  167.293457]     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  167.293473]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  167.293486]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  167.293499]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  167.293512]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  167.293525]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  167.472625] b43-pci-bridge 0000:05:00.0: PCI INT A -> GSI 18 (level, low) -> IRQ 18
[  167.472660] b43-pci-bridge 0000:05:00.0: setting latency timer to 64
[  167.493147] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor 0x4243)
[  167.493378] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F, vendor 0x4243)
[  167.493414] ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor 0x4243)
[  167.493451] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor 0x4243)
[  167.540593] ssb: Sonics Silicon Backplane found on PCI device 0000:05:00.0
[  167.605320] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[  167.648314] b43-phy0 debug: Found PHY: Analog 6, Type 5, Revision 1
[  167.648384] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2062, Revision 2
[  167.675019] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[  167.688904] Registered led device: b43-phy0::tx
[  167.690284] Registered led device: b43-phy0::rx
[  167.691465] Registered led device: b43-phy0::radio
[  167.691546] Broadcom 43xx driver loaded [ Features: PMNLS, Firmware-ID: FW13 ]
[  168.040432] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  168.043077] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  173.464349] b43-phy0 debug: Chip initialized
[  173.464886] b43-phy0 debug: 64-bit DMA initialized
[  173.465169] b43-phy0 debug: QoS enabled
[  173.485772] b43-phy0 debug: Wireless interface started
[  173.486034] b43-phy0 debug: Adding Interface type 2
[  173.495093] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  181.121780] wlan0: deauthenticating from 00:02:84:7d:3c:02 by local choice (reason=3)
[  181.129389] wlan0: authenticate with 00:02:84:7d:3c:02 (try 1)
[  181.131077] wlan0: authenticated
[  181.131675] wlan0: associate with 00:02:84:7d:3c:02 (try 1)
[  181.135917] wlan0: RX AssocResp from 00:02:84:7d:3c:02 (capab=0x431 status=0 aid=1)
[  181.135926] wlan0: associated
[  181.139065] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  181.251860] padlock: VIA PadLock not detected.
[  181.275871] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 00:02:84:7d:3c:02
[  191.900168] wlan0: no IPv6 routers present
