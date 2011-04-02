From: Szymon Zygmunt <szymon.zygmunt@gmail.com>
Date: Sat, 02 Apr 2011 23:48:36 +0200
Subject: [Bug]No probe response from after 500ms, disconnecting.
Message-ID: <1301780916.5200.31.camel@acer.lan>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi.

1. A description of the problem at hand:
Last time I changed my wireless card and I have problems with wireless
link when I copy large files over lan. Link is broken after some part of
file (eg. 50 - 200 MB) and I have to reload my b43 driver (modprobe -r
b43, modprobe b43). After that connection work again for a while and
situation is repeated.

2. When it happens:
Always when I copy large file from my ftp (sets on openwrt box) to my PC
over wifi.

3. How to reproduce:
Start to operation with high transmission rates (eg. copy larg file)

4. The output of the following commands:
a) uname -a
Linux acer 2.6.36-gentoo-r5 #21 Tue Mar 29 13:56:48 CEST 2011 i686
Intel(R) Celeron(R) M processor 1.50GHz GenuineIntel GNU/Linux

b) lspci -vvn |grep 43 -A7
	Prefetchable memory behind bridge: 0000000040000000-0000000043ffffff
	Secondary status: 66MHz- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort+ <SERR- <PERR-
	BridgeCtl: Parity- SERR- NoISA+ VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [50] Subsystem: 1025:006a

00:1e.2 0401: 8086:266e (rev 03)
	Subsystem: 1025:006a
--
06:05.0 0280: 14e4:4318 (rev 02)
	Subsystem: 17f9:0006
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
	Latency: 32
	Interrupt: pin A routed to IRQ 10
	Region 0: Memory@b0100000 (32-bit, non-prefetchable) [size=8K]
	Kernel driver in use: b43-pci-bridge
	Kernel modules: ssb

06:07.0 0200: 10ec:8139 (rev 10)
	Subsystem: 1025:006a
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 32 (8000ns min, 16000ns max)
--
	Memory window 0: 40000000-43fff000 (prefetchable)
	Memory window 1: 48000000-4bfff000 (prefetchable)
	I/O window 0: 00003400-000034ff
	I/O window 1: 00003800-000038ff
	BridgeCtl: Parity- SERR- ISA- VGA- MAbort- >Reset+ 16bInt+ PostWrite-
	16-bit legacy interface ports at 0001

c) dmesg
Linux version 2.6.36-gentoo-r5 (root at acer) (gcc version 4.4.5 (Gentoo
4.4.5 p1.2
, pie-0.4.5) ) #21 Tue Mar 29 13:56:48 CEST 2011
BIOS-provided physical RAM map:
 BIOS-e820: 0000000000000000 - 000000000009f800 (usable)
 BIOS-e820: 000000000009f800 - 00000000000a0000 (reserved)
 BIOS-e820: 00000000000dc000 - 0000000000100000 (reserved)
 BIOS-e820: 0000000000100000 - 000000003f6e0000 (usable)
 BIOS-e820: 000000003f6e0000 - 000000003f6ea000 (ACPI data)
 BIOS-e820: 000000003f6ea000 - 000000003f700000 (ACPI NVS)
 BIOS-e820: 000000003f700000 - 0000000040000000 (reserved)
 BIOS-e820: 00000000e0000000 - 00000000f0006000 (reserved)
 BIOS-e820: 00000000f0008000 - 00000000f000c000 (reserved)
 BIOS-e820: 00000000fed20000 - 00000000fed90000 (reserved)
 BIOS-e820: 00000000ff000000 - 0000000100000000 (reserved)
Notice: NX (Execute Disable) protection cannot be enabled: non-PAE
kernel!
DMI present.
Phoenix BIOS detected: BIOS may corrupt low RAM, working around it.
e820 update range: 0000000000000000 - 0000000000010000 (usable) ==>
(reserved)
e820 update range: 0000000000000000 - 0000000000001000 (usable) ==>
(reserved)
e820 remove range: 00000000000a0000 - 0000000000100000 (usable)
last_pfn = 0x3f6e0 max_arch_pfn = 0x100000
MTRR default type: uncachable
MTRR fixed ranges enabled:
  00000-9FFFF write-back
  A0000-BFFFF uncachable
  C0000-CFFFF write-protect
  D0000-E3FFF uncachable
  E4000-FFFFF write-protect
MTRR variable ranges enabled:
  0 base 000000000 mask FC0000000 write-back
  1 base 03F700000 mask FFFF00000 uncachable
  2 base 03F800000 mask FFF800000 uncachable
  3 disabled
  4 disabled
  5 disabled
  6 disabled
  7 disabled
PAT not supported by CPU.
initial memory mapped : 0 - 00800000
init_memory_mapping: 0000000000000000-00000000377fe000
 0000000000 - 0000400000 page 4k
 0000400000 - 0037400000 page 2M
 0037400000 - 00377fe000 page 4k
kernel direct mapping tables up to 377fe000 @ 14000-19000
RAMDISK: 37ef5000 - 37ff0000
Allocated new RAMDISK: 00493000 - 0058dfbc
Move RAMDISK from 0000000037ef5000 - 0000000037feffbb to 00493000 -
0058dfbb
ACPI: RSDP 000f7a10 00014 (v00 PTLTD )
ACPI: RSDT 3f6e5e2d 0003C (v01 PTLTD    RSDT   06040000  LTP 00000000)
ACPI: FACP 3f6e9e78 00084 (v02 INTEL  ALVISO   06040000 LOHR 0000005F)
ACPI: DSDT 3f6e6246 03C32 (v01 INTEL  ALVISO   06040000 MSFT 0100000E)
ACPI: FACS 3f6fafc0 00040
ACPI: APIC 3f6e9efc 00068 (v01 INTEL  ALVISO   06040000 LOHR 0000005F)
ACPI: BOOT 3f6e9fd8 00028 (v01 PTLTD  $SBFTBL$ 06040000  LTP 00000001)
ACPI: MCFG 3f6e9f9c 0003C (v01 INTEL  ALVISO   06040000 LOHR 0000005F)
ACPI: SSDT 3f6e6064 001DE (v01  PmRef  Cpu0Cst 00003001 INTL 20030224)
ACPI: SSDT 3f6e5e69 001FB (v01  PmRef    CpuPm 00003000 INTL 20030224)
126MB HIGHMEM available.
887MB LOWMEM available.
  mapped low ram: 0 - 377fe000
  low ram: 0 - 377fe000
Zone PFN ranges:
  DMA      0x00000010 -> 0x00001000
  Normal   0x00001000 -> 0x000377fe
  HighMem  0x000377fe -> 0x0003f6e0
Movable zone start PFN for each node
early_node_map[2] active PFN ranges
    0: 0x00000010 -> 0x0000009f
    0: 0x00000100 -> 0x0003f6e0On node 0 totalpages: 259695
free_area_init_node: node 0, pgdat c0415e34, node_mem_map c1001200
  DMA zone: 32 pages used for memmap
  DMA zone: 0 pages reserved
  DMA zone: 3951 pages, LIFO batch:0
  Normal zone: 1744 pages used for memmap
  Normal zone: 221486 pages, LIFO batch:31
  HighMem zone: 254 pages used for memmap
  HighMem zone: 32228 pages, LIFO batch:7
ACPI: PM-Timer IO Port: 0x1008
PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
PM: Registered nosave memory: 00000000000a0000 - 00000000000dc000
PM: Registered nosave memory: 00000000000dc000 - 0000000000100000
Allocating PCI resources starting at 40000000 (gap: 40000000:a0000000)
early_res array is doubled to 64 at [15000 - 157ff]
Built 1 zonelists in Zone order, mobility grouping on.  Total pages:
257665
Kernel command line: root=/dev/sda5 logo.nologo
splash=verbose,theme:BlueCurls splash=silent quiet console=tty1
PID hash table entries: 4096 (order: 2, 16384 bytes)
Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
Enabling fast FPU save and restore... done.
Enabling unmasked SIMD FPU exception support... done.
Initializing CPU#0
Subtract (33 early reservations)
  #1 [0000100000 - 000048f3d0]   TEXT DATA BSS
  #2 [000009f800 - 0000100000]   BIOS reserved
  #3 [0000490000 - 00004921b0]             BRK
  #4 [0000010000 - 0000014000]     ACPI WAKEUP
  #5 [0000014000 - 0000015000]         PGTABLE
  #6 [0000493000 - 000058e000]     NEW RAMDISK
  #7 [0001000000 - 0001001000]         BOOTMEM
  #8 [0001001000 - 00017f1000]         BOOTMEM
  #9 [00017f1000 - 00017f1004]         BOOTMEM
  #10 [00017f1020 - 00017f10a0]         BOOTMEM
  #11 [00017f10a0 - 00017f10f4]         BOOTMEM
  #12 [00017f1100 - 00017f3100]         BOOTMEM
  #13 [00017f3100 - 00017f310c]         BOOTMEM
  #14 [00017f3120 - 00017f3520]         BOOTMEM
  #15 [00017f3520 - 00017f3670]         BOOTMEM
  #16 [00017f3680 - 00017f36c0]         BOOTMEM
  #17 [00017f36c0 - 00017f3700]         BOOTMEM
  #18 [00017f3700 - 00017f3740]         BOOTMEM
  #19 [00017f3740 - 00017f3780]         BOOTMEM
  #20 [00017f3780 - 00017f37c0]         BOOTMEM
  #21 [00017f37c0 - 00017f3800]         BOOTMEM
  #22 [00017f3800 - 00017f3840]         BOOTMEM
  #23 [00017f3840 - 00017f3880]         BOOTMEM
  #24 [00017f3880 - 00017f38c0]         BOOTMEM
  #25 [00017f38c0 - 00017f3900]         BOOTMEM
  #26 [00017f3900 - 00017f3940]         BOOTMEM
  #27 [00017f3940 - 00017f3950]         BOOTMEM
  #28 [00017f3960 - 00017f39bb]         BOOTMEM
  #29 [00017f39c0 - 00017f3a1b]         BOOTMEM
  #30 [00017f3a20 - 00017f7a20]         BOOTMEM
  #31 [00017f7a20 - 0001877a20]         BOOTMEM
  #32 [0001877a20 - 00018b7a20]         BOOTMEM
Initializing HighMem for node 0 (000377fe:0003f6e0)
Memory: 1025168k/1039232k available (2183k kernel code, 13612k reserved,
984k data, 272k init, 129928k highmem)
virtual kernel memory layout:
    fixmap  : 0xfffe4000 - 0xfffff000   ( 108 kB)
    pkmap   : 0xff800000 - 0xffc00000   (4096 kB)
    vmalloc : 0xf7ffe000 - 0xff7fe000   ( 120 MB)
    lowmem  : 0xc0000000 - 0xf77fe000   ( 887 MB)
      .init : 0xc0418000 - 0xc045c000   ( 272 kB)
      .data : 0xc0321eb1 - 0xc0417ecc   ( 984 kB)
      .text : 0xc0100000 - 0xc0321eb1   (2183 kB)
Checking if this processor honours the WP bit even in supervisor
mode...Ok.
Hierarchical RCU implementation.
        RCU-based detection of stalled CPUs is disabled.
        Verbose stalled-CPUs detection is disabled.
NR_IRQS:16
Console: colour VGA+ 80x25
console [tty1] enabled
Fast TSC calibration using PIT
Detected 1496.437 MHz processor.
Calibrating delay loop (skipped), value calculated using timer
frequency.. 2992.87 BogoMIPS (lpj=14964370)
pid_max: default: 32768 minimum: 301
Mount-cache hash table entries: 512
mce: CPU supports 5 MCE banks
Performance Events: p6 PMU driver.
... version:                0
... bit width:              32
... generic registers:      2
... value mask:             00000000ffffffff
... max period:             000000007fffffff
... fixed-purpose events:   0
... event mask:             0000000000000003
CPU: Intel(R) Celeron(R) M processor         1.50GHz stepping 08
ACPI: Core revision 20100702
ACPI: setting ELCR to 0200 (from 0c00)
NET: Registered protocol family 16
ACPI: bus type pci registered
PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000-0xefffffff]
(base 0xe0000000)
PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in E820
PCI: Using MMCONFIG for extended config space
PCI: Using configuration type 1 for base access
bio: create slab <bio-0> at 0
ACPI: EC: Look up EC in DSDT
ACPI: Interpreter enabled
ACPI: (supports S0 S3 S4 S5)
ACPI: Using PIC for interrupt routing
ACPI: EC: GPE = 0x17, I/O: command/status = 0x66, data = 0x62
PCI: Ignoring host bridge windows from ACPI; if necessary, use
"pci=use_crs" and report a bug
ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
pci_root PNP0A08:00: host bridge window [io  0x0000-0x0cf7] (ignored)
pci_root PNP0A08:00: host bridge window [io  0x0d00-0xffff] (ignored)
pci_root PNP0A08:00: host bridge window [mem 0x000a0000-0x000bffff]
(ignored)
pci_root PNP0A08:00: host bridge window [mem 0x000d0000-0x000d3fff]
(ignored)
pci_root PNP0A08:00: host bridge window [mem 0x000d4000-0x000d7fff]
(ignored)
pci_root PNP0A08:00: host bridge window [mem 0x000d8000-0x000dbfff]
(ignored)
pci_root PNP0A08:00: host bridge window [mem 0x40000000-0xfebfffff]
(ignored)
pci 0000:00:02.0: reg 10: [mem 0xb0080000-0xb00fffff]
pci 0000:00:02.0: reg 14: [io  0x1800-0x1807]
pci 0000:00:02.0: reg 18: [mem 0xc0000000-0xcfffffff pref]
pci 0000:00:02.0: reg 1c: [mem 0xb0000000-0xb003ffff]
pci 0000:00:02.1: reg 10: [mem 0x00000000-0x0007ffff]
pci 0000:00:1d.0: reg 20: [io  0x1820-0x183f]
pci 0000:00:1d.1: reg 20: [io  0x1840-0x185f]
pci 0000:00:1d.2: reg 20: [io  0x1860-0x187f]
pci 0000:00:1d.3: reg 20: [io  0x1880-0x189f]
pci 0000:00:1d.7: reg 10: [mem 0xb0040000-0xb00403ff]
pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
pci 0000:00:1d.7: PME# disabled
pci 0000:00:1e.2: reg 10: [io  0x1c00-0x1cff]
pci 0000:00:1e.2: reg 14: [io  0x18c0-0x18ff]
pci 0000:00:1e.2: reg 18: [mem 0xb0040800-0xb00409ff]
pci 0000:00:1e.2: reg 1c: [mem 0xb0040400-0xb00404ff]
pci 0000:00:1e.2: PME# supported from D0 D3hot D3cold
pci 0000:00:1e.2: PME# disabled
pci 0000:00:1e.3: reg 10: [io  0x2400-0x24ff]
pci 0000:00:1e.3: reg 14: [io  0x2000-0x207f]
pci 0000:00:1e.3: PME# supported from D0 D3hot D3cold
pci 0000:00:1e.3: PME# disabled
pci 0000:00:1f.0: quirk: [io  0x1000-0x107f] claimed by ICH6
ACPI/GPIO/TCO
pci 0000:00:1f.0: quirk: [io  0x1180-0x11bf] claimed by ICH6 GPIO
pci 0000:00:1f.0: LPC Generic IO decode 1 PIO at 0680-06ff
pci 0000:00:1f.0: LPC Generic IO decode 2 PIO at 1200-120f
pci 0000:00:1f.1: reg 10: [io  0x0000-0x0007]
pci 0000:00:1f.1: reg 14: [io  0x0000-0x0003]
pci 0000:00:1f.1: reg 18: [io  0x0000-0x0007]
pci 0000:00:1f.1: reg 1c: [io  0x0000-0x0003]
pci 0000:00:1f.1: reg 20: [io  0x1810-0x181f]
pci 0000:00:1f.3: reg 20: [io  0x20a0-0x20bf]
pci 0000:06:05.0: reg 10: [mem 0xb0100000-0xb0101fff]
pci 0000:06:07.0: reg 10: [io  0x3000-0x30ff]
pci 0000:06:07.0: reg 14: [mem 0xb0102000-0xb01020ff]
pci 0000:06:07.0: supports D1 D2
pci 0000:06:07.0: PME# supported from D1 D2 D3hot D3cold
pci 0000:06:07.0: PME# disabled
pci 0000:06:09.0: reg 10: [mem 0x00000000-0x00000fff]
pci 0000:06:09.0: supports D1 D2
pci 0000:06:09.0: PME# supported from D0 D1 D2 D3hot D3cold
pci 0000:06:09.0: PME# disabled
pci 0000:00:1e.0: PCI bridge to [bus 06-06] (subtractive decode)
pci 0000:00:1e.0:   bridge window [io  0x3000-0x3fff]
pci 0000:00:1e.0:   bridge window [mem 0xb0100000-0xb01fffff]
pci 0000:00:1e.0:   bridge window [mem 0xfff00000-0x000fffff pref]
(disabled)
pci 0000:00:1e.0:   bridge window [io  0x0000-0xffff] (subtractive
decode)
pci 0000:00:1e.0:   bridge window [mem 0x00000000-0xffffffff]
(subtractive decode)
pci_bus 0000:07: [bus 07-0a] partially hidden behind transparent bridge
0000:06 [bus 06-06]
pci_bus 0000:00: on NUMA node 0
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PCIB._PRT]
ACPI: PCI Interrupt Link [LNKA] (IRQs *10 11)
ACPI: PCI Interrupt Link [LNKB] (IRQs 10 *11)
ACPI: PCI Interrupt Link [LNKC] (IRQs 10 *11)
ACPI: PCI Interrupt Link [LNKD] (IRQs 10 *11)
ACPI: PCI Interrupt Link [LNKE] (IRQs *10 11)
ACPI: PCI Interrupt Link [LNKF] (IRQs *10 11)
ACPI: PCI Interrupt Link [LNKG] (IRQs 10 11) *0, disabled.
ACPI: PCI Interrupt Link [LNKH] (IRQs 10 *11)
vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io
+mem,locks=none
vgaarb: loaded
SCSI subsystem initialized
libata version 3.00 loaded.
PCI: Using ACPI for IRQ routing
PCI: pci_cache_line_size set to 64 bytes
reserve RAM buffer: 000000000009f800 - 000000000009ffff 
reserve RAM buffer: 000000003f6e0000 - 000000003fffffff 
Switching to clocksource tsc
pnp: PnP ACPI init
ACPI: bus type pnp registered
pnp: PnP ACPI: found 8 devices
ACPI: ACPI bus type pnp unregistered
system 00:04: [io  0x0800-0x080f] has been reserved
system 00:04: [io  0x1000-0x107f] has been reserved
system 00:04: [io  0x1180-0x11bf] has been reserved
system 00:04: [io  0x1200] has been reserved
system 00:04: [io  0x1204] has been reserved
system 00:04: [mem 0xe0000000-0xefffffff] has been reserved
system 00:04: [mem 0xf0000000-0xf0003fff] has been reserved
system 00:04: [mem 0xf0004000-0xf0004fff] has been reserved
system 00:04: [mem 0xf0005000-0xf0005fff] has been reserved
system 00:04: [mem 0xf0008000-0xf000bfff] has been reserved
system 00:04: [mem 0xfec18000-0xfec180ff] has been reserved
system 00:04: [mem 0xfed20000-0xfed8ffff] has been reserved
pci 0000:00:1e.0: BAR 9: assigned [mem 0x40000000-0x43ffffff pref]
pci 0000:00:02.1: BAR 0: assigned [mem 0x44000000-0x4407ffff]
pci 0000:00:02.1: BAR 0: set to [mem 0x44000000-0x4407ffff] (PCI address
[0x44000000-0x4407ffff]
pci 0000:06:09.0: BAR 9: assigned [mem 0x40000000-0x43ffffff pref]
pci 0000:06:09.0: BAR 10: assigned [mem 0x48000000-0x4bffffff]
pci 0000:06:09.0: BAR 0: assigned [mem 0xb0103000-0xb0103fff]
pci 0000:06:09.0: BAR 0: set to [mem 0xb0103000-0xb0103fff] (PCI address
[0xb0103000-0xb0103fff]
pci 0000:06:09.0: BAR 7: assigned [io  0x3400-0x34ff]
pci 0000:06:09.0: BAR 8: assigned [io  0x3800-0x38ff]
pci 0000:06:09.0: CardBus bridge to [bus 07-0a]
pci 0000:06:09.0:   bridge window [io  0x3400-0x34ff]
pci 0000:06:09.0:   bridge window [io  0x3800-0x38ff]
pci 0000:06:09.0:   bridge window [mem 0x40000000-0x43ffffff pref]
pci 0000:06:09.0:   bridge window [mem 0x48000000-0x4bffffff]
pci 0000:00:1e.0: PCI bridge to [bus 06-06]
pci 0000:00:1e.0:   bridge window [io  0x3000-0x3fff]
pci 0000:00:1e.0:   bridge window [mem 0xb0100000-0xb01fffff]
pci 0000:00:1e.0:   bridge window [mem 0x40000000-0x43ffffff pref]
pci 0000:00:1e.0: setting latency timer to 64
ACPI: PCI Interrupt Link [LNKG] enabled at IRQ 11
PCI: setting IRQ 11 as level-triggered
pci 0000:06:09.0: PCI INT A -> Link[LNKG] -> GSI 11 (level, low) -> IRQ
11
pci_bus 0000:00: resource 0 [io  0x0000-0xffff]
pci_bus 0000:00: resource 1 [mem 0x00000000-0xffffffff]
pci_bus 0000:06: resource 0 [io  0x3000-0x3fff]
pci_bus 0000:06: resource 1 [mem 0xb0100000-0xb01fffff]
pci_bus 0000:06: resource 2 [mem 0x40000000-0x43ffffff pref]
pci_bus 0000:06: resource 4 [io  0x0000-0xffff]
pci_bus 0000:06: resource 5 [mem 0x00000000-0xffffffff]
pci_bus 0000:07: resource 0 [io  0x3400-0x34ff]
pci_bus 0000:07: resource 1 [io  0x3800-0x38ff]
pci_bus 0000:07: resource 2 [mem 0x40000000-0x43ffffff pref]
pci_bus 0000:07: resource 3 [mem 0x48000000-0x4bffffff]
NET: Registered protocol family 2
IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
TCP established hash table entries: 131072 (order: 8, 1048576 bytes)
TCP bind hash table entries: 65536 (order: 6, 262144 bytes)
TCP: Hash tables configured (established 131072 bind 65536)
TCP reno registered
UDP hash table entries: 512 (order: 1, 8192 bytes)
UDP-Lite hash table entries: 512 (order: 1, 8192 bytes)
NET: Registered protocol family 1
pci 0000:00:02.0: Boot video device
PCI: CLS 64 bytes, default 64
Unpacking initramfs...
Freeing initrd memory: 1004k freed
Simple Boot Flag at 0x37 set to 0x1
audit: initializing netlink socket (disabled)
type=2000 audit(1301780968.160:1): initialized
highmem bounce pool size: 64 pages
NTFS driver 2.1.29 [Flags: R/W].
msgmni has been set to 1750
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 254)
io scheduler noop registered
io scheduler deadline registered (default)
Linux agpgart interface v0.103
agpgart-intel 0000:00:00.0: Intel 915GM Chipset
agpgart-intel 0000:00:00.0: detected 7932K stolen memory
agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xc0000000
ACPI: AC Adapter [ADP1] (on-line)
input: Lid Switch
as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input0
ACPI: Lid Switch [LID0]
input: Sleep Button
as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input1
ACPI: Sleep Button [SLPB]
input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input2
ACPI: Power Button [PWRF]
input: Video Bus
as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input3
ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[drm] Initialized drm 1.1.0 20060810
ACPI: PCI Interrupt Link [LNKA] enabled at IRQ 10
PCI: setting IRQ 10 as level-triggered
i915 0000:00:02.0: PCI INT A -> Link[LNKA] -> GSI 10 (level, low) -> IRQ
10
i915 0000:00:02.0: setting latency timer to 64
[drm] set up 7M of stolen space
vgaarb: device changed decodes: PCI:0000:00:02.0,olddecodes=io
+mem,decodes=io+mem:owns=io+mem
[drm] initialized overlay support
Console: switching to colour frame buffer device 128x48
fbcondecor: console 0 using theme 'BlueCurls'
fbcondecor: switched decor state to 'on' on console 0
fb0: inteldrmfb frame buffer device
drm: registered panic notifier
[drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
loop: module loaded
ata_piix 0000:00:1f.1: version 2.13
ata_piix 0000:00:1f.1: PCI INT A -> Link[LNKA] -> GSI 10 (level, low) ->
IRQ 10
ata_piix 0000:00:1f.1: setting latency timer to 64
scsi0 : ata_piix
scsi1 : ata_piix
ata1: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0x1810 irq 14
ata2: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0x1818 irq 15
ata2: port disabled. ignoring.
PNP: PS/2 Controller [PNP0303:KBD0,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
i8042.c: Detected active multiplexing controller, rev 1.1.
serio: i8042 KBD port at 0x60,0x64 irq 1
serio: i8042 AUX0 port at 0x60,0x64 irq 12
serio: i8042 AUX1 port at 0x60,0x64 irq 12
serio: i8042 AUX2 port at 0x60,0x64 irq 12
serio: i8042 AUX3 port at 0x60,0x64 irq 12
mice: PS/2 mouse device common for all mice
cpuidle: using governor ladder
TCP cubic registered
Initializing XFRM netlink socket
NET: Registered protocol family 17
NET: Registered protocol family 15
input: AT Translated Set 2 keyboard
as /devices/platform/i8042/serio0/input/input4
ACPI: Battery Slot [BAT0] (battery present)
ata1.00: ATA-6: TOSHIBA MK6025GAS, KA200A, max UDMA/100
ata1.00: 117210240 sectors, multi 16: LBA 
ata1.00: configured for UDMA/100
scsi 0:0:0:0: Direct-Access     ATA      TOSHIBA MK6025GA KA20 PQ: 0
ANSI: 5
sd 0:0:0:0: [sda] 117210240 512-byte logical blocks: (60.0 GB/55.8 GiB)
sd 0:0:0:0: [sda] Write Protect is off
sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't
support DPO or FUA
 sda: sda1 sda2 < sda5 sda6 sda7 >
sd 0:0:0:0: [sda] Attached SCSI disk
EXT3-fs: barriers not enabled
kjournald starting.  Commit interval 5 seconds
EXT3-fs (sda5): mounted filesystem with writeback data mode
VFS: Mounted root (ext3 filesystem) readonly on device 8:5.
Freeing unused kernel memory: 272k freed
udev: starting version 151
udevd (3589): /proc/3589/oom_adj is deprecated, please
use /proc/3589/oom_score_adj instead.
ACPI: acpi_idle registered with cpuidle
Marking TSC unstable due to TSC halts in idle
Switching to clocksource acpi_pm
thermal LNXTHERM:01: registered as thermal_zone0
ACPI: Thermal Zone [TZS0] (31 C)
thermal LNXTHERM:02: registered as thermal_zone1
ACPI: Thermal Zone [TZS1] (22 C)
ACPI: WMI: Mapper loaded
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
ACPI: PCI Interrupt Link [LNKF] enabled at IRQ 10
b43-pci-bridge 0000:06:05.0: PCI INT A -> Link[LNKF] -> GSI 10 (level,
low) -> IRQ 10
ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x0D, vendor 0x4243)
ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x09, vendor 0x4243)
ssb: Core 2 found: PCI (cc 0x804, rev 0x0C, vendor 0x4243)
ssb: Core 3 found: PCMCIA (cc 0x80D, rev 0x07, vendor 0x4243)
8139too: 8139too Fast Ethernet driver 0.9.28
ssb: Sonics Silicon Backplane found on PCI device 0000:06:05.0
ACPI: PCI Interrupt Link [LNKE] enabled at IRQ 10
8139too 0000:06:07.0: PCI INT A -> Link[LNKE] -> GSI 10 (level, low) ->
IRQ 10
8139too 0000:06:07.0: eth0: RealTek RTL8139 at 0xf84fe000,
00:0a:e4:ec:05:b2, IRQ 10
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ACPI: PCI Interrupt Link [LNKH] enabled at IRQ 11
ehci_hcd 0000:00:1d.7: PCI INT A -> Link[LNKH] -> GSI 11 (level, low) ->
IRQ 11
ehci_hcd 0000:00:1d.7: setting latency timer to 64
ehci_hcd 0000:00:1d.7: EHCI Host Controller
ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1
ehci_hcd 0000:00:1d.7: debug port 1
ehci_hcd 0000:00:1d.7: cache line size of 64 is not supported
ehci_hcd 0000:00:1d.7: irq 11, io mem 0xb0040000
ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 8 ports detected
uhci_hcd: USB Universal Host Controller Interface driver
uhci_hcd 0000:00:1d.0: PCI INT A -> Link[LNKH] -> GSI 11 (level, low) ->
IRQ 11
uhci_hcd 0000:00:1d.0: setting latency timer to 64
uhci_hcd 0000:00:1d.0: UHCI Host Controller
uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
uhci_hcd 0000:00:1d.0: irq 11, io base 0x00001820
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 2 ports detected
ACPI: PCI Interrupt Link [LNKB] enabled at IRQ 11
uhci_hcd 0000:00:1d.1: PCI INT B -> Link[LNKB] -> GSI 11 (level, low) ->
IRQ 11
uhci_hcd 0000:00:1d.1: setting latency timer to 64
uhci_hcd 0000:00:1d.1: UHCI Host Controller
uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3
uhci_hcd 0000:00:1d.1: irq 11, io base 0x00001840
hub 3-0:1.0: USB hub found
hub 3-0:1.0: 2 ports detected
ACPI: PCI Interrupt Link [LNKC] enabled at IRQ 11
uhci_hcd 0000:00:1d.2: PCI INT C -> Link[LNKC] -> GSI 11 (level, low) ->
IRQ 11
uhci_hcd 0000:00:1d.2: setting latency timer to 64
uhci_hcd 0000:00:1d.2: UHCI Host Controller
uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4
uhci_hcd 0000:00:1d.2: irq 11, io base 0x00001860
hub 4-0:1.0: USB hub found
hub 4-0:1.0: 2 ports detected
ACPI: PCI Interrupt Link [LNKD] enabled at IRQ 11
uhci_hcd 0000:00:1d.3: PCI INT D -> Link[LNKD] -> GSI 11 (level, low) ->
IRQ 11
uhci_hcd 0000:00:1d.3: setting latency timer to 64
uhci_hcd 0000:00:1d.3: UHCI Host Controller
uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5
uhci_hcd 0000:00:1d.3: irq 11, io base 0x00001880
hub 5-0:1.0: USB hub found
hub 5-0:1.0: 2 ports detected
acer-wmi: Acer Laptop ACPI-WMI Extras
Registered led device: acer-wmi::mail
Synaptics Touchpad, model: 1, fw: 6.2, id: 0x12a0b1, caps:
0xa04713/0x204000/0x0
input: SynPS/2 Synaptics TouchPad
as /devices/platform/i8042/serio4/input/input5
cfg80211: Calling CRDA to update world regulatory domain
Intel ICH 0000:00:1e.2: PCI INT A -> Link[LNKF] -> GSI 10 (level, low)
-> IRQ 10
Intel ICH 0000:00:1e.2: setting latency timer to 64
usb 3-1: new full speed USB device using uhci_hcd and address 2
b43-phy0: Broadcom 4318 WLAN found (core revision 9)
Bluetooth: Core ver 2.15
NET: Registered protocol family 31
Bluetooth: HCI device and connection manager initialized
Bluetooth: HCI socket layer initialized
Bluetooth: Generic Bluetooth USB driver ver 0.6
usbcore: registered new interface driver btusb
intel8x0_measure_ac97_clock: measured 59511 usecs (2867 samples)
intel8x0: clocking to 48000
phy0: Selected rate control algorithm 'minstrel_ht'
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
Broadcom 43xx driver loaded [ Features: PL, Firmware-ID: FW13 ]
EXT3-fs (sda5): using internal journal
EXT3-fs: barriers not enabled
kjournald starting.  Commit interval 5 seconds
EXT3-fs (sda7): using internal journal
EXT3-fs (sda7): mounted filesystem with writeback data mode
Adding 1048816k swap on /dev/sda6.  Priority:-1 extents:1
across:1048816k 
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
wlan0: authenticate with 74:ea:3a:e0:7c:3a (try 1)
wlan0: authenticated
wlan0: associate with 74:ea:3a:e0:7c:3a (try 1)
wlan0: RX AssocResp from 74:ea:3a:e0:7c:3a (capab=0x411 status=0 aid=2)
wlan0: associated
ata1.00: configured for UDMA/100
ata1: EH complete
usb 3-1: USB disconnect, address 2
No probe response from AP 74:ea:3a:e0:7c:3a after 500ms, disconnecting.
cfg80211: Calling CRDA to update world regulatory domain
b43-pci-bridge 0000:06:05.0: PCI INT A disabled
cfg80211: Calling CRDA to update world regulatory domain
b43-pci-bridge 0000:06:05.0: PCI INT A -> Link[LNKF] -> GSI 10 (level,
low) -> IRQ 10
ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x0D, vendor 0x4243)
ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x09, vendor 0x4243)
ssb: Core 2 found: PCI (cc 0x804, rev 0x0C, vendor 0x4243)
ssb: Core 3 found: PCMCIA (cc 0x80D, rev 0x07, vendor 0x4243)
ssb: Sonics Silicon Backplane found on PCI device 0000:06:05.0
b43-phy0: Broadcom 4318 WLAN found (core revision 9)
phy0: Selected rate control algorithm 'minstrel_ht'
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
Broadcom 43xx driver loaded [ Features: PL, Firmware-ID: FW13 ]
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
wlan0: authenticate with 74:ea:3a:e0:7c:3a (try 1)
wlan0: authenticated
wlan0: associate with 74:ea:3a:e0:7c:3a (try 1)
wlan0: RX AssocResp from 74:ea:3a:e0:7c:3a (capab=0x411 status=0 aid=2)
wlan0: associated
No probe response from AP 74:ea:3a:e0:7c:3a after 500ms, disconnecting.
cfg80211: Calling CRDA to update world regulatory domain

5. Wlan configuration, authentication/encryption type:
I'm connect to openwrt router with wpa2 encryption, using
wpa_supplicant:
network={
   ssid="mr3420"
   scan_ssid=1
   key_mgmt=WPA-PSK
   psk="xxx"
   priority=2
}

Before my card was changed I have almost the same but (rev 01) and as
far as I remember I didn't have this issue.


Regards.
-- 
Szymon Zygmunt
