From: Harry Bullen <hbullen@gmail.com>
Date: Tue, 20 Jul 2010 16:18:21 -0400
Subject: Crash with BCM4312 using ad-hoc mode and promiscuous
Message-ID: <AANLkTinxJtP4qj2kQqQd0uLguosQdHLPPs4BAXBZO0eg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hey, I've been using a Broadcom BCM4312 on Ubuntu 10.04 kernel
2.6.32-23.  I found a way to crash the machine and wanted to know if
it was a known problem and if so is there a solution.  If not I'd like
to report this as a bug.
I first join an existing ad-hoc network and and assign myself an ipv4
address.  Then I use tcpdump or wireshark to listen to traffic in
promiscuous mode.  Finally I generate I traffic between two other
computers on the same ad-hoc network by having one ping the other.  At
this point the system freezes up immediately (including ssh sessions
and it cannot be pinged) and I have to hold down the power button to
reboot it.  If I use an AP, don't put the card in promiscuous mode
(when using tcpdump or wireshark) or don't generate traffic between
other computers the system doesn't crash.

Other issues that may or may not be related.  The wireless card
sometimes switches between eth1 and eth2 after a reboot (I haven't
seen a pattern in this.)  When sniffing traffic on a wireless network
using an AP I only see traffic that is broadcast or sent to me,
even-though I am in promiscuous mode.

I have installed b43-fwcutter via: apt-get install b43-fwcutter.  But
this did not appear to have any effect.


Thanks for any help you can provide.  I have supplied information
about my system below.

I am using Ubuntu 10.04

uname -a
Linux iai-AN1 2.6.32-23-generic #37-Ubuntu SMP Fri Jun 11 07:54:58 UTC
2010 i686 GNU/Linux

I also used kernel 2.6.31 which is also installed on this machine and
it didn't work either.


This is the script I run to set the wireless device up, based on
information I found here:
https://help.ubuntu.com/community/WifiDocs/Adhoc

#!/bin/bash
NET=$1
service network-manager stop # stop automatic network config on Ubuntu
ifconfig ${NET} down
iwconfig ${NET} mode ad-hoc
iwconfig ${NET} channel 11
ifconfig ${NET} up
iwconfig ${NET} essid "OpenWrt"
ifconfig ${NET} 10.5.21.1/24

My card's info

lspci -vvn|grep 43 -A7
04:00.0 0280: 14e4:4315 (rev 01)
	Subsystem: 14e4:04b5
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 18
	Region 0: Memory at f5100000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3

dmesg output:

dmesg
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Linux version 2.6.32-23-generic (buildd@rothera) (gcc
version 4.4.3 (Ubuntu 4.4.3-4ubuntu5) ) #37-Ubuntu SMP Fri Jun 11
07:54:58 UTC 2010 (Ubuntu 2.6.32-23.37-generic 2.6.32.15+drm33.5)
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   NSC Geode by NSC
[    0.000000]   Cyrix CyrixInstead
[    0.000000]   Centaur CentaurHauls
[    0.000000]   Transmeta GenuineTMx86
[    0.000000]   Transmeta TransmetaCPU
[    0.000000]   UMC UMC UMC UMC
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009f400 (usable)
[    0.000000]  BIOS-e820: 000000000009f400 - 00000000000a0000 (reserved)
[    0.000000]  BIOS-e820: 00000000000d2000 - 00000000000d4000 (reserved)
[    0.000000]  BIOS-e820: 00000000000dc000 - 0000000000100000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 00000000bf8a1000 (usable)
[    0.000000]  BIOS-e820: 00000000bf8a1000 - 00000000bf8a7000 (reserved)
[    0.000000]  BIOS-e820: 00000000bf8a7000 - 00000000bf9ba000 (usable)
[    0.000000]  BIOS-e820: 00000000bf9ba000 - 00000000bfa0f000 (reserved)
[    0.000000]  BIOS-e820: 00000000bfa0f000 - 00000000bfb08000 (usable)
[    0.000000]  BIOS-e820: 00000000bfb08000 - 00000000bfd0f000 (reserved)
[    0.000000]  BIOS-e820: 00000000bfd0f000 - 00000000bfd18000 (usable)
[    0.000000]  BIOS-e820: 00000000bfd18000 - 00000000bfd1f000 (reserved)
[    0.000000]  BIOS-e820: 00000000bfd1f000 - 00000000bfd64000 (usable)
[    0.000000]  BIOS-e820: 00000000bfd64000 - 00000000bfd9f000 (ACPI NVS)
[    0.000000]  BIOS-e820: 00000000bfd9f000 - 00000000bfe00000 (ACPI data)
[    0.000000]  BIOS-e820: 00000000bfe00000 - 00000000c0000000 (reserved)
[    0.000000]  BIOS-e820: 00000000e0000000 - 00000000f0000000 (reserved)
[    0.000000]  BIOS-e820: 00000000fec00000 - 00000000fec10000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed00000 - 00000000fed00400 (reserved)
[    0.000000]  BIOS-e820: 00000000fed10000 - 00000000fed14000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed18000 - 00000000fed1a000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed1c000 - 00000000fed90000 (reserved)
[    0.000000]  BIOS-e820: 00000000fee00000 - 00000000fee01000 (reserved)
[    0.000000]  BIOS-e820: 00000000ff800000 - 0000000100000000 (reserved)
[    0.000000] DMI present.
[    0.000000] last_pfn = 0xbfd64 max_arch_pfn = 0x100000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-D3FFF write-protect
[    0.000000]   D4000-DFFFF uncachable
[    0.000000]   E0000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 000000000 mask F80000000 write-back
[    0.000000]   1 base 080000000 mask FC0000000 write-back
[    0.000000]   2 base 0FFE00000 mask FFFE00000 write-protect
[    0.000000]   3 disabled
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] e820 update range: 0000000000002000 - 0000000000006000
(usable) ==> (reserved)
[    0.000000] Scanning 1 areas for low memory corruption
[    0.000000] modified physical RAM map:
[    0.000000]  modified: 0000000000000000 - 0000000000002000 (usable)
[    0.000000]  modified: 0000000000002000 - 0000000000006000 (reserved)
[    0.000000]  modified: 0000000000006000 - 000000000009f400 (usable)
[    0.000000]  modified: 000000000009f400 - 00000000000a0000 (reserved)
[    0.000000]  modified: 00000000000d2000 - 00000000000d4000 (reserved)
[    0.000000]  modified: 00000000000dc000 - 0000000000100000 (reserved)
[    0.000000]  modified: 0000000000100000 - 00000000bf8a1000 (usable)
[    0.000000]  modified: 00000000bf8a1000 - 00000000bf8a7000 (reserved)
[    0.000000]  modified: 00000000bf8a7000 - 00000000bf9ba000 (usable)
[    0.000000]  modified: 00000000bf9ba000 - 00000000bfa0f000 (reserved)
[    0.000000]  modified: 00000000bfa0f000 - 00000000bfb08000 (usable)
[    0.000000]  modified: 00000000bfb08000 - 00000000bfd0f000 (reserved)
[    0.000000]  modified: 00000000bfd0f000 - 00000000bfd18000 (usable)
[    0.000000]  modified: 00000000bfd18000 - 00000000bfd1f000 (reserved)
[    0.000000]  modified: 00000000bfd1f000 - 00000000bfd64000 (usable)
[    0.000000]  modified: 00000000bfd64000 - 00000000bfd9f000 (ACPI NVS)
[    0.000000]  modified: 00000000bfd9f000 - 00000000bfe00000 (ACPI data)
[    0.000000]  modified: 00000000bfe00000 - 00000000c0000000 (reserved)
[    0.000000]  modified: 00000000e0000000 - 00000000f0000000 (reserved)
[    0.000000]  modified: 00000000fec00000 - 00000000fec10000 (reserved)
[    0.000000]  modified: 00000000fed00000 - 00000000fed00400 (reserved)
[    0.000000]  modified: 00000000fed10000 - 00000000fed14000 (reserved)
[    0.000000]  modified: 00000000fed18000 - 00000000fed1a000 (reserved)
[    0.000000]  modified: 00000000fed1c000 - 00000000fed90000 (reserved)
[    0.000000]  modified: 00000000fee00000 - 00000000fee01000 (reserved)
[    0.000000]  modified: 00000000ff800000 - 0000000100000000 (reserved)
[    0.000000] initial memory mapped : 0 - 00c00000
[    0.000000] init_memory_mapping: 0000000000000000-00000000377fe000
[    0.000000] Using x86 segment limits to approximate NX protection
[    0.000000]  0000000000 - 0000400000 page 4k
[    0.000000]  0000400000 - 0037400000 page 2M
[    0.000000]  0037400000 - 00377fe000 page 4k
[    0.000000] kernel direct mapping tables up to 377fe000 @ 7000-c000
[    0.000000] RAMDISK: 37859000 - 37fefec8
[    0.000000] Allocated new RAMDISK: 008e0000 - 01076ec8
[    0.000000] Move RAMDISK from 0000000037859000 - 0000000037fefec7
to 008e0000 - 01076ec7
[    0.000000] ACPI: RSDP 000f75f0 00024 (v02 LENOVO)
[    0.000000] ACPI: XSDT bfdf7fa8 0006C (v01 LENOVO CB-01    00000000
 LTP 00000000)
[    0.000000] ACPI: FACP bfde8000 000F4 (v03 LENOVO CB-01    00000001
ALAN 00000001)
[    0.000000] ACPI: DSDT bfde9000 06BE2 (v02 LENOVO CB-01    00000001
INTL 20050624)
[    0.000000] ACPI: FACS bfd9efc0 00040
[    0.000000] ACPI: HPET bfdfed86 00038 (v01 LENOVO CB-01    00000001
LOHR 0000005A)
[    0.000000] ACPI: MCFG bfdfedbe 0003C (v01 LENOVO CB-01    00000001
LOHR 0000005A)
[    0.000000] ACPI: SLIC bfdfedfa 00176 (v01 LENOVO CB-01    00000001
TBD  00000001)
[    0.000000] ACPI: APIC bfdfef70 00068 (v01 PTLTD  ? APIC   00000000
 LTP 00000000)
[    0.000000] ACPI: BOOT bfdfefd8 00028 (v01 PTLTD  $SBFTBL$ 00000000
 LTP 00000001)
[    0.000000] ACPI: SSDT bfde7000 00655 (v01  PmRef    CpuPm 00003000
INTL 20050624)
[    0.000000] ACPI: SSDT bfde6000 00259 (v01  PmRef  Cpu0Tst 00003000
INTL 20050624)
[    0.000000] ACPI: SSDT bfde5000 0020F (v01  PmRef    ApTst 00003000
INTL 20050624)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] 2181MB HIGHMEM available.
[    0.000000] 887MB LOWMEM available.
[    0.000000]   mapped low ram: 0 - 377fe000
[    0.000000]   low ram: 0 - 377fe000
[    0.000000]   node 0 low ram: 00000000 - 377fe000
[    0.000000]   node 0 bootmap 00008000 - 0000ef00
[    0.000000] (9 early reservations) ==> bootmem [0000000000 - 00377fe000]
[    0.000000]   #0 [0000000000 - 0000001000]   BIOS data page ==>
[0000000000 - 0000001000]
[    0.000000]   #1 [0000001000 - 0000002000]    EX TRAMPOLINE ==>
[0000001000 - 0000002000]
[    0.000000]   #2 [0000006000 - 0000007000]       TRAMPOLINE ==>
[0000006000 - 0000007000]
[    0.000000]   #3 [0000100000 - 00008dbeb8]    TEXT DATA BSS ==>
[0000100000 - 00008dbeb8]
[    0.000000]   #4 [000009f400 - 0000100000]    BIOS reserved ==>
[000009f400 - 0000100000]
[    0.000000]   #5 [00008dc000 - 00008df188]              BRK ==>
[00008dc000 - 00008df188]
[    0.000000]   #6 [0000007000 - 0000008000]          PGTABLE ==>
[0000007000 - 0000008000]
[    0.000000]   #7 [00008e0000 - 0001076ec8]      NEW RAMDISK ==>
[00008e0000 - 0001076ec8]
[    0.000000]   #8 [0000008000 - 000000f000]          BOOTMAP ==>
[0000008000 - 000000f000]
[    0.000000] found SMP MP-table at [c00f7680] f7680
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000000 -> 0x00001000
[    0.000000]   Normal   0x00001000 -> 0x000377fe
[    0.000000]   HighMem  0x000377fe -> 0x000bfd64
[    0.000000] Movable zone start PFN for each node
[    0.000000] early_node_map[7] active PFN ranges
[    0.000000]     0: 0x00000000 -> 0x00000002
[    0.000000]     0: 0x00000006 -> 0x0000009f
[    0.000000]     0: 0x00000100 -> 0x000bf8a1
[    0.000000]     0: 0x000bf8a7 -> 0x000bf9ba
[    0.000000]     0: 0x000bfa0f -> 0x000bfb08
[    0.000000]     0: 0x000bfd0f -> 0x000bfd18
[    0.000000]     0: 0x000bfd1f -> 0x000bfd64
[    0.000000] On node 0 totalpages: 785046
[    0.000000] free_area_init_node: node 0, pgdat c0798760,
node_mem_map c1078000
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 3963 pages, LIFO batch:0
[    0.000000]   Normal zone: 1744 pages used for memmap
[    0.000000]   Normal zone: 221486 pages, LIFO batch:31
[    0.000000]   HighMem zone: 4363 pages used for memmap
[    0.000000]   HighMem zone: 553458 pages, LIFO batch:31
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
[    0.000000] nr_irqs_gsi: 24
[    0.000000] PM: Registered nosave memory: 0000000000002000 - 0000000000006000
[    0.000000] PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000d2000
[    0.000000] PM: Registered nosave memory: 00000000000d2000 - 00000000000d4000
[    0.000000] PM: Registered nosave memory: 00000000000d4000 - 00000000000dc000
[    0.000000] PM: Registered nosave memory: 00000000000dc000 - 0000000000100000
[    0.000000] Allocating PCI resources starting at c0000000 (gap:
c0000000:20000000)
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:2 nr_node_ids:1
[    0.000000] PERCPU: Embedded 14 pages/cpu @c2c00000 s36056 r0 d21288 u2097152
[    0.000000] pcpu-alloc: s36056 r0 d21288 u2097152 alloc=1*4194304
[    0.000000] pcpu-alloc: [0] 0 1
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
Total pages: 778907
[    0.000000] Kernel command line:
BOOT_IMAGE=/boot/vmlinuz-2.6.32-23-generic
root=UUID=d0e48943-f796-496c-8843-c28de7419b04 ro quiet splash
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Enabling fast FPU save and restore... done.
[    0.000000] Enabling unmasked SIMD FPU exception support... done.
[    0.000000] Initializing CPU#0
[    0.000000] xsave/xrstor: enabled xstate_bv 0x3, cntxt size 0x240
[    0.000000] allocated 15715280 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't
want memory cgroups
[    0.000000] Initializing HighMem for node 0 (000377fe:000bfd64)
[    0.000000] Memory: 3082424k/3143056k available (4676k kernel code,
56768k reserved, 2118k data, 660k init, 2231284k highmem)
[    0.000000] virtual kernel memory layout:
[    0.000000]     fixmap  : 0xfff1d000 - 0xfffff000   ( 904 kB)
[    0.000000]     pkmap   : 0xff800000 - 0xffc00000   (4096 kB)
[    0.000000]     vmalloc : 0xf7ffe000 - 0xff7fe000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf77fe000   ( 887 MB)
[    0.000000]       .init : 0xc07a3000 - 0xc0848000   ( 660 kB)
[    0.000000]       .data : 0xc0591293 - 0xc07a2e88   (2118 kB)
[    0.000000]       .text : 0xc0100000 - 0xc0591293   (4676 kB)
[    0.000000] Checking if this processor honours the WP bit even in
supervisor mode...Ok.
[    0.000000] SLUB: Genslabs=13, HWalign=64, Order=0-3, MinObjects=0,
CPUs=2, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] NR_IRQS:2304 nr_irqs:424
[    0.000000] Extended CMOS year: 2000
[    0.000000] Console: colour VGA+ 80x25
[    0.000000] console [tty0] enabled
[    0.000000] hpet clockevent registered
[    0.000000] HPET: 4 timers in total, 0 timers will be used for per-cpu timer
[    0.000000] Fast TSC calibration using PIT
[    0.000000] Detected 2526.981 MHz processor.
[    0.004004] Calibrating delay loop (skipped), value calculated
using timer frequency.. 5053.96 BogoMIPS (lpj=10107924)
[    0.004017] Security Framework initialized
[    0.004033] AppArmor: AppArmor initialized
[    0.004038] Mount-cache hash table entries: 512
[    0.004139] Initializing cgroup subsys ns
[    0.004143] Initializing cgroup subsys cpuacct
[    0.004146] Initializing cgroup subsys memory
[    0.004152] Initializing cgroup subsys devices
[    0.004154] Initializing cgroup subsys freezer
[    0.004155] Initializing cgroup subsys net_cls
[    0.004172] CPU: L1 I cache: 32K, L1 D cache: 32K
[    0.004174] CPU: L2 cache: 3072K
[    0.004177] CPU: Physical Processor ID: 0
[    0.004178] CPU: Processor Core ID: 0
[    0.004182] mce: CPU supports 6 MCE banks
[    0.004189] CPU0: Thermal monitoring enabled (TM2)
[    0.004191] using mwait in idle threads.
[    0.004197] Performance Events: Core2 events, Intel PMU driver.
[    0.004204] ... version:                2
[    0.004205] ... bit width:              40
[    0.004207] ... generic registers:      2
[    0.004208] ... value mask:             000000ffffffffff
[    0.004210] ... max period:             000000007fffffff
[    0.004211] ... fixed-purpose events:   3
[    0.004213] ... event mask:             0000000700000003
[    0.004217] Checking 'hlt' instruction... OK.
[    0.022341] ACPI: Core revision 20090903
[    0.032009] ftrace: converting mcount calls to 0f 1f 44 00 00
[    0.032014] ftrace: allocating 21776 entries in 43 pages
[    0.036044] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.036387] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.076371] CPU0: Intel(R) Core(TM)2 Duo CPU     P8700  @ 2.53GHz stepping 0a
[    0.080001] Booting processor 1 APIC 0x1 ip 0x6000
[    0.008000] Initializing CPU#1
[    0.008000] CPU: L1 I cache: 32K, L1 D cache: 32K
[    0.008000] CPU: L2 cache: 3072K
[    0.008000] CPU: Physical Processor ID: 0
[    0.008000] CPU: Processor Core ID: 1
[    0.008000] CPU1: Thermal monitoring enabled (TM2)
[    0.164053] CPU1: Intel(R) Core(TM)2 Duo CPU     P8700  @ 2.53GHz stepping 0a
[    0.164063] checking TSC synchronization [CPU#0 -> CPU#1]: passed.
[    0.168015] Brought up 2 CPUs
[    0.168017] Total of 2 processors activated (10107.92 BogoMIPS).
[    0.168560] CPU0 attaching sched-domain:
[    0.168563]  domain 0: span 0-1 level MC
[    0.168565]   groups: 0 1
[    0.168570] CPU1 attaching sched-domain:
[    0.168571]  domain 0: span 0-1 level MC
[    0.168573]   groups: 1 0
[    0.168650] devtmpfs: initialized
[    0.168650] regulator: core version 0.5
[    0.168650] Time: 15:13:38  Date: 07/20/10
[    0.168650] NET: Registered protocol family 16
[    0.168650] Trying to unpack rootfs image as initramfs...
[    0.168650] EISA bus registered
[    0.168650] ACPI: bus type pci registered
[    0.168650] PCI: MCFG configuration 0: base e0000000 segment 0 buses 0 - 255
[    0.168650] PCI: MCFG area at e0000000 reserved in E820
[    0.168650] PCI: Using MMCONFIG for extended config space
[    0.168650] PCI: Using configuration type 1 for base access
[    0.172078] bio: create slab <bio-0> at 0
[    0.173046] ACPI: EC: Look up EC in DSDT
[    0.176041] ACPI: BIOS _OSI(Linux) query ignored
[    0.184238] ACPI: Interpreter enabled
[    0.184238] ACPI: (supports S0 S3 S4 S5)
[    0.184238] ACPI: Using IOAPIC for interrupt routing
[    0.231022] ACPI: EC: GPE = 0x1c, I/O: command/status = 0x66, data = 0x62
[    0.231323] ACPI: No dock devices found.
[    0.231852] ACPI: PCI Root Bridge [PCI0] (0000:00)
[    0.231948] pci 0000:00:01.0: PME# supported from D0 D3hot D3cold
[    0.231950] pci 0000:00:01.0: PME# disabled
[    0.232050] pci 0000:00:1a.0: reg 20 io port: [0x1800-0x181f]
[    0.232141] pci 0000:00:1a.1: reg 20 io port: [0x1820-0x183f]
[    0.232231] pci 0000:00:1a.2: reg 20 io port: [0x1840-0x185f]
[    0.232323] pci 0000:00:1a.7: reg 10 32bit mmio: [0xf5505800-0xf5505bff]
[    0.232389] pci 0000:00:1a.7: PME# supported from D0 D3hot D3cold
[    0.232394] pci 0000:00:1a.7: PME# disabled
[    0.232448] pci 0000:00:1b.0: reg 10 64bit mmio: [0xf5500000-0xf5503fff]
[    0.232507] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.232511] pci 0000:00:1b.0: PME# disabled
[    0.232600] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.232605] pci 0000:00:1c.0: PME# disabled
[    0.232697] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.232701] pci 0000:00:1c.1: PME# disabled
[    0.232793] pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
[    0.232797] pci 0000:00:1c.2: PME# disabled
[    0.232890] pci 0000:00:1c.3: PME# supported from D0 D3hot D3cold
[    0.232894] pci 0000:00:1c.3: PME# disabled
[    0.232986] pci 0000:00:1c.4: PME# supported from D0 D3hot D3cold
[    0.232990] pci 0000:00:1c.4: PME# disabled
[    0.233083] pci 0000:00:1c.5: PME# supported from D0 D3hot D3cold
[    0.233088] pci 0000:00:1c.5: PME# disabled
[    0.233162] pci 0000:00:1d.0: reg 20 io port: [0x1860-0x187f]
[    0.233251] pci 0000:00:1d.1: reg 20 io port: [0x1880-0x189f]
[    0.233341] pci 0000:00:1d.2: reg 20 io port: [0x18a0-0x18bf]
[    0.233433] pci 0000:00:1d.7: reg 10 32bit mmio: [0xf5505c00-0xf5505fff]
[    0.233499] pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
[    0.233504] pci 0000:00:1d.7: PME# disabled
[    0.233757] pci 0000:00:1f.2: reg 10 io port: [0x18f0-0x18f7]
[    0.233764] pci 0000:00:1f.2: reg 14 io port: [0x18e4-0x18e7]
[    0.233771] pci 0000:00:1f.2: reg 18 io port: [0x18e8-0x18ef]
[    0.233779] pci 0000:00:1f.2: reg 1c io port: [0x18e0-0x18e3]
[    0.233786] pci 0000:00:1f.2: reg 20 io port: [0x18c0-0x18df]
[    0.233794] pci 0000:00:1f.2: reg 24 32bit mmio: [0xf5505000-0xf55057ff]
[    0.233839] pci 0000:00:1f.2: PME# supported from D3hot
[    0.233843] pci 0000:00:1f.2: PME# disabled
[    0.233882] pci 0000:00:1f.3: reg 10 64bit mmio: [0x000000-0x0000ff]
[    0.233901] pci 0000:00:1f.3: reg 20 io port: [0x1c00-0x1c1f]
[    0.233972] pci 0000:00:1f.6: reg 10 64bit mmio: [0xf5504000-0xf5504fff]
[    0.234089] pci 0000:01:00.0: reg 10 32bit mmio: [0xf4000000-0xf4ffffff]
[    0.234102] pci 0000:01:00.0: reg 14 64bit mmio pref: [0xd0000000-0xdfffffff]
[    0.234115] pci 0000:01:00.0: reg 1c 64bit mmio pref: [0xce000000-0xcfffffff]
[    0.234122] pci 0000:01:00.0: reg 24 io port: [0x2000-0x207f]
[    0.234129] pci 0000:01:00.0: reg 30 32bit mmio pref: [0x000000-0x07ffff]
[    0.234217] pci 0000:01:00.1: reg 10 32bit mmio: [0xf5000000-0xf5003fff]
[    0.234346] pci 0000:00:01.0: bridge io port: [0x2000-0x2fff]
[    0.234348] pci 0000:00:01.0: bridge 32bit mmio: [0xf4000000-0xf50fffff]
[    0.234353] pci 0000:00:01.0: bridge 64bit mmio pref: [0xce000000-0xdfffffff]
[    0.234841] pci 0000:04:00.0: reg 10 64bit mmio: [0xf5100000-0xf5103fff]
[    0.235058] pci 0000:04:00.0: supports D1 D2
[    0.235059] pci 0000:04:00.0: PME# supported from D0 D3hot D3cold
[    0.235071] pci 0000:04:00.0: PME# disabled
[    0.235206] pci 0000:00:1c.2: bridge 32bit mmio: [0xf5100000-0xf51fffff]
[    0.235269] pci 0000:00:1c.3: bridge io port: [0x3000-0x3fff]
[    0.235274] pci 0000:00:1c.3: bridge 32bit mmio: [0xf0000000-0xf3ffffff]
[    0.235281] pci 0000:00:1c.3: bridge 64bit mmio pref: [0xf6000000-0xf7ffffff]
[    0.235611] pci 0000:08:00.0: reg 10 64bit mmio: [0xf5200000-0xf520ffff]
[    0.235746] pci 0000:08:00.0: PME# supported from D3hot D3cold
[    0.235753] pci 0000:08:00.0: PME# disabled
[    0.235833] pci 0000:00:1c.5: bridge 32bit mmio: [0xf5200000-0xf52fffff]
[    0.235900] pci 0000:00:1e.0: transparent bridge
[    0.235955] pci_bus 0000:00: on NUMA node 0
[    0.235960] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    0.236082] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P2._PRT]
[    0.236181] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
[    0.236263] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
[    0.236317] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
[    0.236378] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP04._PRT]
[    0.236432] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP05._PRT]
[    0.236486] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP06._PRT]
[    0.245134] ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 *5 6 7 10 12 14 15)
[    0.245226] ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 7 *11 12 14 15)
[    0.245315] ACPI: PCI Interrupt Link [LNKC] (IRQs 1 *3 4 5 6 7 10 12 14 15)
[    0.245403] ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12
14 15) *10
[    0.245494] ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 *7 10 12 14 15)
[    0.245582] ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 *11 12 14 15)
[    0.245671] ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 7 *10 12 14 15)
[    0.245759] ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 *4 5 6 7 11 12 14 15)
[    0.245872] vgaarb: device added:
PCI:0000:01:00.0,decodes=io+mem,owns=io+mem,locks=none
[    0.245875] vgaarb: loaded
[    0.245973] SCSI subsystem initialized
[    0.246045] libata version 3.00 loaded.
[    0.246105] usbcore: registered new interface driver usbfs
[    0.246115] usbcore: registered new interface driver hub
[    0.246137] usbcore: registered new device driver usb
[    0.246238] ACPI: WMI: Mapper loaded
[    0.246240] PCI: Using ACPI for IRQ routing
[    0.246967] NetLabel: Initializing
[    0.246968] NetLabel:  domain hash size = 128
[    0.246970] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.246980] NetLabel:  unlabeled traffic allowed by default
[    0.247007] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0
[    0.247012] hpet0: 4 comparators, 64-bit 14.318180 MHz counter
[    0.252031] Switching to clocksource tsc
[    0.253690] AppArmor: AppArmor Filesystem Enabled
[    0.253699] pnp: PnP ACPI init
[    0.253709] ACPI: bus type pnp registered
[    0.272461] pnp: PnP ACPI: found 11 devices
[    0.272464] ACPI: ACPI bus type pnp unregistered
[    0.272467] PnPBIOS: Disabled by ACPI PNP
[    0.272480] system 00:04: iomem range 0xfed00000-0xfed003ff has been reserved
[    0.272486] system 00:06: ioport range 0x680-0x69f has been reserved
[    0.272488] system 00:06: ioport range 0x480-0x48f has been reserved
[    0.272491] system 00:06: ioport range 0xffff-0xffff has been reserved
[    0.272493] system 00:06: ioport range 0xffff-0xffff has been reserved
[    0.272495] system 00:06: ioport range 0x400-0x47f has been reserved
[    0.272497] system 00:06: ioport range 0x1180-0x11ff has been reserved
[    0.272499] system 00:06: ioport range 0x164e-0x164f has been reserved
[    0.272501] system 00:06: ioport range 0xfe00-0xfe00 has been reserved
[    0.272507] system 00:0a: iomem range 0xfed1c000-0xfed1ffff has been reserved
[    0.272509] system 00:0a: iomem range 0xfed10000-0xfed13fff has been reserved
[    0.272511] system 00:0a: iomem range 0xfed18000-0xfed18fff has been reserved
[    0.272514] system 00:0a: iomem range 0xfed19000-0xfed19fff has been reserved
[    0.272516] system 00:0a: iomem range 0xe0000000-0xefffffff has been reserved
[    0.272518] system 00:0a: iomem range 0xfed20000-0xfed3ffff has been reserved
[    0.272520] system 00:0a: iomem range 0xfed45000-0xfed8ffff has been reserved
[    0.307558] pci 0000:00:01.0: PCI bridge, secondary bus 0000:01
[    0.307562] pci 0000:00:01.0:   IO window: 0x2000-0x2fff
[    0.307565] pci 0000:00:01.0:   MEM window: 0xf4000000-0xf50fffff
[    0.307568] pci 0000:00:01.0:   PREFETCH window:
0x000000ce000000-0x000000dfffffff
[    0.307572] pci 0000:00:1c.0: PCI bridge, secondary bus 0000:02
[    0.307575] pci 0000:00:1c.0:   IO window: 0x4000-0x4fff
[    0.307581] pci 0000:00:1c.0:   MEM window: 0xc0000000-0xc01fffff
[    0.307586] pci 0000:00:1c.0:   PREFETCH window:
0x000000c0200000-0x000000c03fffff
[    0.307593] pci 0000:00:1c.1: PCI bridge, secondary bus 0000:03
[    0.307596] pci 0000:00:1c.1:   IO window: 0x5000-0x5fff
[    0.307602] pci 0000:00:1c.1:   MEM window: 0xc0400000-0xc05fffff
[    0.307612] pci 0000:00:1c.1:   PREFETCH window:
0x000000c0600000-0x000000c07fffff
[    0.307620] pci 0000:00:1c.2: PCI bridge, secondary bus 0000:04
[    0.307623] pci 0000:00:1c.2:   IO window: 0x6000-0x6fff
[    0.307628] pci 0000:00:1c.2:   MEM window: 0xf5100000-0xf51fffff
[    0.307633] pci 0000:00:1c.2:   PREFETCH window:
0x000000c0800000-0x000000c09fffff
[    0.307640] pci 0000:00:1c.3: PCI bridge, secondary bus 0000:05
[    0.307643] pci 0000:00:1c.3:   IO window: 0x3000-0x3fff
[    0.307649] pci 0000:00:1c.3:   MEM window: 0xf0000000-0xf3ffffff
[    0.307654] pci 0000:00:1c.3:   PREFETCH window:
0x000000f6000000-0x000000f7ffffff
[    0.307661] pci 0000:00:1c.4: PCI bridge, secondary bus 0000:07
[    0.307664] pci 0000:00:1c.4:   IO window: 0x7000-0x7fff
[    0.307670] pci 0000:00:1c.4:   MEM window: 0xc0a00000-0xc0bfffff
[    0.307675] pci 0000:00:1c.4:   PREFETCH window:
0x000000c0c00000-0x000000c0dfffff
[    0.307682] pci 0000:00:1c.5: PCI bridge, secondary bus 0000:08
[    0.307685] pci 0000:00:1c.5:   IO window: 0x8000-0x8fff
[    0.307691] pci 0000:00:1c.5:   MEM window: 0xf5200000-0xf52fffff
[    0.307695] pci 0000:00:1c.5:   PREFETCH window:
0x000000c0e00000-0x000000c0ffffff
[    0.307703] pci 0000:00:1e.0: PCI bridge, secondary bus 0000:09
[    0.307704] pci 0000:00:1e.0:   IO window: disabled
[    0.307710] pci 0000:00:1e.0:   MEM window: disabled
[    0.307714] pci 0000:00:1e.0:   PREFETCH window: disabled
[    0.307729]   alloc irq_desc for 16 on node -1
[    0.307731]   alloc kstat_irqs on node -1
[    0.307737] pci 0000:00:01.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    0.307740] pci 0000:00:01.0: setting latency timer to 64
[    0.307751]   alloc irq_desc for 17 on node -1
[    0.307753]   alloc kstat_irqs on node -1
[    0.307756] pci 0000:00:1c.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
[    0.307760] pci 0000:00:1c.0: setting latency timer to 64
[    0.307770] pci 0000:00:1c.1: PCI INT B -> GSI 16 (level, low) -> IRQ 16
[    0.307775] pci 0000:00:1c.1: setting latency timer to 64
[    0.307784]   alloc irq_desc for 18 on node -1
[    0.307785]   alloc kstat_irqs on node -1
[    0.307788] pci 0000:00:1c.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    0.307793] pci 0000:00:1c.2: setting latency timer to 64
[    0.307802]   alloc irq_desc for 19 on node -1
[    0.307803]   alloc kstat_irqs on node -1
[    0.307806] pci 0000:00:1c.3: PCI INT D -> GSI 19 (level, low) -> IRQ 19
[    0.307810] pci 0000:00:1c.3: setting latency timer to 64
[    0.307820] pci 0000:00:1c.4: PCI INT A -> GSI 17 (level, low) -> IRQ 17
[    0.307824] pci 0000:00:1c.4: setting latency timer to 64
[    0.307834] pci 0000:00:1c.5: PCI INT B -> GSI 16 (level, low) -> IRQ 16
[    0.307838] pci 0000:00:1c.5: setting latency timer to 64
[    0.307846] pci 0000:00:1e.0: setting latency timer to 64
[    0.307850] pci_bus 0000:00: resource 0 io:  [0x00-0xffff]
[    0.307852] pci_bus 0000:00: resource 1 mem: [0x000000-0xffffffff]
[    0.307854] pci_bus 0000:01: resource 0 io:  [0x2000-0x2fff]
[    0.307856] pci_bus 0000:01: resource 1 mem: [0xf4000000-0xf50fffff]
[    0.307858] pci_bus 0000:01: resource 2 pref mem [0xce000000-0xdfffffff]
[    0.307860] pci_bus 0000:02: resource 0 io:  [0x4000-0x4fff]
[    0.307862] pci_bus 0000:02: resource 1 mem: [0xc0000000-0xc01fffff]
[    0.307864] pci_bus 0000:02: resource 2 pref mem [0xc0200000-0xc03fffff]
[    0.307866] pci_bus 0000:03: resource 0 io:  [0x5000-0x5fff]
[    0.307868] pci_bus 0000:03: resource 1 mem: [0xc0400000-0xc05fffff]
[    0.307870] pci_bus 0000:03: resource 2 pref mem [0xc0600000-0xc07fffff]
[    0.307872] pci_bus 0000:04: resource 0 io:  [0x6000-0x6fff]
[    0.307874] pci_bus 0000:04: resource 1 mem: [0xf5100000-0xf51fffff]
[    0.307876] pci_bus 0000:04: resource 2 pref mem [0xc0800000-0xc09fffff]
[    0.307878] pci_bus 0000:05: resource 0 io:  [0x3000-0x3fff]
[    0.307880] pci_bus 0000:05: resource 1 mem: [0xf0000000-0xf3ffffff]
[    0.307882] pci_bus 0000:05: resource 2 pref mem [0xf6000000-0xf7ffffff]
[    0.307884] pci_bus 0000:07: resource 0 io:  [0x7000-0x7fff]
[    0.307886] pci_bus 0000:07: resource 1 mem: [0xc0a00000-0xc0bfffff]
[    0.307888] pci_bus 0000:07: resource 2 pref mem [0xc0c00000-0xc0dfffff]
[    0.307890] pci_bus 0000:08: resource 0 io:  [0x8000-0x8fff]
[    0.307892] pci_bus 0000:08: resource 1 mem: [0xf5200000-0xf52fffff]
[    0.307894] pci_bus 0000:08: resource 2 pref mem [0xc0e00000-0xc0ffffff]
[    0.307896] pci_bus 0000:09: resource 3 io:  [0x00-0xffff]
[    0.307898] pci_bus 0000:09: resource 4 mem: [0x000000-0xffffffff]
[    0.307931] NET: Registered protocol family 2
[    0.308015] IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.308278] TCP established hash table entries: 131072 (order: 8,
1048576 bytes)
[    0.308653] TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
[    0.308826] TCP: Hash tables configured (established 131072 bind 65536)
[    0.308828] TCP reno registered
[    0.308887] NET: Registered protocol family 1
[    0.309057] pci 0000:01:00.0: Boot video device
[    0.309092] Simple Boot Flag at 0x36 set to 0x1
[    0.309226] cpufreq-nforce2: No nForce2 chipset.
[    0.309248] Scanning for low memory corruption every 60 seconds
[    0.309337] audit: initializing netlink socket (disabled)
[    0.309345] type=2000 audit(1279638817.307:1): initialized
[    0.317333] highmem bounce pool size: 64 pages
[    0.317337] HugeTLB registered 4 MB page size, pre-allocated 0 pages
[    0.318552] VFS: Disk quotas dquot_6.5.2
[    0.318600] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    0.319047] fuse init (API version 7.13)
[    0.319116] msgmni has been set to 1664
[    0.319284] alg: No test for stdrng (krng)
[    0.319325] Block layer SCSI generic (bsg) driver version 0.4
loaded (major 253)
[    0.319328] io scheduler noop registered
[    0.319329] io scheduler anticipatory registered
[    0.319331] io scheduler deadline registered
[    0.319361] io scheduler cfq registered (default)
[    0.319485]   alloc irq_desc for 24 on node -1
[    0.319486]   alloc kstat_irqs on node -1
[    0.319493] pcieport 0000:00:01.0: irq 24 for MSI/MSI-X
[    0.319499] pcieport 0000:00:01.0: setting latency timer to 64
[    0.319622]   alloc irq_desc for 25 on node -1
[    0.319623]   alloc kstat_irqs on node -1
[    0.319631] pcieport 0000:00:1c.0: irq 25 for MSI/MSI-X
[    0.319641] pcieport 0000:00:1c.0: setting latency timer to 64
[    0.319780]   alloc irq_desc for 26 on node -1
[    0.319781]   alloc kstat_irqs on node -1
[    0.319789] pcieport 0000:00:1c.1: irq 26 for MSI/MSI-X
[    0.319799] pcieport 0000:00:1c.1: setting latency timer to 64
[    0.319939]   alloc irq_desc for 27 on node -1
[    0.319941]   alloc kstat_irqs on node -1
[    0.319949] pcieport 0000:00:1c.2: irq 27 for MSI/MSI-X
[    0.319959] pcieport 0000:00:1c.2: setting latency timer to 64
[    0.320100]   alloc irq_desc for 28 on node -1
[    0.320102]   alloc kstat_irqs on node -1
[    0.320110] pcieport 0000:00:1c.3: irq 28 for MSI/MSI-X
[    0.320120] pcieport 0000:00:1c.3: setting latency timer to 64
[    0.320260]   alloc irq_desc for 29 on node -1
[    0.320262]   alloc kstat_irqs on node -1
[    0.320269] pcieport 0000:00:1c.4: irq 29 for MSI/MSI-X
[    0.320279] pcieport 0000:00:1c.4: setting latency timer to 64
[    0.320421]   alloc irq_desc for 30 on node -1
[    0.320422]   alloc kstat_irqs on node -1
[    0.320430] pcieport 0000:00:1c.5: irq 30 for MSI/MSI-X
[    0.320440] pcieport 0000:00:1c.5: setting latency timer to 64
[    0.320530] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    0.320708] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    0.323648] ACPI: AC Adapter [ACAD] (on-line)
[    0.323705] input: Lid Switch as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input0
[    0.323775] ACPI: Lid Switch [LID0]
[    0.323809] input: Power Button as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input1
[    0.323811] ACPI: Power Button [PWRB]
[    0.323846] input: Sleep Button as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input2
[    0.323848] ACPI: Sleep Button [SLPB]
[    0.323894] input: Power Button as
/devices/LNXSYSTM:00/LNXPWRBN:00/input/input3
[    0.323896] ACPI: Power Button [PWRF]
[    0.324654] ACPI: SSDT bfd1ac20 00265 (v01  PmRef  Cpu0Ist 00003000
INTL 20050624)
[    0.325107] ACPI: SSDT bfd18620 00549 (v01  PmRef  Cpu0Cst 00003001
INTL 20050624)
[    0.326976] Monitor-Mwait will be used to enter C-1 state
[    0.326998] Monitor-Mwait will be used to enter C-2 state
[    0.327003] Marking TSC unstable due to TSC halts in idle
[    0.327049] processor LNXCPU:00: registered as cooling_device0
[    0.327431] ACPI: SSDT bfd19ca0 001CF (v01  PmRef    ApIst 00003000
INTL 20050624)
[    0.327772] ACPI: SSDT bfd19f20 0008D (v01  PmRef    ApCst 00003000
INTL 20050624)
[    0.328267] Switching to clocksource hpet
[    0.335859] processor LNXCPU:01: registered as cooling_device1
[    0.338320] Freeing initrd memory: 7771k freed
[    0.359607] ACPI: Invalid active0 threshold
[    0.363521] thermal LNXTHERM:01: registered as thermal_zone0
[    0.363527] ACPI: Thermal Zone [TZ00] (52 C)
[    0.363715] isapnp: Scanning for PnP cards...
[    0.364862] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.365971] brd: module loaded
[    0.366350] loop: module loaded
[    0.366416] input: Macintosh mouse button emulation as
/devices/virtual/input/input4
[    0.366742] Fixed MDIO Bus: probed
[    0.366768] PPP generic driver version 2.4.2
[    0.366796] tun: Universal TUN/TAP device driver, 1.6
[    0.366798] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    0.366857] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.366879]   alloc irq_desc for 20 on node -1
[    0.366880]   alloc kstat_irqs on node -1
[    0.366886] ehci_hcd 0000:00:1a.7: PCI INT C -> GSI 20 (level, low) -> IRQ 20
[    0.366896] ehci_hcd 0000:00:1a.7: setting latency timer to 64
[    0.366899] ehci_hcd 0000:00:1a.7: EHCI Host Controller
[    0.366923] ehci_hcd 0000:00:1a.7: new USB bus registered, assigned
bus number 1
[    0.366953] ehci_hcd 0000:00:1a.7: debug port 1
[    0.370842] ehci_hcd 0000:00:1a.7: cache line size of 32 is not supported
[    0.370855] ehci_hcd 0000:00:1a.7: irq 20, io mem 0xf5505800
[    0.388012] ehci_hcd 0000:00:1a.7: USB 2.0 started, EHCI 1.00
[    0.388087] usb usb1: configuration #1 chosen from 1 choice
[    0.388111] hub 1-0:1.0: USB hub found
[    0.388117] hub 1-0:1.0: 6 ports detected
[    0.388171]   alloc irq_desc for 23 on node -1
[    0.388172]   alloc kstat_irqs on node -1
[    0.388175] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    0.388184] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[    0.388187] ehci_hcd 0000:00:1d.7: EHCI Host Controller
[    0.388214] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned
bus number 2
[    0.388238] ehci_hcd 0000:00:1d.7: debug port 1
[    0.392115] ehci_hcd 0000:00:1d.7: cache line size of 32 is not supported
[    0.392126] ehci_hcd 0000:00:1d.7: irq 23, io mem 0xf5505c00
[    0.408126] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
[    0.408186] usb usb2: configuration #1 chosen from 1 choice
[    0.408206] hub 2-0:1.0: USB hub found
[    0.408212] hub 2-0:1.0: 6 ports detected
[    0.408262] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.408274] uhci_hcd: USB Universal Host Controller Interface driver
[    0.408290] uhci_hcd 0000:00:1a.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    0.408296] uhci_hcd 0000:00:1a.0: setting latency timer to 64
[    0.408298] uhci_hcd 0000:00:1a.0: UHCI Host Controller
[    0.408322] uhci_hcd 0000:00:1a.0: new USB bus registered, assigned
bus number 3
[    0.408352] uhci_hcd 0000:00:1a.0: irq 16, io base 0x00001800
[    0.408425] usb usb3: configuration #1 chosen from 1 choice
[    0.408444] hub 3-0:1.0: USB hub found
[    0.408450] hub 3-0:1.0: 2 ports detected
[    0.408486]   alloc irq_desc for 21 on node -1
[    0.408488]   alloc kstat_irqs on node -1
[    0.408491] uhci_hcd 0000:00:1a.1: PCI INT B -> GSI 21 (level, low) -> IRQ 21
[    0.408496] uhci_hcd 0000:00:1a.1: setting latency timer to 64
[    0.408499] uhci_hcd 0000:00:1a.1: UHCI Host Controller
[    0.408526] uhci_hcd 0000:00:1a.1: new USB bus registered, assigned
bus number 4
[    0.408558] uhci_hcd 0000:00:1a.1: irq 21, io base 0x00001820
[    0.408634] usb usb4: configuration #1 chosen from 1 choice
[    0.408653] hub 4-0:1.0: USB hub found
[    0.408658] hub 4-0:1.0: 2 ports detected
[    0.408695] uhci_hcd 0000:00:1a.2: PCI INT C -> GSI 20 (level, low) -> IRQ 20
[    0.408701] uhci_hcd 0000:00:1a.2: setting latency timer to 64
[    0.408703] uhci_hcd 0000:00:1a.2: UHCI Host Controller
[    0.408728] uhci_hcd 0000:00:1a.2: new USB bus registered, assigned
bus number 5
[    0.408753] uhci_hcd 0000:00:1a.2: irq 20, io base 0x00001840
[    0.408821] usb usb5: configuration #1 chosen from 1 choice
[    0.408840] hub 5-0:1.0: USB hub found
[    0.408845] hub 5-0:1.0: 2 ports detected
[    0.408882] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    0.408887] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[    0.408890] uhci_hcd 0000:00:1d.0: UHCI Host Controller
[    0.408917] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned
bus number 6
[    0.408940] uhci_hcd 0000:00:1d.0: irq 23, io base 0x00001860
[    0.409009] usb usb6: configuration #1 chosen from 1 choice
[    0.409029] hub 6-0:1.0: USB hub found
[    0.409036] hub 6-0:1.0: 2 ports detected
[    0.409074] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    0.409080] uhci_hcd 0000:00:1d.1: setting latency timer to 64
[    0.409083] uhci_hcd 0000:00:1d.1: UHCI Host Controller
[    0.409106] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned
bus number 7
[    0.409136] uhci_hcd 0000:00:1d.1: irq 19, io base 0x00001880
[    0.409205] usb usb7: configuration #1 chosen from 1 choice
[    0.409225] hub 7-0:1.0: USB hub found
[    0.409230] hub 7-0:1.0: 2 ports detected
[    0.409267] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    0.409272] uhci_hcd 0000:00:1d.2: setting latency timer to 64
[    0.409275] uhci_hcd 0000:00:1d.2: UHCI Host Controller
[    0.409299] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned
bus number 8
[    0.409329] uhci_hcd 0000:00:1d.2: irq 18, io base 0x000018a0
[    0.409401] usb usb8: configuration #1 chosen from 1 choice
[    0.409420] hub 8-0:1.0: USB hub found
[    0.409425] hub 8-0:1.0: 2 ports detected
[    0.409502] PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:MSS1] at
0x60,0x64 irq 1,12
[    0.441273] serio: i8042 KBD port at 0x60,0x64 irq 1
[    0.441287] serio: i8042 AUX port at 0x60,0x64 irq 12
[    0.441375] mice: PS/2 mouse device common for all mice
[    0.443628] rtc_cmos 00:07: RTC can wake from S4
[    0.443656] rtc_cmos 00:07: rtc core: registered rtc_cmos as rtc0
[    0.443685] rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    0.443758] device-mapper: uevent: version 1.0.3
[    0.443834] device-mapper: ioctl: 4.15.0-ioctl (2009-04-01)
initialised: dm-devel at redhat.com
[    0.443885] device-mapper: multipath: version 1.1.0 loaded
[    0.443887] device-mapper: multipath round-robin: version 1.0.0 loaded
[    0.443968] EISA: Probing bus 0 at eisa.0
[    0.443974] Cannot allocate resource for EISA slot 1
[    0.443976] Cannot allocate resource for EISA slot 2
[    0.443977] Cannot allocate resource for EISA slot 3
[    0.443979] Cannot allocate resource for EISA slot 4
[    0.443980] Cannot allocate resource for EISA slot 5
[    0.443982] Cannot allocate resource for EISA slot 6
[    0.443983] Cannot allocate resource for EISA slot 7
[    0.443985] Cannot allocate resource for EISA slot 8
[    0.443986] EISA: Detected 0 cards.
[    0.444132] cpuidle: using governor ladder
[    0.444243] cpuidle: using governor menu
[    0.444586] TCP cubic registered
[    0.444705] NET: Registered protocol family 10
[    0.445074] lo: Disabled Privacy Extensions
[    0.445343] NET: Registered protocol family 17
[    0.449893] Using IPI No-Shortcut mode
[    0.449948] PM: Resume from disk failed.
[    0.449958] registered taskstats version 1
[    0.450894]   Magic number: 2:268:235
[    0.451009] rtc_cmos 00:07: setting system clock to 2010-07-20
15:13:38 UTC (1279638818)
[    0.451011] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
[    0.451013] EDD information not available.
[    0.473636] input: AT Translated Set 2 keyboard as
/devices/platform/i8042/serio0/input/input5
[    0.544087] ACPI: Battery Slot [BAT1] (battery present)
[    0.704034] usb 1-2: new high speed USB device using ehci_hcd and address 2
[    0.724462] isapnp: No Plug & Play device found
[    0.724512] Freeing unused kernel memory: 660k freed
[    0.724838] Write protecting the kernel text: 4680k
[    0.724884] Write protecting the kernel read-only data: 1840k
[    0.737704] udev: starting version 151
[    0.798019] tg3.c:v3.102 (September 1, 2009)
[    0.798194] tg3 0000:08:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
[    0.798206] tg3 0000:08:00.0: setting latency timer to 64
[    0.798397] ahci 0000:00:1f.2: version 3.0
[    0.798409] ahci 0000:00:1f.2: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    0.798443]   alloc irq_desc for 31 on node -1
[    0.798445]   alloc kstat_irqs on node -1
[    0.798457] ahci 0000:00:1f.2: irq 31 for MSI/MSI-X
[    0.798502] ahci: SSS flag set, parallel bus scan disabled
[    0.798535] ahci 0000:00:1f.2: AHCI 0001.0200 32 slots 4 ports 3
Gbps 0x13 impl SATA mode
[    0.798538] ahci 0000:00:1f.2: flags: 64bit ncq sntf stag pm led
clo pio slum part ccc ems sxs
[    0.798543] ahci 0000:00:1f.2: setting latency timer to 64
[    0.839073] scsi0 : ahci
[    0.841725] scsi1 : ahci
[    0.841926] scsi2 : ahci
[    0.841975] scsi3 : ahci
[    0.842183] scsi4 : ahci
[    0.842225] ata1: SATA max UDMA/133 abar m2048 at 0xf5505000 port
0xf5505100 irq 31
[    0.842228] ata2: SATA max UDMA/133 abar m2048 at 0xf5505000 port
0xf5505180 irq 31
[    0.842230] ata3: DUMMY
[    0.842231] ata4: DUMMY
[    0.842234] ata5: SATA max UDMA/133 abar m2048 at 0xf5505000 port
0xf5505300 irq 31
[    0.863406] usb 1-2: configuration #1 chosen from 1 choice
[    0.872464] Initializing USB Mass Storage driver...
[    0.872567] scsi5 : SCSI emulation for USB Mass Storage devices
[    0.872664] usbcore: registered new interface driver usb-storage
[    0.872666] USB Mass Storage support registered.
[    0.872669] usb-storage: device found at 2
[    0.872671] usb-storage: waiting for device to settle before scanning
[    0.976066] usb 2-3: new high speed USB device using ehci_hcd and address 2
[    1.160053] ata1: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[    1.207257] ata1.00: ATA-8: WDC WD1600BEVT-22ZCT0, 11.01A11, max UDMA/133
[    1.207261] ata1.00: 312581808 sectors, multi 16: LBA48 NCQ (depth 31/32), AA
[    1.208757] ata1.00: configured for UDMA/133
[    1.224312] scsi 0:0:0:0: Direct-Access     ATA      WDC
WD1600BEVT-2 11.0 PQ: 0 ANSI: 5
[    1.224432] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    1.224470] sd 0:0:0:0: [sda] 312581808 512-byte logical blocks:
(160 GB/149 GiB)
[    1.224513] sd 0:0:0:0: [sda] Write Protect is off
[    1.224516] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.224534] sd 0:0:0:0: [sda] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[    1.224638]  sda: sda1 sda2 sda3 < sda5 > sda4
[    1.254031] sd 0:0:0:0: [sda] Attached SCSI disk
[    1.349524] eth0: Tigon3 [partno(BCM95784M) rev 5784100] (PCI
Express) MAC address 00:26:22:d6:4a:6c
[    1.349527] eth0: attached PHY is 5784 (10/100/1000Base-T Ethernet)
(WireSpeed[1])
[    1.349529] eth0: RXcsums[1] LinkChgREG[0] MIirq[0] ASF[0] TSOcap[1]
[    1.349531] eth0: dma_rwctrl[76180000] dma_mask[64-bit]
[    1.495535] usb 2-3: configuration #1 chosen from 1 choice
[    1.948121] ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[    1.953325] ata2.00: ATAPI: HL-DT-ST DVDRAM GSA-T50N, RV08, max
UDMA/133, ATAPI AN
[    1.958740] ata2.00: configured for UDMA/133
[    1.979189] scsi 1:0:0:0: CD-ROM            HL-DT-ST DVDRAM
GSA-T50N  RV08 PQ: 0 ANSI: 5
[    1.990410] sr0: scsi3-mmc drive: 24x/24x writer dvd-ram cd/rw
xa/form2 cdda tray
[    1.990413] Uniform CD-ROM driver Revision: 3.20
[    1.990518] sr 1:0:0:0: Attached scsi CD-ROM sr0
[    1.990588] sr 1:0:0:0: Attached scsi generic sg1 type 5
[    2.308102] ata5: SATA link down (SStatus 0 SControl 300)
[    2.699956] EXT4-fs (sda5): INFO: recovery required on readonly filesystem
[    2.699959] EXT4-fs (sda5): write access will be enabled during recovery
[    2.836410] EXT4-fs (sda5): orphan cleanup on readonly fs
[    2.836417] EXT4-fs (sda5): ext4_orphan_cleanup: deleting
unreferenced inode 1135
[    2.836475] EXT4-fs (sda5): ext4_orphan_cleanup: deleting
unreferenced inode 1130
[    2.836488] EXT4-fs (sda5): ext4_orphan_cleanup: deleting
unreferenced inode 1081
[    2.836499] EXT4-fs (sda5): 3 orphan inodes deleted
[    2.836501] EXT4-fs (sda5): recovery complete
[    3.165113] EXT4-fs (sda5): mounted filesystem with ordered data mode
[    5.868395] usb-storage: device scan complete
[    5.870589] scsi 5:0:0:0: Direct-Access     Generic- Multi-Card
  1.00 PQ: 0 ANSI: 0 CCS
[    5.871007] sd 5:0:0:0: Attached scsi generic sg2 type 0
[    5.874934] sd 5:0:0:0: [sdb] Attached SCSI removable disk
[   15.520684] udev: starting version 151
[   15.583949] acpi device:02: registered as cooling_device2
[   15.584123] input: Video Bus as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/device:00/LNXVIDEO:00/input/input6
[   15.584162] ACPI: Video Device [VGA] (multi-head: yes  rom: no  post: no)
[   15.603979] lp: driver loaded but no devices found
[   15.687023] vga16fb: initializing
[   15.687026] vga16fb: mapped to 0xc00a0000
[   15.687073] fb0: VGA16 VGA frame buffer device
[   15.720266] lib80211: common routines for IEEE802.11 drivers
[   15.720269] lib80211_crypt: registered algorithm 'NULL'
[   15.724291] wl: module license 'MIXED/Proprietary' taints kernel.
[   15.724295] Disabling lock debugging due to kernel taint
[   15.725195] Linux agpgart interface v0.103
[   15.746764] wl 0000:04:00.0: PCI INT A -> GSI 18 (level, low) -> IRQ 18
[   15.746777] wl 0000:04:00.0: setting latency timer to 64
[   15.752920] Linux video capture interface: v2.00
[   15.755430] uvcvideo: Found UVC 1.00 device Lenovo EasyCamera (5986:0200)
[   15.790285] input: Lenovo EasyCamera as
/devices/pci0000:00/0000:00:1d.7/usb2/2-3/2-3:1.0/input/input7
[   15.790331] usbcore: registered new interface driver uvcvideo
[   15.790333] USB Video Class driver (v0.1.0)
[   15.912765] type=1505 audit(1279653233.957:2):
operation="profile_load" pid=694 name="/sbin/dhclient3"
[   15.913301] type=1505 audit(1279653233.961:3):
operation="profile_load" pid=694
name="/usr/lib/NetworkManager/nm-dhcp-client.action"
[   15.913589] type=1505 audit(1279653233.961:4):
operation="profile_load" pid=694
name="/usr/lib/connman/scripts/dhclient-script"
[   16.271382]   alloc irq_desc for 32 on node -1
[   16.271385]   alloc kstat_irqs on node -1
[   16.271404] tg3 0000:08:00.0: irq 32 for MSI/MSI-X
[   16.389352] type=1505 audit(1279653234.437:5):
operation="profile_load" pid=780
name="/usr/share/gdm/guest-session/Xsession"
[   16.392894] type=1505 audit(1279653234.437:6):
operation="profile_replace" pid=784 name="/sbin/dhclient3"
[   16.393437] type=1505 audit(1279653234.441:7):
operation="profile_replace" pid=784
name="/usr/lib/NetworkManager/nm-dhcp-client.action"
[   16.393728] type=1505 audit(1279653234.441:8):
operation="profile_replace" pid=784
name="/usr/lib/connman/scripts/dhclient-script"
[   16.404198] type=1505 audit(1279653234.449:9):
operation="profile_load" pid=785 name="/usr/bin/evince"
[   16.424384] type=1505 audit(1279653234.469:10):
operation="profile_load" pid=785 name="/usr/bin/evince-previewer"
[   16.428854] type=1505 audit(1279653234.473:11):
operation="profile_load" pid=785 name="/usr/bin/evince-thumbnailer"
[   16.450171] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   16.712610] Console: switching to colour frame buffer device 80x30
[   16.722601] lib80211_crypt: registered algorithm 'TKIP'
[   16.724053] eth1: Broadcom BCM4315 802.11 Hybrid Wireless
Controller 5.60.48.36
[   16.778433] nvidia 0000:01:00.0: power state changed by ACPI to D0
[   16.778449] nvidia 0000:01:00.0: power state changed by ACPI to D0
[   16.778457] nvidia 0000:01:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[   16.778472] nvidia 0000:01:00.0: setting latency timer to 64
[   16.778477] vgaarb: device changed decodes:
PCI:0000:01:00.0,olddecodes=io+mem,decodes=none:owns=io+mem
[   16.779727] NVRM: loading NVIDIA UNIX x86 Kernel Module  195.36.24
Thu Apr 22 09:18:20 PDT 2010
[   16.834019] HDA Intel 0000:00:1b.0: power state changed by ACPI to D0
[   16.834054] HDA Intel 0000:00:1b.0: power state changed by ACPI to D0
[   16.834062]   alloc irq_desc for 22 on node -1
[   16.834063]   alloc kstat_irqs on node -1
[   16.834069] HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level,
low) -> IRQ 22
[   16.834109] HDA Intel 0000:00:1b.0: setting latency timer to 64
[   16.920739] hda_codec: ALC272: BIOS auto-probing.
[   16.922363] input: HDA Digital PCBeep as
/devices/pci0000:00/0000:00:1b.0/input/input8
[   16.931832] HDA Intel 0000:01:00.1: PCI INT A -> GSI 16 (level,
low) -> IRQ 16
[   16.931836] hda_intel: Disable MSI for Nvidia chipset
[   16.931865] HDA Intel 0000:01:00.1: setting latency timer to 64
[   16.970277] ppdev: user-space parallel port driver
[   17.322594] Synaptics Touchpad, model: 1, fw: 7.2, id: 0x1c0b1,
caps: 0xd04731/0xa40000
[   17.425145] input: SynPS/2 Synaptics TouchPad as
/devices/platform/i8042/serio1/input/input9
[   27.096034] eth1: no IPv6 routers present
[  831.611244] tg3: eth0: Link is up at 100 Mbps, full duplex.
[  831.611246] tg3: eth0: Flow control is on for TX and on for RX.
[  831.611395] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[  842.253020] eth0: no IPv6 routers present
[ 2162.812241] eth1: no IPv6 routers present
[ 2446.269308] device eth1 entered promiscuous mode
[ 2448.612140] device eth1 left promiscuous mode
[ 2454.031916] device eth1 entered promiscuous mode

This is right before I start sending packets on the other computers
and the system crashes.



Harry William Bullen IV
