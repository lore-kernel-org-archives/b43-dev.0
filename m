From: Christoph =?ISO-8859-1?Q?R=FC=DFler?= <christoph.ruessler@googlemail.com>
Date: Wed, 27 Nov 2013 16:21:21 +0100
Subject: Bug in the b43 driver (BCM4311 on Ubuntu 3.11.0-13-generic)?
Message-ID: <1719878.PqRfnC143k@christoph>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I have a Broadcom BCM4311 wifi card and I'm using the b43 kernel driver with it 
(Ubuntu 3.11.0-13-generic). Unfortunately my system seems to have problems 
loading the driver correctly at boot time. In most cases it does not properly 
load the driver on boot making it necessary to use the radio killswitch to 
manually stop and restart the wifi which then works perfectly and without any 
further disruptions.

The bug is not reproducible in a way that that I am not able to predict if it 
will happen after the next boot. I am also not able to reproduce it once I 
have successfully enabled the wifi after a failed boot. Since I only started 
using the b43 driver with the kernel I'm still using I do not know if it would 
have worked with previous kernels which were using the Broadcom driver.

The only hint I have so far found in debugging is a small difference in the 
dmesg output between working and non-working boot sequences. When the wifi 
fails to start dmesg contains the following lines:
> [   16.169637] b43-phy0: Broadcom 4311 WLAN found (core revision 13)
[?]
> [   16.217018] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision 9
[?]
> [   16.246721] Broadcom 43xx driver loaded [ Features: PNL ]

Using the radio killswitch under these circumstances yields the following 
output:
> [  496.421727] pci 0000:30:00.0: [14e4:4312] type 00 class 0x028000
> [  496.421782] pci 0000:30:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
> [  496.421930] pci 0000:30:00.0: supports D1 D2
> [  496.422004] pci 0000:30:00.0: System wakeup disabled by ACPI
> [  496.428993] pci 0000:30:00.0: BAR 0: assigned [mem 0xc8000000-0xc8003fff 
64bit]
> [  496.577397] b43-pci-bridge 0000:30:00.0: enabling device (0000 -> 0002)
> [  496.596096] ssb: Found chip with id 0x4311, rev 0x02 and package 0x00
> [  496.596111] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor 
0x4243)
> [  496.596123] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor 
0x4243)
> [  496.596136] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor 
0x4243)
> [  496.596148] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x05, vendor 0x4243)
> [  496.660259] b43-phy1: Broadcom 4311 WLAN found (core revision 13)
> [  496.704083] b43-phy1: Found PHY: Analog 4, Type 2 (G), Revision 9
> [  496.728352] ssb: Sonics Silicon Backplane found on PCI device 
0000:30:00.0
> [  496.729194] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
> [  496.972075] b43-phy1: Loading firmware version 666.2 (2011-02-23 01:15:07)

When everything is working as expected I can find the following in the dmesg 
output:
> [   16.115666] b43-phy0: Broadcom 4311 WLAN found (core revision 13)
[?]
> [   16.160089] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision 9
[?]
> [   16.184214] Broadcom 43xx driver loaded [ Features: PNL ]
[?]
> [   24.738141] pci 0000:30:00.0: [14e4:4312] type 00 class 0x028000
> [   24.738203] pci 0000:30:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
> [   24.738350] pci 0000:30:00.0: supports D1 D2
> [   24.738425] pci 0000:30:00.0: System wakeup disabled by ACPI
> [   24.755897] pci 0000:30:00.0: BAR 0: assigned [mem 0xc8000000-0xc8003fff 
64bit]
> [   24.809549] b43-pci-bridge 0000:30:00.0: enabling device (0000 -> 0002)
> [   24.896511] ssb: Found chip with id 0x4311, rev 0x02 and package 0x00
> [   24.896538] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor 
0x4243)
> [   24.896551] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor 
0x4243)
> [   24.896563] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor 
0x4243)
> [   24.896574] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x05, vendor 0x4243)
> [   24.960281] b43-phy1: Broadcom 4311 WLAN found (core revision 13)
> [   25.004095] b43-phy1: Found PHY: Analog 4, Type 2 (G), Revision 9
> [   25.028328] ssb: Sonics Silicon Backplane found on PCI device 
0000:30:00.0
> [   25.029050] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
> [   25.236092] b43-phy1: Loading firmware version 666.2 (2011-02-23 01:15:07)

Am I right in suspecting that this may be a bug in the driver? What can I do 
in order to help debugging? And if it's not a bug in the driver what could be 
the reason for this behaviour?

Attached you will find the requested debugging output.

Regards
Christoph R??ler
-------------- next part --------------
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Initializing cgroup subsys cpuacct
[    0.000000] Linux version 3.11.0-13-generic (buildd at aatxe) (gcc version 4.8.1 (Ubuntu/Linaro 4.8.1-10ubuntu8) ) #20-Ubuntu SMP Wed Oct 23 17:26:33 UTC 2013 (Ubuntu 3.11.0-13.20-generic 3.11.6)
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   NSC Geode by NSC
[    0.000000]   Cyrix CyrixInstead
[    0.000000]   Centaur CentaurHauls
[    0.000000]   Transmeta GenuineTMx86
[    0.000000]   Transmeta TransmetaCPU
[    0.000000]   UMC UMC UMC UMC
[    0.000000] e820: BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000000e0000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x0000000077faffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000077fb0000-0x0000000077fc7fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000077fc8000-0x0000000077fe7fb7] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x0000000077fe7fb8-0x000000007fffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000e0000000-0x00000000efffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec01fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ffbc0000-0x00000000ffcbffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fff00000-0x00000000ffffffff] reserved
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] SMBIOS 2.4 present.
[    0.000000] DMI: Hewlett-Packard HP Compaq 6715s (KE062ET#ABD)/30C2, BIOS 68YTT Ver. F.07 07/16/2007
[    0.000000] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000000] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000000] e820: last_pfn = 0x77fb0 max_arch_pfn = 0x1000000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-C0FFF write-protect
[    0.000000]   C1000-C3FFF write-back
[    0.000000]   C4000-C4FFF write-protect
[    0.000000]   C5000-C7FFF write-back
[    0.000000]   C8000-C8FFF write-protect
[    0.000000]   C9000-CBFFF write-back
[    0.000000]   CC000-CCFFF write-protect
[    0.000000]   CD000-CFFFF write-back
[    0.000000]   D0000-D0FFF write-protect
[    0.000000]   D1000-EFFFF uncachable
[    0.000000]   F0000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 0000000000 mask FFC0000000 write-back
[    0.000000]   1 base 0040000000 mask FFE0000000 write-back
[    0.000000]   2 base 0060000000 mask FFF0000000 write-back
[    0.000000]   3 base 0070000000 mask FFF8000000 write-back
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] Scanning 1 areas for low memory corruption
[    0.000000] initial memory mapped: [mem 0x00000000-0x01ffffff]
[    0.000000] Base memory trampoline at [c009b000] 9b000 size 16384
[    0.000000] init_memory_mapping: [mem 0x00000000-0x000fffff]
[    0.000000]  [mem 0x00000000-0x000fffff] page 4k
[    0.000000] init_memory_mapping: [mem 0x37800000-0x379fffff]
[    0.000000]  [mem 0x37800000-0x379fffff] page 2M
[    0.000000] init_memory_mapping: [mem 0x34000000-0x377fffff]
[    0.000000]  [mem 0x34000000-0x377fffff] page 2M
[    0.000000] init_memory_mapping: [mem 0x00100000-0x33ffffff]
[    0.000000]  [mem 0x00100000-0x001fffff] page 4k
[    0.000000]  [mem 0x00200000-0x33ffffff] page 2M
[    0.000000] init_memory_mapping: [mem 0x37a00000-0x37bfdfff]
[    0.000000]  [mem 0x37a00000-0x37bfdfff] page 4k
[    0.000000] BRK [0x01b39000, 0x01b39fff] PGTABLE
[    0.000000] RAMDISK: [mem 0x351c8000-0x368dbfff]
[    0.000000] ACPI: RSDP 000fe0b0 00024 (v02 HP    )
[    0.000000] ACPI: XSDT 77fc81bc 00064 (v01 HPQOEM SLIC-MPC 00000001 HP   00000001)
[    0.000000] ACPI: FACP 77fc8084 000F4 (v04 HP     0944     00000003 HP   00000001)
[    0.000000] ACPI BIOS Error (bug): 32/64X address mismatch in FADT/Pm2ControlBlock: 0x00008800/0x0000000000008100, using 32 (20130517/tbfadt-462)
[    0.000000] ACPI: DSDT 77fc84a4 11437 (v01 HP        SB400 00010000 MSFT 03000001)
[    0.000000] ACPI: FACS 77fe7d80 00040
[    0.000000] ACPI: SLIC 77fc8220 00176 (v01 HPQOEM SLIC-MPC 00000001 HP   00000001)
[    0.000000] ACPI: EPTH 77fc8398 00038 (v01 HP     0944     00000001 HP   00000001)
[    0.000000] ACPI: APIC 77fc83d0 00062 (v01 HP     0944     00000001 HP   00000001)
[    0.000000] ACPI: MCFG 77fc8434 0003C (v01 HP     0944     00000001 HP   00000001)
[    0.000000] ACPI: TCPA 77fc8470 00032 (v02 HP     0944     00000001 HP   00000001)
[    0.000000] ACPI: SSDT 77fd98db 00059 (v01 HP       HPQNLP 00000001 MSFT 03000001)
[    0.000000] ACPI: SSDT 77fd9934 00206 (v01 HP     PSSTBLID 00000001 HP   00000001)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] 1027MB HIGHMEM available.
[    0.000000] 891MB LOWMEM available.
[    0.000000]   mapped low ram: 0 - 37bfe000
[    0.000000]   low ram: 0 - 37bfe000
[    0.000000] BRK [0x01b3a000, 0x01b3afff] PGTABLE
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x00001000-0x00ffffff]
[    0.000000]   Normal   [mem 0x01000000-0x37bfdfff]
[    0.000000]   HighMem  [mem 0x37bfe000-0x77faffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x00001000-0x0009efff]
[    0.000000]   node   0: [mem 0x00100000-0x77faffff]
[    0.000000] On node 0 totalpages: 491342
[    0.000000] free_area_init_node: node 0, pgdat c1948b40, node_mem_map f6cfe020
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 3998 pages, LIFO batch:0
[    0.000000]   Normal zone: 1752 pages used for memmap
[    0.000000]   Normal zone: 224254 pages, LIFO batch:31
[    0.000000]   HighMem zone: 2056 pages used for memmap
[    0.000000]   HighMem zone: 263090 pages, LIFO batch:31
[    0.000000] Using APIC driver default
[    0.000000] SB600 revision 0x14
[    0.000000] Ignoring ACPI timer override.
[    0.000000] If you got timer trouble try acpi_use_timer_override
[    0.000000] Detected use of extended apic ids on hypertransport bus
[    0.000000] ACPI: PM-Timer IO Port: 0x8008
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 33, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: BIOS IRQ0 override ignored.
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 low level)
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] smpboot: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] nr_irqs_gsi: 40
[    0.000000] PM: Registered nosave memory: [mem 0x0009f000-0x0009ffff]
[    0.000000] PM: Registered nosave memory: [mem 0x000a0000-0x000dffff]
[    0.000000] PM: Registered nosave memory: [mem 0x000e0000-0x000fffff]
[    0.000000] e820: [mem 0x80000000-0xdfffffff] available for PCI devices
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:2 nr_node_ids:1
[    0.000000] PERCPU: Embedded 14 pages/cpu @f6cd6000 s36288 r0 d21056 u57344
[    0.000000] pcpu-alloc: s36288 r0 d21056 u57344 alloc=14*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 489558
[    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-3.11.0-13-generic root=UUID=b120c9f5-c318-4e62-84b8-6fa8db1ed962 ro quiet splash vt.handoff=7
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Initializing CPU#0
[    0.000000] allocated 3931512 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't want memory cgroups
[    0.000000] Initializing HighMem for node 0 (00037bfe:00077fb0)
[    0.000000] Memory: 1910004K/1965368K available (6352K kernel code, 607K rwdata, 2640K rodata, 880K init, 908K bss, 55364K reserved, 1052360K highmem)
[    0.000000] virtual kernel memory layout:
[    0.000000]     fixmap  : 0xfff14000 - 0xfffff000   ( 940 kB)
[    0.000000]     pkmap   : 0xffc00000 - 0xffe00000   (2048 kB)
[    0.000000]     vmalloc : 0xf83fe000 - 0xffbfe000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf7bfe000   ( 891 MB)
[    0.000000]       .init : 0xc1962000 - 0xc1a3e000   ( 880 kB)
[    0.000000]       .data : 0xc16343a4 - 0xc1961dc0   (3254 kB)
[    0.000000]       .text : 0xc1000000 - 0xc16343a4   (6352 kB)
[    0.000000] Checking if this processor honours the WP bit even in supervisor mode...Ok.
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] 	RCU dyntick-idle grace-period acceleration is enabled.
[    0.000000] 	RCU restricting CPUs from NR_CPUS=8 to nr_cpu_ids=2.
[    0.000000] NR_IRQS:2304 nr_irqs:512 16
[    0.000000] CPU 0 irqstacks, hard=f4808000 soft=f480a000
[    0.000000] spurious 8259A interrupt: IRQ7.
[    0.000000] Console: colour dummy device 80x25
[    0.000000] console [tty0] enabled
[    0.000000] tsc: Fast TSC calibration failed
[    0.000000] tsc: Unable to calibrate against PIT
[    0.000000] tsc: using PMTIMER reference calibration
[    0.000000] tsc: Detected 1994.187 MHz processor
[    0.000000] tsc: Marking TSC unstable due to TSCs unsynchronized
[    0.020005] Calibrating delay loop (skipped), value calculated using timer frequency.. 3988.37 BogoMIPS (lpj=7976748)
[    0.020009] pid_max: default: 32768 minimum: 301
[    0.020131] Security Framework initialized
[    0.020170] AppArmor: AppArmor initialized
[    0.020173] Yama: becoming mindful.
[    0.020333] Mount-cache hash table entries: 512
[    0.020954] Initializing cgroup subsys memory
[    0.020988] Initializing cgroup subsys devices
[    0.020991] Initializing cgroup subsys freezer
[    0.021012] Initializing cgroup subsys blkio
[    0.021014] Initializing cgroup subsys perf_event
[    0.021018] Initializing cgroup subsys hugetlb
[    0.021083] CPU: Physical Processor ID: 0
[    0.021085] CPU: Processor Core ID: 0
[    0.021089] mce: CPU supports 5 MCE banks
[    0.021116] LVT offset 0 assigned for vector 0xf9
[    0.021121] process: using AMD E400 aware idle routine
[    0.021148] Last level iTLB entries: 4KB 512, 2MB 8, 4MB 4
[    0.021148] Last level dTLB entries: 4KB 512, 2MB 8, 4MB 4
[    0.021148] tlb_flushall_shift: 4
[    0.021838] Freeing SMP alternatives memory: 28K (c1a3e000 - c1a45000)
[    0.027453] ACPI: Core revision 20130517
[    0.044026] ACPI: All ACPI Tables successfully acquired
[    0.048040] ftrace: allocating 27140 entries in 54 pages
[    0.060123] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.060509] ..TIMER: vector=0x30 apic1=0 pin1=0 apic2=-1 pin2=-1
[    0.103746] smpboot: CPU0: AMD Turion(tm) 64 X2 Mobile Technology TL-60 (fam: 0f, model: 68, stepping: 02)
[    0.104000] Performance Events: AMD PMU driver.
[    0.104000] ... version:                0
[    0.104000] ... bit width:              48
[    0.104000] ... generic registers:      4
[    0.104000] ... value mask:             0000ffffffffffff
[    0.104000] ... max period:             00007fffffffffff
[    0.104000] ... fixed-purpose events:   0
[    0.104000] ... event mask:             000000000000000f
[    0.104000] NMI watchdog: enabled on all CPUs, permanently consumes one hw-PMU counter.
[    0.104000] CPU 1 irqstacks, hard=f48f0000 soft=f48f2000
[    0.104000] smpboot: Booting Node   0, Processors  #1 OK
[    0.024000] Initializing CPU#1
[    0.024000] process: System has AMD C1E enabled
[    0.024000] process: Switch to broadcast mode on CPU1
[    0.192093] Brought up 2 CPUs
[    0.192097] smpboot: Total of 2 processors activated (7978.68 BogoMIPS)
[    0.192678] process: Switch to broadcast mode on CPU0
[    0.196102] devtmpfs: initialized
[    0.196251] EVM: security.selinux
[    0.196253] EVM: security.SMACK64
[    0.196255] EVM: security.capability
[    0.196280] PM: Registering ACPI NVS region [mem 0x77fc8000-0x77fe7fb7] (131000 bytes)
[    0.196280] reboot: BIOS series board detected. Selecting HP Compaq Laptop-method for reboots.
[    0.197828] regulator-dummy: no parameters
[    0.197869] RTC time: 14:03:57, date: 11/27/13
[    0.197927] NET: Registered protocol family 16
[    0.198114] EISA bus registered
[    0.198120] node 0 link 0: io port [1000, fffff]
[    0.198124] TOM: 0000000080000000 aka 2048M
[    0.198128] node 0 link 0: mmio [e0000000, efffffff]
[    0.198131] node 0 link 0: mmio [f0000000, ffffffff]
[    0.198134] node 0 link 0: mmio [c8000000, dfffffff]
[    0.198137] node 0 link 0: mmio [c0000000, c7ffffff]
[    0.198140] node 0 link 0: mmio [a0000, bffff]
[    0.198143] node 0 link 0: mmio [80000000, bfffffff]
[    0.198148] bus: [bus 00-ff] on node 0 link 0
[    0.198151] bus: 00 [io  0x0000-0xffff]
[    0.198153] bus: 00 [mem 0x80000000-0xfcffffffff]
[    0.198155] bus: 00 [mem 0x000a0000-0x000bffff]
[    0.198225] ACPI: bus type PCI registered
[    0.198229] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.198303] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000-0xefffffff] (base 0xe0000000)
[    0.198307] PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in E820
[    0.198309] PCI: Using MMCONFIG for extended config space
[    0.198311] PCI: Using configuration type 1 for base access
[    0.200097] bio: create slab <bio-0> at 0
[    0.200130] ACPI: Added _OSI(Module Device)
[    0.200133] ACPI: Added _OSI(Processor Device)
[    0.200135] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.200137] ACPI: Added _OSI(Processor Aggregator Device)
[    0.201676] ACPI: EC: Look up EC in DSDT
[    0.484118] ACPI: Interpreter enabled
[    0.484133] ACPI Exception: AE_NOT_FOUND, While evaluating Sleep State [\_S1_] (20130517/hwxface-571)
[    0.484139] ACPI Exception: AE_NOT_FOUND, While evaluating Sleep State [\_S2_] (20130517/hwxface-571)
[    0.484158] ACPI: (supports S0 S3 S4 S5)
[    0.484161] ACPI: Using IOAPIC for interrupt routing
[    0.484263] PCI: Ignoring host bridge windows from ACPI; if necessary, use "pci=use_crs" and report a bug
[    0.484459] ACPI: No dock devices found.
[    0.485661] ACPI: Power Resource [C171] (off)
[    0.485661] ACPI: Power Resource [C24C] (on)
[    0.490612] ACPI: Power Resource [C395] (off)
[    0.490667] ACPI: Power Resource [C396] (off)
[    0.490717] ACPI: Power Resource [C397] (off)
[    0.490767] ACPI: Power Resource [C398] (off)
[    0.495071] ACPI: PCI Root Bridge [C08B] (domain 0000 [bus 00-ff])
[    0.495078] acpi PNP0A03:00: ACPI _OSC support notification failed, disabling PCIe ASPM
[    0.495081] acpi PNP0A03:00: Unable to request _OSC control (_OSC support mask: 0x08)
[    0.502511] acpi PNP0A03:00: host bridge window [io  0x0000-0x0cf7] (ignored)
[    0.502515] acpi PNP0A03:00: host bridge window [io  0x0d00-0xffff] (ignored)
[    0.502518] acpi PNP0A03:00: host bridge window [mem 0x000a0000-0x000bffff] (ignored)
[    0.502521] acpi PNP0A03:00: host bridge window [mem 0x80000000-0xfedfffff] (ignored)
[    0.502525] acpi PNP0A03:00: host bridge window [mem 0xfee01000-0xffffffff] (ignored)
[    0.502528] acpi PNP0A03:00: host bridge window [mem 0x000d3000-0x000dffff] (ignored)
[    0.502531] PCI: root bus 00: hardware-probed resources
[    0.502682] PCI host bridge to bus 0000:00
[    0.502686] pci_bus 0000:00: root bus resource [bus 00-ff]
[    0.502689] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
[    0.502692] pci_bus 0000:00: root bus resource [mem 0x80000000-0xfcffffffff]
[    0.502696] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff]
[    0.502707] pci 0000:00:00.0: [1002:7910] type 00 class 0x060000
[    0.502813] pci 0000:00:01.0: [1002:7912] type 01 class 0x060400
[    0.502932] pci 0000:00:04.0: [1002:7914] type 01 class 0x060400
[    0.502971] pci 0000:00:04.0: PME# supported from D0 D3hot D3cold
[    0.503033] pci 0000:00:04.0: System wakeup disabled by ACPI
[    0.503087] pci 0000:00:05.0: [1002:7915] type 01 class 0x060400
[    0.503125] pci 0000:00:05.0: PME# supported from D0 D3hot D3cold
[    0.503218] pci 0000:00:06.0: [1002:7916] type 01 class 0x060400
[    0.503256] pci 0000:00:06.0: PME# supported from D0 D3hot D3cold
[    0.503316] pci 0000:00:06.0: System wakeup disabled by ACPI
[    0.503382] pci 0000:00:12.0: [1002:4380] type 00 class 0x01018f
[    0.503404] pci 0000:00:12.0: reg 0x10: [io  0x9000-0x9007]
[    0.503416] pci 0000:00:12.0: reg 0x14: [io  0x9008-0x900b]
[    0.503429] pci 0000:00:12.0: reg 0x18: [io  0x9010-0x9017]
[    0.503441] pci 0000:00:12.0: reg 0x1c: [io  0x5018-0x501b]
[    0.503453] pci 0000:00:12.0: reg 0x20: [io  0x5020-0x502f]
[    0.503466] pci 0000:00:12.0: reg 0x24: [mem 0xd0409000-0xd04093ff]
[    0.503491] pci 0000:00:12.0: set SATA to AHCI mode
[    0.503610] pci 0000:00:13.0: [1002:4387] type 00 class 0x0c0310
[    0.503626] pci 0000:00:13.0: reg 0x10: [mem 0xd0401000-0xd0401fff]
[    0.503746] pci 0000:00:13.0: System wakeup disabled by ACPI
[    0.503794] pci 0000:00:13.1: [1002:4388] type 00 class 0x0c0310
[    0.503811] pci 0000:00:13.1: reg 0x10: [mem 0xd0402000-0xd0402fff]
[    0.503930] pci 0000:00:13.1: System wakeup disabled by ACPI
[    0.503979] pci 0000:00:13.2: [1002:4389] type 00 class 0x0c0310
[    0.504005] pci 0000:00:13.2: reg 0x10: [mem 0xd0403000-0xd0403fff]
[    0.504124] pci 0000:00:13.2: System wakeup disabled by ACPI
[    0.504170] pci 0000:00:13.3: [1002:438a] type 00 class 0x0c0310
[    0.504187] pci 0000:00:13.3: reg 0x10: [mem 0xd0404000-0xd0404fff]
[    0.504304] pci 0000:00:13.3: System wakeup disabled by ACPI
[    0.504350] pci 0000:00:13.4: [1002:438b] type 00 class 0x0c0310
[    0.504367] pci 0000:00:13.4: reg 0x10: [mem 0xd0405000-0xd0405fff]
[    0.504481] pci 0000:00:13.4: System wakeup disabled by ACPI
[    0.504537] pci 0000:00:13.5: [1002:4386] type 00 class 0x0c0320
[    0.504560] pci 0000:00:13.5: reg 0x10: [mem 0xd0406000-0xd04060ff]
[    0.504656] pci 0000:00:13.5: supports D1 D2
[    0.504659] pci 0000:00:13.5: PME# supported from D0 D1 D2 D3hot
[    0.504723] pci 0000:00:13.5: System wakeup disabled by ACPI
[    0.504774] pci 0000:00:14.0: [1002:4385] type 00 class 0x0c0500
[    0.504800] pci 0000:00:14.0: reg 0x10: [io  0x8200-0x820f]
[    0.504973] pci 0000:00:14.1: [1002:438c] type 00 class 0x010182
[    0.504990] pci 0000:00:14.1: reg 0x10: [io  0x0000-0x0007]
[    0.505002] pci 0000:00:14.1: reg 0x14: [io  0x0000-0x0003]
[    0.505014] pci 0000:00:14.1: reg 0x18: [io  0x0000-0x0007]
[    0.505026] pci 0000:00:14.1: reg 0x1c: [io  0x0000-0x0003]
[    0.505038] pci 0000:00:14.1: reg 0x20: [io  0x5040-0x504f]
[    0.505159] pci 0000:00:14.2: [1002:4383] type 00 class 0x040300
[    0.505185] pci 0000:00:14.2: reg 0x10: [mem 0xd0408000-0xd040bfff 64bit]
[    0.505262] pci 0000:00:14.2: PME# supported from D0 D3hot D3cold
[    0.505324] pci 0000:00:14.2: System wakeup disabled by ACPI
[    0.505371] pci 0000:00:14.3: [1002:438d] type 00 class 0x060100
[    0.505542] pci 0000:00:14.4: [1002:4384] type 01 class 0x060401
[    0.505639] pci 0000:00:14.4: System wakeup disabled by ACPI
[    0.505690] pci 0000:00:18.0: [1022:1100] type 00 class 0x060000
[    0.505785] pci 0000:00:18.1: [1022:1101] type 00 class 0x060000
[    0.505878] pci 0000:00:18.2: [1022:1102] type 00 class 0x060000
[    0.505976] pci 0000:00:18.3: [1022:1103] type 00 class 0x060000
[    0.506136] pci 0000:01:05.0: [1002:791f] type 00 class 0x030000
[    0.506149] pci 0000:01:05.0: reg 0x10: [mem 0xc0000000-0xc7ffffff 64bit pref]
[    0.506157] pci 0000:01:05.0: reg 0x18: [mem 0xd0200000-0xd020ffff 64bit]
[    0.506164] pci 0000:01:05.0: reg 0x20: [io  0x4000-0x40ff]
[    0.506170] pci 0000:01:05.0: reg 0x24: [mem 0xd0300000-0xd03fffff]
[    0.506191] pci 0000:01:05.0: supports D1 D2
[    0.506242] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.506247] pci 0000:00:01.0:   bridge window [io  0x4000-0x4fff]
[    0.506251] pci 0000:00:01.0:   bridge window [mem 0xd0200000-0xd03fffff]
[    0.506256] pci 0000:00:01.0:   bridge window [mem 0xc0000000-0xc7ffffff 64bit pref]
[    0.506333] acpiphp: Slot [1] registered
[    0.506398] pci 0000:10:00.0: [14e4:1713] type 00 class 0x020000
[    0.506420] pci 0000:10:00.0: reg 0x10: [mem 0xd0000000-0xd000ffff 64bit]
[    0.506528] pci 0000:10:00.0: PME# supported from D3hot D3cold
[    0.506554] pci 0000:10:00.0: System wakeup disabled by ACPI
[    0.516059] pci 0000:00:04.0: PCI bridge to [bus 10]
[    0.516065] pci 0000:00:04.0:   bridge window [mem 0xd0000000-0xd00fffff]
[    0.516171] acpiphp: Slot [1-1] registered
[    0.516191] pci 0000:00:05.0: PCI bridge to [bus 20]
[    0.516196] pci 0000:00:05.0:   bridge window [io  0x2000-0x3fff]
[    0.516199] pci 0000:00:05.0:   bridge window [mem 0xcc000000-0xcfffffff]
[    0.516263] acpiphp: Slot [1-2] registered
[    0.516289] pci 0000:30:00.0: [14e4:4312] type 00 class 0x028000
[    0.516310] pci 0000:30:00.0: reg 0x10: [mem 0xc8000000-0xc8003fff 64bit]
[    0.516406] pci 0000:30:00.0: supports D1 D2
[    0.516439] pci 0000:30:00.0: System wakeup disabled by ACPI
[    0.528013] pci 0000:00:06.0: PCI bridge to [bus 30]
[    0.528019] pci 0000:00:06.0:   bridge window [mem 0xc8000000-0xc80fffff]
[    0.528077] pci 0000:02:04.0: [1180:0476] type 02 class 0x060700
[    0.528104] pci 0000:02:04.0: reg 0x10: [mem 0xd0100000-0xd0100fff]
[    0.528144] pci 0000:02:04.0: supports D1 D2
[    0.528147] pci 0000:02:04.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.528254] pci 0000:00:14.4: PCI bridge to [bus 02-03] (subtractive decode)
[    0.528262] pci 0000:00:14.4:   bridge window [mem 0xd0100000-0xd01fffff]
[    0.528268] pci 0000:00:14.4:   bridge window [io  0x0000-0xffff] (subtractive decode)
[    0.528271] pci 0000:00:14.4:   bridge window [mem 0x80000000-0xfcffffffff] (subtractive decode)
[    0.528275] pci 0000:00:14.4:   bridge window [mem 0x000a0000-0x000bffff] (subtractive decode)
[    0.528343] pci_bus 0000:03: busn_res: can not insert [bus 03-ff] under [bus 02-03] (conflicts with (null) [bus 02-03])
[    0.528349] pci_bus 0000:03: busn_res: [bus 03-ff] end is updated to 06
[    0.528353] pci_bus 0000:03: busn_res: can not insert [bus 03-06] under [bus 02-03] (conflicts with (null) [bus 02-03])
[    0.528359] pci_bus 0000:03: [bus 03-06] partially hidden behind transparent bridge 0000:02 [bus 02-03]
[    0.528378] pci_bus 0000:00: on NUMA node 0
[    0.528914] ACPI: PCI Interrupt Link [C145] (IRQs 10 11) *0, disabled.
[    0.529012] ACPI: PCI Interrupt Link [C146] (IRQs 10 11) *0, disabled.
[    0.529112] ACPI: PCI Interrupt Link [C147] (IRQs 10 11) *0, disabled.
[    0.529210] ACPI: PCI Interrupt Link [C148] (IRQs 10 11) *0, disabled.
[    0.529307] ACPI: PCI Interrupt Link [C149] (IRQs 10 11) *0, disabled.
[    0.529405] ACPI: PCI Interrupt Link [C14A] (IRQs 9) *0, disabled.
[    0.529502] ACPI: PCI Interrupt Link [C14B] (IRQs 10 11) *0, disabled.
[    0.529600] ACPI: PCI Interrupt Link [C14C] (IRQs 10 11) *0, disabled.
[    0.530240] ACPI: Enabled 8 GPEs in block 00 to 1F
[    0.530252] ACPI: \_SB_.C08B: notify handler is installed
[    0.530345] Found 1 acpi root devices
[    0.530399] ACPI: EC: GPE = 0x11, I/O: command/status = 0x66, data = 0x62
[    0.532026] vgaarb: device added: PCI:0000:01:05.0,decodes=io+mem,owns=io+mem,locks=none
[    0.532029] vgaarb: loaded
[    0.532031] vgaarb: bridge control possible 0000:01:05.0
[    0.532355] SCSI subsystem initialized
[    0.532358] ACPI: bus type ATA registered
[    0.532383] libata version 3.00 loaded.
[    0.532383] ACPI: bus type USB registered
[    0.532383] usbcore: registered new interface driver usbfs
[    0.532383] usbcore: registered new interface driver hub
[    0.532383] usbcore: registered new device driver usb
[    0.532383] PCI: Using ACPI for IRQ routing
[    0.544944] PCI: pci_cache_line_size set to 64 bytes
[    0.545027] pci 0000:00:14.2: address space collision: [mem 0xd0408000-0xd040bfff 64bit] conflicts with 0000:00:12.0 [mem 0xd0409000-0xd04093ff]
[    0.545107] e820: reserve RAM buffer [mem 0x0009fc00-0x0009ffff]
[    0.545110] e820: reserve RAM buffer [mem 0x77fb0000-0x77ffffff]
[    0.545247] NetLabel: Initializing
[    0.545249] NetLabel:  domain hash size = 128
[    0.545250] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.545264] NetLabel:  unlabeled traffic allowed by default
[    0.545285] Switched to clocksource refined-jiffies
[    0.554265] AppArmor: AppArmor Filesystem Enabled
[    0.554312] pnp: PnP ACPI init
[    0.554332] ACPI: bus type PNP registered
[    0.554534] system 00:00: [mem 0x00000000-0x0009ffff] could not be reserved
[    0.554539] system 00:00: [mem 0x000e0000-0x000fffff] could not be reserved
[    0.554542] system 00:00: [mem 0x00100000-0xffffffff] could not be reserved
[    0.554548] system 00:00: Plug and Play ACPI device, IDs PNP0c01 (active)
[    0.554755] pnp 00:01: Plug and Play ACPI device, IDs PNP0c04 (active)
[    0.554771] pnp 00:02: [dma 4]
[    0.554797] pnp 00:02: Plug and Play ACPI device, IDs PNP0200 (active)
[    0.554831] pnp 00:03: Plug and Play ACPI device, IDs PNP0800 (active)
[    0.554876] pnp 00:04: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.554935] pnp 00:05: Plug and Play ACPI device, IDs PNP0303 (active)
[    0.554975] pnp 00:06: Plug and Play ACPI device, IDs SYN0131 SYN0100 SYN0002 PNP0f13 (active)
[    0.555124] system 00:07: [io  0x040b] has been reserved
[    0.555128] system 00:07: [io  0x04d0-0x04d1] has been reserved
[    0.555132] system 00:07: [io  0x04d6] has been reserved
[    0.555135] system 00:07: [io  0x0500-0x053f] has been reserved
[    0.555138] system 00:07: [io  0x0c00-0x0c01] has been reserved
[    0.555142] system 00:07: [io  0x0c14] has been reserved
[    0.555146] system 00:07: [io  0x0c50-0x0c51] has been reserved
[    0.555149] system 00:07: [io  0x0c52] has been reserved
[    0.555153] system 00:07: [io  0x0c6c] has been reserved
[    0.555156] system 00:07: [io  0x0c6f] has been reserved
[    0.555160] system 00:07: [io  0x0cd0-0x0cdf] has been reserved
[    0.555164] system 00:07: [mem 0xffb00000-0xffbfffff] could not be reserved
[    0.555168] system 00:07: [mem 0xfff00000-0xffffffff] has been reserved
[    0.555172] system 00:07: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.555654] system 00:08: [io  0x8000-0x802f] could not be reserved
[    0.555658] system 00:08: [io  0x8100-0x811f] has been reserved
[    0.555662] system 00:08: [mem 0xe0000000-0xefffffff] has been reserved
[    0.555666] system 00:08: [mem 0xfec00000-0xfec000ff] could not be reserved
[    0.555670] system 00:08: [mem 0xfed45000-0xfed8ffff] has been reserved
[    0.555674] system 00:08: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.556826] system 00:09: [mem 0x000cd400-0x000cffff] has been reserved
[    0.556830] system 00:09: [mem 0x000d2a00-0x000d2fff] has been reserved
[    0.556834] system 00:09: [mem 0x00000000-0x07ffffff] could not be reserved
[    0.556838] system 00:09: [mem 0xfee00000-0xfee00fff] has been reserved
[    0.556842] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.556856] pnp: PnP ACPI: found 10 devices
[    0.556858] ACPI: bus type PNP unregistered
[    0.556862] PnPBIOS: Disabled by ACPI PNP
[    0.593876] Switched to clocksource acpi_pm
[    0.593920] pci 0000:02:04.0: res[13]=[io  0x0100-0x00ff] get_res_add_size add_size 100
[    0.593924] pci 0000:02:04.0: res[14]=[io  0x0100-0x00ff] get_res_add_size add_size 100
[    0.593929] pci 0000:00:14.4: bridge window [io  0x1000-0x0fff] to [bus 02-03] add_size 1000
[    0.593933] pci 0000:02:04.0: res[15]=[mem 0x04000000-0x03ffffff pref] get_res_add_size add_size 4000000
[    0.593938] pci 0000:00:14.4: bridge window [mem 0x04000000-0x03ffffff pref] to [bus 02-03] add_size 4000000
[    0.593946] pci 0000:00:14.4: res[15]=[mem 0x04000000-0x03ffffff pref] get_res_add_size add_size 4000000
[    0.593950] pci 0000:00:14.4: res[13]=[io  0x1000-0x0fff] get_res_add_size add_size 1000
[    0.593957] pci 0000:00:14.4: BAR 15: assigned [mem 0x80000000-0x83ffffff pref]
[    0.593961] pci 0000:00:14.2: BAR 0: assigned [mem 0x84000000-0x84003fff 64bit]
[    0.593980] pci 0000:00:14.4: BAR 13: assigned [io  0x1000-0x1fff]
[    0.593984] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.593988] pci 0000:00:01.0:   bridge window [io  0x4000-0x4fff]
[    0.593992] pci 0000:00:01.0:   bridge window [mem 0xd0200000-0xd03fffff]
[    0.593996] pci 0000:00:01.0:   bridge window [mem 0xc0000000-0xc7ffffff 64bit pref]
[    0.594001] pci 0000:00:04.0: PCI bridge to [bus 10]
[    0.594005] pci 0000:00:04.0:   bridge window [mem 0xd0000000-0xd00fffff]
[    0.594010] pci 0000:00:05.0: PCI bridge to [bus 20]
[    0.594014] pci 0000:00:05.0:   bridge window [io  0x2000-0x3fff]
[    0.594018] pci 0000:00:05.0:   bridge window [mem 0xcc000000-0xcfffffff]
[    0.594024] pci 0000:00:06.0: PCI bridge to [bus 30]
[    0.594028] pci 0000:00:06.0:   bridge window [mem 0xc8000000-0xc80fffff]
[    0.594035] pci 0000:02:04.0: res[15]=[mem 0x04000000-0x03ffffff pref] get_res_add_size add_size 4000000
[    0.594039] pci 0000:02:04.0: res[16]=[mem 0x04000000-0x03ffffff] get_res_add_size add_size 4000000
[    0.594042] pci 0000:02:04.0: res[13]=[io  0x0100-0x00ff] get_res_add_size add_size 100
[    0.594046] pci 0000:02:04.0: res[14]=[io  0x0100-0x00ff] get_res_add_size add_size 100
[    0.594050] pci 0000:02:04.0: BAR 15: assigned [mem 0x80000000-0x83ffffff pref]
[    0.594054] pci 0000:02:04.0: BAR 16: assigned [mem 0x88000000-0x8bffffff]
[    0.594058] pci 0000:02:04.0: BAR 13: assigned [io  0x1000-0x10ff]
[    0.594062] pci 0000:02:04.0: BAR 14: assigned [io  0x1400-0x14ff]
[    0.594066] pci 0000:02:04.0: CardBus bridge to [bus 03-06]
[    0.594069] pci 0000:02:04.0:   bridge window [io  0x1000-0x10ff]
[    0.594078] pci 0000:02:04.0:   bridge window [io  0x1400-0x14ff]
[    0.594085] pci 0000:02:04.0:   bridge window [mem 0x80000000-0x83ffffff pref]
[    0.594091] pci 0000:02:04.0:   bridge window [mem 0x88000000-0x8bffffff]
[    0.594097] pci 0000:00:14.4: PCI bridge to [bus 02-03]
[    0.594102] pci 0000:00:14.4:   bridge window [io  0x1000-0x1fff]
[    0.594108] pci 0000:00:14.4:   bridge window [mem 0xd0100000-0xd01fffff]
[    0.594114] pci 0000:00:14.4:   bridge window [mem 0x80000000-0x83ffffff pref]
[    0.594206] pci_bus 0000:00: resource 4 [io  0x0000-0xffff]
[    0.594209] pci_bus 0000:00: resource 5 [mem 0x80000000-0xfcffffffff]
[    0.594212] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]
[    0.594216] pci_bus 0000:01: resource 0 [io  0x4000-0x4fff]
[    0.594219] pci_bus 0000:01: resource 1 [mem 0xd0200000-0xd03fffff]
[    0.594223] pci_bus 0000:01: resource 2 [mem 0xc0000000-0xc7ffffff 64bit pref]
[    0.594226] pci_bus 0000:10: resource 1 [mem 0xd0000000-0xd00fffff]
[    0.594229] pci_bus 0000:20: resource 0 [io  0x2000-0x3fff]
[    0.594233] pci_bus 0000:20: resource 1 [mem 0xcc000000-0xcfffffff]
[    0.594236] pci_bus 0000:30: resource 1 [mem 0xc8000000-0xc80fffff]
[    0.594239] pci_bus 0000:02: resource 0 [io  0x1000-0x1fff]
[    0.594242] pci_bus 0000:02: resource 1 [mem 0xd0100000-0xd01fffff]
[    0.594246] pci_bus 0000:02: resource 2 [mem 0x80000000-0x83ffffff pref]
[    0.594249] pci_bus 0000:02: resource 4 [io  0x0000-0xffff]
[    0.594252] pci_bus 0000:02: resource 5 [mem 0x80000000-0xfcffffffff]
[    0.594256] pci_bus 0000:02: resource 6 [mem 0x000a0000-0x000bffff]
[    0.594259] pci_bus 0000:03: resource 0 [io  0x1000-0x10ff]
[    0.594262] pci_bus 0000:03: resource 1 [io  0x1400-0x14ff]
[    0.594265] pci_bus 0000:03: resource 2 [mem 0x80000000-0x83ffffff pref]
[    0.594268] pci_bus 0000:03: resource 3 [mem 0x88000000-0x8bffffff]
[    0.594313] NET: Registered protocol family 2
[    0.594525] TCP established hash table entries: 8192 (order: 4, 65536 bytes)
[    0.594572] TCP bind hash table entries: 8192 (order: 4, 65536 bytes)
[    0.594620] TCP: Hash tables configured (established 8192 bind 8192)
[    0.594665] TCP: reno registered
[    0.594669] UDP hash table entries: 512 (order: 2, 16384 bytes)
[    0.594681] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
[    0.594760] NET: Registered protocol family 1
[    0.594760] pci 0000:01:05.0: Boot video device
[    0.594760] PCI: CLS 64 bytes, default 64
[    0.594760] Trying to unpack rootfs image as initramfs...
[    1.217976] Freeing initrd memory: 23632K (f51c8000 - f68dc000)
[    1.218185] Scanning for low memory corruption every 60 seconds
[    1.218508] Initialise module verification
[    1.218573] audit: initializing netlink socket (disabled)
[    1.218590] type=2000 audit(1385561037.215:1): initialized
[    1.246615] bounce pool size: 64 pages
[    1.246629] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[    1.248449] zbud: loaded
[    1.248562] VFS: Disk quotas dquot_6.5.2
[    1.248625] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    1.249344] fuse init (API version 7.22)
[    1.249490] msgmni has been set to 1721
[    1.250615] Key type asymmetric registered
[    1.250618] Asymmetric key parser 'x509' registered
[    1.250662] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
[    1.250715] io scheduler noop registered
[    1.250717] io scheduler deadline registered (default)
[    1.250752] io scheduler cfq registered
[    1.250924] pcieport 0000:00:04.0: irq 40 for MSI/MSI-X
[    1.250983] pcieport 0000:00:05.0: irq 41 for MSI/MSI-X
[    1.251033] pcieport 0000:00:06.0: irq 42 for MSI/MSI-X
[    1.251103] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    1.251127] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    1.251256] efifb: probing for efifb
[    1.251260] efifb: cannot reserve video memory at 0xa0000
[    1.251266] efifb: framebuffer at 0xa0000, mapped to 0xc00a0000, using 56k, total 64k
[    1.251268] efifb: mode is 640x350x1, linelength=80, pages=1
[    1.251270] efifb: scrolling: redraw
[    1.251273] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[    1.252825] Console: switching to colour frame buffer device 80x43
[    1.254234] fb0: EFI VGA frame buffer device
[    1.258035] ACPI: AC Adapter [C1EB] (on-line)
[    1.258387] input: Sleep Button as /devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/input0
[    1.258394] ACPI: Sleep Button [C28D]
[    1.258444] input: Lid Switch as /devices/LNXSYSTM:00/device:00/PNP0C0D:00/input/input1
[    1.258481] ACPI: Lid Switch [C265]
[    1.258528] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input2
[    1.258532] ACPI: Power Button [PWRF]
[    1.258627] ACPI: Fan [C399] (off)
[    1.258675] ACPI: Fan [C39A] (off)
[    1.258724] ACPI: Fan [C39B] (off)
[    1.258770] ACPI: Fan [C39C] (off)
[    1.258819] ACPI: processor limited to max C-state 1
[    1.266523] thermal LNXTHERM:00: registered as thermal_zone0
[    1.266526] ACPI: Thermal Zone [TZ1] (36 C)
[    1.266570] GHES: HEST is not enabled!
[    1.266695] Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
[    1.266905] isapnp: Scanning for PnP cards...
[    1.268356] Linux agpgart interface v0.103
[    1.270233] brd: module loaded
[    1.271071] loop: module loaded
[    1.271662] libphy: Fixed MDIO Bus: probed
[    1.271807] tun: Universal TUN/TAP device driver, 1.6
[    1.271809] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    1.271862] PPP generic driver version 2.4.2
[    1.271912] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.271915] ehci-pci: EHCI PCI platform driver
[    1.272159] ehci-pci 0000:00:13.5: EHCI Host Controller
[    1.272168] ehci-pci 0000:00:13.5: new USB bus registered, assigned bus number 1
[    1.272178] ehci-pci 0000:00:13.5: applying AMD SB600/SB700 USB freeze workaround
[    1.272196] ehci-pci 0000:00:13.5: debug port 1
[    1.272257] ehci-pci 0000:00:13.5: irq 23, io mem 0xd0406000
[    1.284040] ehci-pci 0000:00:13.5: USB 2.0 started, EHCI 1.00
[    1.284097] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[    1.284100] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.284103] usb usb1: Product: EHCI Host Controller
[    1.284105] usb usb1: Manufacturer: Linux 3.11.0-13-generic ehci_hcd
[    1.284108] usb usb1: SerialNumber: 0000:00:13.5
[    1.284245] hub 1-0:1.0: USB hub found
[    1.284251] hub 1-0:1.0: 10 ports detected
[    1.284706] ehci-platform: EHCI generic platform driver
[    1.284723] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.284725] ohci-platform: OHCI generic platform driver
[    1.284735] uhci_hcd: USB Universal Host Controller Interface driver
[    1.284828] i8042: PNP: PS/2 Controller [PNP0303:C249,PNP0f13:C24A] at 0x60,0x64 irq 1,12
[    1.286489] i8042: Detected active multiplexing controller, rev 1.1
[    1.287176] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.287184] serio: i8042 AUX0 port at 0x60,0x64 irq 12
[    1.287214] serio: i8042 AUX1 port at 0x60,0x64 irq 12
[    1.287239] serio: i8042 AUX2 port at 0x60,0x64 irq 12
[    1.287267] serio: i8042 AUX3 port at 0x60,0x64 irq 12
[    1.287398] mousedev: PS/2 mouse device common for all mice
[    1.287580] rtc_cmos 00:04: RTC can wake from S4
[    1.287743] rtc_cmos 00:04: rtc core: registered rtc_cmos as rtc0
[    1.287769] rtc_cmos 00:04: alarms up to one month, y3k, 114 bytes nvram
[    1.287848] device-mapper: uevent: version 1.0.3
[    1.287916] device-mapper: ioctl: 4.25.0-ioctl (2013-06-26) initialised: dm-devel at redhat.com
[    1.287940] platform eisa.0: Probing EISA bus 0
[    1.287967] platform eisa.0: EISA: Detected 0 cards
[    1.287977] cpufreq-nforce2: No nForce2 chipset.
[    1.287980] cpuidle: using governor ladder
[    1.287982] cpuidle: using governor menu
[    1.288082] ledtrig-cpu: registered to indicate activity on CPUs
[    1.288195] TCP: cubic registered
[    1.288313] NET: Registered protocol family 10
[    1.288543] NET: Registered protocol family 17
[    1.288559] Key type dns_resolver registered
[    1.288742] Using IPI No-Shortcut mode
[    1.288890] PM: Hibernation image not present or could not be loaded.
[    1.288895] Loading module verification certificates
[    1.293395] MODSIGN: Loaded cert 'Magrathea: Glacier signing key: 121c3931998f688796d5ac98c50cd636878ded2d'
[    1.293412] registered taskstats version 1
[    1.297778] Key type trusted registered
[    1.300818] Key type encrypted registered
[    1.303760] AppArmor: AppArmor sha1 policy hashing enabled
[    1.304245]   Magic number: 5:59:82
[    1.304372] rtc_cmos 00:04: setting system clock to 2013-11-27 14:03:58 UTC (1385561038)
[    1.304538] powernow-k8: fid 0xc (2000 MHz), vid 0x12
[    1.304541] powernow-k8: fid 0xa (1800 MHz), vid 0x13
[    1.304543] powernow-k8: fid 0x8 (1600 MHz), vid 0x14
[    1.304545] powernow-k8: fid 0x0 (800 MHz), vid 0x1e
[    1.304576] powernow-k8: Found 1 AMD Turion(tm) 64 X2 Mobile Technology TL-60 (2 cpu cores) (version 2.20.00)
[    1.304584] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
[    1.304586] EDD information not available.
[    1.311230] ACPI: Battery Slot [C1ED] (battery present)
[    1.311320] ACPI: Battery Slot [C1EC] (battery absent)
[    1.311658] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input3
[    1.623255] isapnp: No Plug & Play device found
[    1.623893] Freeing unused kernel memory: 880K (c1962000 - c1a3e000)
[    1.623947] Write protecting the kernel text: 6356k
[    1.624083] Write protecting the kernel read-only data: 2644k
[    1.624085] NX-protecting the kernel data: 5932k
[    1.644642] systemd-udevd[98]: starting version 204
[    1.674467] libahci: module verification failed: signature and/or required key missing - tainting kernel
[    1.675239] ahci 0000:00:12.0: version 3.0
[    1.675452] ahci 0000:00:12.0: controller can't do 64bit DMA, forcing 32bit
[    1.675539] ahci 0000:00:12.0: AHCI 0001.0100 32 slots 4 ports 3 Gbps 0x1 impl SATA mode
[    1.675543] ahci 0000:00:12.0: flags: ncq sntf ilck pm led clo pio slum part ccc 
[    1.677002] ohci-pci: OHCI PCI platform driver
[    1.689882] scsi0 : ahci
[    1.691714] scsi1 : ahci
[    1.693767] scsi2 : ahci
[    1.697683] acpi device:02: registered as cooling_device6
[    1.697850] ACPI: Video Device [C08D] (multi-head: yes  rom: no  post: no)
[    1.697903] input: Video Bus as /devices/LNXSYSTM:00/device:00/PNP0A03:00/device:01/LNXVIDEO:00/input/input4
[    1.701870] [drm] Initialized drm 1.1.0 20060810
[    1.704349] scsi3 : ahci
[    1.704467] ata1: SATA max UDMA/133 abar m1024 at 0xd0409000 port 0xd0409100 irq 16
[    1.704469] ata2: DUMMY
[    1.704472] ata3: DUMMY
[    1.704473] ata4: DUMMY
[    1.704770] ohci-pci 0000:00:13.0: OHCI PCI host controller
[    1.704779] ohci-pci 0000:00:13.0: new USB bus registered, assigned bus number 2
[    1.704803] ohci-pci 0000:00:13.0: irq 23, io mem 0xd0401000
[    1.719875] wmi: Mapper loaded
[    1.723794] pps_core: LinuxPPS API ver. 1 registered
[    1.723800] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    1.724186] PTP clock support registered
[    1.764048] usb usb2: New USB device found, idVendor=1d6b, idProduct=0001
[    1.764055] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.764058] usb usb2: Product: OHCI PCI host controller
[    1.764061] usb usb2: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    1.764064] usb usb2: SerialNumber: 0000:00:13.0
[    1.784054] ssb: Found chip with id 0x4311, rev 0x02 and package 0x00
[    1.784064] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor 0x4243)
[    1.784071] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor 0x4243)
[    1.784077] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor 0x4243)
[    1.784084] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x05, vendor 0x4243)
[    1.785563] tg3.c:v3.132 (May 21, 2013)
[    1.792463] hub 2-0:1.0: USB hub found
[    1.792481] hub 2-0:1.0: 2 ports detected
[    1.792798] ohci-pci 0000:00:13.1: OHCI PCI host controller
[    1.792806] ohci-pci 0000:00:13.1: new USB bus registered, assigned bus number 3
[    1.792844] ohci-pci 0000:00:13.1: irq 17, io mem 0xd0402000
[    1.804601] [drm] radeon kernel modesetting enabled.
[    1.804714] checking generic (a0000 e000) vs hw (c0000000 8000000)
[    1.804717] fb: conflicting fb hw usage radeondrmfb vs EFI VGA - removing generic driver
[    1.804741] Console: switching to colour dummy device 80x25
[    1.805432] [drm] initializing kernel modesetting (RS690 0x1002:0x791F 0x103C:0x30C2).
[    1.805452] [drm] register mmio base: 0xD0200000
[    1.805454] [drm] register mmio size: 65536
[    1.805742] ATOM BIOS: ATI
[    1.805833] radeon 0000:01:05.0: VRAM: 128M 0x0000000078000000 - 0x000000007FFFFFFF (128M used)
[    1.805836] radeon 0000:01:05.0: GTT: 512M 0x0000000080000000 - 0x000000009FFFFFFF
[    1.805854] [drm] Detected VRAM RAM=128M, BAR=128M
[    1.805856] [drm] RAM width 128bits DDR
[    1.805934] [TTM] Zone  kernel: Available graphics memory: 441092 kiB
[    1.805936] [TTM] Zone highmem: Available graphics memory: 967272 kiB
[    1.805938] [TTM] Initializing pool allocator
[    1.805944] [TTM] Initializing DMA pool allocator
[    1.805972] [drm] radeon: 128M of VRAM memory ready
[    1.805974] [drm] radeon: 512M of GTT memory ready.
[    1.805991] [drm] GART: num cpu pages 131072, num gpu pages 131072
[    1.828224] [drm] radeon: 1 quad pipes, 1 z pipes initialized.
[    1.836548] [drm] PCIE GART of 512M enabled (table at 0x0000000036680000).
[    1.836677] radeon 0000:01:05.0: WB enabled
[    1.836683] radeon 0000:01:05.0: fence driver on ring 0 use gpu addr 0x0000000080000000 and cpu addr 0xf65ca000
[    1.836686] [drm] Supports vblank timestamp caching Rev 1 (10.10.2010).
[    1.836688] [drm] Driver supports precise vblank timestamp query.
[    1.836716] radeon 0000:01:05.0: irq 43 for MSI/MSI-X
[    1.836732] radeon 0000:01:05.0: radeon: using MSI.
[    1.836761] [drm] radeon: irq initialized.
[    1.836781] [drm] Loading RS690/RS740 Microcode
[    1.837010] [drm] radeon: ring at 0x0000000080001000
[    1.837030] [drm] ring test succeeded in 1 usecs
[    1.837211] [drm] ib test succeeded in 0 usecs
[    1.837527] [drm] radeon atom DIG backlight initialized
[    1.837530] [drm] Radeon Display Connectors
[    1.837532] [drm] Connector 0:
[    1.837534] [drm]   VGA-1
[    1.837537] [drm]   DDC: 0x7e50 0x7e40 0x7e54 0x7e44 0x7e58 0x7e48 0x7e5c 0x7e4c
[    1.837539] [drm]   Encoders:
[    1.837541] [drm]     CRT1: INTERNAL_KLDSCP_DAC1
[    1.837543] [drm] Connector 1:
[    1.837545] [drm]   LVDS-1
[    1.837547] [drm]   DDC: 0x7e40 0x7e50 0x7e44 0x7e54 0x7e48 0x7e58 0x7e4c 0x7e5c
[    1.837549] [drm]   Encoders:
[    1.837550] [drm]     LCD1: INTERNAL_LVTM1
[    1.837552] [drm] Connector 2:
[    1.837554] [drm]   SVIDEO-1
[    1.837555] [drm]   Encoders:
[    1.837557] [drm]     TV1: INTERNAL_KLDSCP_DAC1
[    1.837572] [drm] radeon: power management initialized
[    1.848141] ssb: Sonics Silicon Backplane found on PCI device 0000:30:00.0
[    1.852069] usb usb3: New USB device found, idVendor=1d6b, idProduct=0001
[    1.852073] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.852076] usb usb3: Product: OHCI PCI host controller
[    1.852079] usb usb3: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    1.852082] usb usb3: SerialNumber: 0000:00:13.1
[    1.852241] hub 3-0:1.0: USB hub found
[    1.852254] hub 3-0:1.0: 2 ports detected
[    1.854406] tg3 0000:10:00.0 eth0: Tigon3 [partno(BCM95906) rev c002] (PCI Express) MAC address 00:1c:c4:cf:f3:1a
[    1.854411] tg3 0000:10:00.0 eth0: attached PHY is 5906 (10/100Base-TX Ethernet) (WireSpeed[0], EEE[0])
[    1.854414] tg3 0000:10:00.0 eth0: RXcsums[1] LinkChgREG[0] MIirq[0] ASF[0] TSOcap[0]
[    1.854417] tg3 0000:10:00.0 eth0: dma_rwctrl[76180000] dma_mask[64-bit]
[    1.854590] scsi4 : pata_atiixp
[    1.855079] scsi5 : pata_atiixp
[    1.855146] ata5: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0x5040 irq 14
[    1.855149] ata6: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0x5048 irq 15
[    1.855502] ohci-pci 0000:00:13.2: OHCI PCI host controller
[    1.855510] ohci-pci 0000:00:13.2: new USB bus registered, assigned bus number 4
[    1.855534] ohci-pci 0000:00:13.2: irq 17, io mem 0xd0403000
[    1.912063] usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
[    1.912070] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.912073] usb usb4: Product: OHCI PCI host controller
[    1.912076] usb usb4: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    1.912079] usb usb4: SerialNumber: 0000:00:13.2
[    1.912283] hub 4-0:1.0: USB hub found
[    1.912291] hub 4-0:1.0: 2 ports detected
[    1.912598] ohci-pci 0000:00:13.3: OHCI PCI host controller
[    1.912606] ohci-pci 0000:00:13.3: new USB bus registered, assigned bus number 5
[    1.912629] ohci-pci 0000:00:13.3: irq 17, io mem 0xd0404000
[    1.972039] usb usb5: New USB device found, idVendor=1d6b, idProduct=0001
[    1.972043] usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.972045] usb usb5: Product: OHCI PCI host controller
[    1.972048] usb usb5: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    1.972051] usb usb5: SerialNumber: 0000:00:13.3
[    1.972193] hub 5-0:1.0: USB hub found
[    1.972202] hub 5-0:1.0: 2 ports detected
[    1.972447] ohci-pci 0000:00:13.4: OHCI PCI host controller
[    1.972453] ohci-pci 0000:00:13.4: new USB bus registered, assigned bus number 6
[    1.972473] ohci-pci 0000:00:13.4: irq 17, io mem 0xd0405000
[    2.016543] ata5.00: ATAPI: HL-DT-ST DVDRAM GSA-T20L, NC08, max MWDMA2
[    2.024079] ata1: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[    2.024564] ata1.00: ATA-8: TOSHIBA MK2546GSX, LB014C, max UDMA/100
[    2.024569] ata1.00: 488397168 sectors, multi 16: LBA48 NCQ (depth 31/32), AA
[    2.024573] ata1.00: SB600 AHCI: limiting to 255 sectors per cmd
[    2.025098] ata1.00: SB600 AHCI: limiting to 255 sectors per cmd
[    2.025101] ata1.00: configured for UDMA/100
[    2.025303] scsi 0:0:0:0: Direct-Access     ATA      TOSHIBA MK2546GS LB01 PQ: 0 ANSI: 5
[    2.025550] sd 0:0:0:0: [sda] 488397168 512-byte logical blocks: (250 GB/232 GiB)
[    2.025617] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    2.025650] sd 0:0:0:0: [sda] Write Protect is off
[    2.025655] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    2.025724] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    2.032486] ata5.00: configured for MWDMA2
[    2.036081] usb usb6: New USB device found, idVendor=1d6b, idProduct=0001
[    2.036084] usb usb6: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    2.036087] usb usb6: Product: OHCI PCI host controller
[    2.036090] usb usb6: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    2.036093] usb usb6: SerialNumber: 0000:00:13.4
[    2.036242] hub 6-0:1.0: USB hub found
[    2.036255] hub 6-0:1.0: 2 ports detected
[    2.038556] scsi 4:0:0:0: CD-ROM            HL-DT-ST DVDRAM GSA-T20L  NC08 PQ: 0 ANSI: 5
[    2.044313] sr0: scsi3-mmc drive: 24x/24x writer dvd-ram cd/rw xa/form2 cdda tray
[    2.044319] cdrom: Uniform CD-ROM driver Revision: 3.20
[    2.044459] sr 4:0:0:0: Attached scsi CD-ROM sr0
[    2.044626] sr 4:0:0:0: Attached scsi generic sg1 type 5
[    2.156051] usb 2-1: new low-speed USB device number 2 using ohci-pci
[    2.156309]  sda: sda1 sda2 sda3 sda4 < sda5 sda6 sda7 >
[    2.157117] sd 0:0:0:0: [sda] Attached SCSI disk
[    2.324083] usb 2-1: New USB device found, idVendor=045e, idProduct=0040
[    2.324090] usb 2-1: New USB device strings: Mfr=1, Product=3, SerialNumber=0
[    2.324093] usb 2-1: Product: Microsoft 3-Button Mouse with IntelliEye(TM)
[    2.324096] usb 2-1: Manufacturer: Microsoft
[    2.337118] hidraw: raw HID events driver (C) Jiri Kosina
[    2.349178] usbcore: registered new interface driver usbhid
[    2.349183] usbhid: USB HID core driver
[    2.356107] input: Microsoft Microsoft 3-Button Mouse with IntelliEye(TM) as /devices/pci0000:00/0000:00:13.0/usb2/2-1/2-1:1.0/input/input5
[    2.357146] hid-generic 0003:045E:0040.0001: input,hidraw0: USB HID v1.10 Mouse [Microsoft Microsoft 3-Button Mouse with IntelliEye(TM)] on usb-0000:00:13.0-1/input0
[    2.477380] [drm] fb mappable at 0xC0040000
[    2.477386] [drm] vram apper at 0xC0000000
[    2.477388] [drm] size 4096000
[    2.477389] [drm] fb depth is 24
[    2.477391] [drm]    pitch is 5120
[    2.477492] fbcon: radeondrmfb (fb0) is primary device
[    2.748078] Console: switching to colour frame buffer device 160x100
[    2.758097] radeon 0000:01:05.0: fb0: radeondrmfb frame buffer device
[    2.758100] radeon 0000:01:05.0: registered panic notifier
[    2.758120] [drm] Initialized radeon 2.34.0 20080528 for 0000:01:05.0 on minor 0
[    3.503424] EXT4-fs (sda6): mounted filesystem with ordered data mode. Opts: (null)
[   15.581563] Adding 2104476k swap on /dev/sda5.  Priority:-1 extents:1 across:2104476k FS
[   15.623140] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[   15.766557] systemd-udevd[303]: starting version 204
[   15.829653] lp: driver loaded but no devices found
[   15.960594] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[   16.039563] piix4_smbus 0000:00:14.0: SMBus Host Controller at 0x8200, revision 0
[   16.039627] piix4_smbus 0000:00:14.0: Auxiliary SMBus Host Controller at 0x8210
[   16.045699] cfg80211: Calling CRDA to update world regulatory domain
[   16.109298] k8temp 0000:00:18.3: Temperature readouts might be wrong - check erratum #141
[   16.118649] sp5100_tco: SP5100/SB800 TCO WatchDog Timer Driver v0.05
[   16.118747] sp5100_tco: PCI Revision ID: 0x14
[   16.118772] sp5100_tco: failed to find MMIO address, giving up.
[   16.169637] b43-phy0: Broadcom 4311 WLAN found (core revision 13)
[   16.173444] yenta_cardbus 0000:02:04.0: CardBus bridge found [103c:30c2]
[   16.204342] EXT4-fs (sda6): re-mounted. Opts: errors=remount-ro
[   16.217018] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision 9
[   16.228850] hda-intel 0000:00:14.2: Using LPIB position fix
[   16.234486] microcode: AMD CPU family 0xf not supported
[   16.242497] hda-intel 0000:00:14.2: Enable sync_write for stable communication
[   16.246721] Broadcom 43xx driver loaded [ Features: PNL ]
[   16.271929] kvm: Nested Virtualization enabled
[   16.282759] type=1400 audit(1385561053.475:2): apparmor="STATUS" operation="profile_load" parent=332 profile="unconfined" name="/sbin/dhclient" pid=340 comm="apparmor_parser"
[   16.282773] type=1400 audit(1385561053.475:3): apparmor="STATUS" operation="profile_load" parent=332 profile="unconfined" name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=340 comm="apparmor_parser"
[   16.282780] type=1400 audit(1385561053.475:4): apparmor="STATUS" operation="profile_load" parent=332 profile="unconfined" name="/usr/lib/connman/scripts/dhclient-script" pid=340 comm="apparmor_parser"
[   16.283610] type=1400 audit(1385561053.475:5): apparmor="STATUS" operation="profile_replace" parent=332 profile="unconfined" name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=340 comm="apparmor_parser"
[   16.283620] type=1400 audit(1385561053.475:6): apparmor="STATUS" operation="profile_replace" parent=332 profile="unconfined" name="/usr/lib/connman/scripts/dhclient-script" pid=340 comm="apparmor_parser"
[   16.287524] type=1400 audit(1385561053.479:7): apparmor="STATUS" operation="profile_replace" parent=332 profile="unconfined" name="/usr/lib/connman/scripts/dhclient-script" pid=340 comm="apparmor_parser"
[   16.299402] type=1400 audit(1385561053.491:8): apparmor="STATUS" operation="profile_load" parent=332 profile="unconfined" name="/usr/sbin/ntpd" pid=381 comm="apparmor_parser"
[   16.307731] yenta_cardbus 0000:02:04.0: ISA IRQ mask 0x0cb8, PCI irq 20
[   16.307740] yenta_cardbus 0000:02:04.0: Socket status: 30000006
[   16.307745] pci_bus 0000:02: Raising subordinate bus# of parent bus (#02) from #03 to #06
[   16.307756] yenta_cardbus 0000:02:04.0: pcmcia: parent PCI bridge window: [io  0x1000-0x1fff]
[   16.307761] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x1000-0x1fff:
[   16.323941] autoconfig: line_outs=0 (0x0/0x0/0x0/0x0/0x0) type:line
[   16.323949]    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[   16.323952]    hp_outs=0 (0x0/0x0/0x0/0x0/0x0)
[   16.323954]    mono: mono_out=0x0
[   16.323955]    inputs:
[   16.314714]  excluding 0x1000-0x10ff 0x1400-0x14ff
[   16.335349] yenta_cardbus 0000:02:04.0: pcmcia: parent PCI bridge window: [mem 0xd0100000-0xd01fffff]
[   16.335355] pcmcia_socket pcmcia_socket0: cs: memory probe 0xd0100000-0xd01fffff:
[   16.335359]  excluding 0xd0100000-0xd010ffff
[   16.335370] yenta_cardbus 0000:02:04.0: pcmcia: parent PCI bridge window: [mem 0x80000000-0x83ffffff pref]
[   16.335373] pcmcia_socket pcmcia_socket0: cs: memory probe 0x80000000-0x83ffffff:
[   16.335382]  excluding 0x80000000-0x83ffffff
[   16.622586] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   16.679548] input: HP WMI hotkeys as /devices/virtual/input/input6
[   16.917168] psmouse serio4: synaptics: Touchpad model: 1, fw: 6.2, id: 0x2580b1, caps: 0xa04793/0x300000/0x0, board id: 71, fw id: 240405
[   16.917180] psmouse serio4: synaptics: serio: Synaptics pass-through port at isa0060/serio4/input0
[   16.960511] input: SynPS/2 Synaptics TouchPad as /devices/platform/i8042/serio4/input/input7
[   17.293174] cfg80211: World regulatory domain updated:
[   17.293181] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[   17.293184] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   17.293187] cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   17.293190] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[   17.293192] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   17.293195] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   17.326185] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x100-0x3af:
[   17.327333]  excluding 0x170-0x177 0x1f0-0x1f7 0x370-0x377
[   17.328216] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x3e0-0x4ff:
[   17.328636]  excluding 0x3f0-0x3f7 0x408-0x40f 0x4d0-0x4d7
[   17.329027] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x820-0x8ff:
[   17.329675]  clean.
[   17.329693] pcmcia_socket pcmcia_socket0: cs: IO port probe 0xc00-0xcf7:
[   17.329988]  excluding 0xc00-0xc07 0xc10-0xc17 0xc50-0xc57 0xc68-0xc6f 0xcd0-0xcdf
[   17.330307] pcmcia_socket pcmcia_socket0: cs: memory probe 0x0c0000-0x0fffff:
[   17.330317]  excluding 0xc0000-0xfffff
[   17.330338] pcmcia_socket pcmcia_socket0: cs: memory probe 0xa0000000-0xa0ffffff:
[   17.330351]  clean.
[   17.330370] pcmcia_socket pcmcia_socket0: cs: memory probe 0x60000000-0x60ffffff:
[   17.330379]  excluding 0x60000000-0x60ffffff
[   17.330399] pcmcia_socket pcmcia_socket0: cs: IO port probe 0xa00-0xaff:
[   17.331134]  clean.
[   18.690596] EXT4-fs (sda7): mounted filesystem with ordered data mode. Opts: (null)
[   19.328525] init: failsafe main process (619) killed by TERM signal
[   19.747059] Bluetooth: Core ver 2.16
[   19.747177] NET: Registered protocol family 31
[   19.747180] Bluetooth: HCI device and connection manager initialized
[   19.747788] Bluetooth: HCI socket layer initialized
[   19.747795] Bluetooth: L2CAP socket layer initialized
[   19.747804] Bluetooth: SCO socket layer initialized
[   19.775070] Bluetooth: RFCOMM TTY layer initialized
[   19.775094] Bluetooth: RFCOMM socket layer initialized
[   19.775097] Bluetooth: RFCOMM ver 1.11
[   19.784752] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   19.784758] Bluetooth: BNEP filters: protocol multicast
[   19.784771] Bluetooth: BNEP socket layer initialized
[   19.890848] type=1400 audit(1385561057.083:9): apparmor="STATUS" operation="profile_load" parent=745 profile="unconfined" name="/usr/lib/i386-linux-gnu/lightdm-remote-session-freerdp/freerdp-session-wrapper" pid=751 comm="apparmor_parser"
[   19.890863] type=1400 audit(1385561057.083:10): apparmor="STATUS" operation="profile_load" parent=745 profile="unconfined" name="chromium_browser" pid=751 comm="apparmor_parser"
[   19.891527] type=1400 audit(1385561057.083:11): apparmor="STATUS" operation="profile_replace" parent=745 profile="unconfined" name="chromium_browser" pid=751 comm="apparmor_parser"
[   20.214402] init: avahi-cups-reload main process (769) terminated with status 1
[   20.215030] ppdev: user-space parallel port driver
[   21.218409] powernow-k8: ph2 null fid transition 0xc
[   21.345537] init: gdm main process (979) killed by TERM signal
[   21.511613] tg3 0000:10:00.0: irq 44 for MSI/MSI-X
[   21.542780] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[   21.543195] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[   23.417330] hp_wmi: Unknown event_id - 0 - 0x0
[   23.417957] hp_wmi: Unknown event_id - 0 - 0x0
[   23.418056] hp_wmi: Unknown event_id - 0 - 0x0
[   27.105330] init: plymouth-stop pre-start process (1242) terminated with status 1
[  496.421727] pci 0000:30:00.0: [14e4:4312] type 00 class 0x028000
[  496.421782] pci 0000:30:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
[  496.421930] pci 0000:30:00.0: supports D1 D2
[  496.422004] pci 0000:30:00.0: System wakeup disabled by ACPI
[  496.428993] pci 0000:30:00.0: BAR 0: assigned [mem 0xc8000000-0xc8003fff 64bit]
[  496.577397] b43-pci-bridge 0000:30:00.0: enabling device (0000 -> 0002)
[  496.596096] ssb: Found chip with id 0x4311, rev 0x02 and package 0x00
[  496.596111] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor 0x4243)
[  496.596123] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor 0x4243)
[  496.596136] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor 0x4243)
[  496.596148] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x05, vendor 0x4243)
[  496.660259] b43-phy1: Broadcom 4311 WLAN found (core revision 13)
[  496.704083] b43-phy1: Found PHY: Analog 4, Type 2 (G), Revision 9
[  496.728352] ssb: Sonics Silicon Backplane found on PCI device 0000:30:00.0
[  496.729194] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
[  496.972075] b43-phy1: Loading firmware version 666.2 (2011-02-23 01:15:07)
[  497.053051] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  497.053506] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  499.638331] wlan0: authenticate with 50:7e:5d:0e:1c:5e
[  499.660524] wlan0: send auth to 50:7e:5d:0e:1c:5e (try 1/3)
[  499.662245] wlan0: authenticated
[  499.664411] wlan0: associate with 50:7e:5d:0e:1c:5e (try 1/3)
[  499.666763] wlan0: RX AssocResp from 50:7e:5d:0e:1c:5e (capab=0x411 status=0 aid=2)
[  499.672624] wlan0: associated
[  499.672728] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  499.672976] cfg80211: Calling CRDA for country: DE
[  499.687947] cfg80211: Regulatory domain changed to country: DE
[  499.687963] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  499.687970] cfg80211:   (2400000 KHz - 2483500 KHz @ 40000 KHz), (N/A, 2000 mBm)
[  499.687976] cfg80211:   (5150000 KHz - 5250000 KHz @ 40000 KHz), (N/A, 2000 mBm)
[  499.687982] cfg80211:   (5250000 KHz - 5350000 KHz @ 40000 KHz), (N/A, 2000 mBm)
[  499.687988] cfg80211:   (5470000 KHz - 5725000 KHz @ 40000 KHz), (N/A, 2698 mBm)
[  499.687993] cfg80211:   (57240000 KHz - 65880000 KHz @ 2160000 KHz), (N/A, 4000 mBm)
-------------- next part --------------
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Initializing cgroup subsys cpuacct
[    0.000000] Linux version 3.11.0-13-generic (buildd at aatxe) (gcc version 4.8.1 (Ubuntu/Linaro 4.8.1-10ubuntu8) ) #20-Ubuntu SMP Wed Oct 23 17:26:33 UTC 2013 (Ubuntu 3.11.0-13.20-generic 3.11.6)
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   NSC Geode by NSC
[    0.000000]   Cyrix CyrixInstead
[    0.000000]   Centaur CentaurHauls
[    0.000000]   Transmeta GenuineTMx86
[    0.000000]   Transmeta TransmetaCPU
[    0.000000]   UMC UMC UMC UMC
[    0.000000] e820: BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000000e0000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x0000000077faffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000077fb0000-0x0000000077fc7fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000077fc8000-0x0000000077fe7fb7] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x0000000077fe7fb8-0x000000007fffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000e0000000-0x00000000efffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec01fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ffbc0000-0x00000000ffcbffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fff00000-0x00000000ffffffff] reserved
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] SMBIOS 2.4 present.
[    0.000000] DMI: Hewlett-Packard HP Compaq 6715s (KE062ET#ABD)/30C2, BIOS 68YTT Ver. F.07 07/16/2007
[    0.000000] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000000] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000000] e820: last_pfn = 0x77fb0 max_arch_pfn = 0x1000000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-C0FFF write-protect
[    0.000000]   C1000-C3FFF write-back
[    0.000000]   C4000-C4FFF write-protect
[    0.000000]   C5000-C7FFF write-back
[    0.000000]   C8000-C8FFF write-protect
[    0.000000]   C9000-CBFFF write-back
[    0.000000]   CC000-CCFFF write-protect
[    0.000000]   CD000-CFFFF write-back
[    0.000000]   D0000-D0FFF write-protect
[    0.000000]   D1000-EFFFF uncachable
[    0.000000]   F0000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 0000000000 mask FFC0000000 write-back
[    0.000000]   1 base 0040000000 mask FFE0000000 write-back
[    0.000000]   2 base 0060000000 mask FFF0000000 write-back
[    0.000000]   3 base 0070000000 mask FFF8000000 write-back
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] Scanning 1 areas for low memory corruption
[    0.000000] initial memory mapped: [mem 0x00000000-0x01ffffff]
[    0.000000] Base memory trampoline at [c009b000] 9b000 size 16384
[    0.000000] init_memory_mapping: [mem 0x00000000-0x000fffff]
[    0.000000]  [mem 0x00000000-0x000fffff] page 4k
[    0.000000] init_memory_mapping: [mem 0x37800000-0x379fffff]
[    0.000000]  [mem 0x37800000-0x379fffff] page 2M
[    0.000000] init_memory_mapping: [mem 0x34000000-0x377fffff]
[    0.000000]  [mem 0x34000000-0x377fffff] page 2M
[    0.000000] init_memory_mapping: [mem 0x00100000-0x33ffffff]
[    0.000000]  [mem 0x00100000-0x001fffff] page 4k
[    0.000000]  [mem 0x00200000-0x33ffffff] page 2M
[    0.000000] init_memory_mapping: [mem 0x37a00000-0x37bfdfff]
[    0.000000]  [mem 0x37a00000-0x37bfdfff] page 4k
[    0.000000] BRK [0x01b39000, 0x01b39fff] PGTABLE
[    0.000000] RAMDISK: [mem 0x351c8000-0x368dbfff]
[    0.000000] ACPI: RSDP 000fe0b0 00024 (v02 HP    )
[    0.000000] ACPI: XSDT 77fc81bc 00064 (v01 HPQOEM SLIC-MPC 00000001 HP   00000001)
[    0.000000] ACPI: FACP 77fc8084 000F4 (v04 HP     0944     00000003 HP   00000001)
[    0.000000] ACPI BIOS Error (bug): 32/64X address mismatch in FADT/Pm2ControlBlock: 0x00008800/0x0000000000008100, using 32 (20130517/tbfadt-462)
[    0.000000] ACPI: DSDT 77fc84a4 11437 (v01 HP        SB400 00010000 MSFT 03000001)
[    0.000000] ACPI: FACS 77fe7d80 00040
[    0.000000] ACPI: SLIC 77fc8220 00176 (v01 HPQOEM SLIC-MPC 00000001 HP   00000001)
[    0.000000] ACPI: EPTH 77fc8398 00038 (v01 HP     0944     00000001 HP   00000001)
[    0.000000] ACPI: APIC 77fc83d0 00062 (v01 HP     0944     00000001 HP   00000001)
[    0.000000] ACPI: MCFG 77fc8434 0003C (v01 HP     0944     00000001 HP   00000001)
[    0.000000] ACPI: TCPA 77fc8470 00032 (v02 HP     0944     00000001 HP   00000001)
[    0.000000] ACPI: SSDT 77fd98db 00059 (v01 HP       HPQNLP 00000001 MSFT 03000001)
[    0.000000] ACPI: SSDT 77fd9934 00206 (v01 HP     PSSTBLID 00000001 HP   00000001)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] 1027MB HIGHMEM available.
[    0.000000] 891MB LOWMEM available.
[    0.000000]   mapped low ram: 0 - 37bfe000
[    0.000000]   low ram: 0 - 37bfe000
[    0.000000] BRK [0x01b3a000, 0x01b3afff] PGTABLE
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x00001000-0x00ffffff]
[    0.000000]   Normal   [mem 0x01000000-0x37bfdfff]
[    0.000000]   HighMem  [mem 0x37bfe000-0x77faffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x00001000-0x0009efff]
[    0.000000]   node   0: [mem 0x00100000-0x77faffff]
[    0.000000] On node 0 totalpages: 491342
[    0.000000] free_area_init_node: node 0, pgdat c1948b40, node_mem_map f6cfe020
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 3998 pages, LIFO batch:0
[    0.000000]   Normal zone: 1752 pages used for memmap
[    0.000000]   Normal zone: 224254 pages, LIFO batch:31
[    0.000000]   HighMem zone: 2056 pages used for memmap
[    0.000000]   HighMem zone: 263090 pages, LIFO batch:31
[    0.000000] Using APIC driver default
[    0.000000] SB600 revision 0x14
[    0.000000] Ignoring ACPI timer override.
[    0.000000] If you got timer trouble try acpi_use_timer_override
[    0.000000] Detected use of extended apic ids on hypertransport bus
[    0.000000] ACPI: PM-Timer IO Port: 0x8008
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 33, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: BIOS IRQ0 override ignored.
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 low level)
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] smpboot: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] nr_irqs_gsi: 40
[    0.000000] PM: Registered nosave memory: [mem 0x0009f000-0x0009ffff]
[    0.000000] PM: Registered nosave memory: [mem 0x000a0000-0x000dffff]
[    0.000000] PM: Registered nosave memory: [mem 0x000e0000-0x000fffff]
[    0.000000] e820: [mem 0x80000000-0xdfffffff] available for PCI devices
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:2 nr_node_ids:1
[    0.000000] PERCPU: Embedded 14 pages/cpu @f6cd6000 s36288 r0 d21056 u57344
[    0.000000] pcpu-alloc: s36288 r0 d21056 u57344 alloc=14*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 489558
[    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-3.11.0-13-generic root=UUID=b120c9f5-c318-4e62-84b8-6fa8db1ed962 ro quiet splash vt.handoff=7
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Initializing CPU#0
[    0.000000] allocated 3931512 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't want memory cgroups
[    0.000000] Initializing HighMem for node 0 (00037bfe:00077fb0)
[    0.000000] Memory: 1910004K/1965368K available (6352K kernel code, 607K rwdata, 2640K rodata, 880K init, 908K bss, 55364K reserved, 1052360K highmem)
[    0.000000] virtual kernel memory layout:
[    0.000000]     fixmap  : 0xfff14000 - 0xfffff000   ( 940 kB)
[    0.000000]     pkmap   : 0xffc00000 - 0xffe00000   (2048 kB)
[    0.000000]     vmalloc : 0xf83fe000 - 0xffbfe000   ( 120 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xf7bfe000   ( 891 MB)
[    0.000000]       .init : 0xc1962000 - 0xc1a3e000   ( 880 kB)
[    0.000000]       .data : 0xc16343a4 - 0xc1961dc0   (3254 kB)
[    0.000000]       .text : 0xc1000000 - 0xc16343a4   (6352 kB)
[    0.000000] Checking if this processor honours the WP bit even in supervisor mode...Ok.
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] 	RCU dyntick-idle grace-period acceleration is enabled.
[    0.000000] 	RCU restricting CPUs from NR_CPUS=8 to nr_cpu_ids=2.
[    0.000000] NR_IRQS:2304 nr_irqs:512 16
[    0.000000] CPU 0 irqstacks, hard=f4808000 soft=f480a000
[    0.000000] spurious 8259A interrupt: IRQ7.
[    0.000000] Console: colour dummy device 80x25
[    0.000000] console [tty0] enabled
[    0.000000] tsc: Fast TSC calibration failed
[    0.000000] tsc: Unable to calibrate against PIT
[    0.000000] tsc: using PMTIMER reference calibration
[    0.000000] tsc: Detected 1994.900 MHz processor
[    0.000000] tsc: Marking TSC unstable due to TSCs unsynchronized
[    0.016004] Calibrating delay loop (skipped), value calculated using timer frequency.. 3989.80 BogoMIPS (lpj=7979600)
[    0.016009] pid_max: default: 32768 minimum: 301
[    0.016131] Security Framework initialized
[    0.016170] AppArmor: AppArmor initialized
[    0.016172] Yama: becoming mindful.
[    0.016332] Mount-cache hash table entries: 512
[    0.016953] Initializing cgroup subsys memory
[    0.016988] Initializing cgroup subsys devices
[    0.016991] Initializing cgroup subsys freezer
[    0.017012] Initializing cgroup subsys blkio
[    0.017014] Initializing cgroup subsys perf_event
[    0.017019] Initializing cgroup subsys hugetlb
[    0.017083] CPU: Physical Processor ID: 0
[    0.017086] CPU: Processor Core ID: 0
[    0.017090] mce: CPU supports 5 MCE banks
[    0.017117] LVT offset 0 assigned for vector 0xf9
[    0.017121] process: using AMD E400 aware idle routine
[    0.017149] Last level iTLB entries: 4KB 512, 2MB 8, 4MB 4
[    0.017149] Last level dTLB entries: 4KB 512, 2MB 8, 4MB 4
[    0.017149] tlb_flushall_shift: 4
[    0.017840] Freeing SMP alternatives memory: 28K (c1a3e000 - c1a45000)
[    0.023422] ACPI: Core revision 20130517
[    0.039984] ACPI: All ACPI Tables successfully acquired
[    0.044040] ftrace: allocating 27140 entries in 54 pages
[    0.056125] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.056511] ..TIMER: vector=0x30 apic1=0 pin1=0 apic2=-1 pin2=-1
[    0.099390] smpboot: CPU0: AMD Turion(tm) 64 X2 Mobile Technology TL-60 (fam: 0f, model: 68, stepping: 02)
[    0.100000] Performance Events: AMD PMU driver.
[    0.100000] ... version:                0
[    0.100000] ... bit width:              48
[    0.100000] ... generic registers:      4
[    0.100000] ... value mask:             0000ffffffffffff
[    0.100000] ... max period:             00007fffffffffff
[    0.100000] ... fixed-purpose events:   0
[    0.100000] ... event mask:             000000000000000f
[    0.100000] NMI watchdog: enabled on all CPUs, permanently consumes one hw-PMU counter.
[    0.100000] CPU 1 irqstacks, hard=f48f0000 soft=f48f2000
[    0.100000] smpboot: Booting Node   0, Processors  #1 OK
[    0.020000] Initializing CPU#1
[    0.020000] process: System has AMD C1E enabled
[    0.020000] process: Switch to broadcast mode on CPU1
[    0.188113] Brought up 2 CPUs
[    0.188116] smpboot: Total of 2 processors activated (7979.98 BogoMIPS)
[    0.188760] process: Switch to broadcast mode on CPU0
[    0.192102] devtmpfs: initialized
[    0.192251] EVM: security.selinux
[    0.192253] EVM: security.SMACK64
[    0.192255] EVM: security.capability
[    0.192280] PM: Registering ACPI NVS region [mem 0x77fc8000-0x77fe7fb7] (131000 bytes)
[    0.192280] reboot: BIOS series board detected. Selecting HP Compaq Laptop-method for reboots.
[    0.193826] regulator-dummy: no parameters
[    0.193868] RTC time: 14:10:42, date: 11/25/13
[    0.193925] NET: Registered protocol family 16
[    0.194111] EISA bus registered
[    0.194117] node 0 link 0: io port [1000, fffff]
[    0.194121] TOM: 0000000080000000 aka 2048M
[    0.194125] node 0 link 0: mmio [e0000000, efffffff]
[    0.194129] node 0 link 0: mmio [f0000000, ffffffff]
[    0.194132] node 0 link 0: mmio [c8000000, dfffffff]
[    0.194135] node 0 link 0: mmio [c0000000, c7ffffff]
[    0.194138] node 0 link 0: mmio [a0000, bffff]
[    0.194141] node 0 link 0: mmio [80000000, bfffffff]
[    0.194145] bus: [bus 00-ff] on node 0 link 0
[    0.194148] bus: 00 [io  0x0000-0xffff]
[    0.194150] bus: 00 [mem 0x80000000-0xfcffffffff]
[    0.194153] bus: 00 [mem 0x000a0000-0x000bffff]
[    0.194222] ACPI: bus type PCI registered
[    0.194226] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.194300] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000-0xefffffff] (base 0xe0000000)
[    0.194303] PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in E820
[    0.194305] PCI: Using MMCONFIG for extended config space
[    0.194308] PCI: Using configuration type 1 for base access
[    0.196096] bio: create slab <bio-0> at 0
[    0.196129] ACPI: Added _OSI(Module Device)
[    0.196132] ACPI: Added _OSI(Processor Device)
[    0.196135] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.196137] ACPI: Added _OSI(Processor Aggregator Device)
[    0.197676] ACPI: EC: Look up EC in DSDT
[    0.480118] ACPI: Interpreter enabled
[    0.480133] ACPI Exception: AE_NOT_FOUND, While evaluating Sleep State [\_S1_] (20130517/hwxface-571)
[    0.480139] ACPI Exception: AE_NOT_FOUND, While evaluating Sleep State [\_S2_] (20130517/hwxface-571)
[    0.480158] ACPI: (supports S0 S3 S4 S5)
[    0.480160] ACPI: Using IOAPIC for interrupt routing
[    0.480263] PCI: Ignoring host bridge windows from ACPI; if necessary, use "pci=use_crs" and report a bug
[    0.480450] ACPI: No dock devices found.
[    0.481650] ACPI: Power Resource [C171] (off)
[    0.481650] ACPI: Power Resource [C24C] (on)
[    0.486528] ACPI: Power Resource [C395] (off)
[    0.486583] ACPI: Power Resource [C396] (off)
[    0.486633] ACPI: Power Resource [C397] (off)
[    0.486682] ACPI: Power Resource [C398] (off)
[    0.490963] ACPI: PCI Root Bridge [C08B] (domain 0000 [bus 00-ff])
[    0.490970] acpi PNP0A03:00: ACPI _OSC support notification failed, disabling PCIe ASPM
[    0.490973] acpi PNP0A03:00: Unable to request _OSC control (_OSC support mask: 0x08)
[    0.498407] acpi PNP0A03:00: host bridge window [io  0x0000-0x0cf7] (ignored)
[    0.498411] acpi PNP0A03:00: host bridge window [io  0x0d00-0xffff] (ignored)
[    0.498414] acpi PNP0A03:00: host bridge window [mem 0x000a0000-0x000bffff] (ignored)
[    0.498417] acpi PNP0A03:00: host bridge window [mem 0x80000000-0xfedfffff] (ignored)
[    0.498421] acpi PNP0A03:00: host bridge window [mem 0xfee01000-0xffffffff] (ignored)
[    0.498424] acpi PNP0A03:00: host bridge window [mem 0x000d3000-0x000dffff] (ignored)
[    0.498427] PCI: root bus 00: hardware-probed resources
[    0.498578] PCI host bridge to bus 0000:00
[    0.498582] pci_bus 0000:00: root bus resource [bus 00-ff]
[    0.498585] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
[    0.498589] pci_bus 0000:00: root bus resource [mem 0x80000000-0xfcffffffff]
[    0.498592] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff]
[    0.498603] pci 0000:00:00.0: [1002:7910] type 00 class 0x060000
[    0.498709] pci 0000:00:01.0: [1002:7912] type 01 class 0x060400
[    0.498828] pci 0000:00:04.0: [1002:7914] type 01 class 0x060400
[    0.498867] pci 0000:00:04.0: PME# supported from D0 D3hot D3cold
[    0.498929] pci 0000:00:04.0: System wakeup disabled by ACPI
[    0.498982] pci 0000:00:05.0: [1002:7915] type 01 class 0x060400
[    0.499020] pci 0000:00:05.0: PME# supported from D0 D3hot D3cold
[    0.499114] pci 0000:00:06.0: [1002:7916] type 01 class 0x060400
[    0.499152] pci 0000:00:06.0: PME# supported from D0 D3hot D3cold
[    0.499211] pci 0000:00:06.0: System wakeup disabled by ACPI
[    0.499277] pci 0000:00:12.0: [1002:4380] type 00 class 0x01018f
[    0.499300] pci 0000:00:12.0: reg 0x10: [io  0x9000-0x9007]
[    0.499312] pci 0000:00:12.0: reg 0x14: [io  0x9008-0x900b]
[    0.499324] pci 0000:00:12.0: reg 0x18: [io  0x9010-0x9017]
[    0.499336] pci 0000:00:12.0: reg 0x1c: [io  0x5018-0x501b]
[    0.499348] pci 0000:00:12.0: reg 0x20: [io  0x5020-0x502f]
[    0.499361] pci 0000:00:12.0: reg 0x24: [mem 0xd0409000-0xd04093ff]
[    0.499387] pci 0000:00:12.0: set SATA to AHCI mode
[    0.499505] pci 0000:00:13.0: [1002:4387] type 00 class 0x0c0310
[    0.499522] pci 0000:00:13.0: reg 0x10: [mem 0xd0401000-0xd0401fff]
[    0.499642] pci 0000:00:13.0: System wakeup disabled by ACPI
[    0.499690] pci 0000:00:13.1: [1002:4388] type 00 class 0x0c0310
[    0.499707] pci 0000:00:13.1: reg 0x10: [mem 0xd0402000-0xd0402fff]
[    0.499827] pci 0000:00:13.1: System wakeup disabled by ACPI
[    0.499876] pci 0000:00:13.2: [1002:4389] type 00 class 0x0c0310
[    0.499893] pci 0000:00:13.2: reg 0x10: [mem 0xd0403000-0xd0403fff]
[    0.500022] pci 0000:00:13.2: System wakeup disabled by ACPI
[    0.500068] pci 0000:00:13.3: [1002:438a] type 00 class 0x0c0310
[    0.500085] pci 0000:00:13.3: reg 0x10: [mem 0xd0404000-0xd0404fff]
[    0.500203] pci 0000:00:13.3: System wakeup disabled by ACPI
[    0.500248] pci 0000:00:13.4: [1002:438b] type 00 class 0x0c0310
[    0.500265] pci 0000:00:13.4: reg 0x10: [mem 0xd0405000-0xd0405fff]
[    0.500380] pci 0000:00:13.4: System wakeup disabled by ACPI
[    0.500436] pci 0000:00:13.5: [1002:4386] type 00 class 0x0c0320
[    0.500459] pci 0000:00:13.5: reg 0x10: [mem 0xd0406000-0xd04060ff]
[    0.500555] pci 0000:00:13.5: supports D1 D2
[    0.500558] pci 0000:00:13.5: PME# supported from D0 D1 D2 D3hot
[    0.500622] pci 0000:00:13.5: System wakeup disabled by ACPI
[    0.500674] pci 0000:00:14.0: [1002:4385] type 00 class 0x0c0500
[    0.500700] pci 0000:00:14.0: reg 0x10: [io  0x8200-0x820f]
[    0.500873] pci 0000:00:14.1: [1002:438c] type 00 class 0x010182
[    0.500890] pci 0000:00:14.1: reg 0x10: [io  0x0000-0x0007]
[    0.500902] pci 0000:00:14.1: reg 0x14: [io  0x0000-0x0003]
[    0.500914] pci 0000:00:14.1: reg 0x18: [io  0x0000-0x0007]
[    0.500926] pci 0000:00:14.1: reg 0x1c: [io  0x0000-0x0003]
[    0.500938] pci 0000:00:14.1: reg 0x20: [io  0x5040-0x504f]
[    0.501059] pci 0000:00:14.2: [1002:4383] type 00 class 0x040300
[    0.501085] pci 0000:00:14.2: reg 0x10: [mem 0xd0408000-0xd040bfff 64bit]
[    0.501163] pci 0000:00:14.2: PME# supported from D0 D3hot D3cold
[    0.501224] pci 0000:00:14.2: System wakeup disabled by ACPI
[    0.501272] pci 0000:00:14.3: [1002:438d] type 00 class 0x060100
[    0.501442] pci 0000:00:14.4: [1002:4384] type 01 class 0x060401
[    0.501540] pci 0000:00:14.4: System wakeup disabled by ACPI
[    0.501590] pci 0000:00:18.0: [1022:1100] type 00 class 0x060000
[    0.501685] pci 0000:00:18.1: [1022:1101] type 00 class 0x060000
[    0.501779] pci 0000:00:18.2: [1022:1102] type 00 class 0x060000
[    0.501876] pci 0000:00:18.3: [1022:1103] type 00 class 0x060000
[    0.502036] pci 0000:01:05.0: [1002:791f] type 00 class 0x030000
[    0.502049] pci 0000:01:05.0: reg 0x10: [mem 0xc0000000-0xc7ffffff 64bit pref]
[    0.502057] pci 0000:01:05.0: reg 0x18: [mem 0xd0200000-0xd020ffff 64bit]
[    0.502064] pci 0000:01:05.0: reg 0x20: [io  0x4000-0x40ff]
[    0.502071] pci 0000:01:05.0: reg 0x24: [mem 0xd0300000-0xd03fffff]
[    0.502091] pci 0000:01:05.0: supports D1 D2
[    0.502142] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.502147] pci 0000:00:01.0:   bridge window [io  0x4000-0x4fff]
[    0.502151] pci 0000:00:01.0:   bridge window [mem 0xd0200000-0xd03fffff]
[    0.502156] pci 0000:00:01.0:   bridge window [mem 0xc0000000-0xc7ffffff 64bit pref]
[    0.502233] acpiphp: Slot [1] registered
[    0.502299] pci 0000:10:00.0: [14e4:1713] type 00 class 0x020000
[    0.502320] pci 0000:10:00.0: reg 0x10: [mem 0xd0000000-0xd000ffff 64bit]
[    0.502428] pci 0000:10:00.0: PME# supported from D3hot D3cold
[    0.502454] pci 0000:10:00.0: System wakeup disabled by ACPI
[    0.512060] pci 0000:00:04.0: PCI bridge to [bus 10]
[    0.512066] pci 0000:00:04.0:   bridge window [mem 0xd0000000-0xd00fffff]
[    0.512173] acpiphp: Slot [1-1] registered
[    0.512193] pci 0000:00:05.0: PCI bridge to [bus 20]
[    0.512198] pci 0000:00:05.0:   bridge window [io  0x2000-0x3fff]
[    0.512202] pci 0000:00:05.0:   bridge window [mem 0xcc000000-0xcfffffff]
[    0.512265] acpiphp: Slot [1-2] registered
[    0.512292] pci 0000:30:00.0: [14e4:4312] type 00 class 0x028000
[    0.512312] pci 0000:30:00.0: reg 0x10: [mem 0xc8000000-0xc8003fff 64bit]
[    0.512408] pci 0000:30:00.0: supports D1 D2
[    0.512441] pci 0000:30:00.0: System wakeup disabled by ACPI
[    0.524013] pci 0000:00:06.0: PCI bridge to [bus 30]
[    0.524019] pci 0000:00:06.0:   bridge window [mem 0xc8000000-0xc80fffff]
[    0.524078] pci 0000:02:04.0: [1180:0476] type 02 class 0x060700
[    0.524105] pci 0000:02:04.0: reg 0x10: [mem 0xd0100000-0xd0100fff]
[    0.524144] pci 0000:02:04.0: supports D1 D2
[    0.524147] pci 0000:02:04.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.524254] pci 0000:00:14.4: PCI bridge to [bus 02-03] (subtractive decode)
[    0.524262] pci 0000:00:14.4:   bridge window [mem 0xd0100000-0xd01fffff]
[    0.524269] pci 0000:00:14.4:   bridge window [io  0x0000-0xffff] (subtractive decode)
[    0.524272] pci 0000:00:14.4:   bridge window [mem 0x80000000-0xfcffffffff] (subtractive decode)
[    0.524275] pci 0000:00:14.4:   bridge window [mem 0x000a0000-0x000bffff] (subtractive decode)
[    0.524344] pci_bus 0000:03: busn_res: can not insert [bus 03-ff] under [bus 02-03] (conflicts with (null) [bus 02-03])
[    0.524350] pci_bus 0000:03: busn_res: [bus 03-ff] end is updated to 06
[    0.524354] pci_bus 0000:03: busn_res: can not insert [bus 03-06] under [bus 02-03] (conflicts with (null) [bus 02-03])
[    0.524360] pci_bus 0000:03: [bus 03-06] partially hidden behind transparent bridge 0000:02 [bus 02-03]
[    0.524379] pci_bus 0000:00: on NUMA node 0
[    0.524917] ACPI: PCI Interrupt Link [C145] (IRQs 10 11) *0, disabled.
[    0.525015] ACPI: PCI Interrupt Link [C146] (IRQs 10 11) *0, disabled.
[    0.525115] ACPI: PCI Interrupt Link [C147] (IRQs 10 11) *0, disabled.
[    0.525214] ACPI: PCI Interrupt Link [C148] (IRQs 10 11) *0, disabled.
[    0.525311] ACPI: PCI Interrupt Link [C149] (IRQs 10 11) *0, disabled.
[    0.525410] ACPI: PCI Interrupt Link [C14A] (IRQs 9) *0, disabled.
[    0.525507] ACPI: PCI Interrupt Link [C14B] (IRQs 10 11) *0, disabled.
[    0.525604] ACPI: PCI Interrupt Link [C14C] (IRQs 10 11) *0, disabled.
[    0.526244] ACPI: Enabled 8 GPEs in block 00 to 1F
[    0.526255] ACPI: \_SB_.C08B: notify handler is installed
[    0.526348] Found 1 acpi root devices
[    0.526402] ACPI: EC: GPE = 0x11, I/O: command/status = 0x66, data = 0x62
[    0.528026] vgaarb: device added: PCI:0000:01:05.0,decodes=io+mem,owns=io+mem,locks=none
[    0.528029] vgaarb: loaded
[    0.528031] vgaarb: bridge control possible 0000:01:05.0
[    0.528356] SCSI subsystem initialized
[    0.528359] ACPI: bus type ATA registered
[    0.528386] libata version 3.00 loaded.
[    0.528386] ACPI: bus type USB registered
[    0.528386] usbcore: registered new interface driver usbfs
[    0.528386] usbcore: registered new interface driver hub
[    0.528386] usbcore: registered new device driver usb
[    0.528386] PCI: Using ACPI for IRQ routing
[    0.540953] PCI: pci_cache_line_size set to 64 bytes
[    0.541036] pci 0000:00:14.2: address space collision: [mem 0xd0408000-0xd040bfff 64bit] conflicts with 0000:00:12.0 [mem 0xd0409000-0xd04093ff]
[    0.541116] e820: reserve RAM buffer [mem 0x0009fc00-0x0009ffff]
[    0.541119] e820: reserve RAM buffer [mem 0x77fb0000-0x77ffffff]
[    0.541258] NetLabel: Initializing
[    0.541260] NetLabel:  domain hash size = 128
[    0.541261] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.541275] NetLabel:  unlabeled traffic allowed by default
[    0.541295] Switched to clocksource refined-jiffies
[    0.550284] AppArmor: AppArmor Filesystem Enabled
[    0.550331] pnp: PnP ACPI init
[    0.550352] ACPI: bus type PNP registered
[    0.550555] system 00:00: [mem 0x00000000-0x0009ffff] could not be reserved
[    0.550559] system 00:00: [mem 0x000e0000-0x000fffff] could not be reserved
[    0.550563] system 00:00: [mem 0x00100000-0xffffffff] could not be reserved
[    0.550569] system 00:00: Plug and Play ACPI device, IDs PNP0c01 (active)
[    0.550776] pnp 00:01: Plug and Play ACPI device, IDs PNP0c04 (active)
[    0.550791] pnp 00:02: [dma 4]
[    0.550817] pnp 00:02: Plug and Play ACPI device, IDs PNP0200 (active)
[    0.550851] pnp 00:03: Plug and Play ACPI device, IDs PNP0800 (active)
[    0.550896] pnp 00:04: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.550954] pnp 00:05: Plug and Play ACPI device, IDs PNP0303 (active)
[    0.550996] pnp 00:06: Plug and Play ACPI device, IDs SYN0131 SYN0100 SYN0002 PNP0f13 (active)
[    0.551144] system 00:07: [io  0x040b] has been reserved
[    0.551148] system 00:07: [io  0x04d0-0x04d1] has been reserved
[    0.551152] system 00:07: [io  0x04d6] has been reserved
[    0.551155] system 00:07: [io  0x0500-0x053f] has been reserved
[    0.551159] system 00:07: [io  0x0c00-0x0c01] has been reserved
[    0.551162] system 00:07: [io  0x0c14] has been reserved
[    0.551166] system 00:07: [io  0x0c50-0x0c51] has been reserved
[    0.551169] system 00:07: [io  0x0c52] has been reserved
[    0.551173] system 00:07: [io  0x0c6c] has been reserved
[    0.551176] system 00:07: [io  0x0c6f] has been reserved
[    0.551180] system 00:07: [io  0x0cd0-0x0cdf] has been reserved
[    0.551184] system 00:07: [mem 0xffb00000-0xffbfffff] could not be reserved
[    0.551188] system 00:07: [mem 0xfff00000-0xffffffff] has been reserved
[    0.551192] system 00:07: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.551675] system 00:08: [io  0x8000-0x802f] could not be reserved
[    0.551679] system 00:08: [io  0x8100-0x811f] has been reserved
[    0.551683] system 00:08: [mem 0xe0000000-0xefffffff] has been reserved
[    0.551687] system 00:08: [mem 0xfec00000-0xfec000ff] could not be reserved
[    0.551691] system 00:08: [mem 0xfed45000-0xfed8ffff] has been reserved
[    0.551695] system 00:08: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.552847] system 00:09: [mem 0x000cd400-0x000cffff] has been reserved
[    0.552851] system 00:09: [mem 0x000d2a00-0x000d2fff] has been reserved
[    0.552855] system 00:09: [mem 0x00000000-0x07ffffff] could not be reserved
[    0.552859] system 00:09: [mem 0xfee00000-0xfee00fff] has been reserved
[    0.552863] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.552877] pnp: PnP ACPI: found 10 devices
[    0.552879] ACPI: bus type PNP unregistered
[    0.552883] PnPBIOS: Disabled by ACPI PNP
[    0.589895] Switched to clocksource acpi_pm
[    0.589939] pci 0000:02:04.0: res[13]=[io  0x0100-0x00ff] get_res_add_size add_size 100
[    0.589943] pci 0000:02:04.0: res[14]=[io  0x0100-0x00ff] get_res_add_size add_size 100
[    0.589947] pci 0000:00:14.4: bridge window [io  0x1000-0x0fff] to [bus 02-03] add_size 1000
[    0.589952] pci 0000:02:04.0: res[15]=[mem 0x04000000-0x03ffffff pref] get_res_add_size add_size 4000000
[    0.589956] pci 0000:00:14.4: bridge window [mem 0x04000000-0x03ffffff pref] to [bus 02-03] add_size 4000000
[    0.589964] pci 0000:00:14.4: res[15]=[mem 0x04000000-0x03ffffff pref] get_res_add_size add_size 4000000
[    0.589968] pci 0000:00:14.4: res[13]=[io  0x1000-0x0fff] get_res_add_size add_size 1000
[    0.589975] pci 0000:00:14.4: BAR 15: assigned [mem 0x80000000-0x83ffffff pref]
[    0.589979] pci 0000:00:14.2: BAR 0: assigned [mem 0x84000000-0x84003fff 64bit]
[    0.589998] pci 0000:00:14.4: BAR 13: assigned [io  0x1000-0x1fff]
[    0.590002] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.590006] pci 0000:00:01.0:   bridge window [io  0x4000-0x4fff]
[    0.590010] pci 0000:00:01.0:   bridge window [mem 0xd0200000-0xd03fffff]
[    0.590014] pci 0000:00:01.0:   bridge window [mem 0xc0000000-0xc7ffffff 64bit pref]
[    0.590019] pci 0000:00:04.0: PCI bridge to [bus 10]
[    0.590023] pci 0000:00:04.0:   bridge window [mem 0xd0000000-0xd00fffff]
[    0.590029] pci 0000:00:05.0: PCI bridge to [bus 20]
[    0.590033] pci 0000:00:05.0:   bridge window [io  0x2000-0x3fff]
[    0.590037] pci 0000:00:05.0:   bridge window [mem 0xcc000000-0xcfffffff]
[    0.590042] pci 0000:00:06.0: PCI bridge to [bus 30]
[    0.590046] pci 0000:00:06.0:   bridge window [mem 0xc8000000-0xc80fffff]
[    0.590054] pci 0000:02:04.0: res[15]=[mem 0x04000000-0x03ffffff pref] get_res_add_size add_size 4000000
[    0.590057] pci 0000:02:04.0: res[16]=[mem 0x04000000-0x03ffffff] get_res_add_size add_size 4000000
[    0.590061] pci 0000:02:04.0: res[13]=[io  0x0100-0x00ff] get_res_add_size add_size 100
[    0.590065] pci 0000:02:04.0: res[14]=[io  0x0100-0x00ff] get_res_add_size add_size 100
[    0.590069] pci 0000:02:04.0: BAR 15: assigned [mem 0x80000000-0x83ffffff pref]
[    0.590073] pci 0000:02:04.0: BAR 16: assigned [mem 0x88000000-0x8bffffff]
[    0.590077] pci 0000:02:04.0: BAR 13: assigned [io  0x1000-0x10ff]
[    0.590080] pci 0000:02:04.0: BAR 14: assigned [io  0x1400-0x14ff]
[    0.590085] pci 0000:02:04.0: CardBus bridge to [bus 03-06]
[    0.590088] pci 0000:02:04.0:   bridge window [io  0x1000-0x10ff]
[    0.590097] pci 0000:02:04.0:   bridge window [io  0x1400-0x14ff]
[    0.590104] pci 0000:02:04.0:   bridge window [mem 0x80000000-0x83ffffff pref]
[    0.590110] pci 0000:02:04.0:   bridge window [mem 0x88000000-0x8bffffff]
[    0.590116] pci 0000:00:14.4: PCI bridge to [bus 02-03]
[    0.590120] pci 0000:00:14.4:   bridge window [io  0x1000-0x1fff]
[    0.590127] pci 0000:00:14.4:   bridge window [mem 0xd0100000-0xd01fffff]
[    0.590133] pci 0000:00:14.4:   bridge window [mem 0x80000000-0x83ffffff pref]
[    0.590224] pci_bus 0000:00: resource 4 [io  0x0000-0xffff]
[    0.590228] pci_bus 0000:00: resource 5 [mem 0x80000000-0xfcffffffff]
[    0.590231] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]
[    0.590235] pci_bus 0000:01: resource 0 [io  0x4000-0x4fff]
[    0.590238] pci_bus 0000:01: resource 1 [mem 0xd0200000-0xd03fffff]
[    0.590242] pci_bus 0000:01: resource 2 [mem 0xc0000000-0xc7ffffff 64bit pref]
[    0.590245] pci_bus 0000:10: resource 1 [mem 0xd0000000-0xd00fffff]
[    0.590249] pci_bus 0000:20: resource 0 [io  0x2000-0x3fff]
[    0.590252] pci_bus 0000:20: resource 1 [mem 0xcc000000-0xcfffffff]
[    0.590256] pci_bus 0000:30: resource 1 [mem 0xc8000000-0xc80fffff]
[    0.590259] pci_bus 0000:02: resource 0 [io  0x1000-0x1fff]
[    0.590262] pci_bus 0000:02: resource 1 [mem 0xd0100000-0xd01fffff]
[    0.590266] pci_bus 0000:02: resource 2 [mem 0x80000000-0x83ffffff pref]
[    0.590269] pci_bus 0000:02: resource 4 [io  0x0000-0xffff]
[    0.590272] pci_bus 0000:02: resource 5 [mem 0x80000000-0xfcffffffff]
[    0.590276] pci_bus 0000:02: resource 6 [mem 0x000a0000-0x000bffff]
[    0.590279] pci_bus 0000:03: resource 0 [io  0x1000-0x10ff]
[    0.590282] pci_bus 0000:03: resource 1 [io  0x1400-0x14ff]
[    0.590286] pci_bus 0000:03: resource 2 [mem 0x80000000-0x83ffffff pref]
[    0.590289] pci_bus 0000:03: resource 3 [mem 0x88000000-0x8bffffff]
[    0.590334] NET: Registered protocol family 2
[    0.590547] TCP established hash table entries: 8192 (order: 4, 65536 bytes)
[    0.590595] TCP bind hash table entries: 8192 (order: 4, 65536 bytes)
[    0.590643] TCP: Hash tables configured (established 8192 bind 8192)
[    0.590689] TCP: reno registered
[    0.590692] UDP hash table entries: 512 (order: 2, 16384 bytes)
[    0.590705] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
[    0.590784] NET: Registered protocol family 1
[    0.590784] pci 0000:01:05.0: Boot video device
[    0.590784] PCI: CLS 64 bytes, default 64
[    0.590784] Trying to unpack rootfs image as initramfs...
[    1.213930] Freeing initrd memory: 23632K (f51c8000 - f68dc000)
[    1.214140] Scanning for low memory corruption every 60 seconds
[    1.214463] Initialise module verification
[    1.214524] audit: initializing netlink socket (disabled)
[    1.214541] type=2000 audit(1385388642.211:1): initialized
[    1.242569] bounce pool size: 64 pages
[    1.242582] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[    1.244399] zbud: loaded
[    1.244513] VFS: Disk quotas dquot_6.5.2
[    1.244575] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    1.245293] fuse init (API version 7.22)
[    1.245439] msgmni has been set to 1721
[    1.246562] Key type asymmetric registered
[    1.246565] Asymmetric key parser 'x509' registered
[    1.246609] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
[    1.246662] io scheduler noop registered
[    1.246665] io scheduler deadline registered (default)
[    1.246699] io scheduler cfq registered
[    1.246871] pcieport 0000:00:04.0: irq 40 for MSI/MSI-X
[    1.246930] pcieport 0000:00:05.0: irq 41 for MSI/MSI-X
[    1.246979] pcieport 0000:00:06.0: irq 42 for MSI/MSI-X
[    1.247049] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    1.247073] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    1.247202] efifb: probing for efifb
[    1.247207] efifb: cannot reserve video memory at 0xa0000
[    1.247213] efifb: framebuffer at 0xa0000, mapped to 0xc00a0000, using 56k, total 64k
[    1.247215] efifb: mode is 640x350x1, linelength=80, pages=1
[    1.247217] efifb: scrolling: redraw
[    1.247220] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[    1.248771] Console: switching to colour frame buffer device 80x43
[    1.250178] fb0: EFI VGA frame buffer device
[    1.253955] ACPI: AC Adapter [C1EB] (on-line)
[    1.254317] input: Sleep Button as /devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/input0
[    1.254325] ACPI: Sleep Button [C28D]
[    1.254375] input: Lid Switch as /devices/LNXSYSTM:00/device:00/PNP0C0D:00/input/input1
[    1.254412] ACPI: Lid Switch [C265]
[    1.254459] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input2
[    1.254463] ACPI: Power Button [PWRF]
[    1.254559] ACPI: Fan [C399] (off)
[    1.254607] ACPI: Fan [C39A] (off)
[    1.254657] ACPI: Fan [C39B] (off)
[    1.254703] ACPI: Fan [C39C] (off)
[    1.254755] ACPI: processor limited to max C-state 1
[    1.262424] thermal LNXTHERM:00: registered as thermal_zone0
[    1.262427] ACPI: Thermal Zone [TZ1] (38 C)
[    1.262471] GHES: HEST is not enabled!
[    1.262593] Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
[    1.262808] isapnp: Scanning for PnP cards...
[    1.264257] Linux agpgart interface v0.103
[    1.266137] brd: module loaded
[    1.266975] loop: module loaded
[    1.267567] libphy: Fixed MDIO Bus: probed
[    1.267712] tun: Universal TUN/TAP device driver, 1.6
[    1.267714] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    1.267769] PPP generic driver version 2.4.2
[    1.267818] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.267820] ehci-pci: EHCI PCI platform driver
[    1.268064] ehci-pci 0000:00:13.5: EHCI Host Controller
[    1.268073] ehci-pci 0000:00:13.5: new USB bus registered, assigned bus number 1
[    1.268082] ehci-pci 0000:00:13.5: applying AMD SB600/SB700 USB freeze workaround
[    1.268101] ehci-pci 0000:00:13.5: debug port 1
[    1.268160] ehci-pci 0000:00:13.5: irq 23, io mem 0xd0406000
[    1.280041] ehci-pci 0000:00:13.5: USB 2.0 started, EHCI 1.00
[    1.280098] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[    1.280101] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.280104] usb usb1: Product: EHCI Host Controller
[    1.280106] usb usb1: Manufacturer: Linux 3.11.0-13-generic ehci_hcd
[    1.280109] usb usb1: SerialNumber: 0000:00:13.5
[    1.280246] hub 1-0:1.0: USB hub found
[    1.280252] hub 1-0:1.0: 10 ports detected
[    1.280705] ehci-platform: EHCI generic platform driver
[    1.280722] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.280724] ohci-platform: OHCI generic platform driver
[    1.280734] uhci_hcd: USB Universal Host Controller Interface driver
[    1.280828] i8042: PNP: PS/2 Controller [PNP0303:C249,PNP0f13:C24A] at 0x60,0x64 irq 1,12
[    1.282592] i8042: Detected active multiplexing controller, rev 1.1
[    1.283241] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.283249] serio: i8042 AUX0 port at 0x60,0x64 irq 12
[    1.283279] serio: i8042 AUX1 port at 0x60,0x64 irq 12
[    1.283304] serio: i8042 AUX2 port at 0x60,0x64 irq 12
[    1.283332] serio: i8042 AUX3 port at 0x60,0x64 irq 12
[    1.283464] mousedev: PS/2 mouse device common for all mice
[    1.283647] rtc_cmos 00:04: RTC can wake from S4
[    1.283800] rtc_cmos 00:04: rtc core: registered rtc_cmos as rtc0
[    1.283829] rtc_cmos 00:04: alarms up to one month, y3k, 114 bytes nvram
[    1.283909] device-mapper: uevent: version 1.0.3
[    1.283976] device-mapper: ioctl: 4.25.0-ioctl (2013-06-26) initialised: dm-devel at redhat.com
[    1.284037] platform eisa.0: Probing EISA bus 0
[    1.284065] platform eisa.0: EISA: Detected 0 cards
[    1.284076] cpufreq-nforce2: No nForce2 chipset.
[    1.284079] cpuidle: using governor ladder
[    1.284081] cpuidle: using governor menu
[    1.284095] ledtrig-cpu: registered to indicate activity on CPUs
[    1.284207] TCP: cubic registered
[    1.284340] NET: Registered protocol family 10
[    1.284573] NET: Registered protocol family 17
[    1.284589] Key type dns_resolver registered
[    1.284769] Using IPI No-Shortcut mode
[    1.284858] PM: Hibernation image not present or could not be loaded.
[    1.284895] Loading module verification certificates
[    1.290355] MODSIGN: Loaded cert 'Magrathea: Glacier signing key: 121c3931998f688796d5ac98c50cd636878ded2d'
[    1.290373] registered taskstats version 1
[    1.293780] Key type trusted registered
[    1.296828] Key type encrypted registered
[    1.299773] AppArmor: AppArmor sha1 policy hashing enabled
[    1.300218]   Magic number: 5:12:183
[    1.300282] acpi device:42: hash matches
[    1.300345] rtc_cmos 00:04: setting system clock to 2013-11-25 14:10:43 UTC (1385388643)
[    1.300513] powernow-k8: fid 0xc (2000 MHz), vid 0x12
[    1.300516] powernow-k8: fid 0xa (1800 MHz), vid 0x13
[    1.300518] powernow-k8: fid 0x8 (1600 MHz), vid 0x14
[    1.300520] powernow-k8: fid 0x0 (800 MHz), vid 0x1e
[    1.300552] powernow-k8: Found 1 AMD Turion(tm) 64 X2 Mobile Technology TL-60 (2 cpu cores) (version 2.20.00)
[    1.300560] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
[    1.300561] EDD information not available.
[    1.305060] ACPI: Battery Slot [C1ED] (battery present)
[    1.305150] ACPI: Battery Slot [C1EC] (battery absent)
[    1.307862] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input3
[    1.619280] isapnp: No Plug & Play device found
[    1.619919] Freeing unused kernel memory: 880K (c1962000 - c1a3e000)
[    1.619972] Write protecting the kernel text: 6356k
[    1.620108] Write protecting the kernel read-only data: 2644k
[    1.620109] NX-protecting the kernel data: 5932k
[    1.640759] systemd-udevd[98]: starting version 204
[    1.674616] libahci: module verification failed: signature and/or required key missing - tainting kernel
[    1.675447] ahci 0000:00:12.0: version 3.0
[    1.675665] ahci 0000:00:12.0: controller can't do 64bit DMA, forcing 32bit
[    1.675748] ahci 0000:00:12.0: AHCI 0001.0100 32 slots 4 ports 3 Gbps 0x1 impl SATA mode
[    1.675754] ahci 0000:00:12.0: flags: ncq sntf ilck pm led clo pio slum part ccc 
[    1.676841] ohci-pci: OHCI PCI platform driver
[    1.679975] scsi0 : ahci
[    1.680194] scsi1 : ahci
[    1.684078] scsi2 : ahci
[    1.693503] acpi device:02: registered as cooling_device6
[    1.693651] ACPI: Video Device [C08D] (multi-head: yes  rom: no  post: no)
[    1.693707] input: Video Bus as /devices/LNXSYSTM:00/device:00/PNP0A03:00/device:01/LNXVIDEO:00/input/input4
[    1.697945] scsi3 : ahci
[    1.698064] ata1: SATA max UDMA/133 abar m1024 at 0xd0409000 port 0xd0409100 irq 16
[    1.698067] ata2: DUMMY
[    1.698069] ata3: DUMMY
[    1.698070] ata4: DUMMY
[    1.698321] ohci-pci 0000:00:13.0: OHCI PCI host controller
[    1.698329] ohci-pci 0000:00:13.0: new USB bus registered, assigned bus number 2
[    1.698354] ohci-pci 0000:00:13.0: irq 23, io mem 0xd0401000
[    1.702743] [drm] Initialized drm 1.1.0 20060810
[    1.716981] pps_core: LinuxPPS API ver. 1 registered
[    1.716986] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    1.717269] PTP clock support registered
[    1.726534] wmi: Mapper loaded
[    1.731880] tg3.c:v3.132 (May 21, 2013)
[    1.752155] ssb: Found chip with id 0x4311, rev 0x02 and package 0x00
[    1.752165] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor 0x4243)
[    1.752172] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor 0x4243)
[    1.752178] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor 0x4243)
[    1.752185] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x05, vendor 0x4243)
[    1.756048] usb usb2: New USB device found, idVendor=1d6b, idProduct=0001
[    1.756055] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.756059] usb usb2: Product: OHCI PCI host controller
[    1.756062] usb usb2: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    1.756065] usb usb2: SerialNumber: 0000:00:13.0
[    1.756222] hub 2-0:1.0: USB hub found
[    1.756234] hub 2-0:1.0: 2 ports detected
[    1.756548] ohci-pci 0000:00:13.1: OHCI PCI host controller
[    1.756556] ohci-pci 0000:00:13.1: new USB bus registered, assigned bus number 3
[    1.756593] ohci-pci 0000:00:13.1: irq 17, io mem 0xd0402000
[    1.816100] ssb: Sonics Silicon Backplane found on PCI device 0000:30:00.0
[    1.830715] usb usb3: New USB device found, idVendor=1d6b, idProduct=0001
[    1.830721] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.830725] usb usb3: Product: OHCI PCI host controller
[    1.830727] usb usb3: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    1.830730] usb usb3: SerialNumber: 0000:00:13.1
[    1.830919] hub 3-0:1.0: USB hub found
[    1.830928] hub 3-0:1.0: 2 ports detected
[    1.836331] scsi4 : pata_atiixp
[    1.840169] scsi5 : pata_atiixp
[    1.840276] ata5: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0x5040 irq 14
[    1.840279] ata6: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0x5048 irq 15
[    1.840523] ohci-pci 0000:00:13.2: OHCI PCI host controller
[    1.840532] ohci-pci 0000:00:13.2: new USB bus registered, assigned bus number 4
[    1.840556] ohci-pci 0000:00:13.2: irq 17, io mem 0xd0403000
[    1.843427] [drm] radeon kernel modesetting enabled.
[    1.843555] checking generic (a0000 e000) vs hw (c0000000 8000000)
[    1.843558] fb: conflicting fb hw usage radeondrmfb vs EFI VGA - removing generic driver
[    1.843581] Console: switching to colour dummy device 80x25
[    1.843971] [drm] initializing kernel modesetting (RS690 0x1002:0x791F 0x103C:0x30C2).
[    1.843991] [drm] register mmio base: 0xD0200000
[    1.843993] [drm] register mmio size: 65536
[    1.844162] ATOM BIOS: ATI
[    1.844199] radeon 0000:01:05.0: VRAM: 128M 0x0000000078000000 - 0x000000007FFFFFFF (128M used)
[    1.844203] radeon 0000:01:05.0: GTT: 512M 0x0000000080000000 - 0x000000009FFFFFFF
[    1.844229] [drm] Detected VRAM RAM=128M, BAR=128M
[    1.844232] [drm] RAM width 128bits DDR
[    1.844458] tg3 0000:10:00.0 eth0: Tigon3 [partno(BCM95906) rev c002] (PCI Express) MAC address 00:1c:c4:cf:f3:1a
[    1.844463] tg3 0000:10:00.0 eth0: attached PHY is 5906 (10/100Base-TX Ethernet) (WireSpeed[0], EEE[0])
[    1.844466] tg3 0000:10:00.0 eth0: RXcsums[1] LinkChgREG[0] MIirq[0] ASF[0] TSOcap[0]
[    1.844469] tg3 0000:10:00.0 eth0: dma_rwctrl[76180000] dma_mask[64-bit]
[    1.844845] [TTM] Zone  kernel: Available graphics memory: 441092 kiB
[    1.844847] [TTM] Zone highmem: Available graphics memory: 967272 kiB
[    1.844849] [TTM] Initializing pool allocator
[    1.844855] [TTM] Initializing DMA pool allocator
[    1.844882] [drm] radeon: 128M of VRAM memory ready
[    1.844884] [drm] radeon: 512M of GTT memory ready.
[    1.844902] [drm] GART: num cpu pages 131072, num gpu pages 131072
[    1.871379] [drm] radeon: 1 quad pipes, 1 z pipes initialized.
[    1.879621] [drm] PCIE GART of 512M enabled (table at 0x0000000036700000).
[    1.879752] radeon 0000:01:05.0: WB enabled
[    1.879758] radeon 0000:01:05.0: fence driver on ring 0 use gpu addr 0x0000000080000000 and cpu addr 0xf669d000
[    1.879761] [drm] Supports vblank timestamp caching Rev 1 (10.10.2010).
[    1.879763] [drm] Driver supports precise vblank timestamp query.
[    1.879788] radeon 0000:01:05.0: irq 43 for MSI/MSI-X
[    1.879803] radeon 0000:01:05.0: radeon: using MSI.
[    1.879829] [drm] radeon: irq initialized.
[    1.879848] [drm] Loading RS690/RS740 Microcode
[    1.880121] [drm] radeon: ring at 0x0000000080001000
[    1.880141] [drm] ring test succeeded in 1 usecs
[    1.880315] [drm] ib test succeeded in 0 usecs
[    1.880633] [drm] radeon atom DIG backlight initialized
[    1.880636] [drm] Radeon Display Connectors
[    1.880638] [drm] Connector 0:
[    1.880640] [drm]   VGA-1
[    1.880643] [drm]   DDC: 0x7e50 0x7e40 0x7e54 0x7e44 0x7e58 0x7e48 0x7e5c 0x7e4c
[    1.880644] [drm]   Encoders:
[    1.880646] [drm]     CRT1: INTERNAL_KLDSCP_DAC1
[    1.880648] [drm] Connector 1:
[    1.880650] [drm]   LVDS-1
[    1.880653] [drm]   DDC: 0x7e40 0x7e50 0x7e44 0x7e54 0x7e48 0x7e58 0x7e4c 0x7e5c
[    1.880654] [drm]   Encoders:
[    1.880656] [drm]     LCD1: INTERNAL_LVTM1
[    1.880658] [drm] Connector 2:
[    1.880660] [drm]   SVIDEO-1
[    1.880661] [drm]   Encoders:
[    1.880663] [drm]     TV1: INTERNAL_KLDSCP_DAC1
[    1.880677] [drm] radeon: power management initialized
[    1.900055] usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
[    1.900059] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.900062] usb usb4: Product: OHCI PCI host controller
[    1.900065] usb usb4: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    1.900068] usb usb4: SerialNumber: 0000:00:13.2
[    1.900260] hub 4-0:1.0: USB hub found
[    1.900271] hub 4-0:1.0: 2 ports detected
[    1.900577] ohci-pci 0000:00:13.3: OHCI PCI host controller
[    1.900584] ohci-pci 0000:00:13.3: new USB bus registered, assigned bus number 5
[    1.900607] ohci-pci 0000:00:13.3: irq 17, io mem 0xd0404000
[    1.960053] usb usb5: New USB device found, idVendor=1d6b, idProduct=0001
[    1.960056] usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.960059] usb usb5: Product: OHCI PCI host controller
[    1.960062] usb usb5: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    1.960065] usb usb5: SerialNumber: 0000:00:13.3
[    1.960209] hub 5-0:1.0: USB hub found
[    1.960217] hub 5-0:1.0: 2 ports detected
[    1.960463] ohci-pci 0000:00:13.4: OHCI PCI host controller
[    1.960470] ohci-pci 0000:00:13.4: new USB bus registered, assigned bus number 6
[    1.960486] ohci-pci 0000:00:13.4: irq 17, io mem 0xd0405000
[    2.004528] ata5.00: ATAPI: HL-DT-ST DVDRAM GSA-T20L, NC08, max MWDMA2
[    2.020033] usb usb6: New USB device found, idVendor=1d6b, idProduct=0001
[    2.020036] usb usb6: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    2.020039] usb usb6: Product: OHCI PCI host controller
[    2.020041] usb usb6: Manufacturer: Linux 3.11.0-13-generic ohci_hcd
[    2.020044] usb usb6: SerialNumber: 0000:00:13.4
[    2.020057] ata1: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[    2.020186] hub 6-0:1.0: USB hub found
[    2.020197] hub 6-0:1.0: 2 ports detected
[    2.020534] ata5.00: configured for MWDMA2
[    2.020595] ata1.00: ATA-8: TOSHIBA MK2546GSX, LB014C, max UDMA/100
[    2.020598] ata1.00: 488397168 sectors, multi 16: LBA48 NCQ (depth 31/32), AA
[    2.020602] ata1.00: SB600 AHCI: limiting to 255 sectors per cmd
[    2.021133] ata1.00: SB600 AHCI: limiting to 255 sectors per cmd
[    2.021138] ata1.00: configured for UDMA/100
[    2.021288] scsi 0:0:0:0: Direct-Access     ATA      TOSHIBA MK2546GS LB01 PQ: 0 ANSI: 5
[    2.022284] sd 0:0:0:0: [sda] 488397168 512-byte logical blocks: (250 GB/232 GiB)
[    2.022356] sd 0:0:0:0: [sda] Write Protect is off
[    2.022360] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    2.022392] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    2.022493] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    2.025892] scsi 4:0:0:0: CD-ROM            HL-DT-ST DVDRAM GSA-T20L  NC08 PQ: 0 ANSI: 5
[    2.030837] sr0: scsi3-mmc drive: 24x/24x writer dvd-ram cd/rw xa/form2 cdda tray
[    2.030841] cdrom: Uniform CD-ROM driver Revision: 3.20
[    2.030976] sr 4:0:0:0: Attached scsi CD-ROM sr0
[    2.031041] sr 4:0:0:0: Attached scsi generic sg1 type 5
[    2.152240]  sda: sda1 sda2 sda3 sda4 < sda5 sda6 sda7 >
[    2.153016] sd 0:0:0:0: [sda] Attached SCSI disk
[    2.196059] usb 3-1: new low-speed USB device number 2 using ohci-pci
[    2.367758] usb 3-1: New USB device found, idVendor=045e, idProduct=0040
[    2.367765] usb 3-1: New USB device strings: Mfr=1, Product=3, SerialNumber=0
[    2.367769] usb 3-1: Product: Microsoft 3-Button Mouse with IntelliEye(TM)
[    2.367772] usb 3-1: Manufacturer: Microsoft
[    2.380276] hidraw: raw HID events driver (C) Jiri Kosina
[    2.391884] usbcore: registered new interface driver usbhid
[    2.391890] usbhid: USB HID core driver
[    2.398682] input: Microsoft Microsoft 3-Button Mouse with IntelliEye(TM) as /devices/pci0000:00/0000:00:13.1/usb3/3-1/3-1:1.0/input/input5
[    2.399401] hid-generic 0003:045E:0040.0001: input,hidraw0: USB HID v1.10 Mouse [Microsoft Microsoft 3-Button Mouse with IntelliEye(TM)] on usb-0000:00:13.1-1/input0
[    2.524858] [drm] fb mappable at 0xC0040000
[    2.524863] [drm] vram apper at 0xC0000000
[    2.524865] [drm] size 4096000
[    2.524867] [drm] fb depth is 24
[    2.524869] [drm]    pitch is 5120
[    2.524979] fbcon: radeondrmfb (fb0) is primary device
[    2.796077] Console: switching to colour frame buffer device 160x100
[    2.805548] radeon 0000:01:05.0: fb0: radeondrmfb frame buffer device
[    2.805552] radeon 0000:01:05.0: registered panic notifier
[    2.805580] [drm] Initialized radeon 2.34.0 20080528 for 0000:01:05.0 on minor 0
[    3.466053] EXT4-fs (sda6): mounted filesystem with ordered data mode. Opts: (null)
[   15.279173] Adding 2104476k swap on /dev/sda5.  Priority:-1 extents:1 across:2104476k FS
[   15.451821] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[   15.618035] systemd-udevd[303]: starting version 204
[   15.687414] lp: driver loaded but no devices found
[   15.747125] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[   15.935286] k8temp 0000:00:18.3: Temperature readouts might be wrong - check erratum #141
[   15.946415] piix4_smbus 0000:00:14.0: SMBus Host Controller at 0x8200, revision 0
[   15.952131] piix4_smbus 0000:00:14.0: Auxiliary SMBus Host Controller at 0x8210
[   15.988945] sp5100_tco: SP5100/SB800 TCO WatchDog Timer Driver v0.05
[   15.995446] sp5100_tco: PCI Revision ID: 0x14
[   15.995475] sp5100_tco: failed to find MMIO address, giving up.
[   15.997873] cfg80211: Calling CRDA to update world regulatory domain
[   16.008293] yenta_cardbus 0000:02:04.0: CardBus bridge found [103c:30c2]
[   16.031185] microcode: AMD CPU family 0xf not supported
[   16.038712] type=1400 audit(1385388658.234:2): apparmor="STATUS" operation="profile_load" parent=334 profile="unconfined" name="/sbin/dhclient" pid=348 comm="apparmor_parser"
[   16.038727] type=1400 audit(1385388658.234:3): apparmor="STATUS" operation="profile_load" parent=334 profile="unconfined" name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=348 comm="apparmor_parser"
[   16.038734] type=1400 audit(1385388658.234:4): apparmor="STATUS" operation="profile_load" parent=334 profile="unconfined" name="/usr/lib/connman/scripts/dhclient-script" pid=348 comm="apparmor_parser"
[   16.039584] type=1400 audit(1385388658.234:5): apparmor="STATUS" operation="profile_replace" parent=334 profile="unconfined" name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=348 comm="apparmor_parser"
[   16.039594] type=1400 audit(1385388658.234:6): apparmor="STATUS" operation="profile_replace" parent=334 profile="unconfined" name="/usr/lib/connman/scripts/dhclient-script" pid=348 comm="apparmor_parser"
[   16.040076] type=1400 audit(1385388658.238:7): apparmor="STATUS" operation="profile_replace" parent=334 profile="unconfined" name="/usr/lib/connman/scripts/dhclient-script" pid=348 comm="apparmor_parser"
[   16.046813] type=1400 audit(1385388658.242:8): apparmor="STATUS" operation="profile_load" parent=334 profile="unconfined" name="/usr/sbin/ntpd" pid=349 comm="apparmor_parser"
[   16.059851] kvm: Nested Virtualization enabled
[   16.115666] b43-phy0: Broadcom 4311 WLAN found (core revision 13)
[   16.147888] yenta_cardbus 0000:02:04.0: ISA IRQ mask 0x0cb8, PCI irq 20
[   16.147896] yenta_cardbus 0000:02:04.0: Socket status: 30000006
[   16.147901] pci_bus 0000:02: Raising subordinate bus# of parent bus (#02) from #03 to #06
[   16.147913] yenta_cardbus 0000:02:04.0: pcmcia: parent PCI bridge window: [io  0x1000-0x1fff]
[   16.147917] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x1000-0x1fff:
[   16.149718]  excluding 0x1000-0x10ff 0x1400-0x14ff
[   16.154608] yenta_cardbus 0000:02:04.0: pcmcia: parent PCI bridge window: [mem 0xd0100000-0xd01fffff]
[   16.154613] pcmcia_socket pcmcia_socket0: cs: memory probe 0xd0100000-0xd01fffff:
[   16.154616]  excluding 0xd0100000-0xd010ffff
[   16.154627] yenta_cardbus 0000:02:04.0: pcmcia: parent PCI bridge window: [mem 0x80000000-0x83ffffff pref]
[   16.154631] pcmcia_socket pcmcia_socket0: cs: memory probe 0x80000000-0x83ffffff:
[   16.154639]  excluding 0x80000000-0x83ffffff
[   16.160089] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision 9
[   16.175143] hda-intel 0000:00:14.2: Using LPIB position fix
[   16.181766] hda-intel 0000:00:14.2: Enable sync_write for stable communication
[   16.184214] Broadcom 43xx driver loaded [ Features: PNL ]
[   16.213767] autoconfig: line_outs=0 (0x0/0x0/0x0/0x0/0x0) type:line
[   16.213774]    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[   16.213777]    hp_outs=0 (0x0/0x0/0x0/0x0/0x0)
[   16.213779]    mono: mono_out=0x0
[   16.213780]    inputs:
[   16.245599] EXT4-fs (sda6): re-mounted. Opts: errors=remount-ro
[   16.576847] input: HP WMI hotkeys as /devices/virtual/input/input6
[   16.744677] cfg80211: World regulatory domain updated:
[   16.744684] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[   16.744688] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   16.744691] cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   16.744693] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[   16.744696] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   16.744698] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   16.778340] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   16.801485] psmouse serio4: synaptics: Touchpad model: 1, fw: 6.2, id: 0x2580b1, caps: 0xa04793/0x300000/0x0, board id: 71, fw id: 240405
[   16.801497] psmouse serio4: synaptics: serio: Synaptics pass-through port at isa0060/serio4/input0
[   16.846030] input: SynPS/2 Synaptics TouchPad as /devices/platform/i8042/serio4/input/input7
[   16.933203] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x100-0x3af:
[   16.934349]  excluding 0x170-0x177 0x1f0-0x1f7 0x370-0x377
[   16.935188] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x3e0-0x4ff:
[   16.935608]  excluding 0x3f0-0x3f7 0x408-0x40f 0x4d0-0x4d7
[   16.935999] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x820-0x8ff:
[   16.936688]  clean.
[   16.936709] pcmcia_socket pcmcia_socket0: cs: IO port probe 0xc00-0xcf7:
[   16.937004]  excluding 0xc00-0xc07 0xc10-0xc17 0xc50-0xc57 0xc68-0xc6f 0xcd0-0xcdf
[   16.937321] pcmcia_socket pcmcia_socket0: cs: memory probe 0x0c0000-0x0fffff:
[   16.937330]  excluding 0xc0000-0xfffff
[   16.937350] pcmcia_socket pcmcia_socket0: cs: memory probe 0xa0000000-0xa0ffffff:
[   16.937362]  clean.
[   16.937380] pcmcia_socket pcmcia_socket0: cs: memory probe 0x60000000-0x60ffffff:
[   16.937388]  excluding 0x60000000-0x60ffffff
[   16.937407] pcmcia_socket pcmcia_socket0: cs: IO port probe 0xa00-0xaff:
[   16.938142]  clean.
[   19.209844] EXT4-fs (sda7): mounted filesystem with ordered data mode. Opts: (null)
[   20.439576] init: failsafe main process (620) killed by TERM signal
[   20.770842] Bluetooth: Core ver 2.16
[   20.770906] NET: Registered protocol family 31
[   20.770909] Bluetooth: HCI device and connection manager initialized
[   20.770921] Bluetooth: HCI socket layer initialized
[   20.770925] Bluetooth: L2CAP socket layer initialized
[   20.770933] Bluetooth: SCO socket layer initialized
[   20.805725] Bluetooth: RFCOMM TTY layer initialized
[   20.805744] Bluetooth: RFCOMM socket layer initialized
[   20.805746] Bluetooth: RFCOMM ver 1.11
[   20.903177] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   20.903185] Bluetooth: BNEP filters: protocol multicast
[   20.903200] Bluetooth: BNEP socket layer initialized
[   21.142156] type=1400 audit(1385388663.337:9): apparmor="STATUS" operation="profile_load" parent=749 profile="unconfined" name="/usr/lib/i386-linux-gnu/lightdm-remote-session-freerdp/freerdp-session-wrapper" pid=755 comm="apparmor_parser"
[   21.142174] type=1400 audit(1385388663.337:10): apparmor="STATUS" operation="profile_load" parent=749 profile="unconfined" name="chromium_browser" pid=755 comm="apparmor_parser"
[   21.142698] type=1400 audit(1385388663.337:11): apparmor="STATUS" operation="profile_load" parent=749 profile="unconfined" name="/usr/lib/lightdm/lightdm/lightdm-guest-session-wrapper" pid=754 comm="apparmor_parser"
[   21.142715] type=1400 audit(1385388663.337:12): apparmor="STATUS" operation="profile_load" parent=749 profile="unconfined" name="chromium_browser" pid=754 comm="apparmor_parser"
[   21.142847] type=1400 audit(1385388663.337:13): apparmor="STATUS" operation="profile_replace" parent=749 profile="unconfined" name="chromium_browser" pid=755 comm="apparmor_parser"
[   21.143388] type=1400 audit(1385388663.337:14): apparmor="STATUS" operation="profile_replace" parent=749 profile="unconfined" name="chromium_browser" pid=754 comm="apparmor_parser"
[   21.148848] type=1400 audit(1385388663.345:15): apparmor="STATUS" operation="profile_load" parent=749 profile="unconfined" name="/usr/lib/i386-linux-gnu/lightdm-remote-session-uccsconfigure/uccsconfigure-session-wrapper" pid=756 comm="apparmor_parser"
[   21.148864] type=1400 audit(1385388663.345:16): apparmor="STATUS" operation="profile_load" parent=749 profile="unconfined" name="chromium_browser" pid=756 comm="apparmor_parser"
[   21.149531] type=1400 audit(1385388663.345:17): apparmor="STATUS" operation="profile_replace" parent=749 profile="unconfined" name="chromium_browser" pid=756 comm="apparmor_parser"
[   21.151768] type=1400 audit(1385388663.345:18): apparmor="STATUS" operation="profile_replace" parent=749 profile="unconfined" name="/sbin/dhclient" pid=757 comm="apparmor_parser"
[   21.458853] init: avahi-cups-reload main process (765) terminated with status 1
[   21.601329] ppdev: user-space parallel port driver
[   22.336116] powernow-k8: ph2 null fid transition 0xc
[   22.536652] hp_wmi: Unknown event_id - 0 - 0x0
[   22.536806] hp_wmi: Unknown event_id - 0 - 0x0
[   22.845354] init: gdm main process (965) killed by TERM signal
[   23.668204] init: plymouth-stop pre-start process (1223) terminated with status 1
[   23.817822] tg3 0000:10:00.0: irq 44 for MSI/MSI-X
[   23.849080] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[   23.850647] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[   24.738141] pci 0000:30:00.0: [14e4:4312] type 00 class 0x028000
[   24.738203] pci 0000:30:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
[   24.738350] pci 0000:30:00.0: supports D1 D2
[   24.738425] pci 0000:30:00.0: System wakeup disabled by ACPI
[   24.755897] pci 0000:30:00.0: BAR 0: assigned [mem 0xc8000000-0xc8003fff 64bit]
[   24.809549] b43-pci-bridge 0000:30:00.0: enabling device (0000 -> 0002)
[   24.896511] ssb: Found chip with id 0x4311, rev 0x02 and package 0x00
[   24.896538] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor 0x4243)
[   24.896551] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor 0x4243)
[   24.896563] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor 0x4243)
[   24.896574] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x05, vendor 0x4243)
[   24.960281] b43-phy1: Broadcom 4311 WLAN found (core revision 13)
[   25.004095] b43-phy1: Found PHY: Analog 4, Type 2 (G), Revision 9
[   25.028328] ssb: Sonics Silicon Backplane found on PCI device 0000:30:00.0
[   25.029050] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
[   25.236092] b43-phy1: Loading firmware version 666.2 (2011-02-23 01:15:07)
[   25.321167] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[   25.322086] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[   57.289709] wlan0: authenticate with 50:7e:5d:0e:1c:5e
[   57.312479] wlan0: send auth to 50:7e:5d:0e:1c:5e (try 1/3)
[   57.314164] wlan0: authenticated
[   57.316252] wlan0: associate with 50:7e:5d:0e:1c:5e (try 1/3)
[   57.318678] wlan0: RX AssocResp from 50:7e:5d:0e:1c:5e (capab=0x411 status=0 aid=1)
[   57.324456] wlan0: associated
[   57.324563] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[   57.324762] cfg80211: Calling CRDA for country: DE
[   57.334275] cfg80211: Regulatory domain changed to country: DE
[   57.334294] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[   57.334301] cfg80211:   (2400000 KHz - 2483500 KHz @ 40000 KHz), (N/A, 2000 mBm)
[   57.334307] cfg80211:   (5150000 KHz - 5250000 KHz @ 40000 KHz), (N/A, 2000 mBm)
[   57.334313] cfg80211:   (5250000 KHz - 5350000 KHz @ 40000 KHz), (N/A, 2000 mBm)
[   57.334318] cfg80211:   (5470000 KHz - 5725000 KHz @ 40000 KHz), (N/A, 2698 mBm)
[   57.334324] cfg80211:   (57240000 KHz - 65880000 KHz @ 2160000 KHz), (N/A, 4000 mBm)
-------------- next part --------------
Linux christoph 3.11.0-13-generic #20-Ubuntu SMP Wed Oct 23 17:26:33 UTC 2013 i686 athlon i686 GNU/Linux
-------------- next part --------------
00:12.0 0106: 1002:4380 (prog-if 01 [AHCI 1.0])
	Subsystem: 1002:4380
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 16
	Region 0: I/O ports at 9000 [size=8]
	Region 1: I/O ports at 9008 [size=4]
	Region 2: I/O ports@9010 [size=8]
--
00:13.0 0c03: 1002:4387 (prog-if 10 [OHCI])
	Subsystem: 103c:30c2
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 23
	Region 0: Memory@d0401000 (32-bit, non-prefetchable) [size=4K]
	Kernel driver in use: ohci-pci
--
00:13.1 0c03: 1002:4388 (prog-if 10 [OHCI])
	Subsystem: 103c:30c2
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 64 bytes
	Interrupt: pin B routed to IRQ 17
	Region 0: Memory@d0402000 (32-bit, non-prefetchable) [size=4K]
	Kernel driver in use: ohci-pci
--
00:13.2 0c03: 1002:4389 (prog-if 10 [OHCI])
	Subsystem: 103c:30c2
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 64 bytes
	Interrupt: pin C routed to IRQ 17
	Region 0: Memory@d0403000 (32-bit, non-prefetchable) [size=4K]
	Kernel driver in use: ohci-pci
--
00:13.3 0c03: 1002:438a (prog-if 10 [OHCI])
	Subsystem: 103c:30c2
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 64 bytes
	Interrupt: pin B routed to IRQ 17
	Region 0: Memory@d0404000 (32-bit, non-prefetchable) [size=4K]
	Kernel driver in use: ohci-pci
--
00:13.4 0c03: 1002:438b (prog-if 10 [OHCI])
	Subsystem: 103c:30c2
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 64 bytes
	Interrupt: pin C routed to IRQ 17
	Region 0: Memory@d0405000 (32-bit, non-prefetchable) [size=4K]
	Kernel driver in use: ohci-pci
--
00:13.5 0c03: 1002:4386 (prog-if 20 [EHCI])
	Subsystem: 103c:30c2
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 64 bytes
	Interrupt: pin D routed to IRQ 23
	Region 0: Memory@d0406000 (32-bit, non-prefetchable) [size=256]
	Capabilities: <access denied>
--
00:14.0 0c05: 1002:4385 (rev 14)
	Subsystem: 103c:30c2
	Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Region 0: I/O ports@8200 [size=16]
	Capabilities: <access denied>
	Kernel driver in use: piix4_smbus

00:14.1 0101: 1002:438c (prog-if 82 [Master PriP])
	Subsystem: 103c:30c2
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 16
	Region 0: I/O ports at 01f0 [size=8]
	Region 1: I/O ports@03f4 [size=1]
--
00:14.2 0403: 1002:4383
	Subsystem: 103c:30c2
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=slow >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 16
	Region 0: Memory@84000000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: <access denied>
--
00:14.3 0601: 1002:438d
	Subsystem: 103c:30c2
	Control: I/O+ Mem+ BusMaster+ SpecCycle+ MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0

00:14.4 0604: 1002:4384 (prog-if 01 [Subtractive decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop+ ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 64
	Bus: primary=00, secondary=02, subordinate=06, sec-latency=64
	I/O behind bridge: 00001000-00001fff
	Memory behind bridge: d0100000-d01fffff
	Prefetchable memory behind bridge: 80000000-83ffffff
--
	Interrupt: pin B routed to IRQ 43
	Region 0: Memory at c0000000 (64-bit, prefetchable) [size=128M]
	Region 2: Memory at d0200000 (64-bit, non-prefetchable) [size=64K]
	Region 4: I/O ports at 4000 [size=256]
	Region 5: Memory at d0300000 (32-bit, non-prefetchable) [size=1M]
	Expansion ROM@<unassigned> [disabled]
	Capabilities: <access denied>
	Kernel driver in use: radeon
--
30:00.0 0280: 14e4:4312 (rev 02)
	Subsystem: 103c:1371
	Physical Slot: 1-2
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 18
	Region 0: Memory@c8000000 (64-bit, non-prefetchable) [size=16K]
--
	Kernel driver in use: b43-pci-bridge
