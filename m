From: Andrew Crouthamel <crouthamela@gmail.com>
Date: Sat, 25 Feb 2017 00:27:57 -0500
Subject: BCM44328 Scanning
Message-ID: <CAC6vRrrwfAC203YRiiFu7RqS9xig7todw_5gCSVdVu1C2AKKKg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

A description of the problem at hand:
I am running a fresh Arch Linux install, with a laptop using the
BCM44328 chip. The b43 (and wl) drivers detect and enable the chip,
but scanning networks returns nothing.

When it happens:
Every time I try to run "wifi-menu -o wlp2s0b1" or "iw dev wlp2s0b1 scan".

How to reproduce:
modprobe b43
ip link set wlp2s0b1 up
iw dev wlp2s0b1 scan

Wlan configuration and authentication/encryption type:
Home AP running 802.11n, WPA2-AES

The output of the following commands:

uname -a
Linux AndrewLaptop 4.9.11-1-ARCH #1 SMP PREEMPT Sun Feb 19 13:45:52
UTC 2017 x86_64 GNU/Linux

lspci -vvn|grep 43 -A7
02:00.0 0280: 14e4:4359
    Subsystem: 14e4:05e2
    Physical Slot: 0
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx+
    Latency: 0, Cache Line Size: 64 bytes
    Interrupt: pin A routed to IRQ 43
    Region 0: Memory@d4800000 (64-bit, non-prefetchable) [size=16K]
    Capabilities: <access denied>
    Kernel driver in use: bcma-pci-bridge
    Kernel modules: bcma, wl

03:00.0 ff00: 10ec:5227 (rev 01)
    Subsystem: 103c:221c

dmesg
[    0.000000] Linux version 4.9.11-1-ARCH (builduser at heftig-11715)
(gcc version 6.3.1 20170109 (GCC) ) #1 SMP PREEMPT Sun Feb 19 13:45:52
UTC 2017
[    0.000000] Command line: BOOT_IMAGE=/boot/vmlinuz-linux
root=UUID=2d4d890e-2e4b-48bc-976d-7bde5683027b rw quiet splash
acpi_osi=Linux acpi_backlight=video
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating
point registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.000000] x86/fpu: Enabled xstate features 0x7, context size is
832 bytes, using 'standard' format.
[    0.000000] x86/fpu: Using 'eager' FPU context switches.
[    0.000000] e820: BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009ebff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009ec00-0x000000000009ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000000e0000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000007d9b6fff] usable
[    0.000000] BIOS-e820: [mem 0x000000007d9b7000-0x000000007e8b2fff] reserved
[    0.000000] BIOS-e820: [mem 0x000000007e8b3000-0x000000007efb2fff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x000000007efb3000-0x000000007effefff] ACPI data
[    0.000000] BIOS-e820: [mem 0x000000007efff000-0x000000007effffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000e0000000-0x00000000efffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec00fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fec10000-0x00000000fec10fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fed80000-0x00000000fed80fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fee00000-0x00000000fee00fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ff800000-0x00000000ffffffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000043effffff] usable
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] SMBIOS 2.7 present.
[    0.000000] DMI: Hewlett-Packard HP EliteBook 755 G2/221C, BIOS M84
Ver. 01.03 07/04/2014
[    0.000000] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000000] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000000] e820: last_pfn = 0x43f000 max_arch_pfn = 0x400000000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-DFFFF write-through
[    0.000000]   E0000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 000000000000 mask FFFF80000000 write-back
[    0.000000]   1 base 0000FF800000 mask FFFFFF800000 write-protect
[    0.000000]   2 disabled
[    0.000000]   3 disabled
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000] TOM2: 000000043f000000 aka 17392M
[    0.000000] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WC  UC- WT
[    0.000000] e820: last_pfn = 0x7f000 max_arch_pfn = 0x400000000
[    0.000000] Scanning 1 areas for low memory corruption
[    0.000000] Base memory trampoline at [ffff880000098000] 98000 size 24576
[    0.000000] Using GB pages for direct mapping
[    0.000000] BRK [0x01d57000, 0x01d57fff] PGTABLE
[    0.000000] BRK [0x01d58000, 0x01d58fff] PGTABLE
[    0.000000] BRK [0x01d59000, 0x01d59fff] PGTABLE
[    0.000000] BRK [0x01d5a000, 0x01d5afff] PGTABLE
[    0.000000] BRK [0x01d5b000, 0x01d5bfff] PGTABLE
[    0.000000] RAMDISK: [mem 0x36d0f000-0x3767efff]
[    0.000000] ACPI: Early table checksum verification disabled
[    0.000000] ACPI: RSDP 0x00000000000F2F90 000024 (v02 HPQOEM)
[    0.000000] ACPI: XSDT 0x000000007EFFD0E8 00009C (v01 HPQOEM
SLIC-MPC 00000003      01000013)
[    0.000000] ACPI: FACP 0x000000007EFFB000 00010C (v05 HPQOEM 221C
  00000003 HP   00000001)
[    0.000000] ACPI: DSDT 0x000000007EFD7000 01F5AA (v01 HPQOEM 221C
  00000001 INTL 20130927)
[    0.000000] ACPI: FACS 0x000000007ED6A000 000040
[    0.000000] ACPI: HPET 0x000000007EFFA000 000038 (v01 HPQOEM 221C
  00000001 HP   00000001)
[    0.000000] ACPI: APIC 0x000000007EFF9000 000090 (v01 HPQOEM 221C
  00000001 HP   00000001)
[    0.000000] ACPI: MCFG 0x000000007EFF8000 00003C (v01 HPQOEM 221C
  00000001 HP   00000001)
[    0.000000] ACPI: TCPA 0x000000007EFF7000 000032 (v02 HPQOEM 221C
  00000000 HP   00000001)
[    0.000000] ACPI: SLIC 0x000000007EFD5000 000176 (v01 HPQOEM
SLIC-MPC 00000001 HP   00000001)
[    0.000000] ACPI: MSDM 0x000000007EFD4000 000055 (v03 HPQOEM
SLIC-MPC 00000000 HP   00000001)
[    0.000000] ACPI: FPDT 0x000000007EFD3000 000044 (v01 HPQOEM 221C
  00000001 HP   00000001)
[    0.000000] ACPI: BGRT 0x000000007EFD2000 000038 (v00 HPQOEM 221C
  00000001 HP   00000001)
[    0.000000] ACPI: SSDT 0x000000007EFD1000 0005E0 (v01 AMD
BALLINA  00000001 AMD  00000001)
[    0.000000] ACPI: SSDT 0x000000007EFC7000 009AC7 (v02 AMD
BALLINA  00000002 MSFT 04000000)
[    0.000000] ACPI: IVRS 0x000000007EFC6000 000078 (v02 AMD
BALLINA  00000001 AMD  00000000)
[    0.000000] ACPI: CRAT 0x000000007EFC5000 000360 (v01 AMD
BALLINA  00000001 AMD  00000001)
[    0.000000] ACPI: SSDT 0x000000007EFC4000 00081B (v01 AMD
CPMADPS4 00000001 INTL 20130927)
[    0.000000] ACPI: SSDT 0x000000007EFC2000 001207 (v01 AMD    CPMCMN
  00000001 INTL 20130927)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] No NUMA configuration found
[    0.000000] Faking a node at [mem 0x0000000000000000-0x000000043effffff]
[    0.000000] NODE_DATA(0) allocated [mem 0x43eff9000-0x43effdfff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.000000]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.000000]   Normal   [mem 0x0000000100000000-0x000000043effffff]
[    0.000000]   Device   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000001000-0x000000000009dfff]
[    0.000000]   node   0: [mem 0x0000000000100000-0x000000007d9b6fff]
[    0.000000]   node   0: [mem 0x000000007efff000-0x000000007effffff]
[    0.000000]   node   0: [mem 0x0000000100000000-0x000000043effffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000001000-0x000000043effffff]
[    0.000000] On node 0 totalpages: 3918165
[    0.000000]   DMA zone: 64 pages used for memmap
[    0.000000]   DMA zone: 21 pages reserved
[    0.000000]   DMA zone: 3997 pages, LIFO batch:0
[    0.000000]   DMA32 zone: 7975 pages used for memmap
[    0.000000]   DMA32 zone: 510392 pages, LIFO batch:31
[    0.000000]   Normal zone: 53184 pages used for memmap
[    0.000000]   Normal zone: 3403776 pages, LIFO batch:31
[    0.000000] ACPI: PM-Timer IO Port: 0x408
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
[    0.000000] IOAPIC[0]: apic_id 4, version 33, address 0xfec00000, GSI 0-23
[    0.000000] IOAPIC[1]: apic_id 5, version 33, address 0xfec20000, GSI 24-55
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 low level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] ACPI: HPET id: 0x43538301 base: 0xfed00000
[    0.000000] smpboot: Allowing 4 CPUs, 2 hotplug CPUs
[    0.000000] PM: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.000000] PM: Registered nosave memory: [mem 0x0009e000-0x0009efff]
[    0.000000] PM: Registered nosave memory: [mem 0x0009f000-0x0009ffff]
[    0.000000] PM: Registered nosave memory: [mem 0x000a0000-0x000dffff]
[    0.000000] PM: Registered nosave memory: [mem 0x000e0000-0x000fffff]
[    0.000000] PM: Registered nosave memory: [mem 0x7d9b7000-0x7e8b2fff]
[    0.000000] PM: Registered nosave memory: [mem 0x7e8b3000-0x7efb2fff]
[    0.000000] PM: Registered nosave memory: [mem 0x7efb3000-0x7effefff]
[    0.000000] PM: Registered nosave memory: [mem 0x7f000000-0xdfffffff]
[    0.000000] PM: Registered nosave memory: [mem 0xe0000000-0xefffffff]
[    0.000000] PM: Registered nosave memory: [mem 0xf0000000-0xfebfffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfec00000-0xfec00fff]
[    0.000000] PM: Registered nosave memory: [mem 0xfec01000-0xfec0ffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfec10000-0xfec10fff]
[    0.000000] PM: Registered nosave memory: [mem 0xfec11000-0xfed7ffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfed80000-0xfed80fff]
[    0.000000] PM: Registered nosave memory: [mem 0xfed81000-0xfedfffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfee00000-0xfee00fff]
[    0.000000] PM: Registered nosave memory: [mem 0xfee01000-0xff7fffff]
[    0.000000] PM: Registered nosave memory: [mem 0xff800000-0xffffffff]
[    0.000000] e820: [mem 0x7f000000-0xdfffffff] available for PCI devices
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] clocksource: refined-jiffies: mask: 0xffffffff
max_cycles: 0xffffffff, max_idle_ns: 6370452778343963 ns
[    0.000000] setup_percpu: NR_CPUS:128 nr_cpumask_bits:128
nr_cpu_ids:4 nr_node_ids:1
[    0.000000] percpu: Embedded 35 pages/cpu @ffff88043ec00000 s103512
r8192 d31656 u524288
[    0.000000] pcpu-alloc: s103512 r8192 d31656 u524288 alloc=1*2097152
[    0.000000] pcpu-alloc: [0] 0 1 2 3
[    0.000000] Built 1 zonelists in Node order, mobility grouping on.
Total pages: 3856921
[    0.000000] Policy zone: Normal
[    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-linux
root=UUID=2d4d890e-2e4b-48bc-976d-7bde5683027b rw quiet splash
acpi_osi=Linux acpi_backlight=video
[    0.000000] PID hash table entries: 4096 (order: 3, 32768 bytes)
[    0.000000] Calgary: detecting Calgary via BIOS EBDA area
[    0.000000] Calgary: Unable to locate Rio Grande table in EBDA - bailing!
[    0.000000] Memory: 15336868K/15672660K available (6206K kernel
code, 1071K rwdata, 1944K rodata, 1280K init, 1032K bss, 335792K
reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] Preemptible hierarchical RCU implementation.
[    0.000000]     Build-time adjustment of leaf fanout to 64.
[    0.000000]     RCU restricting CPUs from NR_CPUS=128 to nr_cpu_ids=4.
[    0.000000] RCU: Adjusting geometry for rcu_fanout_leaf=64, nr_cpu_ids=4
[    0.000000] NR_IRQS:8448 nr_irqs:1000 16
[    0.000000] spurious 8259A interrupt: IRQ7.
[    0.000000] Console: colour dummy device 80x25
[    0.000000] console [tty0] enabled
[    0.000000] clocksource: hpet: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 133484873504 ns
[    0.000000] hpet clockevent registered
[    0.000000] tsc: Fast TSC calibration using PIT
[    0.000000] tsc: Detected 2195.832 MHz processor
[    0.000026] Calibrating delay loop (skipped), value calculated
using timer frequency.. 4393.65 BogoMIPS (lpj=7319440)
[    0.000030] pid_max: default: 32768 minimum: 301
[    0.000044] ACPI: Core revision 20160831
[    0.014844] ACPI: 5 ACPI AML tables successfully acquired and loaded
[    0.014877] Security Framework initialized
[    0.014879] Yama: becoming mindful.
[    0.015798] Dentry cache hash table entries: 2097152 (order: 12,
16777216 bytes)
[    0.021442] Inode-cache hash table entries: 1048576 (order: 11,
8388608 bytes)
[    0.024017] Mount-cache hash table entries: 32768 (order: 6, 262144 bytes)
[    0.024033] Mountpoint-cache hash table entries: 32768 (order: 6,
262144 bytes)
[    0.024481] [Firmware Info]: CPU: Re-enabling disabled Topology
Extensions Support.
[    0.024488] CPU: Physical Processor ID: 0
[    0.024488] CPU: Processor Core ID: 0
[    0.024490] mce: CPU supports 7 MCE banks
[    0.024498] LVT offset 1 assigned for vector 0xf9
[    0.024506] Last level iTLB entries: 4KB 512, 2MB 1024, 4MB 512
[    0.024507] Last level dTLB entries: 4KB 1024, 2MB 1024, 4MB 512, 1GB 0
[    0.024875] Freeing SMP alternatives memory: 24K (ffffffff81c4d000
- ffffffff81c53000)
[    0.064047] ftrace: allocating 24619 entries in 97 pages
[    0.075629] smpboot: Max logical packages: 2
[    0.274209] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.412756] smpboot: CPU0: AMD A6 PRO-7050B R4, 5 Compute Cores
2C+3G (family: 0x15, model: 0x30, stepping: 0x1)
[    0.412761] Performance Events: Fam15h core perfctr, AMD PMU driver.
[    0.412766] ... version:                0
[    0.412767] ... bit width:              48
[    0.412768] ... generic registers:      6
[    0.412768] ... value mask:             0000ffffffffffff
[    0.412769] ... max period:             00007fffffffffff
[    0.412769] ... fixed-purpose events:   0
[    0.412770] ... event mask:             000000000000003f
[    0.446192] NMI watchdog: enabled on all CPUs, permanently consumes
one hw-PMU counter.
[    0.479469] x86: Booting SMP configuration:
[    0.479472] .... node  #0, CPUs:      #1
[    0.564955] x86: Booted up 1 node, 2 CPUs
[    0.564958] smpboot: Total of 2 processors activated (8786.11 BogoMIPS)
[    0.566131] devtmpfs: initialized
[    0.566210] x86/mm: Memory block size: 128MB
[    0.570343] PM: Registering ACPI NVS region [mem
0x7e8b3000-0x7efb2fff] (7340032 bytes)
[    0.570529] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 6370867519511994 ns
[    0.570573] pinctrl core: initialized pinctrl subsystem
[    0.570687] RTC time:  4:54:34, date: 02/25/17
[    0.570805] NET: Registered protocol family 16
[    0.578408] cpuidle: using governor ladder
[    0.588411] cpuidle: using governor menu
[    0.588486] ACPI FADT declares the system doesn't support PCIe
ASPM, so disable it
[    0.588487] ACPI: bus type PCI registered
[    0.588489] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.588667] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem
0xe0000000-0xefffffff] (base 0xe0000000)
[    0.588669] PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in E820
[    0.588682] PCI: Using configuration type 1 for base access
[    0.601984] HugeTLB registered 1 GB page size, pre-allocated 0 pages
[    0.601986] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[    0.602309] ACPI: Added _OSI(Module Device)
[    0.602310] ACPI: Added _OSI(Processor Device)
[    0.602311] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.602312] ACPI: Added _OSI(Processor Aggregator Device)
[    0.602313] ACPI: Added _OSI(Linux)
[    0.733628] ACPI : EC: EC started
[    1.066409] ACPI: \_SB_.PCI0.LPCB.EC0_: Used as first EC
[    1.066413] ACPI: \_SB_.PCI0.LPCB.EC0_: GPE=0x3, EC_CMD/EC_SC=0x66,
EC_DATA=0x62
[    1.066414] ACPI: \_SB_.PCI0.LPCB.EC0_: Used as boot DSDT EC to
handle transactions
[    1.066415] ACPI: Interpreter enabled
[    1.066448] ACPI: (supports S0 S3 S4 S5)
[    1.066449] ACPI: Using IOAPIC for interrupt routing
[    1.066735] PCI: Using host bridge windows from ACPI; if necessary,
use "pci=nocrs" and report a bug
[    1.070448] ACPI: Power Resource [APPR] (off)
[    1.078153] ACPI: [Firmware Bug]: BIOS _OSI(Linux) query honored via cmdline
[    1.078477] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    1.078483] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM
ClockPM Segments MSI]
[    1.078842] acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug PME
AER PCIeCapability]
[    1.078843] acpi PNP0A08:00: FADT indicates ASPM is unsupported,
using BIOS configuration
[    1.078930] acpi PNP0A08:00: ignoring host bridge window [mem
0x000cc000-0x000cffff window] (conflicts with Video ROM [mem
0x000c0000-0x000cf5ff])
[    1.078932] acpi PNP0A08:00: ignoring host bridge window [mem
0x000d0000-0x000d3fff window] (conflicts with Adapter ROM [mem
0x000cf800-0x000d07ff])
[    1.079199] PCI host bridge to bus 0000:00
[    1.079201] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    1.079203] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    1.079204] pci_bus 0000:00: root bus resource [mem
0x000a0000-0x000bffff window]
[    1.079205] pci_bus 0000:00: root bus resource [mem
0x000c0000-0x000c3fff window]
[    1.079207] pci_bus 0000:00: root bus resource [mem
0x000c4000-0x000c7fff window]
[    1.079208] pci_bus 0000:00: root bus resource [mem
0x000c8000-0x000cbfff window]
[    1.079209] pci_bus 0000:00: root bus resource [mem
0x000d4000-0x000d7fff window]
[    1.079210] pci_bus 0000:00: root bus resource [mem
0x000d8000-0x000dbfff window]
[    1.079211] pci_bus 0000:00: root bus resource [mem
0x000dc000-0x000dffff window]
[    1.079212] pci_bus 0000:00: root bus resource [mem
0x000e0000-0x000e3fff window]
[    1.079214] pci_bus 0000:00: root bus resource [mem
0x000e4000-0x000e7fff window]
[    1.079215] pci_bus 0000:00: root bus resource [mem
0x000e8000-0x000ebfff window]
[    1.079216] pci_bus 0000:00: root bus resource [mem
0x000ec000-0x000effff window]
[    1.079217] pci_bus 0000:00: root bus resource [mem
0x000f0000-0x000fffff window]
[    1.079218] pci_bus 0000:00: root bus resource [mem
0xc0000000-0xdfffffff window]
[    1.079220] pci_bus 0000:00: root bus resource [mem
0xf0000000-0xfed3ffff window]
[    1.079221] pci_bus 0000:00: root bus resource [mem
0xfed45000-0xfffdffff window]
[    1.079222] pci_bus 0000:00: root bus resource [bus 00-ff]
[    1.079230] pci 0000:00:00.0: [1022:1422] type 00 class 0x060000
[    1.079365] pci 0000:00:00.2: [1022:1423] type 00 class 0x080600
[    1.079525] pci 0000:00:01.0: [1002:130b] type 00 class 0x030000
[    1.079538] pci 0000:00:01.0: reg 0x10: [mem 0xc0000000-0xcfffffff
64bit pref]
[    1.079547] pci 0000:00:01.0: reg 0x18: [mem 0xd0000000-0xd07fffff
64bit pref]
[    1.079553] pci 0000:00:01.0: reg 0x20: [io  0x5000-0x50ff]
[    1.079560] pci 0000:00:01.0: reg 0x24: [mem 0xd6800000-0xd683ffff]
[    1.079566] pci 0000:00:01.0: reg 0x30: [mem 0xfffe0000-0xffffffff pref]
[    1.079604] pci 0000:00:01.0: supports D1 D2
[    1.079606] pci 0000:00:01.0: PME# supported from D1 D2 D3hot
[    1.079704] pci 0000:00:01.1: [1002:1308] type 00 class 0x040300
[    1.079717] pci 0000:00:01.1: reg 0x10: [mem 0xd6840000-0xd6843fff 64bit]
[    1.079772] pci 0000:00:01.1: supports D1 D2
[    1.079906] pci 0000:00:02.0: [1022:1424] type 00 class 0x060000
[    1.080032] pci 0000:00:03.0: [1022:1424] type 00 class 0x060000
[    1.080126] pci 0000:00:03.1: [1022:1426] type 01 class 0x060400
[    1.080194] pci 0000:00:03.1: PME# supported from D0 D3hot D3cold
[    1.080245] pci 0000:00:03.1: System wakeup disabled by ACPI
[    1.080288] pci 0000:00:03.2: [1022:1426] type 01 class 0x060400
[    1.080355] pci 0000:00:03.2: PME# supported from D0 D3hot D3cold
[    1.080403] pci 0000:00:03.2: System wakeup disabled by ACPI
[    1.080447] pci 0000:00:03.3: [1022:1426] type 01 class 0x060400
[    1.080513] pci 0000:00:03.3: PME# supported from D0 D3hot D3cold
[    1.080561] pci 0000:00:03.3: System wakeup disabled by ACPI
[    1.080665] pci 0000:00:04.0: [1022:1424] type 00 class 0x060000
[    1.080818] pci 0000:00:10.0: [1022:7814] type 00 class 0x0c0330
[    1.080842] pci 0000:00:10.0: reg 0x10: [mem 0xd6848000-0xd6849fff 64bit]
[    1.080948] pci 0000:00:10.0: PME# supported from D0 D3hot D3cold
[    1.081000] pci 0000:00:10.0: System wakeup disabled by ACPI
[    1.081081] pci 0000:00:10.1: [1022:7814] type 00 class 0x0c0330
[    1.081105] pci 0000:00:10.1: reg 0x10: [mem 0xd684a000-0xd684bfff 64bit]
[    1.081211] pci 0000:00:10.1: PME# supported from D0 D3hot D3cold
[    1.081261] pci 0000:00:10.1: System wakeup disabled by ACPI
[    1.081343] pci 0000:00:11.0: [1022:7801] type 00 class 0x010601
[    1.081360] pci 0000:00:11.0: reg 0x10: [io  0x5118-0x511f]
[    1.081369] pci 0000:00:11.0: reg 0x14: [io  0x5124-0x5127]
[    1.081378] pci 0000:00:11.0: reg 0x18: [io  0x5110-0x5117]
[    1.081387] pci 0000:00:11.0: reg 0x1c: [io  0x5120-0x5123]
[    1.081396] pci 0000:00:11.0: reg 0x20: [io  0x5100-0x510f]
[    1.081405] pci 0000:00:11.0: reg 0x24: [mem 0xd6851000-0xd68517ff]
[    1.081548] pci 0000:00:12.0: [1022:7807] type 00 class 0x0c0310
[    1.081562] pci 0000:00:12.0: reg 0x10: [mem 0xd6850000-0xd6850fff]
[    1.081712] pci 0000:00:12.0: System wakeup disabled by ACPI
[    1.081795] pci 0000:00:12.2: [1022:7808] type 00 class 0x0c0320
[    1.081812] pci 0000:00:12.2: reg 0x10: [mem 0xd684f000-0xd684f0ff]
[    1.081893] pci 0000:00:12.2: supports D1 D2
[    1.081894] pci 0000:00:12.2: PME# supported from D0 D1 D2 D3hot D3cold
[    1.081938] pci 0000:00:12.2: System wakeup disabled by ACPI
[    1.082016] pci 0000:00:13.0: [1022:7807] type 00 class 0x0c0310
[    1.082029] pci 0000:00:13.0: reg 0x10: [mem 0xd684e000-0xd684efff]
[    1.082168] pci 0000:00:13.0: System wakeup disabled by ACPI
[    1.082214] pci 0000:00:13.2: [1022:7808] type 00 class 0x0c0320
[    1.082230] pci 0000:00:13.2: reg 0x10: [mem 0xd684d000-0xd684d0ff]
[    1.082311] pci 0000:00:13.2: supports D1 D2
[    1.082312] pci 0000:00:13.2: PME# supported from D0 D1 D2 D3hot D3cold
[    1.082353] pci 0000:00:13.2: System wakeup disabled by ACPI
[    1.082433] pci 0000:00:14.0: [1022:780b] type 00 class 0x0c0500
[    1.082601] pci 0000:00:14.2: [1022:780d] type 00 class 0x040300
[    1.082622] pci 0000:00:14.2: reg 0x10: [mem 0xd6844000-0xd6847fff 64bit]
[    1.082689] pci 0000:00:14.2: PME# supported from D0 D3hot D3cold
[    1.082736] pci 0000:00:14.2: System wakeup disabled by ACPI
[    1.082808] pci 0000:00:14.3: [1022:780e] type 00 class 0x060100
[    1.082977] pci 0000:00:14.4: [1022:780f] type 01 class 0x060401
[    1.083105] pci 0000:00:14.5: [1022:7809] type 00 class 0x0c0310
[    1.083118] pci 0000:00:14.5: reg 0x10: [mem 0xd684c000-0xd684cfff]
[    1.083276] pci 0000:00:18.0: [1022:141a] type 00 class 0x060000
[    1.083350] pci 0000:00:18.1: [1022:141b] type 00 class 0x060000
[    1.083422] pci 0000:00:18.2: [1022:141c] type 00 class 0x060000
[    1.083494] pci 0000:00:18.3: [1022:141d] type 00 class 0x060000
[    1.083570] pci 0000:00:18.4: [1022:141e] type 00 class 0x060000
[    1.083643] pci 0000:00:18.5: [1022:141f] type 00 class 0x060000
[    1.083873] pci 0000:01:00.0: [10ec:8168] type 00 class 0x020000
[    1.083891] pci 0000:01:00.0: reg 0x10: [io  0x4000-0x40ff]
[    1.083917] pci 0000:01:00.0: reg 0x18: [mem 0xd5804000-0xd5804fff 64bit]
[    1.083933] pci 0000:01:00.0: reg 0x20: [mem 0xd5800000-0xd5803fff 64bit]
[    1.084021] pci 0000:01:00.0: supports D1 D2
[    1.084023] pci 0000:01:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    1.084078] pci 0000:01:00.0: System wakeup disabled by ACPI
[    1.092889] pci 0000:00:03.1: PCI bridge to [bus 01]
[    1.092897] pci 0000:00:03.1:   bridge window [io  0x4000-0x4fff]
[    1.092901] pci 0000:00:03.1:   bridge window [mem 0xd5800000-0xd67fffff]
[    1.092906] pci 0000:00:03.1:   bridge window [mem
0xd0800000-0xd17fffff 64bit pref]
[    1.093113] pci 0000:02:00.0: [14e4:4359] type 00 class 0x028000
[    1.093142] pci 0000:02:00.0: reg 0x10: [mem 0xd4800000-0xd4803fff 64bit]
[    1.093283] pci 0000:02:00.0: supports D1 D2
[    1.093284] pci 0000:02:00.0: PME# supported from D0 D3hot D3cold
[    1.102896] pci 0000:00:03.2: PCI bridge to [bus 02]
[    1.102904] pci 0000:00:03.2:   bridge window [io  0x3000-0x3fff]
[    1.102908] pci 0000:00:03.2:   bridge window [mem 0xd4800000-0xd57fffff]
[    1.102913] pci 0000:00:03.2:   bridge window [mem
0xd1800000-0xd27fffff 64bit pref]
[    1.103021] pci 0000:03:00.0: [10ec:5227] type 00 class 0xff0000
[    1.103042] pci 0000:03:00.0: reg 0x10: [mem 0xd3800000-0xd3800fff]
[    1.103175] pci 0000:03:00.0: supports D1 D2
[    1.103177] pci 0000:03:00.0: PME# supported from D1 D2 D3hot D3cold
[    1.112888] pci 0000:00:03.3: PCI bridge to [bus 03]
[    1.112896] pci 0000:00:03.3:   bridge window [io  0x2000-0x2fff]
[    1.112900] pci 0000:00:03.3:   bridge window [mem 0xd3800000-0xd47fffff]
[    1.112904] pci 0000:00:03.3:   bridge window [mem
0xd2800000-0xd37fffff 64bit pref]
[    1.113079] pci 0000:00:14.4: PCI bridge to [bus 04] (subtractive decode)
[    1.113089] pci 0000:00:14.4:   bridge window [io  0x0000-0x0cf7
window] (subtractive decode)
[    1.113091] pci 0000:00:14.4:   bridge window [io  0x0d00-0xffff
window] (subtractive decode)
[    1.113092] pci 0000:00:14.4:   bridge window [mem
0x000a0000-0x000bffff window] (subtractive decode)
[    1.113094] pci 0000:00:14.4:   bridge window [mem
0x000c0000-0x000c3fff window] (subtractive decode)
[    1.113095] pci 0000:00:14.4:   bridge window [mem
0x000c4000-0x000c7fff window] (subtractive decode)
[    1.113096] pci 0000:00:14.4:   bridge window [mem
0x000c8000-0x000cbfff window] (subtractive decode)
[    1.113097] pci 0000:00:14.4:   bridge window [mem
0x000d4000-0x000d7fff window] (subtractive decode)
[    1.113099] pci 0000:00:14.4:   bridge window [mem
0x000d8000-0x000dbfff window] (subtractive decode)
[    1.113100] pci 0000:00:14.4:   bridge window [mem
0x000dc000-0x000dffff window] (subtractive decode)
[    1.113101] pci 0000:00:14.4:   bridge window [mem
0x000e0000-0x000e3fff window] (subtractive decode)
[    1.113102] pci 0000:00:14.4:   bridge window [mem
0x000e4000-0x000e7fff window] (subtractive decode)
[    1.113104] pci 0000:00:14.4:   bridge window [mem
0x000e8000-0x000ebfff window] (subtractive decode)
[    1.113105] pci 0000:00:14.4:   bridge window [mem
0x000ec000-0x000effff window] (subtractive decode)
[    1.113106] pci 0000:00:14.4:   bridge window [mem
0x000f0000-0x000fffff window] (subtractive decode)
[    1.113107] pci 0000:00:14.4:   bridge window [mem
0xc0000000-0xdfffffff window] (subtractive decode)
[    1.113109] pci 0000:00:14.4:   bridge window [mem
0xf0000000-0xfed3ffff window] (subtractive decode)
[    1.113110] pci 0000:00:14.4:   bridge window [mem
0xfed45000-0xfffdffff window] (subtractive decode)
[    1.113434] ACPI: IRQ 7 override to edge, high
[    1.114423] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 7 10 11 12 14 15) *0
[    1.114502] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 7 10 11 12 14 15) *0
[    1.114582] ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 5 7 10 11 12 14 15) *0
[    1.114660] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 5 7 10 11 12 14 15) *0
[    1.114723] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 7 10 11 12 14 15) *0
[    1.114771] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 7 10 11 12 14 15) *0
[    1.114819] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 7 10 11 12 14 15) *0
[    1.114867] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 7 10 11 12 14 15) *0
[    1.115113] ACPI: Enabled 2 GPEs in block 00 to 1F
[    1.115256] ACPI : EC: event unblocked
[    1.115282] ACPI: \_SB_.PCI0.LPCB.EC0_: GPE=0x3, EC_CMD/EC_SC=0x66,
EC_DATA=0x62
[    1.115283] ACPI: \_SB_.PCI0.LPCB.EC0_: Used as boot DSDT EC to
handle transactions and events
[    1.115511] vgaarb: setting as boot device: PCI:0000:00:01.0
[    1.115513] vgaarb: device added:
PCI:0000:00:01.0,decodes=io+mem,owns=io+mem,locks=none
[    1.115522] vgaarb: loaded
[    1.115523] vgaarb: bridge control possible 0000:00:01.0
[    1.115752] PCI: Using ACPI for IRQ routing
[    1.124575] PCI: pci_cache_line_size set to 64 bytes
[    1.124705] Expanded resource reserved due to conflict with PCI Bus 0000:00
[    1.124707] e820: reserve RAM buffer [mem 0x0009ec00-0x0009ffff]
[    1.124708] e820: reserve RAM buffer [mem 0x7d9b7000-0x7fffffff]
[    1.124710] e820: reserve RAM buffer [mem 0x7f000000-0x7fffffff]
[    1.124711] e820: reserve RAM buffer [mem 0x43f000000-0x43fffffff]
[    1.124845] NetLabel: Initializing
[    1.124846] NetLabel:  domain hash size = 128
[    1.124846] NetLabel:  protocols = UNLABELED CIPSOv4
[    1.124862] NetLabel:  unlabeled traffic allowed by default
[    1.125003] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    1.125007] hpet0: 3 comparators, 32-bit 14.318180 MHz counter
[    1.127056] clocksource: Switched to clocksource hpet
[    1.135860] VFS: Disk quotas dquot_6.6.0
[    1.135883] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    1.135998] pnp: PnP ACPI init
[    1.136171] system 00:00: [mem 0xe0000000-0xefffffff] has been reserved
[    1.136173] system 00:00: [mem 0xfeb00000-0xfeb00fff] has been reserved
[    1.136175] system 00:00: [mem 0xfec00000-0xfec00fff] could not be reserved
[    1.136177] system 00:00: [mem 0xfec20000-0xfec20fff] could not be reserved
[    1.136178] system 00:00: [mem 0xfee00000-0xfee00fff] has been reserved
[    1.136183] system 00:00: Plug and Play ACPI device, IDs PNP0c02 (active)
[    1.136491] system 00:01: [io  0x0400-0x04cf] has been reserved
[    1.136493] system 00:01: [io  0x04d0-0x04d1] has been reserved
[    1.136495] system 00:01: [io  0x04d6] has been reserved
[    1.136496] system 00:01: [io  0x0680-0x06ff] has been reserved
[    1.136497] system 00:01: [io  0x077a] has been reserved
[    1.136499] system 00:01: [io  0x0c00-0x0c01] has been reserved
[    1.136500] system 00:01: [io  0x0c14] has been reserved
[    1.136501] system 00:01: [io  0x0c50-0x0c52] has been reserved
[    1.136503] system 00:01: [io  0x0c6c] has been reserved
[    1.136504] system 00:01: [io  0x0c6f] has been reserved
[    1.136505] system 00:01: [io  0x0cd0-0x0cdb] has been reserved
[    1.136507] system 00:01: [io  0x0220-0x0227] has been reserved
[    1.136508] system 00:01: [io  0x0260-0x0273] has been reserved
[    1.136509] system 00:01: [io  0x0800] has been reserved
[    1.136510] system 00:01: [io  0x0804] has been reserved
[    1.136512] system 00:01: [io  0x087f] has been reserved
[    1.136513] system 00:01: [io  0x0cdc-0x0cdf] has been reserved
[    1.136515] system 00:01: [io  0x0b00-0x0b0f] has been reserved
[    1.136516] system 00:01: [io  0x0200-0x027f] could not be reserved
[    1.136518] system 00:01: [io  0x1770-0x1777] has been reserved
[    1.136520] system 00:01: Plug and Play ACPI device, IDs PNP0c02 (active)
[    1.136588] system 00:02: [mem 0x00000000-0x0009ffff] could not be reserved
[    1.136590] system 00:02: [mem 0x00100000-0xbfffffff] could not be reserved
[    1.136591] system 00:02: [mem 0xffe00000-0xffffffff] could not be reserved
[    1.136593] system 00:02: Plug and Play ACPI device, IDs PNP0c01 (active)
[    1.136701] pnp 00:03: Plug and Play ACPI device, IDs PNP0b00 (active)
[    1.136742] pnp 00:04: Plug and Play ACPI device, IDs HPQ8001
PNP0303 (active)
[    1.136770] pnp 00:05: Plug and Play ACPI device, IDs SYN3026
SYN0100 SYN0002 PNP0f13 (active)
[    1.137103] pnp 00:06: Plug and Play ACPI device, IDs IFX0102
PNP0c31 (active)
[    1.137283] pnp: PnP ACPI: found 7 devices
[    1.144754] clocksource: acpi_pm: mask: 0xffffff max_cycles:
0xffffff, max_idle_ns: 2085701024 ns
[    1.144763] pci 0000:00:01.0: can't claim BAR 6 [mem
0xfffe0000-0xffffffff pref]: no compatible bridge window
[    1.144804] pci 0000:00:01.0: BAR 6: assigned [mem
0xd6860000-0xd687ffff pref]
[    1.144808] pci 0000:00:03.1: PCI bridge to [bus 01]
[    1.144811] pci 0000:00:03.1:   bridge window [io  0x4000-0x4fff]
[    1.144815] pci 0000:00:03.1:   bridge window [mem 0xd5800000-0xd67fffff]
[    1.144818] pci 0000:00:03.1:   bridge window [mem
0xd0800000-0xd17fffff 64bit pref]
[    1.144823] pci 0000:00:03.2: PCI bridge to [bus 02]
[    1.144825] pci 0000:00:03.2:   bridge window [io  0x3000-0x3fff]
[    1.144829] pci 0000:00:03.2:   bridge window [mem 0xd4800000-0xd57fffff]
[    1.144831] pci 0000:00:03.2:   bridge window [mem
0xd1800000-0xd27fffff 64bit pref]
[    1.144836] pci 0000:00:03.3: PCI bridge to [bus 03]
[    1.144838] pci 0000:00:03.3:   bridge window [io  0x2000-0x2fff]
[    1.144841] pci 0000:00:03.3:   bridge window [mem 0xd3800000-0xd47fffff]
[    1.144844] pci 0000:00:03.3:   bridge window [mem
0xd2800000-0xd37fffff 64bit pref]
[    1.144849] pci 0000:00:14.4: PCI bridge to [bus 04]
[    1.144893] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    1.144894] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    1.144896] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
[    1.144897] pci_bus 0000:00: resource 7 [mem 0x000c0000-0x000c3fff window]
[    1.144898] pci_bus 0000:00: resource 8 [mem 0x000c4000-0x000c7fff window]
[    1.144899] pci_bus 0000:00: resource 9 [mem 0x000c8000-0x000cbfff window]
[    1.144900] pci_bus 0000:00: resource 10 [mem 0x000d4000-0x000d7fff window]
[    1.144902] pci_bus 0000:00: resource 11 [mem 0x000d8000-0x000dbfff window]
[    1.144903] pci_bus 0000:00: resource 12 [mem 0x000dc000-0x000dffff window]
[    1.144904] pci_bus 0000:00: resource 13 [mem 0x000e0000-0x000e3fff window]
[    1.144905] pci_bus 0000:00: resource 14 [mem 0x000e4000-0x000e7fff window]
[    1.144906] pci_bus 0000:00: resource 15 [mem 0x000e8000-0x000ebfff window]
[    1.144908] pci_bus 0000:00: resource 16 [mem 0x000ec000-0x000effff window]
[    1.144909] pci_bus 0000:00: resource 17 [mem 0x000f0000-0x000fffff window]
[    1.144910] pci_bus 0000:00: resource 18 [mem 0xc0000000-0xdfffffff window]
[    1.144911] pci_bus 0000:00: resource 19 [mem 0xf0000000-0xfed3ffff window]
[    1.144912] pci_bus 0000:00: resource 20 [mem 0xfed45000-0xfffdffff window]
[    1.144914] pci_bus 0000:01: resource 0 [io  0x4000-0x4fff]
[    1.144915] pci_bus 0000:01: resource 1 [mem 0xd5800000-0xd67fffff]
[    1.144916] pci_bus 0000:01: resource 2 [mem 0xd0800000-0xd17fffff
64bit pref]
[    1.144918] pci_bus 0000:02: resource 0 [io  0x3000-0x3fff]
[    1.144919] pci_bus 0000:02: resource 1 [mem 0xd4800000-0xd57fffff]
[    1.144920] pci_bus 0000:02: resource 2 [mem 0xd1800000-0xd27fffff
64bit pref]
[    1.144921] pci_bus 0000:03: resource 0 [io  0x2000-0x2fff]
[    1.144922] pci_bus 0000:03: resource 1 [mem 0xd3800000-0xd47fffff]
[    1.144923] pci_bus 0000:03: resource 2 [mem 0xd2800000-0xd37fffff
64bit pref]
[    1.144925] pci_bus 0000:04: resource 4 [io  0x0000-0x0cf7 window]
[    1.144926] pci_bus 0000:04: resource 5 [io  0x0d00-0xffff window]
[    1.144927] pci_bus 0000:04: resource 6 [mem 0x000a0000-0x000bffff window]
[    1.144929] pci_bus 0000:04: resource 7 [mem 0x000c0000-0x000c3fff window]
[    1.144930] pci_bus 0000:04: resource 8 [mem 0x000c4000-0x000c7fff window]
[    1.144931] pci_bus 0000:04: resource 9 [mem 0x000c8000-0x000cbfff window]
[    1.144932] pci_bus 0000:04: resource 10 [mem 0x000d4000-0x000d7fff window]
[    1.144933] pci_bus 0000:04: resource 11 [mem 0x000d8000-0x000dbfff window]
[    1.144935] pci_bus 0000:04: resource 12 [mem 0x000dc000-0x000dffff window]
[    1.144936] pci_bus 0000:04: resource 13 [mem 0x000e0000-0x000e3fff window]
[    1.144937] pci_bus 0000:04: resource 14 [mem 0x000e4000-0x000e7fff window]
[    1.144938] pci_bus 0000:04: resource 15 [mem 0x000e8000-0x000ebfff window]
[    1.144939] pci_bus 0000:04: resource 16 [mem 0x000ec000-0x000effff window]
[    1.144940] pci_bus 0000:04: resource 17 [mem 0x000f0000-0x000fffff window]
[    1.144942] pci_bus 0000:04: resource 18 [mem 0xc0000000-0xdfffffff window]
[    1.144943] pci_bus 0000:04: resource 19 [mem 0xf0000000-0xfed3ffff window]
[    1.144944] pci_bus 0000:04: resource 20 [mem 0xfed45000-0xfffdffff window]
[    1.145057] NET: Registered protocol family 2
[    1.145267] TCP established hash table entries: 131072 (order: 8,
1048576 bytes)
[    1.145615] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
[    1.145913] TCP: Hash tables configured (established 131072 bind 65536)
[    1.145978] UDP hash table entries: 8192 (order: 6, 262144 bytes)
[    1.146062] UDP-Lite hash table entries: 8192 (order: 6, 262144 bytes)
[    1.146205] NET: Registered protocol family 1
[    1.146231] pci 0000:00:01.0: Video device with shadowed ROM at
[mem 0x000c0000-0x000dffff]
[    1.261301] PCI: CLS mismatch (64 != 32), using 64 bytes
[    1.317573] Unpacking initramfs...
[    1.483201] Freeing initrd memory: 9664K (ffff880036d0f000 -
ffff88003767f000)
[    1.483221] AMD-Vi: IOMMU performance counters supported
[    1.483225] AMD-Vi: Applying ATS write check workaround for IOMMU
at 0000:00:00.2
[    1.483454] pci 0000:00:00.2: can't derive routing for PCI INT A
[    1.483455] pci 0000:00:00.2: PCI INT A: no GSI
[    1.483625] iommu: Adding device 0000:00:00.0 to group 0
[    1.483711] iommu: Adding device 0000:00:01.0 to group 1
[    1.483849] iommu: Using direct mapping for device 0000:00:01.0
[    1.483873] iommu: Adding device 0000:00:01.1 to group 1
[    1.483916] iommu: Adding device 0000:00:02.0 to group 2
[    1.484002] iommu: Adding device 0000:00:03.0 to group 3
[    1.484022] iommu: Adding device 0000:00:03.1 to group 3
[    1.484042] iommu: Adding device 0000:00:03.2 to group 3
[    1.484062] iommu: Adding device 0000:00:03.3 to group 3
[    1.484126] iommu: Adding device 0000:00:04.0 to group 4
[    1.484262] iommu: Adding device 0000:00:10.0 to group 5
[    1.484314] iommu: Adding device 0000:00:10.1 to group 5
[    1.484371] iommu: Adding device 0000:00:11.0 to group 6
[    1.484444] iommu: Adding device 0000:00:12.0 to group 7
[    1.484462] iommu: Adding device 0000:00:12.2 to group 7
[    1.484531] iommu: Adding device 0000:00:13.0 to group 8
[    1.484552] iommu: Adding device 0000:00:13.2 to group 8
[    1.484627] iommu: Adding device 0000:00:14.0 to group 9
[    1.484647] iommu: Adding device 0000:00:14.2 to group 9
[    1.484666] iommu: Adding device 0000:00:14.3 to group 9
[    1.484727] iommu: Adding device 0000:00:14.4 to group 10
[    1.484789] iommu: Adding device 0000:00:14.5 to group 11
[    1.484884] iommu: Adding device 0000:00:18.0 to group 12
[    1.484908] iommu: Adding device 0000:00:18.1 to group 12
[    1.484928] iommu: Adding device 0000:00:18.2 to group 12
[    1.484948] iommu: Adding device 0000:00:18.3 to group 12
[    1.484968] iommu: Adding device 0000:00:18.4 to group 12
[    1.484988] iommu: Adding device 0000:00:18.5 to group 12
[    1.485006] iommu: Adding device 0000:01:00.0 to group 3
[    1.485047] iommu: Adding device 0000:02:00.0 to group 3
[    1.485065] iommu: Adding device 0000:03:00.0 to group 3
[    1.485636] AMD-Vi: Found IOMMU at 0000:00:00.2 cap 0x40
[    1.485637] AMD-Vi: Extended features (0x800090a52):
[    1.485638]  PPR GT IA PC
[    1.485641] AMD-Vi: Interrupt remapping enabled
[    1.485865] AMD-Vi: Lazy IO/TLB flushing enabled
[    1.487525] perf: AMD NB counters detected
[    1.487633] LVT offset 0 assigned for vector 0x400
[    1.487653] perf: AMD IBS detected (0x000001ff)
[    1.487659] perf: amd_iommu: Detected. (2 banks, 4 counters/bank)
[    1.487728] Scanning for low memory corruption every 60 seconds
[    1.488169] futex hash table entries: 1024 (order: 4, 65536 bytes)
[    1.488565] Initialise system trusted keyrings
[    1.488727] workingset: timestamp_bits=40 max_order=22 bucket_order=0
[    1.490679] zbud: loaded
[    1.491280] Key type asymmetric registered
[    1.491322] Block layer SCSI generic (bsg) driver version 0.4
loaded (major 249)
[    1.491379] io scheduler noop registered
[    1.491380] io scheduler deadline registered
[    1.491388] io scheduler cfq registered (default)
[    1.492242] pcieport 0000:00:03.1: Signaling PME through PCIe PME interrupt
[    1.492244] pci 0000:01:00.0: Signaling PME through PCIe PME interrupt
[    1.492247] pcie_pme 0000:00:03.1:pcie001: service driver pcie_pme loaded
[    1.492262] pcieport 0000:00:03.2: Signaling PME through PCIe PME interrupt
[    1.492264] pci 0000:02:00.0: Signaling PME through PCIe PME interrupt
[    1.492266] pcie_pme 0000:00:03.2:pcie001: service driver pcie_pme loaded
[    1.492281] pcieport 0000:00:03.3: Signaling PME through PCIe PME interrupt
[    1.492282] pci 0000:03:00.0: Signaling PME through PCIe PME interrupt
[    1.492285] pcie_pme 0000:00:03.3:pcie001: service driver pcie_pme loaded
[    1.492294] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    1.492303] pciehp 0000:00:03.2:pcie004: Slot #0 AttnBtn- PwrCtrl-
MRL- AttnInd- PwrInd- HotPlug+ Surprise- Interlock- NoCompl+ LLActRep+
[    1.492378] pciehp 0000:00:03.2:pcie004: service driver pciehp loaded
[    1.492387] pciehp 0000:00:03.3:pcie004: Slot #0 AttnBtn- PwrCtrl-
MRL- AttnInd- PwrInd- HotPlug+ Surprise- Interlock- NoCompl+ LLActRep+
[    1.492408] pciehp 0000:00:03.3:pcie004: service driver pciehp loaded
[    1.492413] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    1.492427] vesafb: mode is 1024x768x32, linelength=4096, pages=0
[    1.492428] vesafb: scrolling: redraw
[    1.492429] vesafb: Truecolor: size=0:8:8:8, shift=0:16:8:0
[    1.492447] vesafb: framebuffer at 0xc0000000, mapped to
0xffffc90002000000, using 3072k, total 3072k
[    1.502698] Console: switching to colour frame buffer device 128x48
[    1.512013] fb0: VESA VGA frame buffer device
[    1.512270] GHES: HEST is not enabled!
[    1.512419] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.512986] Linux agpgart interface v0.103
[    1.513260] rtc_cmos 00:03: RTC can wake from S4
[    1.513368] rtc_cmos 00:03: rtc core: registered rtc_cmos as rtc0
[    1.513399] rtc_cmos 00:03: alarms up to one month, 114 bytes
nvram, hpet irqs
[    1.513429] ledtrig-cpu: registered to indicate activity on CPUs
[    1.513687] NET: Registered protocol family 10
[    1.514047] NET: Registered protocol family 17
[    1.514373] microcode: CPU0: patch_level=0x06003106
[    1.514377] microcode: CPU1: patch_level=0x06003106
[    1.514415] microcode: Microcode Update Driver: v2.01
<tigran@aivazian.fsnet.co.uk>, Peter Oruba
[    1.514545] registered taskstats version 1
[    1.514556] Loading compiled-in X.509 certificates
[    1.514571] zswap: loaded using pool lzo/zbud
[    1.515011]   Magic number: 5:167:920
[    1.515187] rtc_cmos 00:03: setting system clock to 2017-02-25
04:54:35 UTC (1487998475)
[    1.515238] PM: Hibernation image not present or could not be loaded.
[    1.516613] Freeing unused kernel memory: 1280K (ffffffff81b0d000 -
ffffffff81c4d000)
[    1.516615] Write protecting the kernel read-only data: 10240k
[    1.517567] Freeing unused kernel memory: 1972K (ffff880001613000 -
ffff880001800000)
[    1.517956] Freeing unused kernel memory: 104K (ffff8800019e6000 -
ffff880001a00000)
[    1.529099] random: systemd-tmpfile: uninitialized urandom read (16
bytes read)
[    1.531659] random: systemd-udevd: uninitialized urandom read (16 bytes read)
[    1.531716] random: systemd-udevd: uninitialized urandom read (16 bytes read)
[    1.532815] random: udevadm: uninitialized urandom read (16 bytes read)
[    1.532948] random: udevadm: uninitialized urandom read (16 bytes read)
[    1.534649] random: udevadm: uninitialized urandom read (16 bytes read)
[    1.534713] random: udevadm: uninitialized urandom read (16 bytes read)
[    1.534773] random: udevadm: uninitialized urandom read (16 bytes read)
[    1.534832] random: udevadm: uninitialized urandom read (16 bytes read)
[    1.534891] random: udevadm: uninitialized urandom read (16 bytes read)
[    1.558496] [drm] Initialized
[    1.572675] [drm] radeon kernel modesetting enabled.
[    1.573769] checking generic (c0000000 300000) vs hw (c0000000 10000000)
[    1.573772] fb: switching to radeondrmfb from VESA VGA
[    1.573806] Console: switching to colour dummy device 80x25
[    1.574333] [drm] initializing kernel modesetting (KAVERI
0x1002:0x130B 0x103C:0x221C 0x00).
[    1.574351] [drm] register mmio base: 0xD6800000
[    1.574351] [drm] register mmio size: 262144
[    1.574355] [drm] doorbell mmio base: 0xD0000000
[    1.574356] [drm] doorbell mmio size: 8388608
[    1.575598] ATOM BIOS: BR45464.001
[    1.575653] [drm] Changing default dispclk from 496Mhz to 600Mhz
[    1.575670] radeon 0000:00:01.0: VRAM: 1024M 0x0000000000000000 -
0x000000003FFFFFFF (1024M used)
[    1.575672] radeon 0000:00:01.0: GTT: 2048M 0x0000000040000000 -
0x00000000BFFFFFFF
[    1.575678] [drm] Detected VRAM RAM=1024M, BAR=256M
[    1.575678] [drm] RAM width 128bits DDR
[    1.575757] [TTM] Zone  kernel: Available graphics memory: 7707932 kiB
[    1.575758] [TTM] Zone   dma32: Available graphics memory: 2097152 kiB
[    1.575759] [TTM] Initializing pool allocator
[    1.575765] [TTM] Initializing DMA pool allocator
[    1.575794] [drm] radeon: 1024M of VRAM memory ready
[    1.575795] [drm] radeon: 2048M of GTT memory ready.
[    1.575816] [drm] Loading kaveri Microcode
[    1.575969] [drm] Internal thermal controller without fan control
[    1.577885] [drm] radeon: dpm initialized
[    1.578020] [drm] Found UVD firmware Version: 1.64 Family ID: 9
[    1.581212] [drm] Found VCE firmware/feedback version 40.2.2 / 15!
[    1.581236] [drm] GART: num cpu pages 524288, num gpu pages 524288
[    1.615123] [drm] PCIE GART of 2048M enabled (table at 0x000000000030E000).
[    1.615310] radeon 0000:00:01.0: WB enabled
[    1.615321] radeon 0000:00:01.0: fence driver on ring 0 use gpu
addr 0x0000000040000c00 and cpu addr 0xffff880429df1c00
[    1.615324] radeon 0000:00:01.0: fence driver on ring 1 use gpu
addr 0x0000000040000c04 and cpu addr 0xffff880429df1c04
[    1.615327] radeon 0000:00:01.0: fence driver on ring 2 use gpu
addr 0x0000000040000c08 and cpu addr 0xffff880429df1c08
[    1.615329] radeon 0000:00:01.0: fence driver on ring 3 use gpu
addr 0x0000000040000c0c and cpu addr 0xffff880429df1c0c
[    1.615332] radeon 0000:00:01.0: fence driver on ring 4 use gpu
addr 0x0000000040000c10 and cpu addr 0xffff880429df1c10
[    1.615920] radeon 0000:00:01.0: fence driver on ring 5 use gpu
addr 0x0000000000078d30 and cpu addr 0xffffc90002838d30
[    1.616154] radeon 0000:00:01.0: fence driver on ring 6 use gpu
addr 0x0000000040000c18 and cpu addr 0xffff880429df1c18
[    1.616156] radeon 0000:00:01.0: fence driver on ring 7 use gpu
addr 0x0000000040000c1c and cpu addr 0xffff880429df1c1c
[    1.616159] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    1.616160] [drm] Driver supports precise vblank timestamp query.
[    1.616253] radeon 0000:00:01.0: radeon: using MSI.
[    1.616286] [drm] radeon: irq initialized.
[    1.618381] [drm] ring test on 0 succeeded in 4 usecs
[    1.618473] [drm] ring test on 1 succeeded in 3 usecs
[    1.618490] [drm] ring test on 2 succeeded in 3 usecs
[    1.618674] [drm] ring test on 3 succeeded in 5 usecs
[    1.618681] [drm] ring test on 4 succeeded in 4 usecs
[    1.664745] [drm] ring test on 5 succeeded in 2 usecs
[    1.684814] [drm] UVD initialized successfully.
[    1.794907] [drm] ring test on 6 succeeded in 18 usecs
[    1.794919] [drm] ring test on 7 succeeded in 3 usecs
[    1.794920] [drm] VCE initialized successfully.
[    1.797306] [drm] ib test on ring 0 succeeded in 0 usecs
[    2.304046] [drm] ib test on ring 1 succeeded in 0 usecs
[    2.490661] tsc: Refined TSC clocksource calibration: 2195.896 MHz
[    2.490669] clocksource: tsc: mask: 0xffffffffffffffff max_cycles:
0x1fa70df1325, max_idle_ns: 440795272206 ns
[    2.810722] [drm] ib test on ring 2 succeeded in 0 usecs
[    2.810833] [drm] ib test on ring 3 succeeded in 0 usecs
[    2.810920] [drm] ib test on ring 4 succeeded in 0 usecs
[    3.344055] [drm] ib test on ring 5 succeeded
[    3.365053] [drm] ib test on ring 6 succeeded
[    3.365880] [drm] ib test on ring 7 succeeded
[    3.371598] [drm] radeon atom DIG backlight initialized
[    3.371602] [drm] Radeon Display Connectors
[    3.371604] [drm] Connector 0:
[    3.371605] [drm]   VGA-1
[    3.371606] [drm]   HPD2
[    3.371609] [drm]   DDC: 0x6540 0x6540 0x6544 0x6544 0x6548 0x6548
0x654c 0x654c
[    3.371610] [drm]   Encoders:
[    3.371611] [drm]     CRT1: INTERNAL_UNIPHY2
[    3.371612] [drm]     CRT1: NUTMEG
[    3.371613] [drm] Connector 1:
[    3.371614] [drm]   DP-1
[    3.371615] [drm]   HPD3
[    3.371617] [drm]   DDC: 0x6550 0x6550 0x6554 0x6554 0x6558 0x6558
0x655c 0x655c
[    3.371617] [drm]   Encoders:
[    3.371619] [drm]     DFP1: INTERNAL_UNIPHY2
[    3.371619] [drm] Connector 2:
[    3.371620] [drm]   eDP-1
[    3.371621] [drm]   HPD1
[    3.371623] [drm]   DDC: 0x6530 0x6530 0x6534 0x6534 0x6538 0x6538
0x653c 0x653c
[    3.371624] [drm]   Encoders:
[    3.371625] [drm]     LCD1: INTERNAL_UNIPHY
[    3.371626] [drm] Connector 3:
[    3.371627] [drm]   DP-2
[    3.371628] [drm]   HPD5
[    3.371630] [drm]   DDC: 0x6570 0x6570 0x6574 0x6574 0x6578 0x6578
0x657c 0x657c
[    3.371630] [drm]   Encoders:
[    3.371631] [drm]     DFP3: INTERNAL_UNIPHY1
[    3.371632] [drm] Connector 4:
[    3.371633] [drm]   DP-3
[    3.371634] [drm]   HPD4
[    3.371636] [drm]   DDC: 0x6560 0x6560 0x6564 0x6564 0x6568 0x6568
0x656c 0x656c
[    3.371636] [drm]   Encoders:
[    3.371637] [drm]     DFP2: INTERNAL_UNIPHY3
[    3.504101] clocksource: Switched to clocksource tsc
[    4.464398] [drm] fb mappable at 0xC0722000
[    4.464400] [drm] vram apper at 0xC0000000
[    4.464401] [drm] size 4325376
[    4.464402] [drm] fb depth is 24
[    4.464403] [drm]    pitch is 5632
[    4.464627] fbcon: radeondrmfb (fb0) is primary device
[    5.995998] Console: switching to colour frame buffer device 170x48
[    5.998913] radeon 0000:00:01.0: fb0: radeondrmfb frame buffer device
[    6.033330] [drm] Initialized radeon 2.48.0 20080528 for
0000:00:01.0 on minor 0
[    6.131656] i8042: PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:PS2M]
at 0x60,0x64 irq 1,12
[    6.133649] i8042: Detected active multiplexing controller, rev 1.1
[    6.135395] serio: i8042 KBD port at 0x60,0x64 irq 1
[    6.135492] serio: i8042 AUX0 port at 0x60,0x64 irq 12
[    6.135549] serio: i8042 AUX1 port at 0x60,0x64 irq 12
[    6.135607] serio: i8042 AUX2 port at 0x60,0x64 irq 12
[    6.135660] serio: i8042 AUX3 port at 0x60,0x64 irq 12
[    6.144936] rtsx_pci 0000:03:00.0: rtsx_pci_acquire_irq:
pcr->msi_en = 1, pci->irq = 31
[    6.146754] ACPI: bus type USB registered
[    6.146791] usbcore: registered new interface driver usbfs
[    6.146805] usbcore: registered new interface driver hub
[    6.146883] usbcore: registered new device driver usb
[    6.148953] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    6.149118] QUIRK: Enable AMD PLL fix
[    6.149180] xhci_hcd 0000:00:10.0: xHCI Host Controller
[    6.149191] xhci_hcd 0000:00:10.0: new USB bus registered, assigned
bus number 1
[    6.149411] xhci_hcd 0000:00:10.0: hcc params 0x014040c3 hci
version 0x100 quirks 0x00000418
[    6.149585] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    6.149586] Warning! ehci_hcd should always be loaded before
uhci_hcd and ohci_hcd, not after
[    6.149859] ehci-pci: EHCI PCI platform driver
[    6.150067] hub 1-0:1.0: USB hub found
[    6.150142] hub 1-0:1.0: 2 ports detected
[    6.150679] xhci_hcd 0000:00:10.0: xHCI Host Controller
[    6.150688] xhci_hcd 0000:00:10.0: new USB bus registered, assigned
bus number 2
[    6.152826] usb usb2: We don't know the algorithms for LPM for this
host, disabling LPM.
[    6.153113] hub 2-0:1.0: USB hub found
[    6.153192] hub 2-0:1.0: 2 ports detected
[    6.153409] SCSI subsystem initialized
[    6.154237] ehci-pci 0000:00:12.2: EHCI Host Controller
[    6.154246] ehci-pci 0000:00:12.2: new USB bus registered, assigned
bus number 3
[    6.154251] ehci-pci 0000:00:12.2: applying AMD
SB700/SB800/Hudson-2/3 EHCI dummy qh workaround
[    6.154261] ehci-pci 0000:00:12.2: debug port 1
[    6.154322] ehci-pci 0000:00:12.2: irq 17, io mem 0xd684f000
[    6.167292] ehci-pci 0000:00:12.2: USB 2.0 started, EHCI 1.00
[    6.167585] hub 3-0:1.0: USB hub found
[    6.167596] hub 3-0:1.0: 5 ports detected
[    6.168748] ehci-pci 0000:00:13.2: EHCI Host Controller
[    6.168760] ehci-pci 0000:00:13.2: new USB bus registered, assigned
bus number 4
[    6.168765] ehci-pci 0000:00:13.2: applying AMD
SB700/SB800/Hudson-2/3 EHCI dummy qh workaround
[    6.168776] ehci-pci 0000:00:13.2: debug port 1
[    6.168820] ehci-pci 0000:00:13.2: irq 17, io mem 0xd684d000
[    6.180704] ehci-pci 0000:00:13.2: USB 2.0 started, EHCI 1.00
[    6.180989] hub 4-0:1.0: USB hub found
[    6.181000] hub 4-0:1.0: 5 ports detected
[    6.181903] xhci_hcd 0000:00:10.1: xHCI Host Controller
[    6.181913] xhci_hcd 0000:00:10.1: new USB bus registered, assigned
bus number 5
[    6.182131] xhci_hcd 0000:00:10.1: hcc params 0x014040c3 hci
version 0x100 quirks 0x00000418
[    6.182611] hub 5-0:1.0: USB hub found
[    6.182686] hub 5-0:1.0: 2 ports detected
[    6.183080] xhci_hcd 0000:00:10.1: xHCI Host Controller
[    6.183087] xhci_hcd 0000:00:10.1: new USB bus registered, assigned
bus number 6
[    6.187097] ohci-pci: OHCI PCI platform driver
[    6.187456] usb usb6: We don't know the algorithms for LPM for this
host, disabling LPM.
[    6.187795] hub 6-0:1.0: USB hub found
[    6.188125] hub 6-0:1.0: 2 ports detected
[    6.189112] ohci-pci 0000:00:12.0: OHCI PCI host controller
[    6.189123] ohci-pci 0000:00:12.0: new USB bus registered, assigned
bus number 7
[    6.189183] ohci-pci 0000:00:12.0: irq 18, io mem 0xd6850000
[    6.189632] libata version 3.00 loaded.
[    6.212652] input: AT Translated Set 2 keyboard as
/devices/platform/i8042/serio0/input/input0
[    6.248529] hub 7-0:1.0: USB hub found
[    6.248609] hub 7-0:1.0: 5 ports detected
[    6.249483] ohci-pci 0000:00:13.0: OHCI PCI host controller
[    6.249493] ohci-pci 0000:00:13.0: new USB bus registered, assigned
bus number 8
[    6.249532] ohci-pci 0000:00:13.0: irq 18, io mem 0xd684e000
[    6.308382] hub 8-0:1.0: USB hub found
[    6.308457] hub 8-0:1.0: 5 ports detected
[    6.309200] ohci-pci 0000:00:14.5: OHCI PCI host controller
[    6.309209] ohci-pci 0000:00:14.5: new USB bus registered, assigned
bus number 9
[    6.309255] ohci-pci 0000:00:14.5: irq 18, io mem 0xd684c000
[    6.368690] hub 9-0:1.0: USB hub found
[    6.368741] hub 9-0:1.0: 2 ports detected
[    6.369041] ahci 0000:00:11.0: version 3.0
[    6.369606] ahci 0000:00:11.0: AHCI 0001.0300 32 slots 1 ports 6
Gbps 0x1 impl SATA mode
[    6.369611] ahci 0000:00:11.0: flags: 64bit ncq sntf ilck pm led
clo pmp pio slum part
[    6.373974] scsi host0: ahci
[    6.374199] ata1: SATA max UDMA/133 abar m2048 at 0xd6851000 port
0xd6851100 irq 38
[    6.500762] usb 5-1: new high-speed USB device number 2 using xhci_hcd
[    6.750795] usb 3-5: new high-speed USB device number 3 using ehci-pci
[    6.757463] usb 7-3: new full-speed USB device number 2 using ohci-pci
[    6.844137] ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    6.845913] ata1.00: supports DRM functions and may not be fully accessible
[    6.846667] ata1.00: disabling queued TRIM support
[    6.846670] ata1.00: ATA-9: Samsung SSD 850 EVO 500GB, EMT02B6Q, max UDMA/133
[    6.846673] ata1.00: 976773168 sectors, multi 1: LBA48 NCQ (depth 31/32), AA
[    6.847371] ata1.00: supports DRM functions and may not be fully accessible
[    6.847989] ata1.00: disabling queued TRIM support
[    6.848390] ata1.00: configured for UDMA/133
[    6.848725] scsi 0:0:0:0: Direct-Access     ATA      Samsung SSD
850  2B6Q PQ: 0 ANSI: 5
[    6.900096] sd 0:0:0:0: [sda] 976773168 512-byte logical blocks:
(500 GB/466 GiB)
[    6.900201] sd 0:0:0:0: [sda] Write Protect is off
[    6.900205] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    6.900237] sd 0:0:0:0: [sda] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[    6.901176]  sda: sda1 sda2 sda3 < sda5 sda6 >
[    6.902007] sd 0:0:0:0: [sda] Attached SCSI disk
[    6.917948] random: fast init done
[    7.095514] EXT4-fs (sda5): mounted filesystem with ordered data
mode. Opts: (null)
[    7.188716] ip_tables: (C) 2000-2006 Netfilter Core Team
[    7.193313] systemd[1]: systemd 232 running in system mode. (+PAM
-AUDIT -SELINUX -IMA -APPARMOR +SMACK -SYSVINIT +UTMP +LIBCRYPTSETUP
+GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN)
[    7.193527] systemd[1]: Detected architecture x86-64.
[    7.193824] systemd[1]: Set hostname to <AndrewLaptop>.
[    7.278495] systemd[1]: Listening on Device-mapper event daemon FIFOs.
[    7.278800] systemd[1]: Set up automount Arbitrary Executable File
Formats File System Automount Point.
[    7.278862] systemd[1]: Listening on /dev/initctl Compatibility Named Pipe.
[    7.278932] systemd[1]: Started Forward Password Requests to Wall
Directory Watch.
[    7.278954] systemd[1]: Reached target Login Prompts.
[    7.279590] systemd[1]: Created slice User and Session Slice.
[    7.284565] systemd[1]: Listening on Process Core Dump Socket.
[    7.319031] EXT4-fs (sda5): re-mounted. Opts: data=ordered
[    7.323642] vboxdrv: loading out-of-tree module taints kernel.
[    7.329164] vboxdrv: Found 2 processor cores
[    7.351065] systemd-journald[168]: File
/var/log/journal/84b256f6f9034017913ea8162de9efbe/system.journal
corrupted or uncleanly shut down, renaming and replacing.
[    7.365497] vboxdrv: TSC mode is Invariant, tentative frequency 2195895664 Hz
[    7.365500] vboxdrv: Successfully loaded version 5.1.14 (interface
0x00280000)
[    7.367598] VBoxPciLinuxInit
[    7.391687] vboxpci: IOMMU found
[    7.394768] VBoxNetAdp: Successfully started.
[    7.396385] VBoxNetFlt: Successfully started.
[    7.527214] systemd-journald[168]: Received request to flush
runtime journal from PID 1
[    7.553203] input: Sleep Button as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input5
[    7.553211] ACPI: Sleep Button [SLPB]
[    7.555648] input: Lid Switch as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input6
[    7.555709] ACPI: Lid Switch [LID]
[    7.555801] input: Power Button as
/devices/LNXSYSTM:00/LNXPWRBN:00/input/input7
[    7.555804] ACPI: Power Button [PWRF]
[    7.567285] FUJITSU Extended Socket Network Device Driver - version
1.1 - Copyright (c) 2015 FUJITSU LIMITED
[    7.570250] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    7.573749] Initializing HPQ6001 module
[    7.573842] input: HP Wireless hotkeys as /devices/virtual/input/input8
[    7.579881] acpi device:00: registered as cooling_device2
[    7.580029] input: Video Bus as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input9
[    7.584003] hp_accel: laptop model unknown, using default axes configuration
[    7.584686] lis3lv02d: 8 bits 3DC sensor found
[    7.608559] ACPI: AC Adapter [AC] (on-line)
[    7.620745] tpm_tis 00:06: 1.2 TPM (device-id 0x1A, rev-id 16)
[    7.625339] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.626353] iommu: Removing device 0000:00:02.0 from group 2
[    7.627487] pci_bus 0000:01: Allocating resources
[    7.627508] pci_bus 0000:02: Allocating resources
[    7.627525] pci_bus 0000:03: Allocating resources
[    7.627551] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.631989] pci_bus 0000:04: Allocating resources
[    7.632013] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.632156] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.632232] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.632362] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.632537] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.632702] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.632927] pci_bus 0000:01: Allocating resources
[    7.632944] pci_bus 0000:02: Allocating resources
[    7.632960] pci_bus 0000:03: Allocating resources
[    7.632976] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.633902] pci_bus 0000:04: Allocating resources
[    7.633986] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.634321] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.634402] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.634532] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.634719] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.634889] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.635285] pci_bus 0000:01: Allocating resources
[    7.635304] pci_bus 0000:02: Allocating resources
[    7.635321] pci_bus 0000:03: Allocating resources
[    7.635339] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.636287] pci_bus 0000:04: Allocating resources
[    7.636304] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.636425] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.636502] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.636629] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.636806] pci 0000:00:14.4: PCI bridge to [bus 04]
[    7.648563] ACPI: Battery Slot [BAT0] (battery present)
[    7.649271] wmi: Mapper loaded
[    7.664025] input: ST LIS3LV02DL Accelerometer as
/devices/platform/lis3lv02d/input/input10
[    7.673633] thermal LNXTHERM:00: registered as thermal_zone0
[    7.673636] ACPI: Thermal Zone [CPUZ] (58 C)
[    7.697940] thermal LNXTHERM:01: registered as thermal_zone1
[    7.697943] ACPI: Thermal Zone [GFXZ] (0 C)
[    7.699458] [drm] amdgpu kernel modesetting enabled.
[    7.703358] snd_hda_intel 0000:00:01.1: Force to non-snoop mode
[    7.713050] thermal LNXTHERM:02: registered as thermal_zone2
[    7.713053] ACPI: Thermal Zone [EXTZ] (0 C)
[    7.723098] snd_hda_codec_realtek hdaudioC1D0: autoconfig for
ALC3228: line_outs=1 (0x14/0x0/0x0/0x0/0x0) type:speaker
[    7.723110] snd_hda_codec_realtek hdaudioC1D0:    speaker_outs=0
(0x0/0x0/0x0/0x0/0x0)
[    7.723112] snd_hda_codec_realtek hdaudioC1D0:    hp_outs=1
(0x15/0x0/0x0/0x0/0x0)
[    7.723115] snd_hda_codec_realtek hdaudioC1D0:    mono: mono_out=0x0
[    7.723117] snd_hda_codec_realtek hdaudioC1D0:    inputs:
[    7.723120] snd_hda_codec_realtek hdaudioC1D0:      Headset Mic=0x1a
[    7.723123] snd_hda_codec_realtek hdaudioC1D0:      Internal Mic=0x12
[    7.729429] input: HDA ATI HDMI HDMI/DP,pcm=3 as
/devices/pci0000:00/0000:00:01.1/sound/card0/input12
[    7.729481] input: HDA ATI HDMI HDMI/DP,pcm=7 as
/devices/pci0000:00/0000:00:01.1/sound/card0/input13
[    7.729529] input: HDA ATI HDMI HDMI/DP,pcm=8 as
/devices/pci0000:00/0000:00:01.1/sound/card0/input14
[    7.729576] input: HDA ATI HDMI HDMI/DP,pcm=9 as
/devices/pci0000:00/0000:00:01.1/sound/card0/input15
[    7.736943] input: HDA Digital PCBeep as
/devices/pci0000:00/0000:00:14.2/sound/card1/input11
[    7.740356] thermal LNXTHERM:03: registered as thermal_zone3
[    7.740359] ACPI: Thermal Zone [LOCZ] (0 C)
[    7.740772] input: HD-Audio Generic Headset Mic as
/devices/pci0000:00/0000:00:14.2/sound/card1/input16
[    7.740829] input: HD-Audio Generic Headphone as
/devices/pci0000:00/0000:00:14.2/sound/card1/input17
[    7.758955] thermal LNXTHERM:04: registered as thermal_zone4
[    7.758958] ACPI: Thermal Zone [BATZ] (35 C)
[    7.769208] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[    7.781511] r8169 Gigabit Ethernet driver 2.3LK-NAPI loaded
[    7.781526] r8169 0000:01:00.0: can't disable ASPM; OS doesn't have
ASPM control
[    7.848440] r8169 0000:01:00.0 eth0: RTL8168ep/8111ep at
0xffffc900019e1000, 38:63:bb:b9:84:75, XID 10200800 IRQ 42
[    7.848441] wl: module license 'MIXED/Proprietary' taints kernel.
[    7.848442] Disabling lock debugging due to kernel taint
[    7.848445] r8169 0000:01:00.0 eth0: jumbo features [frames: 9200
bytes, tx checksumming: ko]
[    7.898684] Adding 15670268k swap on /dev/sda6.  Priority:-1
extents:1 across:15670268k SSFS
[    7.910059] ACPI Warning: SystemIO range
0x0000000000000B00-0x0000000000000B07 conflicts with OpRegion
0x0000000000000B00-0x0000000000000B06 (\_SB.PCI0.SMBS.SMBO)
(20160831/utaddress-247)
[    7.910069] ACPI: If an ACPI driver is available for this device,
you should use it instead of the native driver
[    7.911420] sp5100_tco: SP5100/SB800 TCO WatchDog Timer Driver v0.05
[    7.936701] sp5100_tco: PCI Vendor ID: 0x1022, Device ID: 0x780b,
Revision ID: 0x16
[    7.936793] sp5100_tco: Using 0xfed80b00 for watchdog MMIO address
[    7.936809] sp5100_tco: Last reboot was not triggered by watchdog.
[    7.936930] sp5100_tco: initialized (0xffffc90001d2ab00).
heartbeat=60 sec (nowayout=0)
[    7.996598] wlan0: Broadcom BCM4359 802.11 Hybrid Wireless
Controller 6.30.223.271 (r587334)

[    8.098945] input: PC Speaker as /devices/platform/pcspkr/input/input18
[    8.111943] r8188eu: module is from the staging directory, the
quality is unknown, you have been warned.
[    8.141795] Chip Version Info:
CHIP_8188E_Normal_Chip_TSMC_D_CUT_1T1R_RomVer(0)
[    8.181970] acpi_cpufreq: overriding BIOS provided _PSD data
[    8.217977] AVX version of gcm_enc/dec engaged.
[    8.217979] AES CTR mode by8 optimization enabled
[    8.222622] media: Linux media interface: v0.10
[    8.232678] Bluetooth: Core ver 2.22
[    8.232705] NET: Registered protocol family 31
[    8.232706] Bluetooth: HCI device and connection manager initialized
[    8.232712] Bluetooth: HCI socket layer initialized
[    8.232715] Bluetooth: L2CAP socket layer initialized
[    8.232723] Bluetooth: SCO socket layer initialized
[    8.247737] usbcore: registered new interface driver btusb
[    8.264426] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.266161] pci_bus 0000:01: Allocating resources
[    8.266182] pci_bus 0000:02: Allocating resources
[    8.266219] pci_bus 0000:03: Allocating resources
[    8.266261] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.271268] Bluetooth: hci0: BCM: chip id 63
[    8.276754] pci_bus 0000:04: Allocating resources
[    8.276780] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.276905] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.276989] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.277039] usbcore: registered new interface driver r8188eu
[    8.277116] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.277406] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.278523] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.278755] pci_bus 0000:01: Allocating resources
[    8.278774] pci_bus 0000:02: Allocating resources
[    8.278811] pci_bus 0000:03: Allocating resources
[    8.278829] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.279571] pci_bus 0000:04: Allocating resources
[    8.279586] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.279703] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.279785] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.279887] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.280034] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.280167] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.280368] pci_bus 0000:01: Allocating resources
[    8.280386] pci_bus 0000:02: Allocating resources
[    8.280422] pci_bus 0000:03: Allocating resources
[    8.280438] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.281194] pci_bus 0000:04: Allocating resources
[    8.281243] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.281357] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.281437] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.281536] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.281686] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.288258] Bluetooth: hci0: BCM20702A
[    8.290256] Bluetooth: hci0: BCM20702A1 (001.002.014) build 0000
[    8.290615] bluetooth hci0: Direct firmware load for
brcm/BCM20702A1-0a5c-21f1.hcd failed with error -2
[    8.290619] Bluetooth: hci0: BCM: Patch
brcm/BCM20702A1-0a5c-21f1.hcd not found
[    8.305429] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.305676] pci_bus 0000:01: Allocating resources
[    8.305696] pci_bus 0000:02: Allocating resources
[    8.305733] pci_bus 0000:03: Allocating resources
[    8.305752] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.306540] pci_bus 0000:04: Allocating resources
[    8.306560] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.306682] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.306766] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.306870] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.307023] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.307163] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.307423] pci_bus 0000:01: Allocating resources
[    8.307443] pci_bus 0000:02: Allocating resources
[    8.307480] pci_bus 0000:03: Allocating resources
[    8.307499] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.308270] pci_bus 0000:04: Allocating resources
[    8.308287] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.308397] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.308476] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.308577] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.308724] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.311121] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.311356] pci_bus 0000:01: Allocating resources
[    8.311375] pci_bus 0000:02: Allocating resources
[    8.311412] pci_bus 0000:03: Allocating resources
[    8.311428] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.312123] pci_bus 0000:04: Allocating resources
[    8.312135] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.312241] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.312319] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.312415] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.312553] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.332163] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.332391] pci_bus 0000:01: Allocating resources
[    8.332410] pci_bus 0000:02: Allocating resources
[    8.332446] pci_bus 0000:03: Allocating resources
[    8.332462] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.333172] pci_bus 0000:04: Allocating resources
[    8.333185] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.333316] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.333393] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.333489] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.333631] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.333759] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.333959] pci_bus 0000:01: Allocating resources
[    8.333977] pci_bus 0000:02: Allocating resources
[    8.334012] pci_bus 0000:03: Allocating resources
[    8.334029] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.334737] pci_bus 0000:04: Allocating resources
[    8.334752] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.334859] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.334937] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.335033] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.335176] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.335331] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.335524] pci_bus 0000:01: Allocating resources
[    8.335541] pci_bus 0000:02: Allocating resources
[    8.335577] pci_bus 0000:03: Allocating resources
[    8.335593] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.336253] pci_bus 0000:04: Allocating resources
[    8.336267] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.336380] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.336455] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.336549] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.336691] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.345776] Linux video capture interface: v2.00
[    8.355951] kvm: Nested Virtualization enabled
[    8.355955] kvm: Nested Paging enabled
[    8.361657] EDAC MC: Ver: 3.0.0
[    8.363530] MCE: In-kernel MCE decoding enabled.
[    8.365247] EDAC amd64: DRAM ECC disabled.
[    8.365253] EDAC amd64: ECC disabled in the BIOS or no ECC
capability, module will not load.
                Either enable ECC checking or force module loading by
setting 'ecc_enable_override'.
                (Note that use of the override may cause unknown side effects.)
[    8.377482] uvcvideo: Found UVC 1.00 device HP HD Webcam (05c8:0374)
[    8.391207] uvcvideo 3-5:1.0: Entity type for entity Extension 4
was not initialized!
[    8.391212] uvcvideo 3-5:1.0: Entity type for entity Extension 3
was not initialized!
[    8.391215] uvcvideo 3-5:1.0: Entity type for entity Processing 2
was not initialized!
[    8.391217] uvcvideo 3-5:1.0: Entity type for entity Camera 1 was
not initialized!
[    8.392032] input: HP HD Webcam as
/devices/pci0000:00/0000:00:12.2/usb3/3-5/3-5:1.0/input/input21
[    8.392225] usbcore: registered new interface driver uvcvideo
[    8.392226] USB Video Class driver (1.1.1)
[    8.407847] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.408080] pci_bus 0000:01: Allocating resources
[    8.408100] pci_bus 0000:02: Allocating resources
[    8.408137] pci_bus 0000:03: Allocating resources
[    8.408155] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.408954] pci_bus 0000:04: Allocating resources
[    8.408976] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.409100] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.409181] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.409290] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.409456] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.537624] r8169 0000:01:00.0 enp1s0f0: renamed from eth0
[    8.549043] wl 0000:02:00.0 wlo1: renamed from wlan0
[    8.631349] r8188eu 5-1:1.0 wlp0s16f1u1: renamed from wlan1
[    8.679858] input: HP WMI hotkeys as /devices/virtual/input/input22
[    8.686685] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.688082] pci_bus 0000:01: Allocating resources
[    8.688103] pci_bus 0000:02: Allocating resources
[    8.688140] pci_bus 0000:03: Allocating resources
[    8.688166] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.693152] pci_bus 0000:04: Allocating resources
[    8.693175] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.693307] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.693382] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.693508] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.693675] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.693840] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.694149] pci_bus 0000:01: Allocating resources
[    8.694167] pci_bus 0000:02: Allocating resources
[    8.694203] pci_bus 0000:03: Allocating resources
[    8.694219] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.694982] pci_bus 0000:04: Allocating resources
[    8.694992] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.695118] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.695189] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.695305] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.695463] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.695608] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.695815] pci_bus 0000:01: Allocating resources
[    8.695832] pci_bus 0000:02: Allocating resources
[    8.695869] pci_bus 0000:03: Allocating resources
[    8.695885] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.696584] pci_bus 0000:04: Allocating resources
[    8.696594] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.696718] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.696788] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.696905] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.697062] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.705572] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.705819] pci_bus 0000:01: Allocating resources
[    8.705838] pci_bus 0000:02: Allocating resources
[    8.705875] pci_bus 0000:03: Allocating resources
[    8.705891] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.706729] pci_bus 0000:04: Allocating resources
[    8.706741] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.706876] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.706952] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.707077] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.707234] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.707408] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.707620] pci_bus 0000:01: Allocating resources
[    8.707637] pci_bus 0000:02: Allocating resources
[    8.707674] pci_bus 0000:03: Allocating resources
[    8.707690] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.708431] pci_bus 0000:04: Allocating resources
[    8.708441] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.708566] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.708638] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.708756] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.708913] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.709054] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.709229] pci_bus 0000:01: Allocating resources
[    8.709246] pci_bus 0000:02: Allocating resources
[    8.709282] pci_bus 0000:03: Allocating resources
[    8.709297] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.710057] pci_bus 0000:04: Allocating resources
[    8.710067] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.710189] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.710258] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.710375] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.710531] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.721236] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.721479] pci_bus 0000:01: Allocating resources
[    8.721498] pci_bus 0000:02: Allocating resources
[    8.721534] pci_bus 0000:03: Allocating resources
[    8.721551] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.722383] pci_bus 0000:04: Allocating resources
[    8.722394] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.722525] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.722599] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.722721] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.722882] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.723035] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.723227] pci_bus 0000:01: Allocating resources
[    8.723244] pci_bus 0000:02: Allocating resources
[    8.723279] pci_bus 0000:03: Allocating resources
[    8.723294] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.724239] pci_bus 0000:04: Allocating resources
[    8.724256] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.724399] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.724513] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.724644] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.724837] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.725004] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.725233] pci_bus 0000:01: Allocating resources
[    8.725251] pci_bus 0000:02: Allocating resources
[    8.725287] pci_bus 0000:03: Allocating resources
[    8.725303] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.726201] pci_bus 0000:04: Allocating resources
[    8.726215] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.726335] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.726413] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.726542] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.726717] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.741331] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.741604] pci_bus 0000:01: Allocating resources
[    8.741624] pci_bus 0000:02: Allocating resources
[    8.741661] pci_bus 0000:03: Allocating resources
[    8.741681] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.742630] pci_bus 0000:04: Allocating resources
[    8.742653] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.742810] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.742929] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.743078] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.743253] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.743423] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.743652] pci_bus 0000:01: Allocating resources
[    8.743670] pci_bus 0000:02: Allocating resources
[    8.743706] pci_bus 0000:03: Allocating resources
[    8.743721] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.744636] pci_bus 0000:04: Allocating resources
[    8.744654] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.744798] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.744912] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.745044] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.745222] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.752630] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.752886] pci_bus 0000:01: Allocating resources
[    8.752905] pci_bus 0000:02: Allocating resources
[    8.752942] pci_bus 0000:03: Allocating resources
[    8.752959] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.753858] pci_bus 0000:04: Allocating resources
[    8.753871] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.755229] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.755315] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.755443] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.755626] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.759579] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.759831] pci_bus 0000:01: Allocating resources
[    8.759852] pci_bus 0000:02: Allocating resources
[    8.759891] pci_bus 0000:03: Allocating resources
[    8.759909] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.760966] pci_bus 0000:04: Allocating resources
[    8.760984] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.761140] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.761262] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.761412] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.761619] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.761808] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.762058] pci_bus 0000:01: Allocating resources
[    8.762077] pci_bus 0000:02: Allocating resources
[    8.762114] pci_bus 0000:03: Allocating resources
[    8.762136] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.763100] pci_bus 0000:04: Allocating resources
[    8.763120] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.763252] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.763378] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.763524] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.763725] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.763909] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.764214] pci_bus 0000:01: Allocating resources
[    8.764232] pci_bus 0000:02: Allocating resources
[    8.764270] pci_bus 0000:03: Allocating resources
[    8.764293] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.765129] pci_bus 0000:04: Allocating resources
[    8.765145] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.765268] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.765391] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.765536] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.765726] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.775101] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.775363] pci_bus 0000:01: Allocating resources
[    8.775382] pci_bus 0000:02: Allocating resources
[    8.776068] pci_bus 0000:03: Allocating resources
[    8.776100] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.777054] pci_bus 0000:04: Allocating resources
[    8.777078] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.777207] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.777328] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.777468] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.777669] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.777852] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.778091] pci_bus 0000:01: Allocating resources
[    8.778110] pci_bus 0000:02: Allocating resources
[    8.778147] pci_bus 0000:03: Allocating resources
[    8.778168] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.779058] pci_bus 0000:04: Allocating resources
[    8.779078] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.779203] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.779289] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.779424] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.779606] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.779773] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.780000] pci_bus 0000:01: Allocating resources
[    8.780018] pci_bus 0000:02: Allocating resources
[    8.780054] pci_bus 0000:03: Allocating resources
[    8.780074] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.780978] pci_bus 0000:04: Allocating resources
[    8.780999] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.781146] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.781230] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.781354] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.781539] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.823821] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.824294] pci_bus 0000:01: Allocating resources
[    8.824321] pci_bus 0000:02: Allocating resources
[    8.824364] pci_bus 0000:03: Allocating resources
[    8.824392] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.825938] pci_bus 0000:04: Allocating resources
[    8.825963] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.826184] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.826344] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.826539] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.826826] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.827119] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.827487] pci_bus 0000:01: Allocating resources
[    8.827511] pci_bus 0000:02: Allocating resources
[    8.827554] pci_bus 0000:03: Allocating resources
[    8.827580] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.829185] pci_bus 0000:04: Allocating resources
[    8.829209] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.829432] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.829598] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.829798] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.830096] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.830360] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.830860] pci_bus 0000:01: Allocating resources
[    8.830885] pci_bus 0000:02: Allocating resources
[    8.830927] pci_bus 0000:03: Allocating resources
[    8.830954] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.832480] pci_bus 0000:04: Allocating resources
[    8.832509] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.832736] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.832902] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.833103] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.833526] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.845684] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.846069] pci_bus 0000:01: Allocating resources
[    8.846094] pci_bus 0000:02: Allocating resources
[    8.846136] pci_bus 0000:03: Allocating resources
[    8.846162] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.847642] pci_bus 0000:04: Allocating resources
[    8.847662] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.847876] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.848037] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.848202] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.848482] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.848762] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.849112] pci_bus 0000:01: Allocating resources
[    8.849135] pci_bus 0000:02: Allocating resources
[    8.849177] pci_bus 0000:03: Allocating resources
[    8.849202] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.850449] pci_bus 0000:04: Allocating resources
[    8.850467] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.850687] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.850856] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.851059] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.851337] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.851634] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.852019] pci_bus 0000:01: Allocating resources
[    8.852044] pci_bus 0000:02: Allocating resources
[    8.852086] pci_bus 0000:03: Allocating resources
[    8.852113] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.853691] pci_bus 0000:04: Allocating resources
[    8.853715] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.853937] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.854139] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.854311] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.854613] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.865792] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.866239] pci_bus 0000:01: Allocating resources
[    8.866273] pci_bus 0000:02: Allocating resources
[    8.866328] pci_bus 0000:03: Allocating resources
[    8.866355] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.867795] pci_bus 0000:04: Allocating resources
[    8.867820] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.868052] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.868206] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.868414] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.868677] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.868965] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.869296] pci_bus 0000:01: Allocating resources
[    8.869332] pci_bus 0000:02: Allocating resources
[    8.869387] pci_bus 0000:03: Allocating resources
[    8.869420] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.870924] pci_bus 0000:04: Allocating resources
[    8.870957] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.871185] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.871355] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.871566] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.871874] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.872183] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.872571] pci_bus 0000:01: Allocating resources
[    8.872597] pci_bus 0000:02: Allocating resources
[    8.872640] pci_bus 0000:03: Allocating resources
[    8.872666] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.874181] pci_bus 0000:04: Allocating resources
[    8.874206] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.874431] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.874596] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.874797] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.875098] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.912488] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.912915] pci_bus 0000:01: Allocating resources
[    8.912942] pci_bus 0000:02: Allocating resources
[    8.912985] pci_bus 0000:03: Allocating resources
[    8.913012] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.914472] pci_bus 0000:04: Allocating resources
[    8.914493] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.914707] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.914868] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.915061] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.915309] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.915590] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.915939] pci_bus 0000:01: Allocating resources
[    8.915963] pci_bus 0000:02: Allocating resources
[    8.916005] pci_bus 0000:03: Allocating resources
[    8.916031] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.917324] pci_bus 0000:04: Allocating resources
[    8.917374] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.917580] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.917735] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.917921] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.918193] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.918432] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.918781] pci_bus 0000:01: Allocating resources
[    8.918804] pci_bus 0000:02: Allocating resources
[    8.918846] pci_bus 0000:03: Allocating resources
[    8.918870] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.920145] pci_bus 0000:04: Allocating resources
[    8.920163] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.920334] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.920488] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.920698] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.920998] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.928065] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.928479] pci_bus 0000:01: Allocating resources
[    8.928506] pci_bus 0000:02: Allocating resources
[    8.928550] pci_bus 0000:03: Allocating resources
[    8.928577] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.930080] pci_bus 0000:04: Allocating resources
[    8.930105] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.930329] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.930495] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.930721] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.931024] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.931821] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.932449] pci_bus 0000:01: Allocating resources
[    8.932474] pci_bus 0000:02: Allocating resources
[    8.932516] pci_bus 0000:03: Allocating resources
[    8.932544] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.938098] pci_bus 0000:04: Allocating resources
[    8.938128] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.938317] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.938475] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.938667] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.938940] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.939208] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.939568] pci_bus 0000:01: Allocating resources
[    8.939590] pci_bus 0000:02: Allocating resources
[    8.939632] pci_bus 0000:03: Allocating resources
[    8.939657] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.941048] pci_bus 0000:04: Allocating resources
[    8.941067] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.941239] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.941393] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.941578] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.941848] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.950103] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.950390] pci_bus 0000:01: Allocating resources
[    8.950413] pci_bus 0000:02: Allocating resources
[    8.950452] pci_bus 0000:03: Allocating resources
[    8.950472] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.951526] pci_bus 0000:04: Allocating resources
[    8.951541] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.951704] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.951831] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.951980] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.952186] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.952346] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.952598] pci_bus 0000:01: Allocating resources
[    8.952616] pci_bus 0000:02: Allocating resources
[    8.952654] pci_bus 0000:03: Allocating resources
[    8.952673] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.953565] pci_bus 0000:04: Allocating resources
[    8.953578] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.953732] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.953852] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.957776] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.958057] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.958206] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.958449] pci_bus 0000:01: Allocating resources
[    8.958469] pci_bus 0000:02: Allocating resources
[    8.958506] pci_bus 0000:03: Allocating resources
[    8.958524] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.959426] pci_bus 0000:04: Allocating resources
[    8.959439] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.959585] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.959700] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.959833] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.960009] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.963060] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.963269] pci_bus 0000:01: Allocating resources
[    8.963288] pci_bus 0000:02: Allocating resources
[    8.963325] pci_bus 0000:03: Allocating resources
[    8.963342] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.965144] pci_bus 0000:04: Allocating resources
[    8.965162] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.965273] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.965349] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.965468] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.965634] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.965799] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.966023] pci_bus 0000:01: Allocating resources
[    8.966040] pci_bus 0000:02: Allocating resources
[    8.966077] pci_bus 0000:03: Allocating resources
[    8.966093] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.966906] pci_bus 0000:04: Allocating resources
[    8.966916] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.967043] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.967113] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.967228] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.970071] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.970208] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.970434] pci_bus 0000:01: Allocating resources
[    8.970452] pci_bus 0000:02: Allocating resources
[    8.970490] pci_bus 0000:03: Allocating resources
[    8.970507] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.971339] pci_bus 0000:04: Allocating resources
[    8.971350] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.971483] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.971559] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.971683] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.971845] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.974145] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.974655] pci_bus 0000:01: Allocating resources
[    8.974674] pci_bus 0000:02: Allocating resources
[    8.974710] pci_bus 0000:03: Allocating resources
[    8.974728] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.975537] pci_bus 0000:04: Allocating resources
[    8.975548] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.975683] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.975758] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.975883] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.976048] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.976197] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.976411] pci_bus 0000:01: Allocating resources
[    8.976428] pci_bus 0000:02: Allocating resources
[    8.976464] pci_bus 0000:03: Allocating resources
[    8.976480] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.977249] pci_bus 0000:04: Allocating resources
[    8.977259] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.980079] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.980160] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.980258] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.980421] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.980581] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.981702] pci_bus 0000:01: Allocating resources
[    8.981722] pci_bus 0000:02: Allocating resources
[    8.981760] pci_bus 0000:03: Allocating resources
[    8.981778] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.982599] pci_bus 0000:04: Allocating resources
[    8.982611] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.982743] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.982817] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.982941] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.983105] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.985974] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.986222] pci_bus 0000:01: Allocating resources
[    8.986243] pci_bus 0000:02: Allocating resources
[    8.986279] pci_bus 0000:03: Allocating resources
[    8.986296] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.987166] pci_bus 0000:04: Allocating resources
[    8.987177] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.988588] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.988707] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.988834] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.989014] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.989177] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.989401] pci_bus 0000:01: Allocating resources
[    8.989419] pci_bus 0000:02: Allocating resources
[    8.989456] pci_bus 0000:03: Allocating resources
[    8.989472] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.990291] pci_bus 0000:04: Allocating resources
[    8.990302] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.990434] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.990506] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.992762] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.992946] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.993107] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.993302] pci_bus 0000:01: Allocating resources
[    8.993321] pci_bus 0000:02: Allocating resources
[    8.993358] pci_bus 0000:03: Allocating resources
[    8.993374] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.995415] pci_bus 0000:04: Allocating resources
[    8.995433] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.995571] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.995645] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.995771] pci 0000:00:14.4: PCI bridge to [bus 04]
[    8.995935] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.000239] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.000472] pci_bus 0000:01: Allocating resources
[    9.000492] pci_bus 0000:02: Allocating resources
[    9.000528] pci_bus 0000:03: Allocating resources
[    9.000546] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.001417] pci_bus 0000:04: Allocating resources
[    9.001430] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.001567] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.001645] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.001771] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.001938] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.002089] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.002268] pci_bus 0000:01: Allocating resources
[    9.002286] pci_bus 0000:02: Allocating resources
[    9.002322] pci_bus 0000:03: Allocating resources
[    9.002339] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.003102] pci_bus 0000:04: Allocating resources
[    9.003114] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.003231] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.003306] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.003441] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.003633] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.003816] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.004119] pci_bus 0000:01: Allocating resources
[    9.004139] pci_bus 0000:02: Allocating resources
[    9.004176] pci_bus 0000:03: Allocating resources
[    9.004194] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.005140] pci_bus 0000:04: Allocating resources
[    9.005158] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.005273] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.005353] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.005472] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.005652] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.020931] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.021167] pci_bus 0000:01: Allocating resources
[    9.021186] pci_bus 0000:02: Allocating resources
[    9.021222] pci_bus 0000:03: Allocating resources
[    9.021238] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.022057] pci_bus 0000:04: Allocating resources
[    9.022068] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.022198] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.022272] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.022394] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.022554] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.023278] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.023493] pci_bus 0000:01: Allocating resources
[    9.023510] pci_bus 0000:02: Allocating resources
[    9.023547] pci_bus 0000:03: Allocating resources
[    9.023563] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.027189] pci_bus 0000:04: Allocating resources
[    9.027212] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.027345] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.027423] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.027551] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.027719] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.027889] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.028118] pci_bus 0000:01: Allocating resources
[    9.028135] pci_bus 0000:02: Allocating resources
[    9.028172] pci_bus 0000:03: Allocating resources
[    9.028187] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.028981] pci_bus 0000:04: Allocating resources
[    9.028991] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.029117] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.029189] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.029277] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.029431] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.035297] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.035541] pci_bus 0000:01: Allocating resources
[    9.035561] pci_bus 0000:02: Allocating resources
[    9.035600] pci_bus 0000:03: Allocating resources
[    9.035621] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.036448] pci_bus 0000:04: Allocating resources
[    9.036464] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.036604] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.036684] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.036815] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.036985] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.037140] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.039348] pci_bus 0000:01: Allocating resources
[    9.039370] pci_bus 0000:02: Allocating resources
[    9.039407] pci_bus 0000:03: Allocating resources
[    9.039428] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.040313] pci_bus 0000:04: Allocating resources
[    9.040325] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.040458] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.040533] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.042016] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.042202] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.042338] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.042565] pci_bus 0000:01: Allocating resources
[    9.042584] pci_bus 0000:02: Allocating resources
[    9.042622] pci_bus 0000:03: Allocating resources
[    9.042638] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.043446] pci_bus 0000:04: Allocating resources
[    9.043458] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.043589] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.043666] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.043789] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.043948] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.047517] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.047747] pci_bus 0000:01: Allocating resources
[    9.047766] pci_bus 0000:02: Allocating resources
[    9.047803] pci_bus 0000:03: Allocating resources
[    9.047820] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.048595] pci_bus 0000:04: Allocating resources
[    9.048607] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.048741] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.048817] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.048943] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.049107] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.049224] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.049431] pci_bus 0000:01: Allocating resources
[    9.049448] pci_bus 0000:02: Allocating resources
[    9.049485] pci_bus 0000:03: Allocating resources
[    9.049501] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.050252] pci_bus 0000:04: Allocating resources
[    9.050263] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.050387] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.050457] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.050574] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.054146] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.054286] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.054515] pci_bus 0000:01: Allocating resources
[    9.054534] pci_bus 0000:02: Allocating resources
[    9.054571] pci_bus 0000:03: Allocating resources
[    9.054587] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.055422] pci_bus 0000:04: Allocating resources
[    9.055433] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.055566] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.055641] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.055767] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.055928] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.059551] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.059790] pci_bus 0000:01: Allocating resources
[    9.059809] pci_bus 0000:02: Allocating resources
[    9.059846] pci_bus 0000:03: Allocating resources
[    9.059862] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.061605] pci_bus 0000:04: Allocating resources
[    9.061622] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.061768] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.061848] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.061974] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.062155] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.062288] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.062511] pci_bus 0000:01: Allocating resources
[    9.062528] pci_bus 0000:02: Allocating resources
[    9.062567] pci_bus 0000:03: Allocating resources
[    9.062584] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.063407] pci_bus 0000:04: Allocating resources
[    9.063417] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.063543] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.063615] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.063734] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.063893] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.066752] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.066990] pci_bus 0000:01: Allocating resources
[    9.067008] pci_bus 0000:02: Allocating resources
[    9.067048] pci_bus 0000:03: Allocating resources
[    9.067064] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.068644] pci_bus 0000:04: Allocating resources
[    9.068659] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.068793] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.068869] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.068993] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.069156] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.072215] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.072451] pci_bus 0000:01: Allocating resources
[    9.072469] pci_bus 0000:02: Allocating resources
[    9.072506] pci_bus 0000:03: Allocating resources
[    9.072522] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.073371] pci_bus 0000:04: Allocating resources
[    9.073382] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.073517] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.073592] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.073717] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.073881] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.074130] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.074333] pci_bus 0000:01: Allocating resources
[    9.074352] pci_bus 0000:02: Allocating resources
[    9.074389] pci_bus 0000:03: Allocating resources
[    9.074405] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.075256] pci_bus 0000:04: Allocating resources
[    9.075271] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.075415] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.075497] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.075632] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.075815] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.075983] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.076211] pci_bus 0000:01: Allocating resources
[    9.076228] pci_bus 0000:02: Allocating resources
[    9.076265] pci_bus 0000:03: Allocating resources
[    9.076286] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.077141] pci_bus 0000:04: Allocating resources
[    9.077160] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.077269] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.077371] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.077494] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.077676] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.159263] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.159657] pci_bus 0000:01: Allocating resources
[    9.159684] pci_bus 0000:02: Allocating resources
[    9.159726] pci_bus 0000:03: Allocating resources
[    9.159753] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.163012] pci_bus 0000:04: Allocating resources
[    9.163041] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.163230] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.163392] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.163588] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.163868] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.166183] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.166534] pci_bus 0000:01: Allocating resources
[    9.166559] pci_bus 0000:02: Allocating resources
[    9.166601] pci_bus 0000:03: Allocating resources
[    9.166626] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.169537] pci_bus 0000:04: Allocating resources
[    9.169562] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.169778] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.169937] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.170129] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.170373] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.174213] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.174558] pci_bus 0000:01: Allocating resources
[    9.174584] pci_bus 0000:02: Allocating resources
[    9.174625] pci_bus 0000:03: Allocating resources
[    9.174648] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.175840] pci_bus 0000:04: Allocating resources
[    9.175857] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.176045] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.176187] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.176358] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.176599] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.176847] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.177129] pci_bus 0000:01: Allocating resources
[    9.177150] pci_bus 0000:02: Allocating resources
[    9.177191] pci_bus 0000:03: Allocating resources
[    9.177213] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.178267] pci_bus 0000:04: Allocating resources
[    9.178287] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.178456] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.178584] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.178740] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.178961] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.179158] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.179399] pci_bus 0000:01: Allocating resources
[    9.179419] pci_bus 0000:02: Allocating resources
[    9.179458] pci_bus 0000:03: Allocating resources
[    9.179478] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.180532] pci_bus 0000:04: Allocating resources
[    9.180548] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.180738] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.180865] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.181016] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.181229] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.181420] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.181679] pci_bus 0000:01: Allocating resources
[    9.181698] pci_bus 0000:02: Allocating resources
[    9.181739] pci_bus 0000:03: Allocating resources
[    9.181760] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.182698] pci_bus 0000:04: Allocating resources
[    9.182715] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.182883] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.183011] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.183170] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.183363] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.194399] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.194736] pci_bus 0000:01: Allocating resources
[    9.194758] pci_bus 0000:02: Allocating resources
[    9.194796] pci_bus 0000:03: Allocating resources
[    9.194818] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.195861] pci_bus 0000:04: Allocating resources
[    9.195878] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.196041] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.196169] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.196290] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.196505] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.196700] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.196955] pci_bus 0000:01: Allocating resources
[    9.196973] pci_bus 0000:02: Allocating resources
[    9.197012] pci_bus 0000:03: Allocating resources
[    9.197033] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.202276] pci_bus 0000:04: Allocating resources
[    9.202305] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.202498] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.202642] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.202824] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.203069] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.203286] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.203616] pci_bus 0000:01: Allocating resources
[    9.203638] pci_bus 0000:02: Allocating resources
[    9.203678] pci_bus 0000:03: Allocating resources
[    9.203703] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.209009] pci_bus 0000:04: Allocating resources
[    9.209036] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.209212] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.209356] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.209527] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.209860] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.210055] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.210290] pci_bus 0000:01: Allocating resources
[    9.210309] pci_bus 0000:02: Allocating resources
[    9.210348] pci_bus 0000:03: Allocating resources
[    9.210367] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.211414] pci_bus 0000:04: Allocating resources
[    9.211434] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.211603] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.211733] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.211889] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.212215] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.212418] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.212692] pci_bus 0000:01: Allocating resources
[    9.212712] pci_bus 0000:02: Allocating resources
[    9.212751] pci_bus 0000:03: Allocating resources
[    9.212777] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.213942] pci_bus 0000:04: Allocating resources
[    9.214028] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.214207] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.214289] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.214421] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.214699] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.214866] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.215091] pci_bus 0000:01: Allocating resources
[    9.215109] pci_bus 0000:02: Allocating resources
[    9.215145] pci_bus 0000:03: Allocating resources
[    9.215165] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.215984] pci_bus 0000:04: Allocating resources
[    9.215998] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.216130] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.216206] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.216328] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.216491] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.223803] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.224157] pci_bus 0000:01: Allocating resources
[    9.224180] pci_bus 0000:02: Allocating resources
[    9.224219] pci_bus 0000:03: Allocating resources
[    9.224240] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.225265] pci_bus 0000:04: Allocating resources
[    9.225281] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.225444] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.225571] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.225725] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.225931] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.226116] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.226334] pci_bus 0000:01: Allocating resources
[    9.226353] pci_bus 0000:02: Allocating resources
[    9.226392] pci_bus 0000:03: Allocating resources
[    9.226413] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.227338] pci_bus 0000:04: Allocating resources
[    9.227353] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.227522] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.227652] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.227808] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.228030] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.228211] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.228478] pci_bus 0000:01: Allocating resources
[    9.228498] pci_bus 0000:02: Allocating resources
[    9.228537] pci_bus 0000:03: Allocating resources
[    9.228559] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.229696] pci_bus 0000:04: Allocating resources
[    9.229716] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.229883] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.230013] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.230166] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.230358] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.239532] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.239861] pci_bus 0000:01: Allocating resources
[    9.239882] pci_bus 0000:02: Allocating resources
[    9.239921] pci_bus 0000:03: Allocating resources
[    9.239943] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.242492] pci_bus 0000:04: Allocating resources
[    9.242518] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.242729] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.242828] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.242955] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.243146] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.243328] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.243563] pci_bus 0000:01: Allocating resources
[    9.243583] pci_bus 0000:02: Allocating resources
[    9.243621] pci_bus 0000:03: Allocating resources
[    9.243639] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.244658] pci_bus 0000:04: Allocating resources
[    9.244678] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.244835] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.244953] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.245093] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.245268] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.245452] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.245700] pci_bus 0000:01: Allocating resources
[    9.245719] pci_bus 0000:02: Allocating resources
[    9.245756] pci_bus 0000:03: Allocating resources
[    9.245774] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.246656] pci_bus 0000:04: Allocating resources
[    9.246672] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.246821] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.246937] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.247074] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.247267] pci 0000:00:14.4: PCI bridge to [bus 04]
[    9.253786] input: PS/2 Generic Mouse as
/devices/platform/i8042/serio2/input/input20
[    9.258203] mousedev: PS/2 mouse device common for all mice
[   10.033943] psmouse serio3: synaptics: queried max coordinates: x
[..5660], y [..4700]
[   10.066405] psmouse serio3: synaptics: queried min coordinates: x
[1366..], y [1236..]
[   10.124188] psmouse serio3: synaptics: Touchpad model: 1, fw: 8.1,
id: 0x1e2b1, caps: 0xd00123/0x840300/0x26800/0x0, board id: 2769, fw
id: 1673117
[   10.165675] input: SynPS/2 Synaptics TouchPad as
/devices/platform/i8042/serio3/input/input23
[   10.760549] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.761093] pci_bus 0000:01: Allocating resources
[   10.761120] pci_bus 0000:02: Allocating resources
[   10.761162] pci_bus 0000:03: Allocating resources
[   10.761286] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.762656] pci_bus 0000:04: Allocating resources
[   10.762677] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.762891] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.763052] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.763245] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.763522] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.763799] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.768331] pci_bus 0000:01: Allocating resources
[   10.768359] pci_bus 0000:02: Allocating resources
[   10.768402] pci_bus 0000:03: Allocating resources
[   10.768531] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.769984] pci_bus 0000:04: Allocating resources
[   10.770005] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.770219] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.770378] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.770573] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.773970] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.774336] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.774810] pci_bus 0000:01: Allocating resources
[   10.774836] pci_bus 0000:02: Allocating resources
[   10.774878] pci_bus 0000:03: Allocating resources
[   10.775000] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.776397] pci_bus 0000:04: Allocating resources
[   10.776416] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.776628] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.776797] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.776992] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.777272] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.777525] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.777972] pci_bus 0000:01: Allocating resources
[   10.777995] pci_bus 0000:02: Allocating resources
[   10.778037] pci_bus 0000:03: Allocating resources
[   10.778158] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.784787] pci_bus 0000:04: Allocating resources
[   10.784817] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.786267] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.787219] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.787506] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.787832] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.788114] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.788625] pci_bus 0000:01: Allocating resources
[   10.788653] pci_bus 0000:02: Allocating resources
[   10.788696] pci_bus 0000:03: Allocating resources
[   10.788826] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.793898] pci_bus 0000:04: Allocating resources
[   10.793927] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.794268] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.794443] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.794648] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.794956] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.795265] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.795745] pci_bus 0000:01: Allocating resources
[   10.795770] pci_bus 0000:02: Allocating resources
[   10.795813] pci_bus 0000:03: Allocating resources
[   10.795936] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.797381] pci_bus 0000:04: Allocating resources
[   10.797407] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.797630] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.797795] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.797996] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.798297] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.798561] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.799103] pci_bus 0000:01: Allocating resources
[   10.799127] pci_bus 0000:02: Allocating resources
[   10.799170] pci_bus 0000:03: Allocating resources
[   10.799296] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.800738] pci_bus 0000:04: Allocating resources
[   10.800763] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.800988] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.801153] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.801324] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.801627] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.801925] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.802337] pci_bus 0000:01: Allocating resources
[   10.802362] pci_bus 0000:02: Allocating resources
[   10.802404] pci_bus 0000:03: Allocating resources
[   10.802527] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.803940] pci_bus 0000:04: Allocating resources
[   10.803964] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.804259] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.804425] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.804627] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.804934] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.805211] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.805685] pci_bus 0000:01: Allocating resources
[   10.805710] pci_bus 0000:02: Allocating resources
[   10.805752] pci_bus 0000:03: Allocating resources
[   10.805875] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.807320] pci_bus 0000:04: Allocating resources
[   10.807371] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.807625] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.807790] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.807994] pci 0000:00:14.4: PCI bridge to [bus 04]
[   10.808306] pci 0000:00:14.4: PCI bridge to [bus 04]
[   17.692995] random: crng init done
[   20.792436] pci 0000:00:14.4: PCI bridge to [bus 04]
[   20.792801] pci_bus 0000:01: Allocating resources
[   20.792821] pci_bus 0000:02: Allocating resources
[   20.792859] pci_bus 0000:03: Allocating resources
[   20.792978] pci 0000:00:14.4: PCI bridge to [bus 04]
[   20.794046] pci_bus 0000:04: Allocating resources
[   20.794071] pci 0000:00:14.4: PCI bridge to [bus 04]
[   20.794245] pci 0000:00:14.4: PCI bridge to [bus 04]
[   20.794388] pci 0000:00:14.4: PCI bridge to [bus 04]
[   20.794529] pci 0000:00:14.4: PCI bridge to [bus 04]
[   20.794735] pci 0000:00:14.4: PCI bridge to [bus 04]
[   24.358710] fuse init (API version 7.26)
[   68.463849] AMD-Vi: Event logged [
[   68.463862] INVALID_DEVICE_REQUEST device=00:00.1
address=0x000000fdf80c0020 flags=0x0a00]
[   80.699496] pci 0000:00:14.4: PCI bridge to [bus 04]
[   80.699941] pci_bus 0000:01: Allocating resources
[   80.699963] pci_bus 0000:02: Allocating resources
[   80.699983] pci_bus 0000:03: Allocating resources
[   80.700101] pci 0000:00:14.4: PCI bridge to [bus 04]
[   80.701296] pci_bus 0000:04: Allocating resources
[   80.701316] pci 0000:00:14.4: PCI bridge to [bus 04]
[   80.701463] pci 0000:00:14.4: PCI bridge to [bus 04]
[   80.701603] pci 0000:00:14.4: PCI bridge to [bus 04]
[   80.701768] pci 0000:00:14.4: PCI bridge to [bus 04]
[   80.702001] pci 0000:00:14.4: PCI bridge to [bus 04]
[  132.572808] MAC Address = 98:de:d0:15:74:c5
[  132.584012] IPv6: ADDRCONF(NETDEV_UP): wlp0s16f1u1: link is not ready
[  133.900817] R8188EU: ERROR assoc success
[  133.907860] IPv6: ADDRCONF(NETDEV_CHANGE): wlp0s16f1u1: link becomes ready
[  140.699401] pci 0000:00:14.4: PCI bridge to [bus 04]
[  140.699783] pci_bus 0000:01: Allocating resources
[  140.699805] pci_bus 0000:02: Allocating resources
[  140.699844] pci_bus 0000:03: Allocating resources
[  140.699960] pci 0000:00:14.4: PCI bridge to [bus 04]
[  140.700937] pci_bus 0000:04: Allocating resources
[  140.700959] pci 0000:00:14.4: PCI bridge to [bus 04]
[  140.701129] pci 0000:00:14.4: PCI bridge to [bus 04]
[  140.701238] pci 0000:00:14.4: PCI bridge to [bus 04]
[  140.701372] pci 0000:00:14.4: PCI bridge to [bus 04]
[  140.701585] pci 0000:00:14.4: PCI bridge to [bus 04]
[  200.840849] pci 0000:00:14.4: PCI bridge to [bus 04]
[  200.841225] pci_bus 0000:01: Allocating resources
[  200.841247] pci_bus 0000:02: Allocating resources
[  200.841286] pci_bus 0000:03: Allocating resources
[  200.841402] pci 0000:00:14.4: PCI bridge to [bus 04]
[  200.842364] pci_bus 0000:04: Allocating resources
[  200.842382] pci 0000:00:14.4: PCI bridge to [bus 04]
[  200.842546] pci 0000:00:14.4: PCI bridge to [bus 04]
[  200.842649] pci 0000:00:14.4: PCI bridge to [bus 04]
[  200.842780] pci 0000:00:14.4: PCI bridge to [bus 04]
[  200.842980] pci 0000:00:14.4: PCI bridge to [bus 04]
[  240.386376] bcma: bus0: Found chip with id 43228, rev 0x00 and package 0x08
[  240.386403] bcma: bus0: Core 0 found: ChipCommon (manuf 0x4BF, id
0x800, rev 0x25, class 0x0)
[  240.386423] bcma: bus0: Core 1 found: IEEE 802.11 (manuf 0x4BF, id
0x812, rev 0x1E, class 0x0)
[  240.386461] bcma: bus0: Core 2 found: PCIe (manuf 0x4BF, id 0x820,
rev 0x12, class 0x0)
[  240.386480] bcma: bus0: Core 3 found: SDIO Device (manuf 0x4BF, id
0x829, rev 0x07, class 0x0)
[  240.399862] bcma: bus0: Bus registered
[  240.412009] b43-phy1: Broadcom 43228 WLAN found (core revision 30)
[  240.412952] b43-phy1: Found PHY: Analog 9, Type 4 (N), Revision 16
[  240.412961] b43-phy1: Found Radio: Manuf 0x17F, ID 0x2057, Revision
9, Version 1
[  240.414428] Broadcom 43xx driver loaded [ Features: PNLS ]
[  240.428808] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
[  240.432605] b43 bcma0:1 wlp2s0b1: renamed from wlan0
[  260.875584] pci 0000:00:14.4: PCI bridge to [bus 04]
[  260.876045] pci_bus 0000:01: Allocating resources
[  260.876067] pci_bus 0000:02: Allocating resources
[  260.876104] pci_bus 0000:03: Allocating resources
[  260.876225] pci 0000:00:14.4: PCI bridge to [bus 04]
[  260.877173] pci_bus 0000:04: Allocating resources
[  260.877196] pci 0000:00:14.4: PCI bridge to [bus 04]
[  260.877354] pci 0000:00:14.4: PCI bridge to [bus 04]
[  260.877482] pci 0000:00:14.4: PCI bridge to [bus 04]
[  260.877598] pci 0000:00:14.4: PCI bridge to [bus 04]
[  260.880741] pci 0000:00:14.4: PCI bridge to [bus 04]
[  268.994696] b43-phy1: Loading firmware version 784.2 (2012-08-15 21:35:19)
[  269.148745] IPv6: ADDRCONF(NETDEV_UP): wlp2s0b1: link is not ready
[  279.688569] AMD-Vi: Event logged [
[  279.688582] INVALID_DEVICE_REQUEST device=00:00.1
address=0x000000fdf80c0020 flags=0x0a00]
[  305.608500] pci 0000:00:14.4: PCI bridge to [bus 04]
[  305.608861] pci_bus 0000:01: Allocating resources
[  305.608881] pci_bus 0000:02: Allocating resources
[  305.608898] pci_bus 0000:03: Allocating resources
[  305.609013] pci 0000:00:14.4: PCI bridge to [bus 04]
[  305.609905] pci_bus 0000:04: Allocating resources
[  305.609926] pci 0000:00:14.4: PCI bridge to [bus 04]
[  305.610051] pci 0000:00:14.4: PCI bridge to [bus 04]
[  305.610132] pci 0000:00:14.4: PCI bridge to [bus 04]
[  305.610236] pci 0000:00:14.4: PCI bridge to [bus 04]
[  305.610444] pci 0000:00:14.4: PCI bridge to [bus 04]
[  320.848155] pci 0000:00:14.4: PCI bridge to [bus 04]
[  320.848559] pci_bus 0000:01: Allocating resources
[  320.848579] pci_bus 0000:02: Allocating resources
[  320.848597] pci_bus 0000:03: Allocating resources
[  320.848718] pci 0000:00:14.4: PCI bridge to [bus 04]
[  320.849579] pci_bus 0000:04: Allocating resources
[  320.849602] pci 0000:00:14.4: PCI bridge to [bus 04]
[  320.849727] pci 0000:00:14.4: PCI bridge to [bus 04]
[  320.849810] pci 0000:00:14.4: PCI bridge to [bus 04]
[  320.849915] pci 0000:00:14.4: PCI bridge to [bus 04]
[  320.850084] pci 0000:00:14.4: PCI bridge to [bus 04]
[  358.257410] pci 0000:00:14.4: PCI bridge to [bus 04]
[  358.257747] pci_bus 0000:01: Allocating resources
[  358.257767] pci_bus 0000:02: Allocating resources
[  358.257784] pci_bus 0000:03: Allocating resources
[  358.257898] pci 0000:00:14.4: PCI bridge to [bus 04]
[  358.258673] pci_bus 0000:04: Allocating resources
[  358.258690] pci 0000:00:14.4: PCI bridge to [bus 04]
[  358.258803] pci 0000:00:14.4: PCI bridge to [bus 04]
[  358.258885] pci 0000:00:14.4: PCI bridge to [bus 04]
[  358.258986] pci 0000:00:14.4: PCI bridge to [bus 04]
[  358.259133] pci 0000:00:14.4: PCI bridge to [bus 04]
[  418.258376] pci 0000:00:14.4: PCI bridge to [bus 04]
[  418.258709] pci_bus 0000:01: Allocating resources
[  418.258729] pci_bus 0000:02: Allocating resources
[  418.258746] pci_bus 0000:03: Allocating resources
[  418.258861] pci 0000:00:14.4: PCI bridge to [bus 04]
[  418.259688] pci_bus 0000:04: Allocating resources
[  418.259708] pci 0000:00:14.4: PCI bridge to [bus 04]
[  418.259830] pci 0000:00:14.4: PCI bridge to [bus 04]
[  418.259918] pci 0000:00:14.4: PCI bridge to [bus 04]
[  418.260030] pci 0000:00:14.4: PCI bridge to [bus 04]
[  418.260201] pci 0000:00:14.4: PCI bridge to [bus 04]
[  478.275321] pci 0000:00:14.4: PCI bridge to [bus 04]
[  478.275675] pci_bus 0000:01: Allocating resources
[  478.275695] pci_bus 0000:02: Allocating resources
[  478.275712] pci_bus 0000:03: Allocating resources
[  478.275827] pci 0000:00:14.4: PCI bridge to [bus 04]
[  478.276615] pci_bus 0000:04: Allocating resources
[  478.276631] pci 0000:00:14.4: PCI bridge to [bus 04]
[  478.276774] pci 0000:00:14.4: PCI bridge to [bus 04]
[  478.276857] pci 0000:00:14.4: PCI bridge to [bus 04]
[  478.276960] pci 0000:00:14.4: PCI bridge to [bus 04]
[  478.277117] pci 0000:00:14.4: PCI bridge to [bus 04]
[  538.283818] pci 0000:00:14.4: PCI bridge to [bus 04]
[  538.284170] pci_bus 0000:01: Allocating resources
[  538.284190] pci_bus 0000:02: Allocating resources
[  538.284207] pci_bus 0000:03: Allocating resources
[  538.284327] pci 0000:00:14.4: PCI bridge to [bus 04]
[  538.285181] pci_bus 0000:04: Allocating resources
[  538.285201] pci 0000:00:14.4: PCI bridge to [bus 04]
[  538.285320] pci 0000:00:14.4: PCI bridge to [bus 04]
[  538.285410] pci 0000:00:14.4: PCI bridge to [bus 04]
[  538.285524] pci 0000:00:14.4: PCI bridge to [bus 04]
[  538.285701] pci 0000:00:14.4: PCI bridge to [bus 04]
[  598.218357] pci 0000:00:14.4: PCI bridge to [bus 04]
[  598.218700] pci_bus 0000:01: Allocating resources
[  598.218721] pci_bus 0000:02: Allocating resources
[  598.218738] pci_bus 0000:03: Allocating resources
[  598.218854] pci 0000:00:14.4: PCI bridge to [bus 04]
[  598.219658] pci_bus 0000:04: Allocating resources
[  598.219677] pci 0000:00:14.4: PCI bridge to [bus 04]
[  598.219794] pci 0000:00:14.4: PCI bridge to [bus 04]
[  598.219874] pci 0000:00:14.4: PCI bridge to [bus 04]
[  598.219977] pci 0000:00:14.4: PCI bridge to [bus 04]
[  598.220124] pci 0000:00:14.4: PCI bridge to [bus 04]
[  658.201893] pci 0000:00:14.4: PCI bridge to [bus 04]
[  658.202209] pci_bus 0000:01: Allocating resources
[  658.202229] pci_bus 0000:02: Allocating resources
[  658.202245] pci_bus 0000:03: Allocating resources
[  658.202358] pci 0000:00:14.4: PCI bridge to [bus 04]
[  658.203131] pci_bus 0000:04: Allocating resources
[  658.203145] pci 0000:00:14.4: PCI bridge to [bus 04]
[  658.203262] pci 0000:00:14.4: PCI bridge to [bus 04]
[  658.203344] pci 0000:00:14.4: PCI bridge to [bus 04]
[  658.203445] pci 0000:00:14.4: PCI bridge to [bus 04]
[  658.203593] pci 0000:00:14.4: PCI bridge to [bus 04]
[  718.247298] pci 0000:00:14.4: PCI bridge to [bus 04]
[  718.247613] pci_bus 0000:01: Allocating resources
[  718.247633] pci_bus 0000:02: Allocating resources
[  718.247650] pci_bus 0000:03: Allocating resources
[  718.247762] pci 0000:00:14.4: PCI bridge to [bus 04]
[  718.265453] pci_bus 0000:04: Allocating resources
[  718.265478] pci 0000:00:14.4: PCI bridge to [bus 04]
[  718.265597] pci 0000:00:14.4: PCI bridge to [bus 04]
[  718.265729] pci 0000:00:14.4: PCI bridge to [bus 04]
[  718.265832] pci 0000:00:14.4: PCI bridge to [bus 04]
[  718.265984] pci 0000:00:14.4: PCI bridge to [bus 04]
[  778.243907] pci 0000:00:14.4: PCI bridge to [bus 04]
[  778.244280] pci_bus 0000:01: Allocating resources
[  778.244302] pci_bus 0000:02: Allocating resources
[  778.244321] pci_bus 0000:03: Allocating resources
[  778.244439] pci 0000:00:14.4: PCI bridge to [bus 04]
[  778.245467] pci_bus 0000:04: Allocating resources
[  778.245499] pci 0000:00:14.4: PCI bridge to [bus 04]
[  778.245650] pci 0000:00:14.4: PCI bridge to [bus 04]
[  778.245754] pci 0000:00:14.4: PCI bridge to [bus 04]
[  778.245883] pci 0000:00:14.4: PCI bridge to [bus 04]
[  778.246080] pci 0000:00:14.4: PCI bridge to [bus 04]
[  838.202839] pci 0000:00:14.4: PCI bridge to [bus 04]
[  838.203213] pci_bus 0000:01: Allocating resources
[  838.203235] pci_bus 0000:02: Allocating resources
[  838.203254] pci_bus 0000:03: Allocating resources
[  838.203371] pci 0000:00:14.4: PCI bridge to [bus 04]
[  838.204456] pci_bus 0000:04: Allocating resources
[  838.204479] pci 0000:00:14.4: PCI bridge to [bus 04]
[  838.204625] pci 0000:00:14.4: PCI bridge to [bus 04]
[  838.204727] pci 0000:00:14.4: PCI bridge to [bus 04]
[  838.204856] pci 0000:00:14.4: PCI bridge to [bus 04]
[  838.205062] pci 0000:00:14.4: PCI bridge to [bus 04]
[  898.210864] pci 0000:00:14.4: PCI bridge to [bus 04]
[  898.211318] pci_bus 0000:01: Allocating resources
[  898.211341] pci_bus 0000:02: Allocating resources
[  898.211360] pci_bus 0000:03: Allocating resources
[  898.211485] pci 0000:00:14.4: PCI bridge to [bus 04]
[  898.212502] pci_bus 0000:04: Allocating resources
[  898.212530] pci 0000:00:14.4: PCI bridge to [bus 04]
[  898.212679] pci 0000:00:14.4: PCI bridge to [bus 04]
[  898.212785] pci 0000:00:14.4: PCI bridge to [bus 04]
[  898.212912] pci 0000:00:14.4: PCI bridge to [bus 04]
[  898.213115] pci 0000:00:14.4: PCI bridge to [bus 04]
[  958.249399] pci 0000:00:14.4: PCI bridge to [bus 04]
[  958.249818] pci_bus 0000:01: Allocating resources
[  958.249839] pci_bus 0000:02: Allocating resources
[  958.249856] pci_bus 0000:03: Allocating resources
[  958.249975] pci 0000:00:14.4: PCI bridge to [bus 04]
[  958.250910] pci_bus 0000:04: Allocating resources
[  958.250932] pci 0000:00:14.4: PCI bridge to [bus 04]
[  958.251106] pci 0000:00:14.4: PCI bridge to [bus 04]
[  958.251215] pci 0000:00:14.4: PCI bridge to [bus 04]
[  958.251328] pci 0000:00:14.4: PCI bridge to [bus 04]
[  958.251521] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1018.236427] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1018.236742] pci_bus 0000:01: Allocating resources
[ 1018.236761] pci_bus 0000:02: Allocating resources
[ 1018.236777] pci_bus 0000:03: Allocating resources
[ 1018.236889] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1018.237685] pci_bus 0000:04: Allocating resources
[ 1018.237701] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1018.237812] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1018.237891] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1018.237990] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1018.238135] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1078.147007] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1078.147357] pci_bus 0000:01: Allocating resources
[ 1078.147378] pci_bus 0000:02: Allocating resources
[ 1078.147395] pci_bus 0000:03: Allocating resources
[ 1078.147512] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1078.148401] pci_bus 0000:04: Allocating resources
[ 1078.148425] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1078.148554] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1078.148663] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1078.148771] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1078.148937] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1138.186072] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1138.186390] pci_bus 0000:01: Allocating resources
[ 1138.186410] pci_bus 0000:02: Allocating resources
[ 1138.186427] pci_bus 0000:03: Allocating resources
[ 1138.186541] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1138.187333] pci_bus 0000:04: Allocating resources
[ 1138.187349] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1138.187463] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1138.187544] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1138.187660] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1138.187810] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1198.240403] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1198.240739] pci_bus 0000:01: Allocating resources
[ 1198.240760] pci_bus 0000:02: Allocating resources
[ 1198.240778] pci_bus 0000:03: Allocating resources
[ 1198.240894] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1198.241785] pci_bus 0000:04: Allocating resources
[ 1198.241822] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1198.241951] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1198.242041] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1198.242168] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1198.242344] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1258.235453] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1258.235803] pci_bus 0000:01: Allocating resources
[ 1258.235822] pci_bus 0000:02: Allocating resources
[ 1258.235839] pci_bus 0000:03: Allocating resources
[ 1258.235951] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1258.236781] pci_bus 0000:04: Allocating resources
[ 1258.236797] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1258.236911] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1258.236992] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1258.237108] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1258.237256] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1318.223981] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1318.224314] pci_bus 0000:01: Allocating resources
[ 1318.224334] pci_bus 0000:02: Allocating resources
[ 1318.224351] pci_bus 0000:03: Allocating resources
[ 1318.224468] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1318.225366] pci_bus 0000:04: Allocating resources
[ 1318.225389] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1318.225572] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1318.225662] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1318.225772] pci 0000:00:14.4: PCI bridge to [bus 04]
[ 1318.225949] pci 0000:00:14.4: PCI bridge to [bus 04]

---
Andrew Crouthamel
