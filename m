From: Magnus Therning <magnus@therning.org>
Date: Fri, 18 Jun 2010 22:51:40 +0100
Subject: Problems with b43 wirelesss
Message-ID: <AANLkTimIkTaIrdXHulE6YVnB3ZwWrMBCNnCK1SKdyctL@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I've just bought a new laptop, and it has a broadcom wireless device.
I was, foolishly it seems, hoping that all serious problems with
broadcom devices had been dealt with already and that there wouldn't
be any problems to get acceptable connectivity nowadays.  Alas that
isn't the case, despite the excellent job the devs on this mailing
list are doing.

The behaviour I see is that I manage to associate with the wireless
router, but soon after I start using the connection it dies and all
attempts to re-connect fails.  I've seen a few similar reports from
b43 users but without any really good work-around (some say that
switching down to 802.11b works (and that would be acceptable) but I
don't see any way of doing that).

So, the current situation is that this laptop without wireless working
is nearly useless, so I'll do anything in my power to get this
working.  My experience in writing drivers is nearly non-existant, and
my knowledge of wireless devices is zero, so I'm not sure I'd be very
good at actually figuring out what changes to the code are necessary.
However, I'll be happy to help out with testing any and all patches
that are sent my way.  Just let me know how I can help!

Here's some info about the system I have:

# uname -a
Linux ohann 2.6.33-ARCH #1 SMP PREEMPT Thu May 13 11:32:37 CEST 2010
x86_64 Intel(R) Core(TM) i5 CPU M 430 @ 2.27GHz GenuineIntel GNU/Linux
# lspci -vnn | grep 14e4
03:00.0 Network controller [0280]: Broadcom Corporation BCM4312
802.11b/g [14e4:4315] (rev 01)

I'm currently running the b43 driver out of compat-wireless
(2010-06-17 downloaded from
http://wireless.kernel.org/download/compat-wireless-2.6/, I understand
this is the latest daily snapshot of the bleeding edge version).

I've attached the output of 'lspci -vvn|grep 43 -A7' and 'dmesg'

Please let me know what else I can do to help out with getting this fixed.

/M

-- 
Magnus Therning                        (OpenPGP: 0xAB4DFBA4)
magnus?therning?org          Jabber: magnus?therning?org
http://therning.org/magnus         identi.ca|twitter: magthe
-------------- next part --------------
	Subsystem: 1028:0434
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort+ >SERR- <PERR- INTx-
	Latency: 0
	Capabilities: [e0] Vendor Specific Information: Len=0c <?>
	Kernel driver in use: agpgart-intel
	Kernel modules: intel-agp

--
	Subsystem: 1028:0434
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 29
	Region 0: Memory at f0000000 (64-bit, non-prefetchable) [size=4M]
	Region 2: Memory at d0000000 (64-bit, prefetchable) [size=256M]
	Region 4: I/O ports@1800 [size=8]
--
	Subsystem: 1028:0434
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 5
	Region 0: Memory@f0705800 (64-bit, non-prefetchable) [size=16]
	Capabilities: [50] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
--
	Subsystem: 1028:0434
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 16
	Region 0: Memory@f0706000 (32-bit, non-prefetchable) [size=1K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
--
	Subsystem: 1028:0434
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 30
	Region 0: Memory@f0700000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=55mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
--
	Capabilities: [90] Subsystem: 1028:0434
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.1 0604: 8086:3b44 (rev 06) (prog-if 00 [Normal decode])
--
	Capabilities: [90] Subsystem: 1028:0434
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.5 0604: 8086:3b4c (rev 06) (prog-if 00 [Normal decode])
--
	Capabilities: [90] Subsystem: 1028:0434
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1d.0 0c03: 8086:3b34 (rev 06) (prog-if 20 [EHCI])
	Subsystem: 1028:0434
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 23
	Region 0: Memory@f0706400 (32-bit, non-prefetchable) [size=1K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
--
	Capabilities: [50] Subsystem: 1028:0434

00:1f.0 0601: 8086:3b09 (rev 06)
	Subsystem: 1028:0434
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Capabilities: [e0] Vendor Specific Information: Len=10 <?>
	Kernel modules: iTCO_wdt

00:1f.2 0106: 8086:3b29 (rev 06) (prog-if 01 [AHCI 1.0])
	Subsystem: 1028:0434
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin B routed to IRQ 27
	Region 0: I/O ports at 1818 [size=8]
	Region 1: I/O ports at 180c [size=4]
	Region 2: I/O ports@1810 [size=8]
--
	Subsystem: 1028:0434
	Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Interrupt: pin C routed to IRQ 18
	Region 0: Memory at f0706800 (64-bit, non-prefetchable) [size=256]
	Region 4: I/O ports@1840 [size=32]
	Kernel modules: i2c-i801

--
	Subsystem: 1028:0434
	Control: I/O- Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Interrupt: pin C routed to IRQ 10
	Region 0: Memory@f0704000 (64-bit, non-prefetchable) [size=4K]
	Capabilities: [50] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
--
03:00.0 0280: 14e4:4315 (rev 01)
	Subsystem: 1028:000c
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@f0400000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3
--
	Kernel driver in use: b43-pci-bridge
	Kernel modules: ssb

04:00.0 0200: 10ec:8136 (rev 02)
	Subsystem: 1028:0434
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 28
	Region 0: I/O ports at 2000 [size=256]
	Region 2: Memory at f0810000 (64-bit, prefetchable) [size=4K]
	Region 4: Memory at f0800000 (64-bit, prefetchable) [size=64K]
-------------- next part --------------
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 2.6.33-ARCH (thomas@evey) (gcc version 4.5.0 (GCC) ) #1 SMP PREEMPT Thu May 13 11:32:37 CEST 2010
Command line: root=/dev/mapper/ohann-root ro vga=773
BIOS-provided physical RAM map:
 BIOS-e820: 0000000000000000 - 000000000009c400 (usable)
 BIOS-e820: 000000000009c400 - 00000000000a0000 (reserved)
 BIOS-e820: 00000000000d2000 - 00000000000d4000 (reserved)
 BIOS-e820: 00000000000e0000 - 0000000000100000 (reserved)
 BIOS-e820: 0000000000100000 - 00000000bb27c000 (usable)
 BIOS-e820: 00000000bb27c000 - 00000000bb282000 (reserved)
 BIOS-e820: 00000000bb282000 - 00000000bb3ea000 (usable)
 BIOS-e820: 00000000bb3ea000 - 00000000bb40f000 (reserved)
 BIOS-e820: 00000000bb40f000 - 00000000bb46f000 (usable)
 BIOS-e820: 00000000bb46f000 - 00000000bb470000 (reserved)
 BIOS-e820: 00000000bb470000 - 00000000bb4f1000 (ACPI NVS)
 BIOS-e820: 00000000bb4f1000 - 00000000bb70f000 (reserved)
 BIOS-e820: 00000000bb70f000 - 00000000bb717000 (usable)
 BIOS-e820: 00000000bb717000 - 00000000bb71f000 (reserved)
 BIOS-e820: 00000000bb71f000 - 00000000bb77e000 (usable)
 BIOS-e820: 00000000bb77e000 - 00000000bb79f000 (ACPI NVS)
 BIOS-e820: 00000000bb79f000 - 00000000bb7e2000 (usable)
 BIOS-e820: 00000000bb7e2000 - 00000000bb7ff000 (ACPI data)
 BIOS-e820: 00000000bb7ff000 - 00000000bb800000 (usable)
 BIOS-e820: 00000000bb800000 - 00000000c0000000 (reserved)
 BIOS-e820: 00000000e0000000 - 00000000f0000000 (reserved)
 BIOS-e820: 00000000f0704000 - 00000000f0705000 (reserved)
 BIOS-e820: 00000000feaff000 - 00000000feb00000 (reserved)
 BIOS-e820: 00000000fec00000 - 00000000fec10000 (reserved)
 BIOS-e820: 00000000fed00000 - 00000000fed00400 (reserved)
 BIOS-e820: 00000000fed1c000 - 00000000fed90000 (reserved)
 BIOS-e820: 00000000fee00000 - 00000000fee01000 (reserved)
 BIOS-e820: 00000000ff000000 - 0000000100000000 (reserved)
 BIOS-e820: 0000000100000000 - 0000000138000000 (usable)
NX (Execute Disable) protection: active
DMI present.
No AGP bridge found
last_pfn = 0x138000 max_arch_pfn = 0x400000000
MTRR default type: uncachable
MTRR fixed ranges enabled:
  00000-9FFFF write-back
  A0000-BFFFF uncachable
  C0000-D3FFF write-protect
  D4000-DBFFF uncachable
  DC000-FFFFF write-through
MTRR variable ranges enabled:
  0 base 0FFE00000 mask FFFE00000 write-protect
  1 base 000000000 mask F80000000 write-back
  2 base 080000000 mask FC0000000 write-back
  3 base 100000000 mask FC0000000 write-back
  4 base 138000000 mask FF8000000 uncachable
  5 base 0BC000000 mask FFC000000 uncachable
  6 disabled
  7 disabled
x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
last_pfn = 0xbb800 max_arch_pfn = 0x400000000
e820 update range: 0000000000001000 - 0000000000010000 (usable) ==> (reserved)
Scanning 1 areas for low memory corruption
modified physical RAM map:
 modified: 0000000000000000 - 0000000000001000 (usable)
 modified: 0000000000001000 - 0000000000010000 (reserved)
 modified: 0000000000010000 - 000000000009c400 (usable)
 modified: 000000000009c400 - 00000000000a0000 (reserved)
 modified: 00000000000d2000 - 00000000000d4000 (reserved)
 modified: 00000000000e0000 - 0000000000100000 (reserved)
 modified: 0000000000100000 - 00000000bb27c000 (usable)
 modified: 00000000bb27c000 - 00000000bb282000 (reserved)
 modified: 00000000bb282000 - 00000000bb3ea000 (usable)
 modified: 00000000bb3ea000 - 00000000bb40f000 (reserved)
 modified: 00000000bb40f000 - 00000000bb46f000 (usable)
 modified: 00000000bb46f000 - 00000000bb470000 (reserved)
 modified: 00000000bb470000 - 00000000bb4f1000 (ACPI NVS)
 modified: 00000000bb4f1000 - 00000000bb70f000 (reserved)
 modified: 00000000bb70f000 - 00000000bb717000 (usable)
 modified: 00000000bb717000 - 00000000bb71f000 (reserved)
 modified: 00000000bb71f000 - 00000000bb77e000 (usable)
 modified: 00000000bb77e000 - 00000000bb79f000 (ACPI NVS)
 modified: 00000000bb79f000 - 00000000bb7e2000 (usable)
 modified: 00000000bb7e2000 - 00000000bb7ff000 (ACPI data)
 modified: 00000000bb7ff000 - 00000000bb800000 (usable)
 modified: 00000000bb800000 - 00000000c0000000 (reserved)
 modified: 00000000e0000000 - 00000000f0000000 (reserved)
 modified: 00000000f0704000 - 00000000f0705000 (reserved)
 modified: 00000000feaff000 - 00000000feb00000 (reserved)
 modified: 00000000fec00000 - 00000000fec10000 (reserved)
 modified: 00000000fed00000 - 00000000fed00400 (reserved)
 modified: 00000000fed1c000 - 00000000fed90000 (reserved)
 modified: 00000000fee00000 - 00000000fee01000 (reserved)
 modified: 00000000ff000000 - 0000000100000000 (reserved)
 modified: 0000000100000000 - 0000000138000000 (usable)
initial memory mapped : 0 - 20000000
found SMP MP-table at [ffff8800000f71f0] f71f0
init_memory_mapping: 0000000000000000-00000000bb800000
 0000000000 - 00bb800000 page 2M
kernel direct mapping tables up to bb800000 @ 16000-1a000
init_memory_mapping: 0000000100000000-0000000138000000
 0100000000 - 0138000000 page 2M
kernel direct mapping tables up to 138000000 @ 18000-1e000
RAMDISK: 37d5f000 - 37fef3f2
ACPI: RSDP 00000000000f7110 00024 (v02 PTLTD )
ACPI: XSDT 00000000bb7f467a 00064 (v01 DELL    QA09    06040000  LTP 00000000)
ACPI: FACP 00000000bb7e4000 000F4 (v03 INTEL  CRESTLNE 06040000 ALAN 00000001)
ACPI: DSDT 00000000bb7e5000 0A47C (v02 Intel  CALPELLA 06040000 INTL 20060912)
ACPI: FACS 00000000bb79bfc0 00040
ACPI: HPET 00000000bb7fecfa 00038 (v01 INTEL  CRESTLNE 06040000 LOHR 0000005A)
ACPI: MCFG 00000000bb7fed32 0003C (v01 INTEL  CRESTLNE 06040000 LOHR 0000005A)
ACPI: APIC 00000000bb7fed6e 00084 (v01 PTLTD  ? APIC   06040000  LTP 00000000)
ACPI: BOOT 00000000bb7fedf2 00028 (v01 PTLTD  $SBFTBL$ 06040000  LTP 00000001)
ACPI: SLIC 00000000bb7fee1a 00176 (v01 DELL    QA09    06040000  LTP 00000000)
ACPI: OSFR 00000000bb7fef90 00070 (v01 DELL   DELL     06040000 ASL  00000061)
ACPI: SSDT 00000000bb7e3000 009F1 (v01  PmRef    CpuPm 00003000 INTL 20060912)
ACPI: Local APIC address 0xfee00000
(13 early reservations) ==> bootmem [0000000000 - 0138000000]
  #0 [0000000000 - 0000001000]   BIOS data page ==> [0000000000 - 0000001000]
  #1 [0001000000 - 00016d7b38]    TEXT DATA BSS ==> [0001000000 - 00016d7b38]
  #2 [0037d5f000 - 0037fef3f2]          RAMDISK ==> [0037d5f000 - 0037fef3f2]
  #3 [00016d8000 - 00016d81d4]              BRK ==> [00016d8000 - 00016d81d4]
  #4 [00000f7200 - 0000100000]    BIOS reserved ==> [00000f7200 - 0000100000]
  #5 [00000f71f0 - 00000f7200]     MP-table mpf ==> [00000f71f0 - 00000f7200]
  #6 [000009c400 - 000009c971]    BIOS reserved ==> [000009c400 - 000009c971]
  #7 [000009cac5 - 00000f71f0]    BIOS reserved ==> [000009cac5 - 00000f71f0]
  #8 [000009c971 - 000009cac5]     MP-table mpc ==> [000009c971 - 000009cac5]
  #9 [0000010000 - 0000012000]       TRAMPOLINE ==> [0000010000 - 0000012000]
  #10 [0000012000 - 0000016000]      ACPI WAKEUP ==> [0000012000 - 0000016000]
  #11 [0000016000 - 0000018000]          PGTABLE ==> [0000016000 - 0000018000]
  #12 [0000018000 - 0000019000]          PGTABLE ==> [0000018000 - 0000019000]
 [ffffea0000000000-ffffea00045fffff] PMD -> [ffff880001800000-ffff880004ffffff] on node 0
Zone PFN ranges:
  DMA      0x00000000 -> 0x00001000
  DMA32    0x00001000 -> 0x00100000
  Normal   0x00100000 -> 0x00138000
Movable zone start PFN for each node
early_node_map[10] active PFN ranges
    0: 0x00000000 -> 0x00000001
    0: 0x00000010 -> 0x0000009c
    0: 0x00000100 -> 0x000bb27c
    0: 0x000bb282 -> 0x000bb3ea
    0: 0x000bb40f -> 0x000bb46f
    0: 0x000bb70f -> 0x000bb717
    0: 0x000bb71f -> 0x000bb77e
    0: 0x000bb79f -> 0x000bb7e2
    0: 0x000bb7ff -> 0x000bb800
    0: 0x00100000 -> 0x00138000
On node 0 totalpages: 996476
  DMA zone: 56 pages used for memmap
  DMA zone: 108 pages reserved
  DMA zone: 3817 pages, LIFO batch:0
  DMA32 zone: 14280 pages used for memmap
  DMA32 zone: 748839 pages, LIFO batch:31
  Normal zone: 3136 pages used for memmap
  Normal zone: 226240 pages, LIFO batch:31
ACPI: PM-Timer IO Port: 0x408
ACPI: Local APIC address 0xfee00000
ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
ACPI: LAPIC (acpi_id[0x01] lapic_id[0x04] enabled)
ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] enabled)
ACPI: LAPIC (acpi_id[0x03] lapic_id[0x05] enabled)
ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 high edge)
ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
ACPI: IRQ0 used by override.
ACPI: IRQ2 used by override.
ACPI: IRQ9 used by override.
Using ACPI (MADT) for SMP configuration information
ACPI: HPET id: 0x8086a201 base: 0xfed00000
SMP: Allowing 4 CPUs, 0 hotplug CPUs
nr_irqs_gsi: 24
PM: Registered nosave memory: 0000000000001000 - 0000000000010000
PM: Registered nosave memory: 000000000009c000 - 000000000009d000
PM: Registered nosave memory: 000000000009d000 - 00000000000a0000
PM: Registered nosave memory: 00000000000a0000 - 00000000000d2000
PM: Registered nosave memory: 00000000000d2000 - 00000000000d4000
PM: Registered nosave memory: 00000000000d4000 - 00000000000e0000
PM: Registered nosave memory: 00000000000e0000 - 0000000000100000
PM: Registered nosave memory: 00000000bb27c000 - 00000000bb282000
PM: Registered nosave memory: 00000000bb3ea000 - 00000000bb40f000
PM: Registered nosave memory: 00000000bb46f000 - 00000000bb470000
PM: Registered nosave memory: 00000000bb470000 - 00000000bb4f1000
PM: Registered nosave memory: 00000000bb4f1000 - 00000000bb70f000
PM: Registered nosave memory: 00000000bb717000 - 00000000bb71f000
PM: Registered nosave memory: 00000000bb77e000 - 00000000bb79f000
PM: Registered nosave memory: 00000000bb7e2000 - 00000000bb7ff000
PM: Registered nosave memory: 00000000bb800000 - 00000000c0000000
PM: Registered nosave memory: 00000000c0000000 - 00000000e0000000
PM: Registered nosave memory: 00000000e0000000 - 00000000f0000000
PM: Registered nosave memory: 00000000f0000000 - 00000000f0704000
PM: Registered nosave memory: 00000000f0704000 - 00000000f0705000
PM: Registered nosave memory: 00000000f0705000 - 00000000feaff000
PM: Registered nosave memory: 00000000feaff000 - 00000000feb00000
PM: Registered nosave memory: 00000000feb00000 - 00000000fec00000
PM: Registered nosave memory: 00000000fec00000 - 00000000fec10000
PM: Registered nosave memory: 00000000fec10000 - 00000000fed00000
PM: Registered nosave memory: 00000000fed00000 - 00000000fed1c000
PM: Registered nosave memory: 00000000fed1c000 - 00000000fed90000
PM: Registered nosave memory: 00000000fed90000 - 00000000fee00000
PM: Registered nosave memory: 00000000fee00000 - 00000000fee01000
PM: Registered nosave memory: 00000000fee01000 - 00000000ff000000
PM: Registered nosave memory: 00000000ff000000 - 0000000100000000
Allocating PCI resources starting at c0000000 (gap: c0000000:20000000)
Booting paravirtualized kernel on bare hardware
setup_percpu: NR_CPUS:16 nr_cpumask_bits:16 nr_cpu_ids:4 nr_node_ids:1
PERCPU: Embedded 29 pages/cpu @ffff880005200000 s89176 r8192 d21416 u524288
pcpu-alloc: s89176 r8192 d21416 u524288 alloc=1*2097152
pcpu-alloc: [0] 0 1 2 3 
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 978896
Kernel command line: root=/dev/mapper/ohann-root ro vga=773
PID hash table entries: 4096 (order: 3, 32768 bytes)
Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes)
Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes)
Checking aperture...
No AGP bridge found
Calgary: detecting Calgary via BIOS EBDA area
Calgary: Unable to locate Rio Grande table in EBDA - bailing!
Memory: 3845048k/5111808k available (3449k kernel code, 1125904k absent, 139944k reserved, 1818k data, 484k init)
SLUB: Genslabs=13, HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
Hierarchical RCU implementation.
NR_IRQS:768
Extended CMOS year: 2000
Console: colour dummy device 80x25
console [tty0] enabled
allocated 40632320 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
hpet clockevent registered
Fast TSC calibration using PIT
Detected 2261.033 MHz processor.
Calibrating delay loop (skipped), value calculated using timer frequency.. 4523.48 BogoMIPS (lpj=7536776)
Security Framework initialized
Mount-cache hash table entries: 256
Initializing cgroup subsys ns
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 0
mce: CPU supports 9 MCE banks
CPU0: Thermal monitoring handled by SMI
CPU 0 MCA banks CMCI:2 CMCI:3 CMCI:5 CMCI:6
using mwait in idle threads.
Performance Events: Westmere events, Intel PMU driver.
... version:                3
... bit width:              48
... generic registers:      4
... value mask:             0000ffffffffffff
... max period:             000000007fffffff
... fixed-purpose events:   3
... event mask:             000000070000000f
ACPI: Core revision 20091214
Setting APIC routing to flat
..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
CPU0: Intel(R) Core(TM) i5 CPU       M 430  @ 2.27GHz stepping 02
Booting Node   0, Processors  #1
CPU1: Thermal monitoring handled by SMI
CPU 1 MCA banks CMCI:2 CMCI:3 CMCI:5 SHD:6
 #2
CPU2: Thermal monitoring handled by SMI
CPU 2 MCA banks SHD:2 SHD:3 SHD:5 SHD:6
 #3 Ok.
CPU3: Thermal monitoring handled by SMI
CPU 3 MCA banks SHD:2 SHD:3 SHD:5 SHD:6
Brought up 4 CPUs
Total of 4 processors activated (18095.67 BogoMIPS).
NET: Registered protocol family 16
ACPI: bus type pci registered
PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000-0xefffffff] (base 0xe0000000)
PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in E820
PCI: Using configuration type 1 for base access
bio: create slab <bio-0> at 0
ACPI: EC: Look up EC in DSDT
ACPI: BIOS _OSI(Linux) query ignored
ACPI: Interpreter enabled
ACPI: (supports S0 S3 S4 S5)
ACPI: Using IOAPIC for interrupt routing
[Firmware Bug]: ACPI: ACPI brightness control misses _BQC function
ACPI: EC: GPE = 0x16, I/O: command/status = 0x66, data = 0x62
ACPI: Power Resource [FN00] (off)
ACPI: Power Resource [FN01] (off)
ACPI: No dock devices found.
\_SB_.PCI0:_OSC invalid UUID
_OSC request data:1 8 1f 
ACPI: PCI Root Bridge [PCI0] (0000:00)
pci_root PNP0A08:00: ignoring host bridge windows from ACPI; boot with "pci=use_crs" to use them
pci_root PNP0A08:00: host bridge window [io  0x0000-0x0cf7] (ignored)
pci_root PNP0A08:00: host bridge window [io  0x0d00-0xffff] (ignored)
pci_root PNP0A08:00: host bridge window [mem 0x000a0000-0x000bffff] (ignored)
pci_root PNP0A08:00: host bridge window [mem 0x000d4000-0x000d7fff] (ignored)
pci_root PNP0A08:00: host bridge window [mem 0x000d8000-0x000dbfff] (ignored)
pci_root PNP0A08:00: host bridge window [mem 0x000dc000-0x000dffff] (ignored)
pci_root PNP0A08:00: host bridge window [mem 0xc0000000-0xdfffffff] (ignored)
pci_root PNP0A08:00: host bridge window [mem 0xf0000000-0xfebfffff] (ignored)
pci 0000:00:02.0: reg 10: [mem 0xf0000000-0xf03fffff 64bit]
pci 0000:00:02.0: reg 18: [mem 0xd0000000-0xdfffffff 64bit pref]
pci 0000:00:02.0: reg 20: [io  0x1800-0x1807]
pci 0000:00:16.0: reg 10: [mem 0xf0705800-0xf070580f 64bit]
pci 0000:00:16.0: PME# supported from D0 D3hot D3cold
pci 0000:00:16.0: PME# disabled
pci 0000:00:1a.0: reg 10: [mem 0xf0706000-0xf07063ff]
pci 0000:00:1a.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1a.0: PME# disabled
pci 0000:00:1b.0: reg 10: [mem 0xf0700000-0xf0703fff 64bit]
pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1b.0: PME# disabled
pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.0: PME# disabled
pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.1: PME# disabled
pci 0000:00:1c.5: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.5: PME# disabled
pci 0000:00:1d.0: reg 10: [mem 0xf0706400-0xf07067ff]
pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1d.0: PME# disabled
pci 0000:00:1f.2: reg 10: [io  0x1818-0x181f]
pci 0000:00:1f.2: reg 14: [io  0x180c-0x180f]
pci 0000:00:1f.2: reg 18: [io  0x1810-0x1817]
pci 0000:00:1f.2: reg 1c: [io  0x1808-0x180b]
pci 0000:00:1f.2: reg 20: [io  0x1820-0x183f]
pci 0000:00:1f.2: reg 24: [mem 0xf0705000-0xf07057ff]
pci 0000:00:1f.2: PME# supported from D3hot
pci 0000:00:1f.2: PME# disabled
pci 0000:00:1f.3: reg 10: [mem 0xf0706800-0xf07068ff 64bit]
pci 0000:00:1f.3: reg 20: [io  0x1840-0x185f]
pci 0000:00:1f.6: reg 10: [mem 0xf0704000-0xf0704fff 64bit]
pci 0000:00:1c.0: PCI bridge to [bus 02-02]
pci 0000:03:00.0: reg 10: [mem 0xf0400000-0xf0403fff 64bit]
pci 0000:03:00.0: supports D1 D2
pci 0000:03:00.0: PME# supported from D0 D3hot D3cold
pci 0000:03:00.0: PME# disabled
pci 0000:00:1c.1: PCI bridge to [bus 03-03]
pci 0000:00:1c.1:   bridge window [mem 0xf0400000-0xf04fffff]
pci 0000:04:00.0: reg 10: [io  0x2000-0x20ff]
pci 0000:04:00.0: reg 18: [mem 0xf0810000-0xf0810fff 64bit pref]
pci 0000:04:00.0: reg 20: [mem 0xf0800000-0xf080ffff 64bit pref]
pci 0000:04:00.0: reg 30: [mem 0x00000000-0x0001ffff pref]
pci 0000:04:00.0: supports D1 D2
pci 0000:04:00.0: PME# supported from D0 D1 D2 D3hot D3cold
pci 0000:04:00.0: PME# disabled
pci 0000:00:1c.5: PCI bridge to [bus 04-04]
pci 0000:00:1c.5:   bridge window [io  0x2000-0x2fff]
pci 0000:00:1c.5:   bridge window [mem 0xf0800000-0xf08fffff 64bit pref]
pci 0000:00:1e.0: PCI bridge to [bus 05-05] (subtractive decode)
pci_bus 0000:00: on NUMA node 0
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P1._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP06._PRT]
\_SB_.PCI0:_OSC invalid UUID
_OSC request data:1 19 1f 
ACPI: PCI Root Bridge [CPBG] (0000:ff)
pci_root PNP0A03:00: ignoring host bridge windows from ACPI; boot with "pci=use_crs" to use them
pci_bus 0000:ff: on NUMA node 0
ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 *5 6 7 10 12 14 15)
ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 *7 11 12 14 15)
ACPI: PCI Interrupt Link [LNKC] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled.
ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12 14 15) *10
ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled.
ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled.
ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 7 10 12 14 15) *11
ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 5 6 7 11 12 14 15) *10
vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
vgaarb: loaded
PCI: Using ACPI for IRQ routing
PCI: pci_cache_line_size set to 64 bytes
NetLabel: Initializing
NetLabel:  domain hash size = 128
NetLabel:  protocols = UNLABELED CIPSOv4
NetLabel:  unlabeled traffic allowed by default
hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0, 0, 0, 0, 0
hpet0: 8 comparators, 64-bit 14.318180 MHz counter
Switching to clocksource tsc
pnp: PnP ACPI init
ACPI: bus type pnp registered
pnp: PnP ACPI: found 11 devices
ACPI: ACPI bus type pnp unregistered
system 00:05: [io  0x0680-0x069f] has been reserved
system 00:05: [io  0x0500-0x050f] has been reserved
system 00:05: [io  0x0600-0x0603] has been reserved
system 00:05: [io  0xffff] has been reserved
system 00:05: [io  0x0400-0x047f] has been reserved
system 00:05: [io  0x1180-0x11ff] has been reserved
system 00:05: [io  0x164e-0x164f] has been reserved
system 00:05: [io  0xfe00] has been reserved
system 00:09: [mem 0xfed1c000-0xfed1ffff] has been reserved
system 00:09: [mem 0xfed10000-0xfed13fff] has been reserved
system 00:09: [mem 0xfed18000-0xfed18fff] has been reserved
system 00:09: [mem 0xfed19000-0xfed19fff] has been reserved
system 00:09: [mem 0xe0000000-0xefffffff] has been reserved
system 00:09: [mem 0xfeaff000-0xfeafffff] has been reserved
system 00:09: [mem 0xfed20000-0xfed3ffff] has been reserved
system 00:09: [mem 0xfed40000-0xfed44fff] has been reserved
system 00:09: [mem 0xfed45000-0xfed8ffff] has been reserved
system 00:09: [mem 0xff000000-0xffffffff] has been reserved
system 00:09: [mem 0xfee00000-0xfeefffff] could not be reserved
pci 0000:00:1c.0: BAR 14: assigned [mem 0xc0000000-0xc01fffff]
pci 0000:00:1c.0: BAR 15: assigned [mem 0xc0200000-0xc03fffff 64bit pref]
pci 0000:00:1c.1: BAR 15: assigned [mem 0xc0400000-0xc05fffff 64bit pref]
pci 0000:00:1c.5: BAR 14: assigned [mem 0xc0600000-0xc09fffff]
pci 0000:00:1c.0: BAR 13: assigned [io  0x3000-0x3fff]
pci 0000:00:1c.1: BAR 13: assigned [io  0x4000-0x4fff]
pci 0000:00:1c.0: PCI bridge to [bus 02-02]
pci 0000:00:1c.0:   bridge window [io  0x3000-0x3fff]
pci 0000:00:1c.0:   bridge window [mem 0xc0000000-0xc01fffff]
pci 0000:00:1c.0:   bridge window [mem 0xc0200000-0xc03fffff 64bit pref]
pci 0000:00:1c.1: PCI bridge to [bus 03-03]
pci 0000:00:1c.1:   bridge window [io  0x4000-0x4fff]
pci 0000:00:1c.1:   bridge window [mem 0xf0400000-0xf04fffff]
pci 0000:00:1c.1:   bridge window [mem 0xc0400000-0xc05fffff 64bit pref]
pci 0000:04:00.0: BAR 6: assigned [mem 0xf0820000-0xf083ffff pref]
pci 0000:00:1c.5: PCI bridge to [bus 04-04]
pci 0000:00:1c.5:   bridge window [io  0x2000-0x2fff]
pci 0000:00:1c.5:   bridge window [mem 0xc0600000-0xc09fffff]
pci 0000:00:1c.5:   bridge window [mem 0xf0800000-0xf08fffff 64bit pref]
pci 0000:00:1e.0: PCI bridge to [bus 05-05]
pci 0000:00:1e.0:   bridge window [io  disabled]
pci 0000:00:1e.0:   bridge window [mem disabled]
pci 0000:00:1e.0:   bridge window [mem pref disabled]
pci 0000:00:1c.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
pci 0000:00:1c.0: setting latency timer to 64
pci 0000:00:1c.1: PCI INT B -> GSI 17 (level, low) -> IRQ 17
pci 0000:00:1c.1: setting latency timer to 64
pci 0000:00:1c.5: PCI INT B -> GSI 17 (level, low) -> IRQ 17
pci 0000:00:1c.5: setting latency timer to 64
pci 0000:00:1e.0: setting latency timer to 64
pci_bus 0000:00: resource 0 [io  0x0000-0xffff]
pci_bus 0000:00: resource 1 [mem 0x00000000-0xffffffffffffffff]
pci_bus 0000:02: resource 0 [io  0x3000-0x3fff]
pci_bus 0000:02: resource 1 [mem 0xc0000000-0xc01fffff]
pci_bus 0000:02: resource 2 [mem 0xc0200000-0xc03fffff 64bit pref]
pci_bus 0000:03: resource 0 [io  0x4000-0x4fff]
pci_bus 0000:03: resource 1 [mem 0xf0400000-0xf04fffff]
pci_bus 0000:03: resource 2 [mem 0xc0400000-0xc05fffff 64bit pref]
pci_bus 0000:04: resource 0 [io  0x2000-0x2fff]
pci_bus 0000:04: resource 1 [mem 0xc0600000-0xc09fffff]
pci_bus 0000:04: resource 2 [mem 0xf0800000-0xf08fffff 64bit pref]
pci_bus 0000:05: resource 3 [io  0x0000-0xffff]
pci_bus 0000:05: resource 4 [mem 0x00000000-0xffffffffffffffff]
pci_bus 0000:ff: resource 0 [io  0x0000-0xffff]
pci_bus 0000:ff: resource 1 [mem 0x00000000-0xffffffffffffffff]
NET: Registered protocol family 2
IP route cache hash table entries: 131072 (order: 8, 1048576 bytes)
TCP established hash table entries: 262144 (order: 10, 4194304 bytes)
TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
TCP: Hash tables configured (established 262144 bind 65536)
TCP reno registered
UDP hash table entries: 2048 (order: 4, 65536 bytes)
UDP-Lite hash table entries: 2048 (order: 4, 65536 bytes)
NET: Registered protocol family 1
pci 0000:00:02.0: Boot video device
PCI: CLS 64 bytes, default 64
Unpacking initramfs...
Freeing initrd memory: 2624k freed
PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
Placing 64MB software IO TLB between ffff88000599d000 - ffff88000999d000
software IO TLB at phys 0x599d000 - 0x999d000
Simple Boot Flag at 0x36 set to 0x1
Scanning for low memory corruption every 60 seconds
audit: initializing netlink socket (disabled)
type=2000 audit(1276892444.486:1): initialized
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
msgmni has been set to 7516
alg: No test for stdrng (krng)
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 254)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
pcieport 0000:00:1c.0: setting latency timer to 64
pcieport 0000:00:1c.0: irq 24 for MSI/MSI-X
pcieport 0000:00:1c.1: setting latency timer to 64
pcieport 0000:00:1c.1: irq 25 for MSI/MSI-X
pcieport 0000:00:1c.5: setting latency timer to 64
pcieport 0000:00:1c.5: irq 26 for MSI/MSI-X
vesafb: framebuffer at 0xd0000000, mapped to 0xffffc90010100000, using 1536k, total 32704k
vesafb: mode is 1024x768x8, linelength=1024, pages=41
vesafb: scrolling: redraw
vesafb: Pseudocolor: size=8:8:8:8, shift=0:0:0:0
Console: switching to colour frame buffer device 128x48
fb0: VESA VGA frame buffer device
Linux agpgart interface v0.103
Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
input: Macintosh mouse button emulation as /devices/virtual/input/input0
PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
serio: i8042 KBD port at 0x60,0x64 irq 1
serio: i8042 AUX port at 0x60,0x64 irq 12
mice: PS/2 mouse device common for all mice
cpuidle: using governor ladder
cpuidle: using governor menu
TCP cubic registered
NET: Registered protocol family 17
PM: Resume from disk failed.
registered taskstats version 1
Initalizing network drop monitor service
Freeing unused kernel memory: 484k freed
input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input1
SCSI subsystem initialized
libata version 3.00 loaded.
ahci 0000:00:1f.2: version 3.0
ahci 0000:00:1f.2: PCI INT B -> GSI 19 (level, low) -> IRQ 19
ahci 0000:00:1f.2: irq 27 for MSI/MSI-X
ahci: SSS flag set, parallel bus scan disabled
ahci 0000:00:1f.2: AHCI 0001.0300 32 slots 4 ports 3 Gbps 0x3 impl SATA mode
ahci 0000:00:1f.2: flags: 64bit ncq sntf stag pm led clo pio slum part ems apst 
ahci 0000:00:1f.2: setting latency timer to 64
scsi0 : ahci
scsi1 : ahci
scsi2 : ahci
scsi3 : ahci
ata1: SATA max UDMA/133 abar m2048 at 0xf0705000 port 0xf0705100 irq 27
ata2: SATA max UDMA/133 irq_stat 0x00400040, connection status changed irq 27
ata3: DUMMY
ata4: DUMMY
ata1: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
ata1.00: ATA-8: WDC WD3200BEVT-75A23T0, 01.01A01, max UDMA/133
ata1.00: 625142448 sectors, multi 16: LBA48 NCQ (depth 31/32), AA
ata1.00: configured for UDMA/133
scsi 0:0:0:0: Direct-Access     ATA      WDC WD3200BEVT-7 01.0 PQ: 0 ANSI: 5
ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
ata2.00: ATAPI: HL-DT-STDVD+/-RW GT32N, A101, max UDMA/100, ATAPI AN
ata2.00: configured for UDMA/100
scsi 1:0:0:0: CD-ROM            HL-DT-ST DVD+-RW GT32N    A101 PQ: 0 ANSI: 5
sd 0:0:0:0: [sda] 625142448 512-byte logical blocks: (320 GB/298 GiB)
sd 0:0:0:0: [sda] Write Protect is off
sr0: scsi3-mmc drive: 24x/24x writer dvd-ram cd/rw xa/form2 cdda tray
Uniform CD-ROM driver Revision: 3.20
sr 1:0:0:0: Attached scsi CD-ROM sr0
sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
 sda: sda1 sda2 < sda5 sda6 > sda3
sd 0:0:0:0: [sda] Attached SCSI disk
device-mapper: uevent: version 1.0.3
device-mapper: ioctl: 4.17.0-ioctl (2010-03-05) initialised: dm-devel at redhat.com
EXT4-fs (dm-0): mounted filesystem with ordered data mode
rtc_cmos 00:06: RTC can wake from S4
rtc_cmos 00:06: rtc core: registered rtc_cmos as rtc0
rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
udev: starting version 151
fuse init (API version 7.13)
input: PC Speaker as /devices/platform/pcspkr/input/input2
dcdbas dcdbas: Dell Systems Management Base Driver (version 5.6.0-3.2)
input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input3
ACPI: Power Button [PWRB]
input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input4
ACPI: Sleep Button [SLPB]
input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input5
ACPI: Lid Switch [LID0]
input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input6
ACPI: Power Button [PWRF]
ACPI: Battery Slot [BAT0] (battery present)
agpgart-intel 0000:00:00.0: Intel Ironlake/M Chipset
agpgart-intel 0000:00:00.0: detected 32764K stolen memory
iTCO_vendor_support: vendor-support=0
iTCO_wdt: Intel TCO WatchDog Timer Driver v1.05
iTCO_wdt: Found a HM55 TCO device (Version=2, TCOBASE=0x0460)
iTCO_wdt: initialized. heartbeat=30 sec (nowayout=0)
agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xd0000000
i801_smbus 0000:00:1f.3: PCI INT C -> GSI 18 (level, low) -> IRQ 18
ACPI: I/O resource 0000:00:1f.3 [0x1840-0x185f] conflicts with ACPI region SMBI [0x1840-0x184f]
ACPI: If an ACPI driver is available for this device, you should use it instead of the native driver
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
ACPI: AC Adapter [ADP1] (off-line)
ACPI: WMI: Mapper loaded
thermal LNXTHERM:01: registered as thermal_zone0
ACPI: Thermal Zone [TZ00] (27 C)
thermal LNXTHERM:02: registered as thermal_zone1
ACPI: Thermal Zone [TZ01] (0 C)
ACPI: SSDT 00000000bb71ac18 003A0 (v01  PmRef  Cpu0Ist 00003000 INTL 20060912)
ACPI: SSDT 00000000bb718698 005EC (v01  PmRef  Cpu0Cst 00003001 INTL 20060912)
[Firmware Bug]: ACPI: ACPI brightness control misses _BQC function
Monitor-Mwait will be used to enter C-1 state
Monitor-Mwait will be used to enter C-2 state
Monitor-Mwait will be used to enter C-3 state
ACPI: SSDT 00000000bb719a98 00303 (v01  PmRef    ApIst 00003000 INTL 20060912)
ACPI: SSDT 00000000bb717d98 00119 (v01  PmRef    ApCst 00003000 INTL 20060912)
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci_hcd 0000:00:1a.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
ehci_hcd 0000:00:1a.0: setting latency timer to 64
ehci_hcd 0000:00:1a.0: EHCI Host Controller
ehci_hcd 0000:00:1a.0: new USB bus registered, assigned bus number 1
ehci_hcd 0000:00:1a.0: debug port 2
ehci_hcd 0000:00:1a.0: cache line size of 64 is not supported
ehci_hcd 0000:00:1a.0: irq 16, io mem 0xf0706000
ehci_hcd 0000:00:1a.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
ehci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
ehci_hcd 0000:00:1d.0: setting latency timer to 64
ehci_hcd 0000:00:1d.0: EHCI Host Controller
ehci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
ehci_hcd 0000:00:1d.0: debug port 2
ehci_hcd 0000:00:1d.0: cache line size of 64 is not supported
ehci_hcd 0000:00:1d.0: irq 23, io mem 0xf0706400
ehci_hcd 0000:00:1d.0: USB 2.0 started, EHCI 1.00
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 3 ports detected
r8169 Gigabit Ethernet driver 2.3LK-NAPI loaded
r8169 0000:04:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
r8169 0000:04:00.0: setting latency timer to 64
r8169 0000:04:00.0: irq 28 for MSI/MSI-X
eth0: RTL8102e at 0xffffc90000066000, b8:ac:6f:6e:78:2c, XID 04e00000 IRQ 28
[drm] Initialized drm 1.1.0 20060810
b43-pci-bridge 0000:03:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
b43-pci-bridge 0000:03:00.0: setting latency timer to 64
ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor 0x4243)
ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F, vendor 0x4243)
ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor 0x4243)
ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor 0x4243)
i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
i915 0000:00:02.0: setting latency timer to 64
i915 0000:00:02.0: irq 29 for MSI/MSI-X
[drm] set up 31M of stolen space
ssb: Sonics Silicon Backplane found on PCI device 0000:03:00.0
sd 0:0:0:0: Attached scsi generic sg0 type 0
sr 1:0:0:0: Attached scsi generic sg1 type 5
input: Dell WMI hotkeys as /devices/virtual/input/input7
ACPI: Fan [FAN0] (off)
ACPI: Fan [FAN1] (off)
usb 1-1: new high speed USB device using ehci_hcd and address 2
input: PS/2 Mouse as /devices/platform/i8042/serio1/input/input8
input: AlpsPS/2 ALPS GlidePoint as /devices/platform/i8042/serio1/input/input9
hub 1-1:1.0: USB hub found
hub 1-1:1.0: 6 ports detected
cfg80211: Calling CRDA to update world regulatory domain
usb 2-1: new high speed USB device using ehci_hcd and address 2
hub 2-1:1.0: USB hub found
hub 2-1:1.0: 8 ports detected
usb 1-1.4: new high speed USB device using ehci_hcd and address 3
b43-phy0: Broadcom 4312 WLAN found (core revision 15)
fb: conflicting fb hw usage inteldrmfb vs VESA VGA - removing generic driver
Console: switching to colour dummy device 80x25
Console: switching to colour frame buffer device 170x48
usb 1-1.5: new high speed USB device using ehci_hcd and address 4
phy0: Selected rate control algorithm 'minstrel'
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
Broadcom 43xx driver loaded [ Features: PMNLS, Firmware-ID: FW13 ]
Linux video capture interface: v2.00
fb0: inteldrmfb frame buffer device
registered panic notifier
acpi device:01: registered as cooling_device6
input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input10
ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level, low) -> IRQ 22
HDA Intel 0000:00:1b.0: irq 30 for MSI/MSI-X
HDA Intel 0000:00:1b.0: setting latency timer to 64
uvcvideo: Found UVC 1.00 device Laptop_Integrated_Webcam_1.3M (0c45:641d)
input: Laptop_Integrated_Webcam_1.3M as /devices/pci0000:00/0000:00:1a.0/usb1/1-1/1-1.4/1-1.4:1.0/input/input11
usbcore: registered new interface driver uvcvideo
USB Video Class driver (v0.1.0)
Initializing USB Mass Storage driver...
scsi4 : usb-storage 1-1.5:1.0
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
hda_codec: ALC269: BIOS auto-probing.
input: HDA Digital PCBeep as /devices/pci0000:00/0000:00:1b.0/input/input12
kjournald starting.  Commit interval 5 seconds
EXT3-fs (sda1): warning: maximal mount count reached, running e2fsck is recommended
EXT3-fs (sda1): using internal journal
EXT3-fs (sda1): mounted filesystem with writeback data mode
EXT4-fs (dm-1): mounted filesystem with ordered data mode
Adding 7325600k swap on /dev/sda5.  Priority:-1 extents:1 across:7325600k 
scsi 4:0:0:0: Direct-Access     Generic- Multi-Card       1.00 PQ: 0 ANSI: 0 CCS
sd 4:0:0:0: Attached scsi generic sg2 type 0
sd 4:0:0:0: [sdb] Attached SCSI removable disk
b43 ssb0:0: firmware: requesting b43/ucode15.fw
b43 ssb0:0: firmware: requesting b43/lp0initvals15.fw
b43 ssb0:0: firmware: requesting b43/lp0bsinitvals15.fw
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
r8169: eth0: link down
wlan0: deauthenticating from 00:22:3f:c3:99:a8 by local choice (reason=3)
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
Intel AES-NI instructions are not detected.
padlock: VIA PadLock not detected.
b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0 ERROR: This device does not support DMA on your system. Please use PIO instead.
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
b43-phy0: Controller restarted
No probe response from AP 00:22:3f:c3:99:a8 after 500ms, disconnecting.
cfg80211: Calling CRDA to update world regulatory domain
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
wlan0: deauthenticated from 00:22:3f:c3:99:a8 (Reason: 15)
cfg80211: Calling CRDA to update world regulatory domain
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
wlan0: deauthenticated from 00:22:3f:c3:99:a8 (Reason: 15)
cfg80211: Calling CRDA to update world regulatory domain
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
wlan0: deauthenticating from 00:22:3f:c3:99:a8 by local choice (reason=3)
wlan0: deauthenticating from 00:22:3f:c3:99:a8 by local choice (reason=3)
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
wlan0: deauthenticated from 00:22:3f:c3:99:a8 (Reason: 15)
cfg80211: Calling CRDA to update world regulatory domain
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
wlan0: deauthenticated from 00:22:3f:c3:99:a8 (Reason: 15)
cfg80211: Calling CRDA to update world regulatory domain
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
wlan0: deauthenticated from 00:22:3f:c3:99:a8 (Reason: 15)
cfg80211: Calling CRDA to update world regulatory domain
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
wlan0: deauthenticated from 00:22:3f:c3:99:a8 (Reason: 15)
cfg80211: Calling CRDA to update world regulatory domain
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
wlan0: deauthenticating from 00:22:3f:c3:99:a8 by local choice (reason=3)
