From: Justin Azoff <JAzoff@albany.edu>
Date: Mon, 21 Nov 2011 19:00:59 -0500
Subject: BCM4312 LP-PHY DMA issues
Message-ID: <20111122000059.GB6004@datacomm.albany.edu>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello all,

Apologies if this shows up multiple times, I had tried posting without
subscribing first and I don't think that worked.

I've been trying to get a laptop with a BCM4312 working without pio=1.
With pio=1 it works, but slowly and with high cpu usage.  Without it, it
attempts to switch, but doesn't actually work after that.

This is top with pio=1 while a download is running:
PID USER      PR  NI  VIRT  RES  SHR S %CPU %MEM    TIME+  COMMAND                                 
3717 root    -51   0     0    0    0 R   93  0.0   0:13.65 irq/16-b43                               


Somehow I did get it to work briefly under one of the 2.6 kernels (I got
1937K/s compared to 800K/s), but it stopped working a few seconds after
that.

I'm using WPA enterprise with the following configuration:

network={
	ssid="x"
	scan_ssid=1
	key_mgmt=WPA-EAP
	eap=PEAP
	proto=WPA2
	ca_cert="x"
	identity="x"
	password="x"
	phase1="peaplabel=0"
	phase2="auth=MSCHAPV2"
}

uname -a is

    Linux probe2 3.1.0-1-686-pae #1 SMP Mon Nov 14 08:24:20 UTC 2011 i686 GNU/Linux

I've tried all the currently available kernels in the debian archive:

    2.6.32-5-686  2.6.39-bpo.2-686-pae  3.0.0-2-686-pae  3.1.0-1-686-pae

Which I realize might not be very helpful, but I'm not aware of an b43
specific patches in the debian kernels.  I can try other kernels or
patches, or if it would be helpful I can setup one of these laptops for
someone to log into directly and debug things.

the full lspci information is
01:00.0 Network controller [0280]: Broadcom Corporation BCM4312 802.11b/g LP-PHY [14e4:4315] (rev 01)

01:00.0 0280: 14e4:4315 (rev 01)
        Subsystem: 103c:1507
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx- 
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort+ <TAbort- <MAbort- >SERR- <PERR- INTx-  
        Latency: 0, Cache Line Size: 32 bytes
        Interrupt: pin A routed to IRQ 16
        Region 0: Memory at feafc000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: [40] Power Management version 3

The full dmesg output is attached. 

CC Replies :-)

-- 
-- Justin Azoff
-- Network Security & Performance Analyst
-------------- next part --------------
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Linux version 3.1.0-1-686-pae (Debian 3.1.1-1) (ben@decadent.org.uk) (gcc version 4.6.2 (Debian 4.6.2-4) ) #1 SMP Mon Nov 14 08:24:20 UTC 2011
[    0.000000] Atom PSE erratum detected, BIOS microcode update recommended
[    0.000000] Disabled fast string operations
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009fc00 (usable)
[    0.000000]  BIOS-e820: 000000000009fc00 - 00000000000a0000 (reserved)
[    0.000000]  BIOS-e820: 00000000000e0000 - 0000000000100000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 000000003f7b0000 (usable)
[    0.000000]  BIOS-e820: 000000003f7b0000 - 000000003f7be000 (ACPI data)
[    0.000000]  BIOS-e820: 000000003f7be000 - 000000003f7f0000 (ACPI NVS)
[    0.000000]  BIOS-e820: 000000003f7f0000 - 000000003f800000 (reserved)
[    0.000000]  BIOS-e820: 00000000fee00000 - 00000000fee01000 (reserved)
[    0.000000]  BIOS-e820: 00000000fff00000 - 0000000100000000 (reserved)
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] DMI present.
[    0.000000] DMI: Hewlett-Packard HP Mini/361A, BIOS 361A0 Ver. F.15 08/21/2009
[    0.000000] e820 update range: 0000000000000000 - 0000000000010000 (usable) ==> (reserved)
[    0.000000] e820 remove range: 00000000000a0000 - 0000000000100000 (usable)
[    0.000000] last_pfn = 0x3f7b0 max_arch_pfn = 0x1000000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-DFFFF uncachable
[    0.000000]   E0000-E3FFF write-protect
[    0.000000]   E4000-EFFFF write-through
[    0.000000]   F0000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 000000000 mask 0C0000000 write-back
[    0.000000]   1 base 03F800000 mask 0FF800000 uncachable
[    0.000000]   2 disabled
[    0.000000]   3 disabled
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] found SMP MP-table at [c00ff780] ff780
[    0.000000] initial memory mapped : 0 - 01a00000
[    0.000000] Base memory trampoline at [c009b000] 9b000 size 16384
[    0.000000] init_memory_mapping: 0000000000000000-00000000379fe000
[    0.000000]  0000000000 - 00379fe000 page 4k
[    0.000000] kernel direct mapping tables up to 379fe000 @ 183f000-1a00000
[    0.000000] RAMDISK: 2f118000 - 2fa04000
[    0.000000] ACPI: RSDP 000f9c50 00014 (v00 ACPIAM)
[    0.000000] ACPI: RSDT 3f7b0000 0003C (v01 082109 RSDT0820 20090821 MSFT 00000097)
[    0.000000] ACPI: FACP 3f7b0200 00084 (v02 082109 FACP0820 20090821 MSFT 00000097)
[    0.000000] ACPI: DSDT 3f7b0430 08042 (v01  361A0 361A0F15 00000F15 INTL 20060317)
[    0.000000] ACPI: FACS 3f7be000 00040
[    0.000000] ACPI: APIC 3f7b0390 0005C (v01 082109 APIC0820 20090821 MSFT 00000097)
[    0.000000] ACPI: MCFG 3f7b03f0 0003C (v01 082109 OEMMCFG  20090821 MSFT 00000097)
[    0.000000] ACPI: OEMB 3f7be040 00224 (v01 082109 OEMB0820 20090821 MSFT 00000097)
[    0.000000] ACPI: ASF! 3f7b8480 00075 (v32 LEGEND I865PASF 00000001 INTL 20060317)
[    0.000000] ACPI: SSDT 3f7bebe0 004F0 (v01  PmRef    CpuPm 00003000 INTL 20060317)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] 125MB HIGHMEM available.
[    0.000000] 889MB LOWMEM available.
[    0.000000]   mapped low ram: 0 - 379fe000
[    0.000000]   low ram: 0 - 379fe000
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000010 -> 0x00001000
[    0.000000]   Normal   0x00001000 -> 0x000379fe
[    0.000000]   HighMem  0x000379fe -> 0x0003f7b0
[    0.000000] Movable zone start PFN for each node
[    0.000000] early_node_map[2] active PFN ranges
[    0.000000]     0: 0x00000010 -> 0x0000009f
[    0.000000]     0: 0x00000100 -> 0x0003f7b0
[    0.000000] On node 0 totalpages: 259903
[    0.000000] free_area_init_node: node 0, pgdat c1436800, node_mem_map f720d200
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 3951 pages, LIFO batch:0
[    0.000000]   Normal zone: 1748 pages used for memmap
[    0.000000]   Normal zone: 221994 pages, LIFO batch:31
[    0.000000]   HighMem zone: 252 pages used for memmap
[    0.000000]   HighMem zone: 31926 pages, LIFO batch:7
[    0.000000] Using APIC driver default
[    0.000000] ACPI: PM-Timer IO Port: 0x808
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] enabled)
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ2 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] SMP: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] nr_irqs_gsi: 40
[    0.000000] PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000e0000
[    0.000000] PM: Registered nosave memory: 00000000000e0000 - 0000000000100000
[    0.000000] Allocating PCI resources starting at 3f800000 (gap: 3f800000:bf600000)
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] setup_percpu: NR_CPUS:32 nr_cpumask_bits:32 nr_cpu_ids:2 nr_node_ids:1
[    0.000000] PERCPU: Embedded 13 pages/cpu @f71ed000 s31744 r0 d21504 u53248
[    0.000000] pcpu-alloc: s31744 r0 d21504 u53248 alloc=13*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 257871
[    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-3.1.0-1-686-pae root=UUID=cf019792-04b0-40a1-9c1a-a0068886ab09 ro
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Initializing CPU#0
[    0.000000] Initializing HighMem for node 0 (000379fe:0003f7b0)
[    0.000000] Memory: 1014312k/1040064k available (2765k kernel code, 25300k reserved, 1578k data, 404k init, 128712k highmem)
[    0.000000] virtual kernel memory layout:
[    0.000000]     fixmap  : 0xffd36000 - 0xfffff000   (2852 kB)
[    0.000000]     pkmap   : 0xffa00000 - 0xffc00000   (2048 kB)
[    0.000000]     vmalloc : 0xf81fe000 - 0xff9fe000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf79fe000   ( 889 MB)
[    0.000000]       .init : 0xc143e000 - 0xc14a3000   ( 404 kB)
[    0.000000]       .data : 0xc12b34ec - 0xc143dec0   (1578 kB)
[    0.000000]       .text : 0xc1000000 - 0xc12b34ec   (2765 kB)
[    0.000000] Checking if this processor honours the WP bit even in supervisor mode...Ok.
[    0.000000] Hierarchical RCU implementation.
[    0.000000] 	RCU dyntick-idle grace-period acceleration is enabled.
[    0.000000] NR_IRQS:1280
[    0.000000] CPU 0 irqstacks, hard=f6c0a000 soft=f6c0c000
[    0.000000] Console: colour VGA+ 80x25
[    0.000000] console [tty0] enabled
[    0.000000] Fast TSC calibration using PIT
[    0.000000] Detected 1596.226 MHz processor.
[    0.008004] Calibrating delay loop (skipped), value calculated using timer frequency.. 3192.45 BogoMIPS (lpj=6384904)
[    0.008157] pid_max: default: 32768 minimum: 301
[    0.008347] Security Framework initialized
[    0.008474] Mount-cache hash table entries: 512
[    0.009204] Initializing cgroup subsys cpuacct
[    0.009331] Initializing cgroup subsys memory
[    0.009434] Initializing cgroup subsys devices
[    0.009509] Initializing cgroup subsys freezer
[    0.009583] Initializing cgroup subsys net_cls
[    0.009657] Initializing cgroup subsys blkio
[    0.009788] Atom PSE erratum detected, BIOS microcode update recommended
[    0.009868] Disabled fast string operations
[    0.009944] CPU: Physical Processor ID: 0
[    0.010016] CPU: Processor Core ID: 0
[    0.010088] mce: CPU supports 5 MCE banks
[    0.010170] CPU0: Thermal monitoring enabled (TM2)
[    0.010247] using mwait in idle threads.
[    0.012207] ACPI: Core revision 20110623
[    0.020105] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.020557] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.063574] CPU0: Intel(R) Atom(TM) CPU N270   @ 1.60GHz stepping 02
[    0.064003] Performance Events: PEBS fmt0+, Atom events, Intel PMU driver.
[    0.064003] ... version:                3
[    0.064003] ... bit width:              40
[    0.064003] ... generic registers:      2
[    0.064003] ... value mask:             000000ffffffffff
[    0.064003] ... max period:             000000007fffffff
[    0.064003] ... fixed-purpose events:   3
[    0.064003] ... event mask:             0000000700000003
[    0.064003] NMI watchdog enabled, takes one hw-pmu counter.
[    0.064003] CPU 1 irqstacks, hard=f6cb4000 soft=f6cb6000
[    0.064003] Booting Node   0, Processors  #1 Ok.
[    0.064003] smpboot cpu 1: start_ip = 9b000
[    0.012000] Initializing CPU#1
[    0.012000] Atom PSE erratum detected, BIOS microcode update recommended
[    0.012000] Disabled fast string operations
[    0.156074] NMI watchdog enabled, takes one hw-pmu counter.
[    0.156434] Brought up 2 CPUs
[    0.156510] Total of 2 processors activated (6384.57 BogoMIPS).
[    0.157373] devtmpfs: initialized
[    0.157373] PM: Registering ACPI NVS region at 3f7be000 (204800 bytes)
[    0.157373] print_constraints: dummy: 
[    0.157373] NET: Registered protocol family 16
[    0.157373] ACPI: bus type pci registered
[    0.160047] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000-0xefffffff] (base 0xe0000000)
[    0.160156] PCI: not using MMCONFIG
[    0.160461] PCI : PCI BIOS aera is rw and x. Use pci=nobios if you want it NX.
[    0.160647] PCI: PCI BIOS revision 3.00 entry at 0xf0031, last bus=3
[    0.160725] PCI: Using configuration type 1 for base access
[    0.161813] bio: create slab <bio-0> at 0
[    0.161813] ACPI: Added _OSI(Module Device)
[    0.161813] ACPI: Added _OSI(Processor Device)
[    0.161813] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.161813] ACPI: Added _OSI(Processor Aggregator Device)
[    0.164987] ACPI: EC: Look up EC in DSDT
[    0.167213] ACPI: Executed 1 blocks of module-level executable AML code
[    0.173735] ACPI: SSDT 3f7be340 0023C (v01  PmRef  Cpu0Ist 00003000 INTL 20060317)
[    0.174475] ACPI: Dynamic OEM Table Load:
[    0.174634] ACPI: SSDT   (null) 0023C (v01  PmRef  Cpu0Ist 00003000 INTL 20060317)
[    0.175160] ACPI: SSDT 3f7be610 005D0 (v01  PmRef  Cpu0Cst 00003001 INTL 20060317)
[    0.175845] ACPI: Dynamic OEM Table Load:
[    0.176017] ACPI: SSDT   (null) 005D0 (v01  PmRef  Cpu0Cst 00003001 INTL 20060317)
[    0.176796] ACPI: SSDT 3f7be270 000CC (v01  PmRef  Cpu1Ist 00003000 INTL 20060317)
[    0.177505] ACPI: Dynamic OEM Table Load:
[    0.177664] ACPI: SSDT   (null) 000CC (v01  PmRef  Cpu1Ist 00003000 INTL 20060317)
[    0.178076] ACPI: SSDT 3f7be580 00085 (v01  PmRef  Cpu1Cst 00003000 INTL 20060317)
[    0.178763] ACPI: Dynamic OEM Table Load:
[    0.178922] ACPI: SSDT   (null) 00085 (v01  PmRef  Cpu1Cst 00003000 INTL 20060317)
[    0.180222] [Firmware Bug]: ACPI: BIOS _OSI(Linux) query ignored
[    0.392355] ACPI: Interpreter enabled
[    0.392436] ACPI: (supports S0 S3 S4 S5)
[    0.392722] ACPI: Using IOAPIC for interrupt routing
[    0.392856] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000-0xefffffff] (base 0xe0000000)
[    0.396960] PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in ACPI motherboard resources
[    0.397067] PCI: MMCONFIG for 0000 [bus00-3f] at [mem 0xe0000000-0xe3ffffff] (base 0xe0000000) (size reduced!)
[    0.397171] PCI: Using MMCONFIG for extended config space
[    0.409910] ACPI: EC: GPE = 0x17, I/O: command/status = 0x66, data = 0x62
[    0.410320] ACPI: No dock devices found.
[    0.410394] HEST: Table not found.
[    0.410468] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    0.410802] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    0.411366] pci_root PNP0A08:00: host bridge window [io  0x0000-0x0cf7]
[    0.411448] pci_root PNP0A08:00: host bridge window [io  0x0d00-0xffff]
[    0.411529] pci_root PNP0A08:00: host bridge window [mem 0x000a0000-0x000bffff]
[    0.411627] pci_root PNP0A08:00: host bridge window [mem 0x000d0000-0x000dffff]
[    0.411726] pci_root PNP0A08:00: host bridge window [mem 0x3f800000-0xdfffffff]
[    0.412041] pci_root PNP0A08:00: host bridge window [mem 0xe4000000-0xfed8ffff]
[    0.412166] pci 0000:00:00.0: [8086:27ac] type 0 class 0x000600
[    0.412239] pci 0000:00:02.0: [8086:27ae] type 0 class 0x000300
[    0.412258] pci 0000:00:02.0: reg 10: [mem 0xfe980000-0xfe9fffff]
[    0.412269] pci 0000:00:02.0: reg 14: [io  0xdc80-0xdc87]
[    0.412281] pci 0000:00:02.0: reg 18: [mem 0xd0000000-0xdfffffff pref]
[    0.412292] pci 0000:00:02.0: reg 1c: [mem 0xfe940000-0xfe97ffff]
[    0.412345] pci 0000:00:02.1: [8086:27a6] type 0 class 0x000380
[    0.412361] pci 0000:00:02.1: reg 10: [mem 0xfe880000-0xfe8fffff]
[    0.412477] pci 0000:00:1b.0: [8086:27d8] type 0 class 0x000403
[    0.412504] pci 0000:00:1b.0: reg 10: [mem 0xfe938000-0xfe93bfff 64bit]
[    0.412591] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.412600] pci 0000:00:1b.0: PME# disabled
[    0.412638] pci 0000:00:1c.0: [8086:27d0] type 1 class 0x000604
[    0.412724] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.412733] pci 0000:00:1c.0: PME# disabled
[    0.412775] pci 0000:00:1c.1: [8086:27d2] type 1 class 0x000604
[    0.412862] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.412870] pci 0000:00:1c.1: PME# disabled
[    0.412913] pci 0000:00:1d.0: [8086:27c8] type 0 class 0x000c03
[    0.412975] pci 0000:00:1d.0: reg 20: [io  0xdc00-0xdc1f]
[    0.413027] pci 0000:00:1d.1: [8086:27c9] type 0 class 0x000c03
[    0.413088] pci 0000:00:1d.1: reg 20: [io  0xd880-0xd89f]
[    0.413138] pci 0000:00:1d.2: [8086:27ca] type 0 class 0x000c03
[    0.413199] pci 0000:00:1d.2: reg 20: [io  0xd800-0xd81f]
[    0.413251] pci 0000:00:1d.3: [8086:27cb] type 0 class 0x000c03
[    0.416039] pci 0000:00:1d.3: reg 20: [io  0xd480-0xd49f]
[    0.416103] pci 0000:00:1d.7: [8086:27cc] type 0 class 0x000c03
[    0.416134] pci 0000:00:1d.7: reg 10: [mem 0xfe937c00-0xfe937fff]
[    0.416238] pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
[    0.416247] pci 0000:00:1d.7: PME# disabled
[    0.416282] pci 0000:00:1e.0: [8086:2448] type 1 class 0x000604
[    0.416373] pci 0000:00:1f.0: [8086:27b9] type 0 class 0x000601
[    0.416498] pci 0000:00:1f.0: Force enabled HPET at 0xfed00000
[    0.416515] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 1 PIO at 0500 (mask 0003)
[    0.416617] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 2 PIO at 1640 (mask 000f)
[    0.416773] pci 0000:00:1f.1: [8086:27df] type 0 class 0x000101
[    0.416796] pci 0000:00:1f.1: reg 10: [io  0x0000-0x0007]
[    0.416813] pci 0000:00:1f.1: reg 14: [io  0x0000-0x0003]
[    0.416829] pci 0000:00:1f.1: reg 18: [io  0x08f0-0x08f7]
[    0.416846] pci 0000:00:1f.1: reg 1c: [io  0x08f8-0x08fb]
[    0.416862] pci 0000:00:1f.1: reg 20: [io  0xffa0-0xffaf]
[    0.416919] pci 0000:00:1f.3: [8086:27da] type 0 class 0x000c05
[    0.416991] pci 0000:00:1f.3: reg 20: [io  0x0400-0x041f]
[    0.417206] pci 0000:01:00.0: [14e4:4315] type 0 class 0x000280
[    0.417280] pci 0000:01:00.0: reg 10: [mem 0xfeafc000-0xfeafffff 64bit]
[    0.417566] pci 0000:01:00.0: supports D1 D2
[    0.417742] pci 0000:00:1c.0: PCI bridge to [bus 01-01]
[    0.417825] pci 0000:00:1c.0:   bridge window [mem 0xfea00000-0xfeafffff]
[    0.418096] pci 0000:02:00.0: [11ab:4354] type 0 class 0x000200
[    0.418278] pci 0000:02:00.0: reg 10: [mem 0xfebfc000-0xfebfffff 64bit]
[    0.418383] pci 0000:02:00.0: reg 18: [io  0xec00-0xecff]
[    0.419023] pci 0000:02:00.0: supports D1 D2
[    0.419029] pci 0000:02:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.419056] pci 0000:02:00.0: PME# disabled
[    0.424147] pci 0000:00:1c.1: PCI bridge to [bus 02-02]
[    0.424229] pci 0000:00:1c.1:   bridge window [io  0xe000-0xefff]
[    0.424239] pci 0000:00:1c.1:   bridge window [mem 0xfeb00000-0xfebfffff]
[    0.424341] pci 0000:00:1e.0: PCI bridge to [bus 03-03] (subtractive decode)
[    0.424434] pci 0000:00:1e.0:   bridge window [io  0x0000-0x0cf7] (subtractive decode)
[    0.424442] pci 0000:00:1e.0:   bridge window [io  0x0d00-0xffff] (subtractive decode)
[    0.424449] pci 0000:00:1e.0:   bridge window [mem 0x000a0000-0x000bffff] (subtractive decode)
[    0.424456] pci 0000:00:1e.0:   bridge window [mem 0x000d0000-0x000dffff] (subtractive decode)
[    0.424464] pci 0000:00:1e.0:   bridge window [mem 0x3f800000-0xdfffffff] (subtractive decode)
[    0.424471] pci 0000:00:1e.0:   bridge window [mem 0xe4000000-0xfed8ffff] (subtractive decode)
[    0.424496] pci_bus 0000:00: on NUMA node 0
[    0.424506] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    0.424771] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P1._PRT]
[    0.425164] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P5._PRT]
[    0.425287]  pci0000:00: Requesting ACPI _OSC control (0x1d)
[    0.425372]  pci0000:00: ACPI _OSC request failed (AE_NOT_FOUND), returned control mask: 0x1d
[    0.425473] ACPI _OSC control for PCIe not granted, disabling ASPM
[    0.440551] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 6 7 *10 11 12 14 15)
[    0.441258] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 6 7 10 *11 12 14 15)
[    0.441960] ACPI: PCI Interrupt Link [LNKC] (IRQs *3 4 5 6 7 10 11 12 14 15)
[    0.442661] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 5 6 7 10 11 12 14 *15)
[    0.443364] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 6 7 10 11 12 14 15) *0, disabled.
[    0.444160] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 7 10 11 12 14 15) *0, disabled.
[    0.444967] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 6 7 10 11 12 14 15) *0, disabled.
[    0.445772] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 *5 6 7 10 11 12 14 15)
[    0.446560] vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
[    0.446560] vgaarb: loaded
[    0.446560] vgaarb: bridge control possible 0000:00:02.0
[    0.446560] PCI: Using ACPI for IRQ routing
[    0.446560] PCI: pci_cache_line_size set to 64 bytes
[    0.446560] reserve RAM buffer: 000000000009fc00 - 000000000009ffff 
[    0.446560] reserve RAM buffer: 000000003f7b0000 - 000000003fffffff 
[    0.446560] hpet clockevent registered
[    0.446560] HPET: 3 timers in total, 0 timers will be used for per-cpu timer
[    0.446560] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    0.448190] hpet0: 3 comparators, 64-bit 14.318180 MHz counter
[    0.452077] Switching to clocksource hpet
[    0.455734] Switched to NOHz mode on CPU #0
[    0.455841] Switched to NOHz mode on CPU #1
[    0.456090] pnp: PnP ACPI init
[    0.456196] ACPI: bus type pnp registered
[    0.456556] pnp 00:00: [bus 00-ff]
[    0.456564] pnp 00:00: [io  0x0cf8-0x0cff]
[    0.456570] pnp 00:00: [io  0x0000-0x0cf7 window]
[    0.456577] pnp 00:00: [io  0x0d00-0xffff window]
[    0.456583] pnp 00:00: [mem 0x000a0000-0x000bffff window]
[    0.456590] pnp 00:00: [mem 0x000d0000-0x000dffff window]
[    0.456597] pnp 00:00: [mem 0x3f800000-0xdfffffff window]
[    0.456603] pnp 00:00: [mem 0xe4000000-0xfed8ffff window]
[    0.456726] pnp 00:00: Plug and Play ACPI device, IDs PNP0a08 PNP0a03 (active)
[    0.456756] pnp 00:01: [mem 0xfed13000-0xfed19fff]
[    0.456864] system 00:01: [mem 0xfed13000-0xfed19fff] has been reserved
[    0.456950] system 00:01: Plug and Play ACPI device, IDs PNP0c01 (active)
[    0.457038] pnp 00:02: [dma 4]
[    0.457045] pnp 00:02: [io  0x0000-0x000f]
[    0.457050] pnp 00:02: [io  0x0081-0x0083]
[    0.457060] pnp 00:02: [io  0x0087]
[    0.457065] pnp 00:02: [io  0x0089-0x008b]
[    0.457071] pnp 00:02: [io  0x008f]
[    0.457076] pnp 00:02: [io  0x00c0-0x00df]
[    0.457141] pnp 00:02: Plug and Play ACPI device, IDs PNP0200 (active)
[    0.457175] pnp 00:03: [io  0x0070-0x0071]
[    0.457196] pnp 00:03: [irq 8]
[    0.457262] pnp 00:03: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.457344] pnp 00:04: [io  0x0060]
[    0.457350] pnp 00:04: [io  0x0064]
[    0.457362] pnp 00:04: [irq 1]
[    0.457431] pnp 00:04: Plug and Play ACPI device, IDs PNP0303 PNP030b (active)
[    0.457517] pnp 00:05: [irq 12]
[    0.457593] pnp 00:05: Plug and Play ACPI device, IDs SYN1e02 SYN1e00 SYN0002 PNP0f13 (active)
[    0.457621] pnp 00:06: [io  0x0061]
[    0.457688] pnp 00:06: Plug and Play ACPI device, IDs PNP0800 (active)
[    0.457716] pnp 00:07: [io  0x00f0-0x00ff]
[    0.457728] pnp 00:07: [irq 13]
[    0.457794] pnp 00:07: Plug and Play ACPI device, IDs PNP0c04 (active)
[    0.458117] pnp 00:08: [io  0x0010-0x001f]
[    0.458124] pnp 00:08: [io  0x0022-0x003f]
[    0.458130] pnp 00:08: [io  0x0044-0x005f]
[    0.458136] pnp 00:08: [io  0x0063]
[    0.458141] pnp 00:08: [io  0x0065]
[    0.458146] pnp 00:08: [io  0x0067-0x006f]
[    0.458152] pnp 00:08: [io  0x0072-0x007f]
[    0.458157] pnp 00:08: [io  0x0080]
[    0.458163] pnp 00:08: [io  0x0084-0x0086]
[    0.458168] pnp 00:08: [io  0x0088]
[    0.458174] pnp 00:08: [io  0x008c-0x008e]
[    0.458179] pnp 00:08: [io  0x0090-0x009f]
[    0.458185] pnp 00:08: [io  0x00a2-0x00bf]
[    0.458190] pnp 00:08: [io  0x00e0-0x00ef]
[    0.458196] pnp 00:08: [io  0x04d0-0x04d1]
[    0.458202] pnp 00:08: [io  0x0500-0x0501]
[    0.458208] pnp 00:08: [io  0x0800-0x087f]
[    0.458214] pnp 00:08: [io  0x0000-0xffffffffffffffff disabled]
[    0.458220] pnp 00:08: [io  0x0480-0x04bf]
[    0.458227] pnp 00:08: [mem 0xfed1c000-0xfed1ffff]
[    0.458233] pnp 00:08: [mem 0xfed20000-0xfed3ffff]
[    0.458239] pnp 00:08: [mem 0xfed40000-0xfed8ffff]
[    0.458373] system 00:08: [io  0x04d0-0x04d1] has been reserved
[    0.458455] system 00:08: [io  0x0500-0x0501] has been reserved
[    0.458535] system 00:08: [io  0x0800-0x087f] has been reserved
[    0.458614] system 00:08: [io  0x0480-0x04bf] has been reserved
[    0.458695] system 00:08: [mem 0xfed1c000-0xfed1ffff] has been reserved
[    0.458776] system 00:08: [mem 0xfed20000-0xfed3ffff] has been reserved
[    0.458858] system 00:08: [mem 0xfed40000-0xfed8ffff] has been reserved
[    0.458941] system 00:08: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.459153] pnp 00:09: [mem 0xfec00000-0xfec00fff]
[    0.459160] pnp 00:09: [mem 0xfee00000-0xfee00fff]
[    0.459267] system 00:09: [mem 0xfec00000-0xfec00fff] could not be reserved
[    0.459351] system 00:09: [mem 0xfee00000-0xfee00fff] has been reserved
[    0.459433] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.460145] pnp 00:0a: [mem 0xe0000000-0xe3ffffff]
[    0.460260] system 00:0a: [mem 0xe0000000-0xe3ffffff] has been reserved
[    0.460344] system 00:0a: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.460753] pnp 00:0b: [mem 0x00000000-0x0009ffff]
[    0.460760] pnp 00:0b: [mem 0x000c0000-0x000cffff]
[    0.460767] pnp 00:0b: [mem 0x000e0000-0x000fffff]
[    0.460773] pnp 00:0b: [mem 0x00100000-0x3f7fffff]
[    0.460779] pnp 00:0b: [mem 0xfed90000-0xffffffff]
[    0.460902] system 00:0b: [mem 0x00000000-0x0009ffff] could not be reserved
[    0.460987] system 00:0b: [mem 0x000c0000-0x000cffff] could not be reserved
[    0.461069] system 00:0b: [mem 0x000e0000-0x000fffff] could not be reserved
[    0.461151] system 00:0b: [mem 0x00100000-0x3f7fffff] could not be reserved
[    0.461233] system 00:0b: [mem 0xfed90000-0xffffffff] could not be reserved
[    0.461315] system 00:0b: Plug and Play ACPI device, IDs PNP0c01 (active)
[    0.461676] pnp: PnP ACPI: found 12 devices
[    0.461750] ACPI: ACPI bus type pnp unregistered
[    0.461827] PnPBIOS: Disabled by ACPI PNP
[    0.503464] PCI: max bus depth: 1 pci_try_num: 2
[    0.503525] pci 0000:00:1c.1: BAR 15: assigned [mem 0x3f800000-0x3f9fffff 64bit pref]
[    0.503634] pci 0000:00:1c.0: BAR 15: assigned [mem 0x3fa00000-0x3fbfffff 64bit pref]
[    0.503739] pci 0000:00:1c.0: BAR 13: assigned [io  0x1000-0x1fff]
[    0.503819] pci 0000:00:1c.0: PCI bridge to [bus 01-01]
[    0.503897] pci 0000:00:1c.0:   bridge window [io  0x1000-0x1fff]
[    0.503978] pci 0000:00:1c.0:   bridge window [mem 0xfea00000-0xfeafffff]
[    0.504083] pci 0000:00:1c.0:   bridge window [mem 0x3fa00000-0x3fbfffff 64bit pref]
[    0.504188] pci 0000:00:1c.1: PCI bridge to [bus 02-02]
[    0.504266] pci 0000:00:1c.1:   bridge window [io  0xe000-0xefff]
[    0.504348] pci 0000:00:1c.1:   bridge window [mem 0xfeb00000-0xfebfffff]
[    0.504431] pci 0000:00:1c.1:   bridge window [mem 0x3f800000-0x3f9fffff 64bit pref]
[    0.504536] pci 0000:00:1e.0: PCI bridge to [bus 03-03]
[    0.504634] pci 0000:00:1c.0: enabling device (0106 -> 0107)
[    0.504729] pci 0000:00:1c.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    0.504814] pci 0000:00:1c.0: setting latency timer to 64
[    0.504834] pci 0000:00:1c.1: PCI INT B -> GSI 17 (level, low) -> IRQ 17
[    0.504916] pci 0000:00:1c.1: setting latency timer to 64
[    0.504930] pci 0000:00:1e.0: setting latency timer to 64
[    0.504938] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7]
[    0.504945] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff]
[    0.504951] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]
[    0.504958] pci_bus 0000:00: resource 7 [mem 0x000d0000-0x000dffff]
[    0.504965] pci_bus 0000:00: resource 8 [mem 0x3f800000-0xdfffffff]
[    0.504971] pci_bus 0000:00: resource 9 [mem 0xe4000000-0xfed8ffff]
[    0.504978] pci_bus 0000:01: resource 0 [io  0x1000-0x1fff]
[    0.504985] pci_bus 0000:01: resource 1 [mem 0xfea00000-0xfeafffff]
[    0.504992] pci_bus 0000:01: resource 2 [mem 0x3fa00000-0x3fbfffff 64bit pref]
[    0.504999] pci_bus 0000:02: resource 0 [io  0xe000-0xefff]
[    0.505005] pci_bus 0000:02: resource 1 [mem 0xfeb00000-0xfebfffff]
[    0.505012] pci_bus 0000:02: resource 2 [mem 0x3f800000-0x3f9fffff 64bit pref]
[    0.505020] pci_bus 0000:03: resource 4 [io  0x0000-0x0cf7]
[    0.505026] pci_bus 0000:03: resource 5 [io  0x0d00-0xffff]
[    0.505032] pci_bus 0000:03: resource 6 [mem 0x000a0000-0x000bffff]
[    0.505039] pci_bus 0000:03: resource 7 [mem 0x000d0000-0x000dffff]
[    0.505046] pci_bus 0000:03: resource 8 [mem 0x3f800000-0xdfffffff]
[    0.505052] pci_bus 0000:03: resource 9 [mem 0xe4000000-0xfed8ffff]
[    0.505206] NET: Registered protocol family 2
[    0.505493] IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.506280] TCP established hash table entries: 131072 (order: 8, 1048576 bytes)
[    0.507356] TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
[    0.507889] TCP: Hash tables configured (established 131072 bind 65536)
[    0.507972] TCP reno registered
[    0.508125] UDP hash table entries: 512 (order: 2, 16384 bytes)
[    0.508222] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
[    0.508672] NET: Registered protocol family 1
[    0.508787] pci 0000:00:02.0: Boot video device
[    0.509034] PCI: CLS 32 bytes, default 64
[    0.509152] Unpacking initramfs...
[    0.981734] Freeing initrd memory: 9136k freed
[    0.991773] audit: initializing netlink socket (disabled)
[    0.991879] type=2000 audit(1321663425.984:1): initialized
[    1.023920] highmem bounce pool size: 64 pages
[    1.024043] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[    1.024528] VFS: Disk quotas dquot_6.5.2
[    1.024787] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    1.025127] msgmni has been set to 1747
[    1.025629] alg: No test for stdrng (krng)
[    1.025784] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
[    1.025884] io scheduler noop registered
[    1.025955] io scheduler deadline registered
[    1.026063] io scheduler cfq registered (default)
[    1.026325] pcieport 0000:00:1c.0: setting latency timer to 64
[    1.026390] pcieport 0000:00:1c.0: irq 40 for MSI/MSI-X
[    1.026523] pcieport 0000:00:1c.1: setting latency timer to 64
[    1.026580] pcieport 0000:00:1c.1: irq 41 for MSI/MSI-X
[    1.026954] intel_idle: MWAIT substates: 0x20220
[    1.026970] intel_idle: v0.4 model 0x1C
[    1.026975] intel_idle: lapic_timer_reliable_states 0x2
[    1.027003] Marking TSC unstable due to TSC halts in idle states deeper than C2
[    1.027196] ERST: Table is not found!
[    1.027267] GHES: HEST is not enabled!
[    1.027364] isapnp: Scanning for PnP cards...
[    1.381135] isapnp: No Plug & Play device found
[    1.381411] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.388638] Linux agpgart interface v0.103
[    1.388933] agpgart-intel 0000:00:00.0: Intel 945GME Chipset
[    1.389194] agpgart-intel 0000:00:00.0: detected gtt size: 262144K total, 262144K mappable
[    1.389457] agpgart-intel 0000:00:00.0: detected 8192K stolen memory
[    1.389772] agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xd0000000
[    1.390224] i8042: PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
[    1.394214] i8042: Detected active multiplexing controller, rev 1.1
[    1.397213] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.397301] serio: i8042 AUX0 port at 0x60,0x64 irq 12
[    1.397449] serio: i8042 AUX1 port at 0x60,0x64 irq 12
[    1.397591] serio: i8042 AUX2 port at 0x60,0x64 irq 12
[    1.397735] serio: i8042 AUX3 port at 0x60,0x64 irq 12
[    1.398182] mousedev: PS/2 mouse device common for all mice
[    1.398371] rtc_cmos 00:03: RTC can wake from S4
[    1.398668] rtc_cmos 00:03: rtc core: registered rtc_cmos as rtc0
[    1.398784] rtc0: alarms up to one month, 114 bytes nvram, hpet irqs
[    1.399068] cpuidle: using governor ladder
[    1.399436] cpuidle: using governor menu
[    1.400138] TCP cubic registered
[    1.400338] NET: Registered protocol family 10
[    1.401901] Mobile IPv6
[    1.401973] NET: Registered protocol family 17
[    1.402061] Registering the dns_resolver key type
[    1.402182] Using IPI No-Shortcut mode
[    1.402627] PM: Hibernation image not present or could not be loaded.
[    1.402653] registered taskstats version 1
[    1.403431] rtc_cmos 00:03: setting system clock to 2011-11-19 00:43:47 UTC (1321663427)
[    1.403630] Initializing network drop monitor service
[    1.403906] Freeing unused kernel memory: 404k freed
[    1.404447] Write protecting the kernel text: 2768k
[    1.404605] Write protecting the kernel read-only data: 1088k
[    1.404685] NX-protecting the kernel data: 3376k
[    1.432961] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input0
[    1.441766] udev[48]: starting version 164
[    1.623896] usbcore: registered new interface driver usbfs
[    1.624104] usbcore: registered new interface driver hub
[    1.624425] thermal LNXTHERM:00: registered as thermal_zone0
[    1.624514] ACPI: Thermal Zone [THRM] (50 C)
[    1.633235] sky2: driver version 1.29
[    1.633464] sky2 0000:02:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
[    1.633610] sky2 0000:02:00.0: setting latency timer to 64
[    1.633754] sky2 0000:02:00.0: Yukon-2 FE+ chip revision 0
[    1.634450] sky2 0000:02:00.0: irq 42 for MSI/MSI-X
[    1.636326] SCSI subsystem initialized
[    1.640173] usbcore: registered new device driver usb
[    1.642131] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.642318] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    1.642449] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[    1.642461] ehci_hcd 0000:00:1d.7: EHCI Host Controller
[    1.642656] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1
[    1.642820] ehci_hcd 0000:00:1d.7: using broken periodic workaround
[    1.642926] ehci_hcd 0000:00:1d.7: debug port 1
[    1.646917] ehci_hcd 0000:00:1d.7: cache line size of 32 is not supported
[    1.648612] ehci_hcd 0000:00:1d.7: irq 23, io mem 0xfe937c00
[    1.651043] b43-pci-bridge 0000:01:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    1.651246] b43-pci-bridge 0000:01:00.0: setting latency timer to 64
[    1.652694] sky2 0000:02:00.0: eth0: addr 00:25:b3:6c:f6:4b
[    1.684074] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
[    1.684238] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[    1.684328] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.684436] usb usb1: Product: EHCI Host Controller
[    1.684521] usb usb1: Manufacturer: Linux 3.1.0-1-686-pae ehci_hcd
[    1.684610] usb usb1: SerialNumber: 0000:00:1d.7
[    1.684894] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor 0x4243)
[    1.684921] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F, vendor 0x4243)
[    1.684946] ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor 0x4243)
[    1.684972] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor 0x4243)
[    1.685723] hub 1-0:1.0: USB hub found
[    1.685825] hub 1-0:1.0: 8 ports detected
[    1.688166] uhci_hcd: USB Universal Host Controller Interface driver
[    1.688370] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[    1.688482] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[    1.688494] uhci_hcd 0000:00:1d.0: UHCI Host Controller
[    1.688607] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
[    1.688771] uhci_hcd 0000:00:1d.0: irq 23, io base 0x0000dc00
[    1.694364] usb usb2: New USB device found, idVendor=1d6b, idProduct=0001
[    1.694462] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.694570] usb usb2: Product: UHCI Host Controller
[    1.694656] usb usb2: Manufacturer: Linux 3.1.0-1-686-pae uhci_hcd
[    1.694743] usb usb2: SerialNumber: 0000:00:1d.0
[    1.697969] libata version 3.00 loaded.
[    1.700126] hub 2-0:1.0: USB hub found
[    1.700232] hub 2-0:1.0: 2 ports detected
[    1.700568] ata_piix 0000:00:1f.1: version 2.13
[    1.700616] ata_piix 0000:00:1f.1: PCI INT A -> GSI 18 (level, low) -> IRQ 18
[    1.700846] ata_piix 0000:00:1f.1: setting latency timer to 64
[    1.716064] scsi0 : ata_piix
[    1.719284] scsi1 : ata_piix
[    1.724244] ata1: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0xffa0 irq 14
[    1.724342] ata2: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0xffa8 irq 15
[    1.724598] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    1.724707] uhci_hcd 0000:00:1d.1: setting latency timer to 64
[    1.724718] uhci_hcd 0000:00:1d.1: UHCI Host Controller
[    1.724835] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3
[    1.725032] uhci_hcd 0000:00:1d.1: irq 19, io base 0x0000d880
[    1.725242] usb usb3: New USB device found, idVendor=1d6b, idProduct=0001
[    1.725335] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.725443] usb usb3: Product: UHCI Host Controller
[    1.725527] usb usb3: Manufacturer: Linux 3.1.0-1-686-pae uhci_hcd
[    1.725617] usb usb3: SerialNumber: 0000:00:1d.1
[    1.726121] hub 3-0:1.0: USB hub found
[    1.726224] hub 3-0:1.0: 2 ports detected
[    1.726542] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    1.726655] uhci_hcd 0000:00:1d.2: setting latency timer to 64
[    1.726667] uhci_hcd 0000:00:1d.2: UHCI Host Controller
[    1.726781] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4
[    1.726977] uhci_hcd 0000:00:1d.2: irq 18, io base 0x0000d800
[    1.727182] usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
[    1.727276] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.727386] usb usb4: Product: UHCI Host Controller
[    1.727471] usb usb4: Manufacturer: Linux 3.1.0-1-686-pae uhci_hcd
[    1.727557] usb usb4: SerialNumber: 0000:00:1d.2
[    1.728172] hub 4-0:1.0: USB hub found
[    1.728270] hub 4-0:1.0: 2 ports detected
[    1.728587] uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) -> IRQ 16
[    1.728698] uhci_hcd 0000:00:1d.3: setting latency timer to 64
[    1.728709] uhci_hcd 0000:00:1d.3: UHCI Host Controller
[    1.728832] uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5
[    1.729032] uhci_hcd 0000:00:1d.3: irq 16, io base 0x0000d480
[    1.729244] usb usb5: New USB device found, idVendor=1d6b, idProduct=0001
[    1.729335] usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.729445] usb usb5: Product: UHCI Host Controller
[    1.729532] usb usb5: Manufacturer: Linux 3.1.0-1-686-pae uhci_hcd
[    1.729621] usb usb5: SerialNumber: 0000:00:1d.3
[    1.730209] hub 5-0:1.0: USB hub found
[    1.730308] hub 5-0:1.0: 2 ports detected
[    1.730991] ata2: port disabled--ignoring
[    1.736322] ssb: Sonics Silicon Backplane found on PCI device 0000:01:00.0
[    1.892479] ata1.00: ATA-7: TOSHIBA MK8025GAL, BD101C, max UDMA/100
[    1.892567] ata1.00: 156301488 sectors, multi 16: LBA48 
[    1.900515] ata1.00: configured for UDMA/100
[    1.900985] scsi 0:0:0:0: Direct-Access     ATA      TOSHIBA MK8025GA BD10 PQ: 0 ANSI: 5
[    1.917943] sd 0:0:0:0: [sda] 156301488 512-byte logical blocks: (80.0 GB/74.5 GiB)
[    1.918316] sd 0:0:0:0: [sda] Write Protect is off
[    1.918408] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.918529] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    1.991636]  sda: sda1 sda2 < sda5 >
[    1.992899] sd 0:0:0:0: [sda] Attached SCSI disk
[    2.108139] usb 1-4: new high speed USB device number 3 using ehci_hcd
[    2.245395] usb 1-4: New USB device found, idVendor=05c8, idProduct=0202
[    2.245491] usb 1-4: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    2.245573] usb 1-4: Product: Webcam-101
[    2.245646] usb 1-4: Manufacturer: Image Processor
[    2.465338] kjournald starting.  Commit interval 5 seconds
[    2.465514] EXT3-fs (sda1): mounted filesystem with ordered data mode
[    2.484124] usb 3-1: new full speed USB device number 2 using uhci_hcd
[    2.717283] usb 3-1: New USB device found, idVendor=13d3, idProduct=3249
[    2.717393] usb 3-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    2.717475] usb 3-1: Product: Bluetooth 2.1 module
[    2.717549] usb 3-1: Manufacturer: Broadcom Corp
[    2.717623] usb 3-1: SerialNumber: 002243EF3A83
[    4.418185] udev[272]: starting version 164
[    4.871794] ACPI: acpi_idle yielding to intel_idle
[    4.943761] input: Video Bus as /devices/LNXSYSTM:00/device:00/PNP0A08:00/LNXVIDEO:00/input/input1
[    4.943895] ACPI: Video Device [IGD] (multi-head: yes  rom: no  post: no)
[    4.979164] input: Lid Switch as /devices/LNXSYSTM:00/device:00/PNP0A08:00/PNP0C0D:00/input/input2
[    4.980135] ACPI: Lid Switch [LID]
[    4.980407] input: Sleep Button as /devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/input3
[    4.980527] ACPI: Sleep Button [SLPB]
[    4.980768] input: Power Button as /devices/LNXSYSTM:00/device:00/PNP0C0C:00/input/input4
[    4.980882] ACPI: Power Button [PWRB]
[    4.981111] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input5
[    4.981221] ACPI: Power Button [PWRF]
[    5.176216] wmi: Mapper loaded
[    5.181369] intel_rng: FWH not detected
[    5.197362] input: PC Speaker as /devices/platform/pcspkr/input/input6
[    5.493260] leds_ss4200: no LED devices found
[    5.608863] ACPI: Battery Slot [BAT1] (battery present)
[    5.612522] ACPI: AC Adapter [AC0] (on-line)
[    5.637371] cfg80211: Calling CRDA to update world regulatory domain
[    5.980476] input: HP WMI hotkeys as /devices/virtual/input/input7
[    6.174439] Error: Driver 'pcspkr' is already registered, aborting...
[    6.471417] snd_hda_intel 0000:00:1b.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    6.471640] snd_hda_intel 0000:00:1b.0: irq 43 for MSI/MSI-X
[    6.471708] snd_hda_intel 0000:00:1b.0: setting latency timer to 64
[    6.559400] Synaptics Touchpad, model: 1, fw: 7.2, id: 0x1c0b1, caps: 0xd04711/0xa00000/0x20000
[    6.582885] [drm] Initialized drm 1.1.0 20060810
[    6.603262] input: SynPS/2 Synaptics TouchPad as /devices/platform/i8042/serio4/input/input8
[    6.765086] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[    6.832069] input: HDA Digital PCBeep as /devices/pci0000:00/0000:00:1b.0/input/input9
[    6.848504] input: HDA Intel Line In at Ext Rear Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input10
[    6.848971] input: HDA Intel Mic at Sep Rear Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input11
[    6.849392] input: HDA Intel Mic at Ext Rear Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input12
[    6.849803] input: HDA Intel HP Out at Ext Rear Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input13
[    6.850715] i801_smbus 0000:00:1f.3: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[    6.851348] i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    6.851450] i915 0000:00:02.0: setting latency timer to 64
[    6.894100] Linux media interface: v0.10
[    6.905607] [drm] Supports vblank timestamp caching Rev 1 (10.10.2010).
[    6.905701] [drm] Driver supports precise vblank timestamp query.
[    6.906436] vgaarb: device changed decodes: PCI:0000:00:02.0,olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    6.965307] Bluetooth: Core ver 2.16
[    6.965458] NET: Registered protocol family 31
[    6.965537] Bluetooth: HCI device and connection manager initialized
[    6.965620] Bluetooth: HCI socket layer initialized
[    6.965699] Bluetooth: L2CAP socket layer initialized
[    6.966275] Bluetooth: SCO socket layer initialized
[    6.993261] Bluetooth: Generic Bluetooth USB driver ver 0.6
[    7.190657] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[    7.192302] Registered led device: b43-phy0::tx
[    7.192387] Registered led device: b43-phy0::rx
[    7.192477] Registered led device: b43-phy0::radio
[    7.192531] Broadcom 43xx driver loaded [ Features: PMNLS, Firmware-ID: FW13 ]
[    7.250339] [drm] initialized overlay support
[    7.273543] fbcon: inteldrmfb (fb0) is primary device
[    7.577047] Linux video capture interface: v2.00
[    7.624948] Intel AES-NI instructions are not detected.
[    7.699560] uvcvideo: Found UVC 1.00 device Webcam-101 (05c8:0202)
[    7.701769] input: Webcam-101 as /devices/pci0000:00/0000:00:1d.7/usb1/1-4/1-4:1.0/input/input14
[    7.702029] usbcore: registered new interface driver uvcvideo
[    7.702036] USB Video Class driver (1.1.1)
[    7.735804] Console: switching to colour frame buffer device 128x36
[    7.744090] fb0: inteldrmfb frame buffer device
[    7.744095] drm: registered panic notifier
[    7.744404] [drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
[    7.768861] padlock_aes: VIA PadLock not detected.
[    7.857671] usbcore: registered new interface driver btusb
[   11.187429] Adding 2650688k swap on /dev/sda5.  Priority:-1 extents:1 across:2650688k 
[   11.447348] EXT3-fs (sda1): using internal journal
[   11.724717] loop: module loaded
[   12.954245] ip_tables: (C) 2000-2006 Netfilter Core Team
[   13.005795] nf_conntrack version 0.5.0 (15997 buckets, 63988 max)
[   13.132458] hp_wmi: Unknown event_id - 0 - 0x0
[   13.348312] ip6_tables: (C) 2000-2006 Netfilter Core Team
[   13.436196] sky2 0000:02:00.0: eth0: enabling interface
[   13.440556] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   14.998627] sky2 0000:02:00.0: eth0: Link is up at 100 Mbps, full duplex, flow control rx
[   15.002174] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   16.173402] apm: BIOS not found.
[   16.213340] input: ACPI Virtual Keyboard Device as /devices/virtual/input/input15
[   17.300204] lp: driver loaded but no devices found
[   17.819032] ppdev: user-space parallel port driver
[   20.051321] Bluetooth: RFCOMM TTY layer initialized
[   20.054425] Bluetooth: RFCOMM socket layer initialized
[   20.057563] Bluetooth: RFCOMM ver 1.11
[   20.113662] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   20.116750] Bluetooth: BNEP filters: protocol multicast
[   20.330951] Bridge firewalling registered
[   20.644892] powernow: This module only works with AMD K7 CPUs
[   20.891223] p4-clockmod: Warning: EST-capable CPU detected. The acpi-cpufreq module offers voltage scaling in addition to frequency scaling. You should use that instead of p4-clockmod, if possible.
[   20.891287] ondemand governor failed, too long transition latency of HW, fallback to performance governor
[   20.891326] p4-clockmod: P4/Xeon(TM) CPU On-Demand Clock Modulation available
[   20.965854] cpufreq-nforce2: No nForce2 chipset.
[   21.904974] sshd (1666): /proc/1666/oom_adj is deprecated, please use /proc/1666/oom_score_adj instead.
[   21.919930] ondemand governor failed, too long transition latency of HW, fallback to performance governor
[   21.926706] ondemand governor failed, too long transition latency of HW, fallback to performance governor
[   25.280043] eth0: no IPv6 routers present
[   28.236344] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[   33.772580] b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[   33.778855] b43-phy0 ERROR: This device does not support DMA on your system. It will now be switched to PIO.
[   33.784685] b43-phy0: Controller RESET (DMA error) ...
[   34.016161] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[   39.545327] b43-phy0: Controller restarted
[   39.547232] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[   42.028860] wlan0: authenticate with 00:1f:6d:b9:6c:42 (try 1)
[   42.030626] wlan0: authenticated
[   42.030721] wlan0: associate with 00:1f:6d:b9:6c:42 (try 1)
[   42.033761] wlan0: RX AssocResp from 00:1f:6d:b9:6c:42 (capab=0x431 status=0 aid=6)
[   42.033769] wlan0: associated
[   42.035201] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[   52.042415] wlan0: deauthenticating from 00:1f:6d:b9:6c:42 by local choice (reason=3)
[   52.048702] cfg80211: Calling CRDA for country: US
[   52.736213] wlan0: no IPv6 routers present
[   53.448667] wlan0: authenticate with 00:1f:6d:b9:6c:42 (try 1)
[   53.450257] wlan0: authenticated
[   53.450302] wlan0: associate with 00:1f:6d:b9:6c:42 (try 1)
[   53.453348] wlan0: RX AssocResp from 00:1f:6d:b9:6c:42 (capab=0x431 status=0 aid=6)
[   53.453356] wlan0: associated
[   63.456472] wlan0: deauthenticating from 00:1f:6d:b9:6c:42 by local choice (reason=3)
[   63.464591] cfg80211: Calling CRDA to update world regulatory domain
[   64.864840] wlan0: authenticate with 00:17:df:ab:1f:70 (try 1)
[   64.866243] wlan0: authenticated
[   64.866290] wlan0: associate with 00:17:df:ab:1f:70 (try 1)
[   64.869532] wlan0: RX AssocResp from 00:17:df:ab:1f:70 (capab=0x431 status=0 aid=86)
[   64.869540] wlan0: associated
[   74.872898] wlan0: deauthenticating from 00:17:df:ab:1f:70 by local choice (reason=3)
[   74.880452] cfg80211: Calling CRDA to update world regulatory domain
[   76.284829] wlan0: authenticate with 00:17:df:ab:1f:70 (try 1)
[   76.286226] wlan0: authenticated
[   76.286273] wlan0: associate with 00:17:df:ab:1f:70 (try 1)
[   76.289343] wlan0: RX AssocResp from 00:17:df:ab:1f:70 (capab=0x431 status=0 aid=86)
[   76.289351] wlan0: associated
[   86.291989] wlan0: deauthenticating from 00:17:df:ab:1f:70 by local choice (reason=3)
[   86.300601] cfg80211: Calling CRDA for country: US
[   87.712864] wlan0: authenticate with 00:1f:6d:b9:85:12 (try 1)
[   87.714272] wlan0: authenticated
[   87.714316] wlan0: associate with 00:1f:6d:b9:85:12 (try 1)
[   87.717832] wlan0: RX AssocResp from 00:1f:6d:b9:85:12 (capab=0x431 status=0 aid=1)
[   87.717840] wlan0: associated
[   97.720980] wlan0: deauthenticating from 00:1f:6d:b9:85:12 by local choice (reason=3)
[   97.728461] cfg80211: Calling CRDA to update world regulatory domain
[   99.016811] wlan0: authenticate with 00:1f:6d:b9:85:12 (try 1)
[   99.018398] wlan0: authenticated
[   99.018494] wlan0: associate with 00:1f:6d:b9:85:12 (try 1)
[   99.021781] wlan0: RX AssocResp from 00:1f:6d:b9:85:12 (capab=0x431 status=0 aid=1)
[   99.021789] wlan0: associated
