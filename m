From: Carlos Gustavo Ramirez Rodriguez <carlosgrr@gmail.com>
Date: Fri, 3 Apr 2015 00:52:36 -0300
Subject: NMI watchdog: BUG: soft lockup - CPU#4 stuck for 23s!
 [irq/19-b43:1082]
Message-ID: <CA+KxKsC1zQHGqAnqEQYM5w1aYLJvUssP80fv-xeNFJdepB9mbQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Good Morning,

Recently I have installed Ubuntu 15.04 on my machine and I am
receiving these kernel oops messages:

NMI watchdog: BUG: soft lockup - CPU#4 stuck for 23s! [irq/19-b43:1082]

To install the b43 driver I used the command: "sudo apt-get install
firmware-b43-installer"

From the page http://linuxwireless.org/en/users/Drivers/b43/ they said
you would need:

What can I do to fix this issue? Can you help me, please?

Thankful,


"
root at carlos:~# uname -a
Linux carlos 3.19.0-10-generic #10-Ubuntu SMP Mon Mar 23 16:25:20 UTC
2015 x86_64 x86_64 x86_64 GNU/Linux
"


"
root at carlos:~# lspci -vvn|grep 43 -A7
    Subsystem: 1043:84ca
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
    Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort+ >SERR- <PERR- INTx-
    Latency: 0
    Capabilities: [e0] Vendor Specific Information: Len=0c <?>

00:01.0 0604: 8086:0151 (rev 09) (prog-if 00 [Normal decode])
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
--
    Capabilities: [88] Subsystem: 1043:84ca
    Capabilities: [80] Power Management version 3
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
        Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
    Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
        Address: fee00258  Data: 0000
    Capabilities: [a0] Express (v2) Root Port (Slot+), MSI 00
        DevCap:    MaxPayload 256 bytes, PhantFunc 0
--
    Subsystem: 1043:84ca
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0
    Interrupt: pin A routed to IRQ 116
    Region 0: Memory at f7400000 (64-bit, non-prefetchable) [size=4M]
    Region 2: Memory at d0000000 (64-bit, prefetchable) [size=256M]
    Region 4: I/O ports@f000 [size=64]
--
    Subsystem: 1043:84ca
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0
    Interrupt: pin A routed to IRQ 93
    Region 0: Memory@f7e20000 (64-bit, non-prefetchable) [size=64K]
    Capabilities: [70] Power Management version 2
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA
PME(D0-,D1-,D2-,D3hot+,D3cold+)
--
    Subsystem: 1043:84ca
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0
    Interrupt: pin A routed to IRQ 115
    Region 0: Memory@f7e3b000 (64-bit, non-prefetchable) [size=16]
    Capabilities: [50] Power Management version 3
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
--
    Subsystem: 1043:849c
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0
    Interrupt: pin A routed to IRQ 112
    Region 0: Memory at f7e00000 (32-bit, non-prefetchable) [size=128K]
    Region 1: Memory at f7e39000 (32-bit, non-prefetchable) [size=4K]
    Region 2: I/O ports@f080 [size=32]
--
    Subsystem: 1043:84ca
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
    Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0
    Interrupt: pin A routed to IRQ 16
    Region 0: Memory@f7e38000 (32-bit, non-prefetchable) [size=1K]
    Capabilities: [50] Power Management version 2
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
--
    Subsystem: 1043:84d8
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0, Cache Line Size: 64 bytes
    Interrupt: pin A routed to IRQ 117
    Region 0: Memory@f7e30000 (64-bit, non-prefetchable) [size=16K]
    Capabilities: [50] Power Management version 2
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=55mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
--
    Capabilities: [90] Subsystem: 1043:84ca
    Capabilities: [a0] Power Management version 2
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
        Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
    Kernel driver in use: pcieport

00:1c.4 0604: 8086:1e18 (rev c4) (prog-if 00 [Normal decode])
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
--
    Capabilities: [90] Subsystem: 1043:84ca
    Capabilities: [a0] Power Management version 2
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
        Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
    Kernel driver in use: pcieport

00:1c.6 0604: 8086:1e1c (rev c4) (prog-if 00 [Normal decode])
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
--
    Capabilities: [90] Subsystem: 1043:84ca
    Capabilities: [a0] Power Management version 2
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
        Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
    Kernel driver in use: pcieport

00:1c.7 0604: 8086:1e1e (rev c4) (prog-if 00 [Normal decode])
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
--
    Capabilities: [90] Subsystem: 1043:84ca
    Capabilities: [a0] Power Management version 2
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
        Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
    Kernel driver in use: pcieport

00:1d.0 0c03: 8086:1e26 (rev 04) (prog-if 20 [EHCI])
    Subsystem: 1043:84ca
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
    Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0
    Interrupt: pin A routed to IRQ 23
    Region 0: Memory@f7e37000 (32-bit, non-prefetchable) [size=1K]
    Capabilities: [50] Power Management version 2
        Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
--
    Subsystem: 1043:84ca
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0
    Capabilities: [e0] Vendor Specific Information: Len=0c <?>
    Kernel driver in use: lpc_ich

00:1f.2 0106: 8086:1e02 (rev 04) (prog-if 01 [AHCI 1.0])
    Subsystem: 1043:84ca
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
    Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0
    Interrupt: pin B routed to IRQ 110
    Region 0: I/O ports at f0d0 [size=8]
    Region 1: I/O ports at f0c0 [size=4]
    Region 2: I/O ports@f0b0 [size=8]
--
    Subsystem: 1043:84ca
    Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
    Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Interrupt: pin C routed to IRQ 255
    Region 0: Memory at f7e35000 (64-bit, non-prefetchable) [size=256]
    Region 4: I/O ports@f040 [size=32]

01:00.0 0300: 10de:1184 (rev a1) (prog-if 00 [VGA controller])
--
    Subsystem: 1043:8488
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0, Cache Line Size: 64 bytes
    Interrupt: pin A routed to IRQ 16
    Region 0: Memory@f7d00000 (64-bit, non-prefetchable) [size=32K]
    Capabilities: [50] MSI: Enable- Count=1/8 Maskable- 64bit+
        Address: 0000000000000000  Data: 0000
--
    Subsystem: 1043:8488
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0, Cache Line Size: 64 bytes
    Interrupt: pin A routed to IRQ 18
    Region 0: Memory@f7c00000 (64-bit, non-prefetchable) [size=32K]
    Capabilities: [50] MSI: Enable- Count=1/8 Maskable- 64bit+
        Address: 0000000000000000  Data: 0000
--
    Subsystem: 1043:84b7
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0, Cache Line Size: 32 bytes
    Interrupt: pin A routed to IRQ 113
    Region 0: I/O ports at d050 [size=8]
    Region 1: I/O ports at d040 [size=4]
    Region 2: I/O ports@d030 [size=8]
--
    Subsystem: 1043:8438
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0, Cache Line Size: 32 bytes
    Interrupt: pin A routed to IRQ 114
    Region 0: I/O ports at c040 [size=8]
    Region 1: I/O ports at c030 [size=4]
    Region 2: I/O ports@c020 [size=8]
--
0c:00.0 0280: 14e4:4359
    Subsystem: 1043:850c
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx-
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0, Cache Line Size: 32 bytes
    Interrupt: pin A routed to IRQ 19
    Region 0: Memory@f7800000 (64-bit, non-prefetchable) [size=16K]
    Capabilities: [40] Power Management version 3
        Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
--
    Subsystem: 1043:8505
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0, Cache Line Size: 64 bytes
    Interrupt: pin A routed to IRQ 111
    Region 0: I/O ports at b000 [size=256]
    Region 2: Memory at ea104000 (64-bit, prefetchable) [size=4K]
    Region 4: Memory at ea100000 (64-bit, prefetchable) [size=16K]
"





"
root at carlos:~# dmesg
[    0.000000] PAT configuration [0-7]: WB  WT  UC- UC  WC  WP  UC  UC
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Initializing cgroup subsys cpuacct
[    0.000000] Linux version 3.19.0-10-generic (buildd@brownie) (gcc
version 4.9.2 (Ubuntu 4.9.2-10ubuntu10) ) #10-Ubuntu SMP Mon Mar 23
16:25:20 UTC 2015 (Ubuntu 3.19.0-10.10-generic 3.19.2)
[    0.000000] Command line: root=/dev/mapper/ubuntu--gnome--vg-root
ignore_loglevel
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   Centaur CentaurHauls
[    0.000000] Released 0 page(s)
[    0.000000] e820: BIOS-provided physical RAM map:
[    0.000000] Xen: [mem 0x0000000000000000-0x0000000000000fff] reserved
[    0.000000] Xen: [mem 0x0000000000001000-0x000000000008ffff] usable
[    0.000000] Xen: [mem 0x0000000000090000-0x0000000000090fff] reserved
[    0.000000] Xen: [mem 0x0000000000091000-0x000000000009dfff] usable
[    0.000000] Xen: [mem 0x000000000009e000-0x00000000000fffff] reserved
[    0.000000] Xen: [mem 0x0000000000100000-0x000000001fffffff] usable
[    0.000000] Xen: [mem 0x0000000020000000-0x00000000201fffff] reserved
[    0.000000] Xen: [mem 0x0000000020200000-0x0000000040003fff] usable
[    0.000000] Xen: [mem 0x0000000040004000-0x0000000040004fff] reserved
[    0.000000] Xen: [mem 0x0000000040005000-0x00000000bba4ffff] usable
[    0.000000] Xen: [mem 0x00000000bba50000-0x00000000bc54afff] reserved
[    0.000000] Xen: [mem 0x00000000bc54b000-0x00000000bc55bfff] ACPI data
[    0.000000] Xen: [mem 0x00000000bc55c000-0x00000000bc687fff] ACPI NVS
[    0.000000] Xen: [mem 0x00000000bc688000-0x00000000bd7a1fff] reserved
[    0.000000] Xen: [mem 0x00000000bd7a2000-0x00000000bd7a2fff] usable
[    0.000000] Xen: [mem 0x00000000bd7a3000-0x00000000bd7e5fff] ACPI NVS
[    0.000000] Xen: [mem 0x00000000bd7e6000-0x00000000bdc1bfff] usable
[    0.000000] Xen: [mem 0x00000000bdc1c000-0x00000000bdff3fff] reserved
[    0.000000] Xen: [mem 0x00000000bdff4000-0x00000000bdffffff] usable
[    0.000000] Xen: [mem 0x00000000bf000000-0x00000000cf1fffff] reserved
[    0.000000] Xen: [mem 0x00000000f8000000-0x00000000fbffffff] reserved
[    0.000000] Xen: [mem 0x00000000fec00000-0x00000000fec00fff] reserved
[    0.000000] Xen: [mem 0x00000000fed00000-0x00000000fed03fff] reserved
[    0.000000] Xen: [mem 0x00000000fed1c000-0x00000000fed1ffff] reserved
[    0.000000] Xen: [mem 0x00000000fed90000-0x00000000fed91fff] reserved
[    0.000000] Xen: [mem 0x00000000fee00000-0x00000000feefffff] reserved
[    0.000000] Xen: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
[    0.000000] Xen: [mem 0x0000000100000000-0x000000082fdfffff] usable
[    0.000000] debug: ignoring loglevel setting.
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] efi: EFI v2.31 by American Megatrends
[    0.000000] efi:  ACPI=0xbc54e000  ACPI 2.0=0xbc54e000  SMBIOS=0xf04c0
[    0.000000] SMBIOS 2.7 present.
[    0.000000] DMI: System manufacturer System Product Name/P8Z77-V
DELUXE, BIOS 2104 08/13/2013
[    0.000000] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000000] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000000] AGP: No AGP bridge found
[    0.000000] e820: last_pfn = 0x82fe00 max_arch_pfn = 0x400000000
[    0.000000] e820: last_pfn = 0xbe000 max_arch_pfn = 0x400000000
[    0.000000] Scanning 1 areas for low memory corruption
[    0.000000] Base memory trampoline at [ffff880000098000] 98000 size 24576
[    0.000000] init_memory_mapping: [mem 0x00000000-0x000fffff]
[    0.000000]  [mem 0x00000000-0x000fffff] page 4k
[    0.000000] init_memory_mapping: [mem 0x7c8e00000-0x7c8ffffff]
[    0.000000]  [mem 0x7c8e00000-0x7c8ffffff] page 4k
[    0.000000] BRK [0x01fe5000, 0x01fe5fff] PGTABLE
[    0.000000] BRK [0x01fe6000, 0x01fe6fff] PGTABLE
[    0.000000] init_memory_mapping: [mem 0x7c0000000-0x7c8dfffff]
[    0.000000]  [mem 0x7c0000000-0x7c8dfffff] page 4k
[    0.000000] BRK [0x01fe7000, 0x01fe7fff] PGTABLE
[    0.000000] BRK [0x01fe8000, 0x01fe8fff] PGTABLE
[    0.000000] BRK [0x01fe9000, 0x01fe9fff] PGTABLE
[    0.000000] BRK [0x01fea000, 0x01feafff] PGTABLE
[    0.000000] init_memory_mapping: [mem 0x7a0000000-0x7bfffffff]
[    0.000000]  [mem 0x7a0000000-0x7bfffffff] page 4k
[    0.000000] init_memory_mapping: [mem 0x00100000-0x1fffffff]
[    0.000000]  [mem 0x00100000-0x1fffffff] page 4k
[    0.000000] init_memory_mapping: [mem 0x20200000-0x40003fff]
[    0.000000]  [mem 0x20200000-0x40003fff] page 4k
[    0.000000] init_memory_mapping: [mem 0x40005000-0xbba4ffff]
[    0.000000]  [mem 0x40005000-0xbba4ffff] page 4k
[    0.000000] init_memory_mapping: [mem 0xbd7a2000-0xbd7a2fff]
[    0.000000]  [mem 0xbd7a2000-0xbd7a2fff] page 4k
[    0.000000] init_memory_mapping: [mem 0xbd7e6000-0xbdc1bfff]
[    0.000000]  [mem 0xbd7e6000-0xbdc1bfff] page 4k
[    0.000000] init_memory_mapping: [mem 0xbdff4000-0xbdffffff]
[    0.000000]  [mem 0xbdff4000-0xbdffffff] page 4k
[    0.000000] init_memory_mapping: [mem 0x100000000-0x79fffffff]
[    0.000000]  [mem 0x100000000-0x79fffffff] page 4k
[    0.000000] init_memory_mapping: [mem 0x7c9000000-0x82fdfffff]
[    0.000000]  [mem 0x7c9000000-0x82fdfffff] page 4k
[    0.000000] RAMDISK: [mem 0x08000000-0x09590fff]
[    0.000000] ACPI: Early table checksum verification disabled
[    0.000000] ACPI: RSDP 0x00000000BC54E000 000024 (v02 ALASKA)
[    0.000000] ACPI: XSDT 0x00000000BC54E080 00007C (v01 ALASKA A M I
  01072009 AMI  00010013)
[    0.000000] ACPI: FACP 0x00000000BC558FB0 00010C (v05 ALASKA A M I
  01072009 AMI  00010013)
[    0.000000] ACPI: DSDT 0x00000000BC54E198 00AE16 (v02 ALASKA A M I
  00000022 INTL 20051117)
[    0.000000] ACPI: FACS 0x00000000BC686080 000040
[    0.000000] ACPI: APIC 0x00000000BC5590C0 000092 (v03 ALASKA A M I
  01072009 AMI  00010013)
[    0.000000] ACPI: FPDT 0x00000000BC559158 000044 (v01 ALASKA A M I
  01072009 AMI  00010013)
[    0.000000] ACPI: MCFG 0x00000000BC5591A0 00003C (v01 ALASKA A M I
  01072009 MSFT 00000097)
[    0.000000] ACPI: SSDT 0x00000000BC5591E0 0007CA (v01 Intel_
AoacTabl 00001000 INTL 20091112)
[    0.000000] ACPI: HPET 0x00000000BC5599B0 000038 (v01 ALASKA A M I
  01072009 AMI. 00000005)
[    0.000000] ACPI: SSDT 0x00000000BC5599E8 00036D (v01 SataRe
SataTabl 00001000 INTL 20091112)
[    0.000000] ACPI: BGRT 0x00000000BC55B2B0 000038 (v00 ALASKA A M I
  01072009 AMI  00010013)
[    0.000000] ACPI: SSDT 0x00000000BC559DB0 0009AA (v01 PmRef
Cpu0Ist  00003000 INTL 20051117)
[    0.000000] ACPI: SSDT 0x00000000BC55A760 000A92 (v01 PmRef  CpuPm
  00003000 INTL 20051117)
[    0.000000] ACPI: XMAR 0x00000000BC55B1F8 0000B8 (v01 INTEL  SNB
  00000001 INTL 00000001)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] NUMA turned off
[    0.000000] Faking a node at [mem 0x0000000000000000-0x000000082fdfffff]
[    0.000000] NODE_DATA(0) allocated [mem 0x7c90ad000-0x7c90b1fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x00001000-0x00ffffff]
[    0.000000]   DMA32    [mem 0x01000000-0xffffffff]
[    0.000000]   Normal   [mem 0x100000000-0x82fdfffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x00001000-0x0008ffff]
[    0.000000]   node   0: [mem 0x00091000-0x0009dfff]
[    0.000000]   node   0: [mem 0x00100000-0x1fffffff]
[    0.000000]   node   0: [mem 0x20200000-0x40003fff]
[    0.000000]   node   0: [mem 0x40005000-0xbba4ffff]
[    0.000000]   node   0: [mem 0xbd7a2000-0xbd7a2fff]
[    0.000000]   node   0: [mem 0xbd7e6000-0xbdc1bfff]
[    0.000000]   node   0: [mem 0xbdff4000-0xbdffffff]
[    0.000000]   node   0: [mem 0x100000000-0x82fdfffff]
[    0.000000] Initmem setup node 0 [mem 0x00001000-0x82fdfffff]
[    0.000000] On node 0 totalpages: 8305198
[    0.000000]   DMA zone: 64 pages used for memmap
[    0.000000]   DMA zone: 21 pages reserved
[    0.000000]   DMA zone: 3996 pages, LIFO batch:0
[    0.000000]   DMA32 zone: 11955 pages used for memmap
[    0.000000]   DMA32 zone: 765074 pages, LIFO batch:31
[    0.000000]   Normal zone: 117752 pages used for memmap
[    0.000000]   Normal zone: 7536128 pages, LIFO batch:31
[    0.000000] p2m virtual area at ffffc90000000000, size is 4200000
[    0.000000] Remapped 279506 page(s)
[    0.000000] Reserving Intel graphics stolen memory at 0xbf200000-0xcf1fffff
[    0.000000] ACPI: PM-Timer IO Port: 0x408
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x02] lapic_id[0x02] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x03] lapic_id[0x04] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x04] lapic_id[0x06] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x05] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x06] lapic_id[0x03] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x07] lapic_id[0x05] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x08] lapic_id[0x07] enabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0xff] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] ACPI: HPET id: 0x8086a701 base: 0xfed00000
[    0.000000] smpboot: Allowing 8 CPUs, 0 hotplug CPUs
[    0.000000] PM: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.000000] PM: Registered nosave memory: [mem 0x00090000-0x00090fff]
[    0.000000] PM: Registered nosave memory: [mem 0x0009e000-0x000fffff]
[    0.000000] PM: Registered nosave memory: [mem 0x20000000-0x201fffff]
[    0.000000] PM: Registered nosave memory: [mem 0x40004000-0x40004fff]
[    0.000000] PM: Registered nosave memory: [mem 0xbba50000-0xbc54afff]
[    0.000000] PM: Registered nosave memory: [mem 0xbc54b000-0xbc55bfff]
[    0.000000] PM: Registered nosave memory: [mem 0xbc55c000-0xbc687fff]
[    0.000000] PM: Registered nosave memory: [mem 0xbc688000-0xbd7a1fff]
[    0.000000] PM: Registered nosave memory: [mem 0xbd7a3000-0xbd7e5fff]
[    0.000000] PM: Registered nosave memory: [mem 0xbdc1c000-0xbdff3fff]
[    0.000000] PM: Registered nosave memory: [mem 0xbe000000-0xbeffffff]
[    0.000000] PM: Registered nosave memory: [mem 0xbf000000-0xcf1fffff]
[    0.000000] PM: Registered nosave memory: [mem 0xcf200000-0xf7ffffff]
[    0.000000] PM: Registered nosave memory: [mem 0xf8000000-0xfbffffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfc000000-0xfebfffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfec00000-0xfec00fff]
[    0.000000] PM: Registered nosave memory: [mem 0xfec01000-0xfecfffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfed00000-0xfed03fff]
[    0.000000] PM: Registered nosave memory: [mem 0xfed04000-0xfed1bfff]
[    0.000000] PM: Registered nosave memory: [mem 0xfed1c000-0xfed1ffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfed20000-0xfed8ffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfed90000-0xfed91fff]
[    0.000000] PM: Registered nosave memory: [mem 0xfed92000-0xfedfffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfee00000-0xfeefffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfef00000-0xfeffffff]
[    0.000000] PM: Registered nosave memory: [mem 0xff000000-0xffffffff]
[    0.000000] e820: [mem 0xcf200000-0xf7ffffff] available for PCI devices
[    0.000000] Booting paravirtualized kernel on Xen
[    0.000000] Xen version: 4.5.1-pre (preserve-AD)
[    0.000000] setup_percpu: NR_CPUS:256 nr_cpumask_bits:256
nr_cpu_ids:8 nr_node_ids:1
[    0.000000] PERCPU: Embedded 31 pages/cpu @ffff88080d200000 s87040
r8192 d31744 u262144
[    0.000000] pcpu-alloc: s87040 r8192 d31744 u262144 alloc=1*2097152
[    0.000000] pcpu-alloc: [0] 0 1 2 3 4 5 6 7
[    0.000000] xen: PV spinlocks enabled
[    0.000000] Built 1 zonelists in Node order, mobility grouping on.
Total pages: 8175406
[    0.000000] Policy zone: Normal
[    0.000000] Kernel command line:
root=/dev/mapper/ubuntu--gnome--vg-root ignore_loglevel
[    0.000000] PID hash table entries: 4096 (order: 3, 32768 bytes)
[    0.000000] xsave: enabled xstate_bv 0x7, cntxt size 0x340 using
standard form
[    0.000000] software IO TLB [mem 0x809200000-0x80d200000] (64MB)
mapped at [ffff880809200000-ffff88080d1fffff]
[    0.000000] Memory: 31896796K/33220792K available (7989K kernel
code, 1232K rwdata, 3748K rodata, 1408K init, 1300K bss, 1323996K
reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000]     RCU dyntick-idle grace-period acceleration is enabled.
[    0.000000]     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=8.
[    0.000000] RCU: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=8
[    0.000000] NR_IRQS:16640 nr_irqs:488 16
[    0.000000] xen:events: Using FIFO-based ABI
[    0.000000] xen: --> pirq=1 -> irq=1 (gsi=1)
[    0.000000] xen: --> pirq=2 -> irq=2 (gsi=2)
[    0.000000] xen: --> pirq=3 -> irq=3 (gsi=3)
[    0.000000] xen: --> pirq=4 -> irq=4 (gsi=4)
[    0.000000] xen: --> pirq=5 -> irq=5 (gsi=5)
[    0.000000] xen: --> pirq=6 -> irq=6 (gsi=6)
[    0.000000] xen: --> pirq=7 -> irq=7 (gsi=7)
[    0.000000] xen: --> pirq=8 -> irq=8 (gsi=8)
[    0.000000] xen: --> pirq=9 -> irq=9 (gsi=9)
[    0.000000] xen: --> pirq=10 -> irq=10 (gsi=10)
[    0.000000] xen: --> pirq=11 -> irq=11 (gsi=11)
[    0.000000] xen: --> pirq=12 -> irq=12 (gsi=12)
[    0.000000] xen: --> pirq=13 -> irq=13 (gsi=13)
[    0.000000] xen: --> pirq=14 -> irq=14 (gsi=14)
[    0.000000] xen: --> pirq=15 -> irq=15 (gsi=15)
[    0.000000]     Offload RCU callbacks from all CPUs
[    0.000000]     Offload RCU callbacks from CPUs: 0-7.
[    0.000000] Console: colour dummy device 80x25
[    0.000000] console [tty0] enabled
[    0.000000] Xen: using vcpuop timer interface
[    0.000000] installing Xen timer for CPU 0
[    0.000000] tsc: Detected 3410.122 MHz processor
[   25.929216] Calibrating delay loop (skipped), value calculated
using timer frequency.. 6820.24 BogoMIPS (lpj=13640488)
[   25.929220] pid_max: default: 32768 minimum: 301
[   25.929226] ACPI: Core revision 20141107
[   25.947977] ACPI: All ACPI Tables successfully acquired
[   26.077788] Security Framework initialized
[   26.077806] AppArmor: AppArmor initialized
[   26.077808] Yama: becoming mindful.
[   26.080731] Dentry cache hash table entries: 4194304 (order: 13,
33554432 bytes)
[   26.087195] Inode-cache hash table entries: 2097152 (order: 12,
16777216 bytes)
[   26.089767] Mount-cache hash table entries: 65536 (order: 7, 524288 bytes)
[   26.089818] Mountpoint-cache hash table entries: 65536 (order: 7,
524288 bytes)
[   26.090100] Initializing cgroup subsys memory
[   26.090106] Initializing cgroup subsys devices
[   26.090109] Initializing cgroup subsys freezer
[   26.090112] Initializing cgroup subsys net_cls
[   26.090114] Initializing cgroup subsys blkio
[   26.090117] Initializing cgroup subsys perf_event
[   26.090119] Initializing cgroup subsys net_prio
[   26.090122] Initializing cgroup subsys hugetlb
[   26.090168] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
ENERGY_PERF_BIAS: View and update with x86_energy_perf_policy(8)
[   26.090172] CPU: Physical Processor ID: 0
[   26.090174] CPU: Processor Core ID: 0
[   26.090435] mce: CPU supports 2 MCE banks
[   26.090448] Last level iTLB entries: 4KB 512, 2MB 8, 4MB 8
Last level dTLB entries: 4KB 512, 2MB 32, 4MB 32, 1GB 0
[   26.090534] Freeing SMP alternatives memory: 32K (ffffffff81e96000
- ffffffff81e9e000)
[   26.091506] Ignoring BGRT: invalid status 0 (expected 1)
[   26.091509] ftrace: allocating 30035 entries in 118 pages
[   26.101417] cpu 0 spinlock event irq 25
[   26.108276] Performance Events: unsupported p6 CPU model 58 no PMU
driver, software events only.
[   26.108836] NMI watchdog: disabled (cpu0): hardware events not enabled
[   26.108899] installing Xen timer for CPU 1
[   26.108905] cpu 1 spinlock event irq 32
[   26.109452] installing Xen timer for CPU 2
[   26.109460] cpu 2 spinlock event irq 39
[   26.109951] installing Xen timer for CPU 3
[   26.109956] cpu 3 spinlock event irq 46
[   26.110402] installing Xen timer for CPU 4
[   26.110407] cpu 4 spinlock event irq 53
[   26.110878] installing Xen timer for CPU 5
[   26.110883] cpu 5 spinlock event irq 60
[   26.111385] installing Xen timer for CPU 6
[   26.111391] cpu 6 spinlock event irq 67
[   26.111881] installing Xen timer for CPU 7
[   26.111886] cpu 7 spinlock event irq 74
[   26.112267] x86: Booted up 1 node, 8 CPUs
[   26.112443] devtmpfs: initialized
[   26.115904] evm: security.selinux
[   26.115906] evm: security.SMACK64
[   26.115907] evm: security.SMACK64EXEC
[   26.115908] evm: security.SMACK64TRANSMUTE
[   26.115909] evm: security.SMACK64MMAP
[   26.115910] evm: security.ima
[   26.115911] evm: security.capability
[   26.115957] PM: Registering ACPI NVS region [mem
0xbc55c000-0xbc687fff] (1228800 bytes)
[   26.115968] PM: Registering ACPI NVS region [mem
0xbd7a3000-0xbd7e5fff] (274432 bytes)
[   26.116150] pinctrl core: initialized pinctrl subsystem
[   26.116235] RTC time:  3:34:52, date: 04/03/15
[   26.116330] NET: Registered protocol family 16
[   26.116340] xen:grant_table: Grant tables using version 1 layout
[   26.116347] Grant table initialized
[   26.116550] ACPI FADT declares the system doesn't support PCIe
ASPM, so disable it
[   26.116553] ACPI: bus type PCI registered
[   26.116555] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[   26.116682] PCI: MMCONFIG for domain 0000 [bus 00-3f] at [mem
0xf8000000-0xfbffffff] (base 0xf8000000)
[   26.116685] PCI: MMCONFIG at [mem 0xf8000000-0xfbffffff] reserved in E820
[   26.121317] PCI: Using configuration type 1 for base access
[   26.126084] ACPI: Added _OSI(Module Device)
[   26.126087] ACPI: Added _OSI(Processor Device)
[   26.126089] ACPI: Added _OSI(3.0 _SCP Extensions)
[   26.126090] ACPI: Added _OSI(Processor Aggregator Device)
[   26.127074] xen: registering gsi 9 triggering 0 polarity 0
[   26.128067] ACPI: Executed 1 blocks of module-level executable AML code
[   26.131008] ACPI: Dynamic OEM Table Load:
[   26.131015] ACPI: SSDT 0xFFFF880805011000 00083B (v01 PmRef
Cpu0Cst  00003001 INTL 20051117)
[   26.131502] ACPI: Dynamic OEM Table Load:
[   26.131506] ACPI: SSDT 0xFFFF880805736400 000303 (v01 PmRef  ApIst
  00003000 INTL 20051117)
[   26.131865] ACPI: Dynamic OEM Table Load:
[   26.131868] ACPI: SSDT 0xFFFF880805776000 000119 (v01 PmRef  ApCst
  00003000 INTL 20051117)
[   26.133230] ACPI: Interpreter enabled
[   26.133236] ACPI Exception: AE_NOT_FOUND, While evaluating Sleep
State [\_S1_] (20141107/hwxface-580)
[   26.133240] ACPI Exception: AE_NOT_FOUND, While evaluating Sleep
State [\_S2_] (20141107/hwxface-580)
[   26.133250] ACPI: (supports S0 S3 S4 S5)
[   26.133252] ACPI: Using IOAPIC for interrupt routing
[   26.133273] PCI: Using host bridge windows from ACPI; if necessary,
use "pci=nocrs" and report a bug
[   26.137653] ACPI: Power Resource [FN00] (off)
[   26.137713] ACPI: Power Resource [FN01] (off)
[   26.137770] ACPI: Power Resource [FN02] (off)
[   26.137826] ACPI: Power Resource [FN03] (off)
[   26.137882] ACPI: Power Resource [FN04] (off)
[   26.138404] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-3e])
[   26.138409] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM
ClockPM Segments MSI]
[   26.138660] acpi PNP0A08:00: _OSC: platform does not support
[PCIeHotplug PME]
[   26.138822] acpi PNP0A08:00: _OSC: OS now controls [AER PCIeCapability]
[   26.139441] PCI host bridge to bus 0000:00
[   26.139444] pci_bus 0000:00: root bus resource [bus 00-3e]
[   26.139445] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7]
[   26.139447] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff]
[   26.139449] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff]
[   26.139451] pci_bus 0000:00: root bus resource [mem 0x000c0000-0x000c3fff]
[   26.139452] pci_bus 0000:00: root bus resource [mem 0x000c4000-0x000c7fff]
[   26.139454] pci_bus 0000:00: root bus resource [mem 0x000c8000-0x000cbfff]
[   26.139456] pci_bus 0000:00: root bus resource [mem 0x000cc000-0x000cffff]
[   26.139457] pci_bus 0000:00: root bus resource [mem 0x000d0000-0x000d3fff]
[   26.139459] pci_bus 0000:00: root bus resource [mem 0x000d4000-0x000d7fff]
[   26.139460] pci_bus 0000:00: root bus resource [mem 0x000d8000-0x000dbfff]
[   26.139462] pci_bus 0000:00: root bus resource [mem 0x000dc000-0x000dffff]
[   26.139464] pci_bus 0000:00: root bus resource [mem 0xcf200000-0xfeafffff]
[   26.139474] pci 0000:00:00.0: [8086:0150] type 00 class 0x060000
[   26.139597] pci 0000:00:01.0: [8086:0151] type 01 class 0x060400
[   26.139672] pci 0000:00:01.0: PME# supported from D0 D3hot D3cold
[   26.139709] pci 0000:00:01.0: System wakeup disabled by ACPI
[   26.139758] pci 0000:00:02.0: [8086:0162] type 00 class 0x030000
[   26.139781] pci 0000:00:02.0: reg 0x10: [mem 0xf7400000-0xf77fffff 64bit]
[   26.139794] pci 0000:00:02.0: reg 0x18: [mem 0xd0000000-0xdfffffff
64bit pref]
[   26.139803] pci 0000:00:02.0: reg 0x20: [io  0xf000-0xf03f]
[   26.139946] pci 0000:00:14.0: [8086:1e31] type 00 class 0x0c0330
[   26.139978] pci 0000:00:14.0: reg 0x10: [mem 0xf7e20000-0xf7e2ffff 64bit]
[   26.140089] pci 0000:00:14.0: PME# supported from D3hot D3cold
[   26.140126] pci 0000:00:14.0: System wakeup disabled by ACPI
[   26.140174] pci 0000:00:16.0: [8086:1e3a] type 00 class 0x078000
[   26.140207] pci 0000:00:16.0: reg 0x10: [mem 0xf7e3b000-0xf7e3b00f 64bit]
[   26.140322] pci 0000:00:16.0: PME# supported from D0 D3hot D3cold
[   26.140415] pci 0000:00:19.0: [8086:1503] type 00 class 0x020000
[   26.140442] pci 0000:00:19.0: reg 0x10: [mem 0xf7e00000-0xf7e1ffff]
[   26.140454] pci 0000:00:19.0: reg 0x14: [mem 0xf7e39000-0xf7e39fff]
[   26.140466] pci 0000:00:19.0: reg 0x18: [io  0xf080-0xf09f]
[   26.140566] pci 0000:00:19.0: PME# supported from D0 D3hot D3cold
[   26.140604] pci 0000:00:19.0: System wakeup disabled by ACPI
[   26.140653] pci 0000:00:1a.0: [8086:1e2d] type 00 class 0x0c0320
[   26.140683] pci 0000:00:1a.0: reg 0x10: [mem 0xf7e38000-0xf7e383ff]
[   26.140819] pci 0000:00:1a.0: PME# supported from D0 D3hot D3cold
[   26.140872] pci 0000:00:1a.0: System wakeup disabled by ACPI
[   26.140921] pci 0000:00:1b.0: [8086:1e20] type 00 class 0x040300
[   26.140943] pci 0000:00:1b.0: reg 0x10: [mem 0xf7e30000-0xf7e33fff 64bit]
[   26.141042] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[   26.141083] pci 0000:00:1b.0: System wakeup disabled by ACPI
[   26.141128] pci 0000:00:1c.0: [8086:1e10] type 01 class 0x060400
[   26.141270] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[   26.141307] pci 0000:00:1c.0: Enabling MPC IRBNCE
[   26.141311] pci 0000:00:1c.0: Intel PCH root port ACS workaround enabled
[   26.141335] pci 0000:00:1c.0: System wakeup disabled by ACPI
[   26.141388] pci 0000:00:1c.4: [8086:1e18] type 01 class 0x060400
[   26.141520] pci 0000:00:1c.4: PME# supported from D0 D3hot D3cold
[   26.141553] pci 0000:00:1c.4: Enabling MPC IRBNCE
[   26.141557] pci 0000:00:1c.4: Intel PCH root port ACS workaround enabled
[   26.141582] pci 0000:00:1c.4: System wakeup disabled by ACPI
[   26.141627] pci 0000:00:1c.6: [8086:1e1c] type 01 class 0x060400
[   26.141752] pci 0000:00:1c.6: PME# supported from D0 D3hot D3cold
[   26.141783] pci 0000:00:1c.6: Enabling MPC IRBNCE
[   26.141787] pci 0000:00:1c.6: Intel PCH root port ACS workaround enabled
[   26.141811] pci 0000:00:1c.6: System wakeup disabled by ACPI
[   26.141855] pci 0000:00:1c.7: [8086:1e1e] type 01 class 0x060400
[   26.141979] pci 0000:00:1c.7: PME# supported from D0 D3hot D3cold
[   26.142011] pci 0000:00:1c.7: Enabling MPC IRBNCE
[   26.142014] pci 0000:00:1c.7: Intel PCH root port ACS workaround enabled
[   26.142038] pci 0000:00:1c.7: System wakeup disabled by ACPI
[   26.142087] pci 0000:00:1d.0: [8086:1e26] type 00 class 0x0c0320
[   26.142117] pci 0000:00:1d.0: reg 0x10: [mem 0xf7e37000-0xf7e373ff]
[   26.142253] pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
[   26.142305] pci 0000:00:1d.0: System wakeup disabled by ACPI
[   26.142352] pci 0000:00:1f.0: [8086:1e44] type 00 class 0x060100
[   26.142582] pci 0000:00:1f.2: [8086:1e02] type 00 class 0x010601
[   26.142611] pci 0000:00:1f.2: reg 0x10: [io  0xf0d0-0xf0d7]
[   26.142623] pci 0000:00:1f.2: reg 0x14: [io  0xf0c0-0xf0c3]
[   26.142635] pci 0000:00:1f.2: reg 0x18: [io  0xf0b0-0xf0b7]
[   26.142647] pci 0000:00:1f.2: reg 0x1c: [io  0xf0a0-0xf0a3]
[   26.142658] pci 0000:00:1f.2: reg 0x20: [io  0xf060-0xf07f]
[   26.142670] pci 0000:00:1f.2: reg 0x24: [mem 0xf7e36000-0xf7e367ff]
[   26.142746] pci 0000:00:1f.2: PME# supported from D3hot
[   26.142819] pci 0000:00:1f.3: [8086:1e22] type 00 class 0x0c0500
[   26.142842] pci 0000:00:1f.3: reg 0x10: [mem 0xf7e35000-0xf7e350ff 64bit]
[   26.142875] pci 0000:00:1f.3: reg 0x20: [io  0xf040-0xf05f]
[   26.143032] pci 0000:01:00.0: [10de:1184] type 00 class 0x030000
[   26.143048] pci 0000:01:00.0: reg 0x10: [mem 0xf6000000-0xf6ffffff]
[   26.143064] pci 0000:01:00.0: reg 0x14: [mem 0xe0000000-0xe7ffffff
64bit pref]
[   26.143081] pci 0000:01:00.0: reg 0x1c: [mem 0xe8000000-0xe9ffffff
64bit pref]
[   26.143092] pci 0000:01:00.0: reg 0x24: [io  0xe000-0xe07f]
[   26.143102] pci 0000:01:00.0: reg 0x30: [mem 0xf7000000-0xf707ffff pref]
[   26.143230] pci 0000:01:00.1: [10de:0e0a] type 00 class 0x040300
[   26.143244] pci 0000:01:00.1: reg 0x10: [mem 0xf7080000-0xf7083fff]
[   26.149485] pci 0000:00:01.0: PCI bridge to [bus 01]
[   26.149489] pci 0000:00:01.0:   bridge window [io  0xe000-0xefff]
[   26.149493] pci 0000:00:01.0:   bridge window [mem 0xf6000000-0xf70fffff]
[   26.149499] pci 0000:00:01.0:   bridge window [mem
0xe0000000-0xe9ffffff 64bit pref]
[   26.149592] pci 0000:00:1c.0: PCI bridge to [bus 02]
[   26.149717] pci 0000:03:00.0: [1b21:1042] type 00 class 0x0c0330
[   26.149757] pci 0000:03:00.0: reg 0x10: [mem 0xf7d00000-0xf7d07fff 64bit]
[   26.149970] pci 0000:03:00.0: PME# supported from D3hot D3cold
[   26.150014] pci 0000:03:00.0: System wakeup disabled by ACPI
[   26.157523] pci 0000:00:1c.4: PCI bridge to [bus 03]
[   26.157533] pci 0000:00:1c.4:   bridge window [mem 0xf7d00000-0xf7dfffff]
[   26.157662] pci 0000:04:00.0: [1b21:1042] type 00 class 0x0c0330
[   26.157703] pci 0000:04:00.0: reg 0x10: [mem 0xf7c00000-0xf7c07fff 64bit]
[   26.157917] pci 0000:04:00.0: PME# supported from D3hot D3cold
[   26.157960] pci 0000:04:00.0: System wakeup disabled by ACPI
[   26.165562] pci 0000:00:1c.6: PCI bridge to [bus 04]
[   26.165572] pci 0000:00:1c.6:   bridge window [mem 0xf7c00000-0xf7cfffff]
[   26.165692] pci 0000:05:00.0: [10b5:8608] type 01 class 0x060400
[   26.165720] pci 0000:05:00.0: reg 0x10: [mem 0xf7b00000-0xf7b1ffff]
[   26.165910] pci 0000:05:00.0: PME# supported from D0 D3hot D3cold
[   26.166036] pci 0000:00:1c.7: PCI bridge to [bus 05-0d]
[   26.166041] pci 0000:00:1c.7:   bridge window [io  0xb000-0xdfff]
[   26.166046] pci 0000:00:1c.7:   bridge window [mem 0xf7800000-0xf7bfffff]
[   26.166054] pci 0000:00:1c.7:   bridge window [mem
0xea100000-0xea1fffff 64bit pref]
[   26.166210] pci 0000:06:01.0: [10b5:8608] type 01 class 0x060400
[   26.166421] pci 0000:06:01.0: PME# supported from D0 D3hot D3cold
[   26.166558] pci 0000:06:04.0: [10b5:8608] type 01 class 0x060400
[   26.166771] pci 0000:06:04.0: PME# supported from D0 D3hot D3cold
[   26.166894] pci 0000:06:05.0: [10b5:8608] type 01 class 0x060400
[   26.167106] pci 0000:06:05.0: PME# supported from D0 D3hot D3cold
[   26.167228] pci 0000:06:06.0: [10b5:8608] type 01 class 0x060400
[   26.167440] pci 0000:06:06.0: PME# supported from D0 D3hot D3cold
[   26.167560] pci 0000:06:07.0: [10b5:8608] type 01 class 0x060400
[   26.167773] pci 0000:06:07.0: PME# supported from D0 D3hot D3cold
[   26.167895] pci 0000:06:08.0: [10b5:8608] type 01 class 0x060400
[   26.168106] pci 0000:06:08.0: PME# supported from D0 D3hot D3cold
[   26.168227] pci 0000:06:09.0: [10b5:8608] type 01 class 0x060400
[   26.168438] pci 0000:06:09.0: PME# supported from D0 D3hot D3cold
[   26.168580] pci 0000:05:00.0: PCI bridge to [bus 06-0d]
[   26.168591] pci 0000:05:00.0:   bridge window [io  0xb000-0xdfff]
[   26.168598] pci 0000:05:00.0:   bridge window [mem 0xf7800000-0xf7afffff]
[   26.168608] pci 0000:05:00.0:   bridge window [mem
0xea100000-0xea1fffff 64bit pref]
[   26.168700] pci 0000:06:01.0: PCI bridge to [bus 07]
[   26.168813] pci 0000:06:04.0: PCI bridge to [bus 08]
[   26.168958] pci 0000:09:00.0: [1b21:0612] type 00 class 0x010601
[   26.168990] pci 0000:09:00.0: reg 0x10: [io  0xd050-0xd057]
[   26.169011] pci 0000:09:00.0: reg 0x14: [io  0xd040-0xd043]
[   26.169031] pci 0000:09:00.0: reg 0x18: [io  0xd030-0xd037]
[   26.169052] pci 0000:09:00.0: reg 0x1c: [io  0xd020-0xd023]
[   26.169072] pci 0000:09:00.0: reg 0x20: [io  0xd000-0xd01f]
[   26.169093] pci 0000:09:00.0: reg 0x24: [mem 0xf7a00000-0xf7a001ff]
[   26.173572] pci 0000:06:05.0: PCI bridge to [bus 09]
[   26.173599] pci 0000:06:05.0:   bridge window [io  0xd000-0xdfff]
[   26.173606] pci 0000:06:05.0:   bridge window [mem 0xf7a00000-0xf7afffff]
[   26.173739] pci 0000:0a:00.0: [1b4b:9130] type 00 class 0x010601
[   26.173769] pci 0000:0a:00.0: reg 0x10: [io  0xc040-0xc047]
[   26.173788] pci 0000:0a:00.0: reg 0x14: [io  0xc030-0xc033]
[   26.173806] pci 0000:0a:00.0: reg 0x18: [io  0xc020-0xc027]
[   26.173825] pci 0000:0a:00.0: reg 0x1c: [io  0xc010-0xc013]
[   26.173844] pci 0000:0a:00.0: reg 0x20: [io  0xc000-0xc00f]
[   26.173863] pci 0000:0a:00.0: reg 0x24: [mem 0xf7910000-0xf79107ff]
[   26.173882] pci 0000:0a:00.0: reg 0x30: [mem 0xf7900000-0xf790ffff pref]
[   26.173992] pci 0000:0a:00.0: PME# supported from D3hot
[   26.174102] pci 0000:06:06.0: PCI bridge to [bus 0a]
[   26.174112] pci 0000:06:06.0:   bridge window [io  0xc000-0xcfff]
[   26.174119] pci 0000:06:06.0:   bridge window [mem 0xf7900000-0xf79fffff]
[   26.174220] pci 0000:06:07.0: PCI bridge to [bus 0b]
[   26.174372] pci 0000:0c:00.0: [14e4:4359] type 00 class 0x028000
[   26.174412] pci 0000:0c:00.0: reg 0x10: [mem 0xf7800000-0xf7803fff 64bit]
[   26.174657] pci 0000:0c:00.0: supports D1 D2
[   26.174659] pci 0000:0c:00.0: PME# supported from D0 D3hot D3cold
[   26.174814] pci 0000:06:08.0: PCI bridge to [bus 0c]
[   26.174829] pci 0000:06:08.0:   bridge window [mem 0xf7800000-0xf78fffff]
[   26.174963] pci 0000:0d:00.0: [10ec:8168] type 00 class 0x020000
[   26.174997] pci 0000:0d:00.0: reg 0x10: [io  0xb000-0xb0ff]
[   26.175048] pci 0000:0d:00.0: reg 0x18: [mem 0xea104000-0xea104fff
64bit pref]
[   26.175081] pci 0000:0d:00.0: reg 0x20: [mem 0xea100000-0xea103fff
64bit pref]
[   26.175260] pci 0000:0d:00.0: supports D1 D2
[   26.175262] pci 0000:0d:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[   26.181628] pci 0000:06:09.0: PCI bridge to [bus 0d]
[   26.181641] pci 0000:06:09.0:   bridge window [io  0xb000-0xbfff]
[   26.181656] pci 0000:06:09.0:   bridge window [mem
0xea100000-0xea1fffff 64bit pref]
[   26.181840] acpi PNP0A08:00: Disabling ASPM (FADT indicates it is
unsupported)
[   26.182065] xen: registering gsi 13 triggering 1 polarity 0
[   26.182221] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 6 10 11 12
14 15) *0, disabled.
[   26.182273] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 6 10 11 12
14 15) *0, disabled.
[   26.182322] ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 5 6 10 11 12
14 15) *0, disabled.
[   26.182371] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 5 6 10 11 12
14 15) *0, disabled.
[   26.182420] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 6 10 11 12
14 15) *0, disabled.
[   26.182468] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 10 11 12
14 15) *0, disabled.
[   26.182519] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 6 10 11 12
14 15) *0, disabled.
[   26.182574] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 10 11 12
14 15) *0, disabled.
[   26.182782] ACPI: Enabled 4 GPEs in block 00 to 3F
[   26.182796] ACPI : EC: GPE = 0x18, I/O: command/status = 0x66, data = 0x62
[   26.182827] xen:balloon: Initialising balloon driver
[   26.183987] xen_balloon: Initialising balloon driver
[   26.184147] vgaarb: setting as boot device: PCI:0000:00:02.0
[   26.184151] vgaarb: device added:
PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
[   26.184157] vgaarb: device added:
PCI:0000:01:00.0,decodes=io+mem,owns=io+mem,locks=none
[   26.184160] vgaarb: loaded
[   26.184162] vgaarb: bridge control possible 0000:01:00.0
[   26.184163] vgaarb: no bridge control possible 0000:00:02.0
[   26.184320] SCSI subsystem initialized
[   26.184361] libata version 3.00 loaded.
[   26.184379] ACPI: bus type USB registered
[   26.184395] usbcore: registered new interface driver usbfs
[   26.184401] usbcore: registered new interface driver hub
[   26.184418] usbcore: registered new device driver usb
[   26.184720] PCI: Using ACPI for IRQ routing
[   26.186965] PCI: pci_cache_line_size set to 64 bytes
[   26.187101] e820: reserve RAM buffer [mem 0x0009e000-0x0009ffff]
[   26.187103] e820: reserve RAM buffer [mem 0x40004000-0x43ffffff]
[   26.187104] e820: reserve RAM buffer [mem 0xbba50000-0xbbffffff]
[   26.187106] e820: reserve RAM buffer [mem 0xbd7a3000-0xbfffffff]
[   26.187107] e820: reserve RAM buffer [mem 0xbdc1c000-0xbfffffff]
[   26.187109] e820: reserve RAM buffer [mem 0xbe000000-0xbfffffff]
[   26.187110] e820: reserve RAM buffer [mem 0x82fe00000-0x82fffffff]
[   26.187196] NetLabel: Initializing
[   26.187197] NetLabel:  domain hash size = 128
[   26.187198] NetLabel:  protocols = UNLABELED CIPSOv4
[   26.187207] NetLabel:  unlabeled traffic allowed by default
[   26.187335] Switched to clocksource xen
[   26.191469] AppArmor: AppArmor Filesystem Enabled
[   26.191513] pnp: PnP ACPI init
[   26.191588] system 00:00: [mem 0xfed40000-0xfed44fff] has been reserved
[   26.191592] system 00:00: Plug and Play ACPI device, IDs PNP0c01 (active)
[   26.191659] system 00:01: [io  0x0680-0x069f] has been reserved
[   26.191662] system 00:01: [io  0x1000-0x100f] has been reserved
[   26.191664] system 00:01: [io  0xffff] has been reserved
[   26.191665] system 00:01: [io  0xffff] has been reserved
[   26.191667] system 00:01: [io  0x0400-0x0453] could not be reserved
[   26.191669] system 00:01: [io  0x0458-0x047f] has been reserved
[   26.191670] system 00:01: [io  0x0500-0x057f] has been reserved
[   26.191672] system 00:01: [io  0x164e-0x164f] has been reserved
[   26.191674] system 00:01: Plug and Play ACPI device, IDs PNP0c02 (active)
[   26.191683] xen: registering gsi 8 triggering 1 polarity 0
[   26.191710] pnp 00:02: Plug and Play ACPI device, IDs PNP0b00 (active)
[   26.191749] system 00:03: [io  0x0454-0x0457] has been reserved
[   26.191752] system 00:03: Plug and Play ACPI device, IDs INT3f0d
PNP0c02 (active)
[   26.191833] system 00:04: [io  0x0290-0x029f] has been reserved
[   26.191835] system 00:04: Plug and Play ACPI device, IDs PNP0c02 (active)
[   26.191878] system 00:05: [io  0x04d0-0x04d1] has been reserved
[   26.191881] system 00:05: Plug and Play ACPI device, IDs PNP0c02 (active)
[   26.192100] system 00:06: [mem 0xfed1c000-0xfed1ffff] has been reserved
[   26.192102] system 00:06: [mem 0xfed10000-0xfed17fff] has been reserved
[   26.192104] system 00:06: [mem 0xfed18000-0xfed18fff] has been reserved
[   26.192106] system 00:06: [mem 0xfed19000-0xfed19fff] has been reserved
[   26.192108] system 00:06: [mem 0xf8000000-0xfbffffff] has been reserved
[   26.192110] system 00:06: [mem 0xfed20000-0xfed3ffff] has been reserved
[   26.192111] system 00:06: [mem 0xfed90000-0xfed93fff] could not be reserved
[   26.192113] system 00:06: [mem 0xfed45000-0xfed8ffff] has been reserved
[   26.192115] system 00:06: [mem 0xff000000-0xffffffff] has been reserved
[   26.192117] system 00:06: [mem 0xfee00000-0xfeefffff] has been reserved
[   26.192119] system 00:06: [mem 0xcf200000-0xcf200fff] has been reserved
[   26.192121] system 00:06: Plug and Play ACPI device, IDs PNP0c02 (active)
[   26.192249] system 00:07: [mem 0x20000000-0x201fffff] has been reserved
[   26.192251] system 00:07: [mem 0x40004000-0x40004fff] has been reserved
[   26.192254] system 00:07: Plug and Play ACPI device, IDs PNP0c01 (active)
[   26.192270] pnp: PnP ACPI: found 8 devices
[   26.197525] PM-Timer failed consistency check  (0xffffff) - aborting.
[   26.197553] pci 0000:00:1c.0: bridge window [io  0x1000-0x0fff] to
[bus 02] add_size 1000
[   26.197556] pci 0000:00:1c.0: bridge window [mem
0x00100000-0x000fffff 64bit pref] to [bus 02] add_size 200000
[   26.197558] pci 0000:00:1c.0: bridge window [mem
0x00100000-0x000fffff] to [bus 02] add_size 200000
[   26.197697] pci 0000:00:1c.0: res[14]=[mem 0x00100000-0x000fffff]
get_res_add_size add_size 200000
[   26.197699] pci 0000:00:1c.0: res[15]=[mem 0x00100000-0x000fffff
64bit pref] get_res_add_size add_size 200000
[   26.197702] pci 0000:00:1c.0: res[13]=[io  0x1000-0x0fff]
get_res_add_size add_size 1000
[   26.197707] pci 0000:00:1c.0: BAR 14: assigned [mem 0xcf300000-0xcf4fffff]
[   26.197713] pci 0000:00:1c.0: BAR 15: assigned [mem
0xcf500000-0xcf6fffff 64bit pref]
[   26.197716] pci 0000:00:1c.0: BAR 13: assigned [io  0x2000-0x2fff]
[   26.197718] pci 0000:00:01.0: PCI bridge to [bus 01]
[   26.197721] pci 0000:00:01.0:   bridge window [io  0xe000-0xefff]
[   26.197726] pci 0000:00:01.0:   bridge window [mem 0xf6000000-0xf70fffff]
[   26.197730] pci 0000:00:01.0:   bridge window [mem
0xe0000000-0xe9ffffff 64bit pref]
[   26.197736] pci 0000:00:1c.0: PCI bridge to [bus 02]
[   26.197739] pci 0000:00:1c.0:   bridge window [io  0x2000-0x2fff]
[   26.197746] pci 0000:00:1c.0:   bridge window [mem 0xcf300000-0xcf4fffff]
[   26.197751] pci 0000:00:1c.0:   bridge window [mem
0xcf500000-0xcf6fffff 64bit pref]
[   26.197760] pci 0000:00:1c.4: PCI bridge to [bus 03]
[   26.197767] pci 0000:00:1c.4:   bridge window [mem 0xf7d00000-0xf7dfffff]
[   26.197778] pci 0000:00:1c.6: PCI bridge to [bus 04]
[   26.197784] pci 0000:00:1c.6:   bridge window [mem 0xf7c00000-0xf7cfffff]
[   26.197796] pci 0000:06:01.0: PCI bridge to [bus 07]
[   26.197817] pci 0000:06:04.0: PCI bridge to [bus 08]
[   26.197838] pci 0000:06:05.0: PCI bridge to [bus 09]
[   26.197842] pci 0000:06:05.0:   bridge window [io  0xd000-0xdfff]
[   26.197850] pci 0000:06:05.0:   bridge window [mem 0xf7a00000-0xf7afffff]
[   26.197865] pci 0000:06:06.0: PCI bridge to [bus 0a]
[   26.197869] pci 0000:06:06.0:   bridge window [io  0xc000-0xcfff]
[   26.197877] pci 0000:06:06.0:   bridge window [mem 0xf7900000-0xf79fffff]
[   26.197892] pci 0000:06:07.0: PCI bridge to [bus 0b]
[   26.197913] pci 0000:06:08.0: PCI bridge to [bus 0c]
[   26.197921] pci 0000:06:08.0:   bridge window [mem 0xf7800000-0xf78fffff]
[   26.197936] pci 0000:06:09.0: PCI bridge to [bus 0d]
[   26.197940] pci 0000:06:09.0:   bridge window [io  0xb000-0xbfff]
[   26.197953] pci 0000:06:09.0:   bridge window [mem
0xea100000-0xea1fffff 64bit pref]
[   26.197963] pci 0000:05:00.0: PCI bridge to [bus 06-0d]
[   26.197967] pci 0000:05:00.0:   bridge window [io  0xb000-0xdfff]
[   26.197976] pci 0000:05:00.0:   bridge window [mem 0xf7800000-0xf7afffff]
[   26.197982] pci 0000:05:00.0:   bridge window [mem
0xea100000-0xea1fffff 64bit pref]
[   26.197992] pci 0000:00:1c.7: PCI bridge to [bus 05-0d]
[   26.197996] pci 0000:00:1c.7:   bridge window [io  0xb000-0xdfff]
[   26.198002] pci 0000:00:1c.7:   bridge window [mem 0xf7800000-0xf7bfffff]
[   26.198007] pci 0000:00:1c.7:   bridge window [mem
0xea100000-0xea1fffff 64bit pref]
[   26.198016] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7]
[   26.198017] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff]
[   26.198019] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]
[   26.198021] pci_bus 0000:00: resource 7 [mem 0x000c0000-0x000c3fff]
[   26.198022] pci_bus 0000:00: resource 8 [mem 0x000c4000-0x000c7fff]
[   26.198024] pci_bus 0000:00: resource 9 [mem 0x000c8000-0x000cbfff]
[   26.198026] pci_bus 0000:00: resource 10 [mem 0x000cc000-0x000cffff]
[   26.198027] pci_bus 0000:00: resource 11 [mem 0x000d0000-0x000d3fff]
[   26.198029] pci_bus 0000:00: resource 12 [mem 0x000d4000-0x000d7fff]
[   26.198031] pci_bus 0000:00: resource 13 [mem 0x000d8000-0x000dbfff]
[   26.198032] pci_bus 0000:00: resource 14 [mem 0x000dc000-0x000dffff]
[   26.198034] pci_bus 0000:00: resource 15 [mem 0xcf200000-0xfeafffff]
[   26.198036] pci_bus 0000:01: resource 0 [io  0xe000-0xefff]
[   26.198037] pci_bus 0000:01: resource 1 [mem 0xf6000000-0xf70fffff]
[   26.198039] pci_bus 0000:01: resource 2 [mem 0xe0000000-0xe9ffffff
64bit pref]
[   26.198041] pci_bus 0000:02: resource 0 [io  0x2000-0x2fff]
[   26.198043] pci_bus 0000:02: resource 1 [mem 0xcf300000-0xcf4fffff]
[   26.198044] pci_bus 0000:02: resource 2 [mem 0xcf500000-0xcf6fffff
64bit pref]
[   26.198046] pci_bus 0000:03: resource 1 [mem 0xf7d00000-0xf7dfffff]
[   26.198048] pci_bus 0000:04: resource 1 [mem 0xf7c00000-0xf7cfffff]
[   26.198050] pci_bus 0000:05: resource 0 [io  0xb000-0xdfff]
[   26.198051] pci_bus 0000:05: resource 1 [mem 0xf7800000-0xf7bfffff]
[   26.198053] pci_bus 0000:05: resource 2 [mem 0xea100000-0xea1fffff
64bit pref]
[   26.198055] pci_bus 0000:06: resource 0 [io  0xb000-0xdfff]
[   26.198057] pci_bus 0000:06: resource 1 [mem 0xf7800000-0xf7afffff]
[   26.198058] pci_bus 0000:06: resource 2 [mem 0xea100000-0xea1fffff
64bit pref]
[   26.198060] pci_bus 0000:09: resource 0 [io  0xd000-0xdfff]
[   26.198062] pci_bus 0000:09: resource 1 [mem 0xf7a00000-0xf7afffff]
[   26.198064] pci_bus 0000:0a: resource 0 [io  0xc000-0xcfff]
[   26.198065] pci_bus 0000:0a: resource 1 [mem 0xf7900000-0xf79fffff]
[   26.198067] pci_bus 0000:0c: resource 1 [mem 0xf7800000-0xf78fffff]
[   26.198069] pci_bus 0000:0d: resource 0 [io  0xb000-0xbfff]
[   26.198070] pci_bus 0000:0d: resource 2 [mem 0xea100000-0xea1fffff
64bit pref]
[   26.198091] NET: Registered protocol family 2
[   26.198442] TCP established hash table entries: 262144 (order: 9,
2097152 bytes)
[   26.198773] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
[   26.198877] TCP: Hash tables configured (established 262144 bind 65536)
[   26.198891] TCP: reno registered
[   26.198938] UDP hash table entries: 16384 (order: 7, 524288 bytes)
[   26.199035] UDP-Lite hash table entries: 16384 (order: 7, 524288 bytes)
[   26.199115] NET: Registered protocol family 1
[   26.199131] pci 0000:00:02.0: Video device with shadowed ROM
[   26.199195] xen: registering gsi 16 triggering 0 polarity 1
[   26.199207] xen: --> pirq=16 -> irq=16 (gsi=16)
[   26.199383] xen: registering gsi 16 triggering 0 polarity 1
[   26.199385] Already setup the GSI :16
[   26.219458] xen: registering gsi 23 triggering 0 polarity 1
[   26.219465] xen: --> pirq=23 -> irq=23 (gsi=23)
[   26.239537] xen: registering gsi 16 triggering 0 polarity 1
[   26.239541] Already setup the GSI :16
[   26.239568] xen: registering gsi 16 triggering 0 polarity 1
[   26.239570] Already setup the GSI :16
[   26.239628] PCI: CLS mismatch (64 != 32), using 64 bytes
[   26.239678] xen: registering gsi 18 triggering 0 polarity 1
[   26.239685] xen: --> pirq=18 -> irq=18 (gsi=18)
[   26.239724] xen: registering gsi 18 triggering 0 polarity 1
[   26.239726] Already setup the GSI :18
[   26.239823] Trying to unpack rootfs image as initramfs...
[   26.482881] Freeing initrd memory: 22084K (ffff880008000000 -
ffff880009591000)
[   26.483234] RAPL PMU detected, hw unit 2^-16 Joules, API unit is
2^-32 Joules, 3 fixed counters 163840 ms ovfl timer
[   26.483272] Scanning for low memory corruption every 60 seconds
[   26.483744] futex hash table entries: 2048 (order: 5, 131072 bytes)
[   26.483766] Initialise system trusted keyring
[   26.483783] audit: initializing netlink subsys (disabled)
[   26.483795] audit: type=2000 audit(1428032092.629:1): initialized
[   26.484137] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[   26.485031] zpool: loaded
[   26.485033] zbud: loaded
[   26.485239] VFS: Disk quotas dquot_6.5.2
[   26.485268] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[   26.485731] fuse init (API version 7.23)
[   26.485905] Key type big_key registered
[   26.486530] Key type asymmetric registered
[   26.486533] Asymmetric key parser 'x509' registered
[   26.486558] Block layer SCSI generic (bsg) driver version 0.4
loaded (major 252)
[   26.486606] io scheduler noop registered
[   26.486609] io scheduler deadline registered (default)
[   26.486631] io scheduler cfq registered
[   26.486773] xen: registering gsi 16 triggering 0 polarity 1
[   26.486778] Already setup the GSI :16
[   26.486919] xen: registering gsi 16 triggering 0 polarity 1
[   26.486922] Already setup the GSI :16
[   26.487157] xen: registering gsi 19 triggering 0 polarity 1
[   26.487164] xen: --> pirq=19 -> irq=19 (gsi=19)
[   26.487266] xen: registering gsi 19 triggering 0 polarity 1
[   26.487268] Already setup the GSI :19
[   26.487507] xen: registering gsi 16 triggering 0 polarity 1
[   26.487510] Already setup the GSI :16
[   26.487728] xen: registering gsi 19 triggering 0 polarity 1
[   26.487731] Already setup the GSI :19
[   26.487949] xen: registering gsi 16 triggering 0 polarity 1
[   26.487951] Already setup the GSI :16
[   26.488167] xen: registering gsi 17 triggering 0 polarity 1
[   26.488173] xen: --> pirq=17 -> irq=17 (gsi=17)
[   26.488401] xen: registering gsi 18 triggering 0 polarity 1
[   26.488403] Already setup the GSI :18
[   26.488619] xen: registering gsi 19 triggering 0 polarity 1
[   26.488622] Already setup the GSI :19
[   26.488840] xen: registering gsi 16 triggering 0 polarity 1
[   26.488842] Already setup the GSI :16
[   26.489049] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[   26.489063] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[   26.489092] efifb: probing for efifb
[   26.489493] efifb: framebuffer at 0xd0000000, mapped to
0xffffc9000b800000, using 5120k, total 5120k
[   26.489495] efifb: mode is 1280x1024x32, linelength=5120, pages=1
[   26.489496] efifb: scrolling: redraw
[   26.489497] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[   26.491577] Console: switching to colour frame buffer device 160x64
[   26.493577] fb0: EFI VGA frame buffer device
[   26.493600] intel_idle: MWAIT substates: 0x1120
[   26.493616] intel_idle: v0.4 model 0x3A
[   26.493630] intel_idle: lapic_timer_reliable_states 0xffffffff
[   26.493693] intel_idle: intel_idle yielding to none
[   26.493768] input: Power Button as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input0
[   26.493800] ACPI: Power Button [PWRB]
[   26.493837] input: Power Button as
/devices/LNXSYSTM:00/LNXPWRBN:00/input/input1
[   26.493860] ACPI: Power Button [PWRF]
[   26.494250] Monitor-Mwait will be used to enter C-1 state
[   26.494271] Monitor-Mwait will be used to enter C-2 state
[   26.494290] Monitor-Mwait will be used to enter C-3 state
[   26.496001] Warning: Processor Platform Limit not supported.
[   26.496460] thermal LNXTHERM:00: registered as thermal_zone0
[   26.496480] ACPI: Thermal Zone [TZ00] (28 C)
[   26.496720] thermal LNXTHERM:01: registered as thermal_zone1
[   26.496739] ACPI: Thermal Zone [TZ01] (30 C)
[   26.496780] GHES: HEST is not enabled!
[   26.497537] xen_acpi_processor: Uploading Xen processor PM info
[   26.498537] Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
[   26.499804] hpet_acpi_add: no address or irqs in _CRS
[   26.499835] Linux agpgart interface v0.103
[   26.500771] brd: module loaded
[   26.501217] loop: module loaded
[   26.501377] libphy: Fixed MDIO Bus: probed
[   26.501392] tun: Universal TUN/TAP device driver, 1.6
[   26.501407] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[   26.501456] PPP generic driver version 2.4.2
[   26.501495] xen_netfront: Initialising Xen virtual ethernet driver
[   26.501586] xen: registering gsi 16 triggering 0 polarity 1
[   26.501604] Already setup the GSI :16
[   26.501639] xhci_hcd 0000:00:14.0: xHCI Host Controller
[   26.501658] xhci_hcd 0000:00:14.0: new USB bus registered, assigned
bus number 1
[   26.501757] xhci_hcd 0000:00:14.0: cache line size of 64 is not supported
[   26.501864] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[   26.501883] usb usb1: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[   26.501903] usb usb1: Product: xHCI Host Controller
[   26.501917] usb usb1: Manufacturer: Linux 3.19.0-10-generic xhci-hcd
[   26.501935] usb usb1: SerialNumber: 0000:00:14.0
[   26.502862] hub 1-0:1.0: USB hub found
[   26.503778] hub 1-0:1.0: 4 ports detected
[   26.504862] xhci_hcd 0000:00:14.0: xHCI Host Controller
[   26.505714] xhci_hcd 0000:00:14.0: new USB bus registered, assigned
bus number 2
[   26.506587] usb usb2: New USB device found, idVendor=1d6b, idProduct=0003
[   26.507443] usb usb2: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[   26.508294] usb usb2: Product: xHCI Host Controller
[   26.509141] usb usb2: Manufacturer: Linux 3.19.0-10-generic xhci-hcd
[   26.509990] usb usb2: SerialNumber: 0000:00:14.0
[   26.510901] hub 2-0:1.0: USB hub found
[   26.511829] hub 2-0:1.0: 4 ports detected
[   26.512935] xen: registering gsi 16 triggering 0 polarity 1
[   26.513777] Already setup the GSI :16
[   26.514634] xhci_hcd 0000:03:00.0: xHCI Host Controller
[   26.515485] xhci_hcd 0000:03:00.0: new USB bus registered, assigned
bus number 3
[   26.578165] usb usb3: New USB device found, idVendor=1d6b, idProduct=0002
[   26.579010] usb usb3: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[   26.579906] usb usb3: Product: xHCI Host Controller
[   26.580742] usb usb3: Manufacturer: Linux 3.19.0-10-generic xhci-hcd
[   26.581574] usb usb3: SerialNumber: 0000:03:00.0
[   26.582500] hub 3-0:1.0: USB hub found
[   26.583335] hub 3-0:1.0: 2 ports detected
[   26.584236] xhci_hcd 0000:03:00.0: xHCI Host Controller
[   26.585064] xhci_hcd 0000:03:00.0: new USB bus registered, assigned
bus number 4
[   26.585924] usb usb4: New USB device found, idVendor=1d6b, idProduct=0003
[   26.586756] usb usb4: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[   26.587620] usb usb4: Product: xHCI Host Controller
[   26.588454] usb usb4: Manufacturer: Linux 3.19.0-10-generic xhci-hcd
[   26.589292] usb usb4: SerialNumber: 0000:03:00.0
[   26.590223] hub 4-0:1.0: USB hub found
[   26.591059] hub 4-0:1.0: 2 ports detected
[   26.591964] xen: registering gsi 18 triggering 0 polarity 1
[   26.592784] Already setup the GSI :18
[   26.593615] xhci_hcd 0000:04:00.0: xHCI Host Controller
[   26.594434] xhci_hcd 0000:04:00.0: new USB bus registered, assigned
bus number 5
[   26.657081] usb usb5: New USB device found, idVendor=1d6b, idProduct=0002
[   26.657917] usb usb5: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[   26.658752] usb usb5: Product: xHCI Host Controller
[   26.659589] usb usb5: Manufacturer: Linux 3.19.0-10-generic xhci-hcd
[   26.660428] usb usb5: SerialNumber: 0000:04:00.0
[   26.661357] hub 5-0:1.0: USB hub found
[   26.662196] hub 5-0:1.0: 2 ports detected
[   26.663072] xhci_hcd 0000:04:00.0: xHCI Host Controller
[   26.663980] xhci_hcd 0000:04:00.0: new USB bus registered, assigned
bus number 6
[   26.664840] usb usb6: New USB device found, idVendor=1d6b, idProduct=0003
[   26.665667] usb usb6: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[   26.666494] usb usb6: Product: xHCI Host Controller
[   26.667318] usb usb6: Manufacturer: Linux 3.19.0-10-generic xhci-hcd
[   26.668156] usb usb6: SerialNumber: 0000:04:00.0
[   26.669081] hub 6-0:1.0: USB hub found
[   26.669918] hub 6-0:1.0: 2 ports detected
[   26.670804] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[   26.671709] ehci-pci: EHCI PCI platform driver
[   26.672588] xen: registering gsi 16 triggering 0 polarity 1
[   26.673420] Already setup the GSI :16
[   26.674269] ehci-pci 0000:00:1a.0: EHCI Host Controller
[   26.675103] ehci-pci 0000:00:1a.0: new USB bus registered, assigned
bus number 7
[   26.675956] ehci-pci 0000:00:1a.0: debug port 2
[   26.680708] ehci-pci 0000:00:1a.0: cache line size of 64 is not supported
[   26.681569] ehci-pci 0000:00:1a.0: irq 16, io mem 0xf7e38000
[   26.691473] ehci-pci 0000:00:1a.0: USB 2.0 started, EHCI 1.00
[   26.693230] usb usb7: New USB device found, idVendor=1d6b, idProduct=0002
[   26.694911] usb usb7: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[   26.696603] usb usb7: Product: EHCI Host Controller
[   26.698271] usb usb7: Manufacturer: Linux 3.19.0-10-generic ehci_hcd
[   26.699970] usb usb7: SerialNumber: 0000:00:1a.0
[   26.701959] hub 7-0:1.0: USB hub found
[   26.703671] hub 7-0:1.0: 2 ports detected
[   26.705627] xen: registering gsi 23 triggering 0 polarity 1
[   26.707303] Already setup the GSI :23
[   26.709021] ehci-pci 0000:00:1d.0: EHCI Host Controller
[   26.710703] ehci-pci 0000:00:1d.0: new USB bus registered, assigned
bus number 8
[   26.712426] ehci-pci 0000:00:1d.0: debug port 2
[   26.718065] ehci-pci 0000:00:1d.0: cache line size of 64 is not supported
[   26.719807] ehci-pci 0000:00:1d.0: irq 23, io mem 0xf7e37000
[   26.731377] ehci-pci 0000:00:1d.0: USB 2.0 started, EHCI 1.00
[   26.732271] usb usb8: New USB device found, idVendor=1d6b, idProduct=0002
[   26.733107] usb usb8: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[   26.733944] usb usb8: Product: EHCI Host Controller
[   26.734775] usb usb8: Manufacturer: Linux 3.19.0-10-generic ehci_hcd
[   26.735614] usb usb8: SerialNumber: 0000:00:1d.0
[   26.736711] hub 8-0:1.0: USB hub found
[   26.737546] hub 8-0:1.0: 2 ports detected
[   26.738454] ehci-platform: EHCI generic platform driver
[   26.739286] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[   26.740189] ohci-pci: OHCI PCI platform driver
[   26.741327] ohci-platform: OHCI generic platform driver
[   26.742464] uhci_hcd: USB Universal Host Controller Interface driver
[   26.743645] i8042: PNP: No PS/2 controller found. Probing ports directly.
[   26.747154] serio: i8042 KBD port at 0x60,0x64 irq 1
[   26.748864] serio: i8042 AUX port at 0x60,0x64 irq 12
[   26.750943] mousedev: PS/2 mouse device common for all mice
[   26.753191] rtc_cmos 00:02: RTC can wake from S4
[   26.755164] rtc_cmos 00:02: rtc core: registered rtc_cmos as rtc0
[   26.756939] rtc_cmos 00:02: alarms up to one month, y3k, 242 bytes nvram
[   26.758660] i2c /dev entries driver
[   26.760282] device-mapper: uevent: version 1.0.3
[   26.761388] device-mapper: ioctl: 4.29.0-ioctl (2014-10-28)
initialised: dm-devel at redhat.com
[   26.762295] ledtrig-cpu: registered to indicate activity on CPUs
[   26.763142] EFI Variables Facility v0.08 2004-May-17
[   26.773208] PCCT header not found.
[   26.774089] ACPI PCC probe failed.
[   26.774989] TCP: cubic registered
[   26.775945] NET: Registered protocol family 10
[   26.777196] NET: Registered protocol family 17
[   26.778044] Key type dns_resolver registered
[   26.779032] mce: Unable to init device /dev/mcelog (rc: -16)
[   26.780278] Loading compiled-in X.509 certificates
[   26.781688] Loaded X.509 cert 'Magrathea: Glacier signing key:
06375db608534c1d8060bf2563592ff3ea34beb3'
[   26.782566] registered taskstats version 1
[   26.789774] Key type trusted registered
[   26.803138] Key type encrypted registered
[   26.804873] AppArmor: AppArmor sha1 policy hashing enabled
[   26.806585] ima: No TPM chip found, activating TPM-bypass!
[   26.808351] evm: HMAC attrs: 0x1
[   26.811502]   Magic number: 11:555:562
[   26.813381] rtc_cmos 00:02: setting system clock to 2015-04-03
03:34:53 UTC (1428032093)
[   26.815428] BIOS EDD facility v0.16 2004-Jun-25, 6 devices found
[   26.817335] PM: Hibernation image not present or could not be loaded.
[   26.819809] Freeing unused kernel memory: 1408K (ffffffff81d36000 -
ffffffff81e96000)
[   26.820835] Write protecting the kernel read-only data: 12288k
[   26.823514] Freeing unused kernel memory: 192K (ffff8800017d0000 -
ffff880001800000)
[   26.824557] Freeing unused kernel memory: 348K (ffff880001ba9000 -
ffff880001c00000)
[   26.868733] random: systemd-udevd urandom read with 29 bits of
entropy available
[   26.914246] md: linear personality registered for level -1
[   26.921735] pps_core: LinuxPPS API ver. 1 registered
[   26.921752] md: multipath personality registered for level -4
[   26.924176] pps_core: Software ver. 5.3.6 - Copyright 2005-2007
Rodolfo Giometti <giometti@linux.it>
[   26.926580] PTP clock support registered
[   26.927860] md: raid0 personality registered for level 0
[   26.930508] ahci 0000:00:1f.2: version 3.0
[   26.931867] xen: registering gsi 19 triggering 0 polarity 1
[   26.933181] Already setup the GSI :19
[   26.934516] r8169 Gigabit Ethernet driver 2.3LK-NAPI loaded
[   26.934531] e1000e: Intel(R) PRO/1000 Network Driver - 2.3.2-k
[   26.934532] e1000e: Copyright(c) 1999 - 2014 Intel Corporation.
[   26.937578] r8169 0000:0d:00.0: can't disable ASPM; OS doesn't have
ASPM control
[   26.938581] xen: registering gsi 16 triggering 0 polarity 1
[   26.939850] Already setup the GSI :16
[   26.941989] md: raid1 personality registered for level 1
[   26.942244] r8169 0000:0d:00.0 eth0: RTL8168f/8111f at
0xffffc90007362000, c8:60:00:cb:2d:c0, XID 08000880 IRQ 111
[   26.942246] r8169 0000:0d:00.0 eth0: jumbo features [frames: 9200
bytes, tx checksumming: ko]
[   26.947390] ahci 0000:00:1f.2: AHCI 0001.0300 32 slots 6 ports 6
Gbps 0x37 impl SATA mode
[   26.948625] ahci 0000:00:1f.2: flags: 64bit ncq led clo pio slum
part ems apst
[   26.979978] scsi host0: ahci
[   26.981115] scsi host1: ahci
[   26.982199] scsi host2: ahci
[   26.983262] scsi host3: ahci
[   26.984328] scsi host4: ahci
[   26.985370] scsi host5: ahci
[   26.986351] ata1: SATA max UDMA/133 abar m2048 at 0xf7e36000 port
0xf7e36100 irq 110
[   26.987317] ata2: SATA max UDMA/133 abar m2048 at 0xf7e36000 port
0xf7e36180 irq 110
[   26.988281] ata3: SATA max UDMA/133 abar m2048 at 0xf7e36000 port
0xf7e36200 irq 110
[   26.989232] ata4: DUMMY
[   26.990181] ata5: SATA max UDMA/133 abar m2048 at 0xf7e36000 port
0xf7e36300 irq 110
[   26.991141] ata6: SATA max UDMA/133 abar m2048 at 0xf7e36000 port
0xf7e36380 irq 110
[   26.992422] xen: registering gsi 16 triggering 0 polarity 1
[   26.992472] xen: registering gsi 20 triggering 0 polarity 1
[   26.992484] xen: --> pirq=20 -> irq=20 (gsi=20)
[   26.992576] e1000e 0000:00:19.0: Interrupt Throttling Rate
(ints/sec) set to dynamic conservative mode
[   26.996206] Already setup the GSI :16
[   26.997230] ahci 0000:09:00.0: SSS flag set, parallel bus scan disabled
[   26.998215] ahci 0000:09:00.0: AHCI 0001.0200 32 slots 2 ports 6
Gbps 0x3 impl SATA mode
[   26.999164] ahci 0000:09:00.0: flags: 64bit ncq sntf stag led clo
pmp pio slum part ccc sxs
[   27.000558] scsi host6: ahci
[   27.001769] scsi host7: ahci
[   27.002779] ata7: SATA max UDMA/133 abar m512 at 0xf7a00000 port
0xf7a00100 irq 113
[   27.003778] ata8: SATA max UDMA/133 abar m512 at 0xf7a00000 port
0xf7a00180 irq 113
[   27.004803] xen: registering gsi 17 triggering 0 polarity 1
[   27.005820] Already setup the GSI :17
[   27.015339] raid6: sse2x1   10141 MB/s
[   27.019448] ahci 0000:0a:00.0: AHCI 0001.0200 32 slots 8 ports 6
Gbps 0xff impl SATA mode
[   27.020416] ahci 0000:0a:00.0: flags: 64bit ncq pio
[   27.022087] scsi host8: ahci
[   27.023243] scsi host9: ahci
[   27.024426] scsi host10: ahci
[   27.025488] scsi host11: ahci
[   27.026541] scsi host12: ahci
[   27.027589] scsi host13: ahci
[   27.028620] scsi host14: ahci
[   27.029641] scsi host15: ahci
[   27.030580] ata9: SATA max UDMA/133 abar m2048 at 0xf7910000 port
0xf7910100 irq 114
[   27.031501] ata10: SATA max UDMA/133 abar m2048 at 0xf7910000 port
0xf7910180 irq 114
[   27.032391] ata11: SATA max UDMA/133 abar m2048 at 0xf7910000 port
0xf7910200 irq 114
[   27.033274] ata12: SATA max UDMA/133 abar m2048 at 0xf7910000 port
0xf7910280 irq 114
[   27.034148] ata13: SATA max UDMA/133 abar m2048 at 0xf7910000 port
0xf7910300 irq 114
[   27.035025] ata14: SATA max UDMA/133 abar m2048 at 0xf7910000 port
0xf7910380 irq 114
[   27.035919] ata15: SATA max UDMA/133 abar m2048 at 0xf7910000 port
0xf7910400 irq 114
[   27.036770] ata16: SATA max UDMA/133 abar m2048 at 0xf7910000 port
0xf7910480 irq 114
[   27.047363] usb 8-1: new high-speed USB device number 2 using ehci-pci
[   27.083338] raid6: sse2x2   13024 MB/s
[   27.151350] raid6: sse2x4   15330 MB/s
[   27.152166] raid6: using algorithm sse2x4 (15330 MB/s)
[   27.152970] raid6: using ssse3x2 recovery algorithm
[   27.155429] xor: automatically using best checksumming function:
[   27.179706] usb 8-1: New USB device found, idVendor=8087, idProduct=0024
[   27.180541] usb 8-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[   27.181640] hub 8-1:1.0: USB hub found
[   27.182607] hub 8-1:1.0: 8 ports detected
[   27.195336]    avx       : 28405.000 MB/sec
[   27.196986] async_tx: api initialized (async)
[   27.203268] md: raid6 personality registered for level 6
[   27.204122] md: raid5 personality registered for level 5
[   27.204927] md: raid4 personality registered for level 4
[   27.207363] usb 7-1: new high-speed USB device number 2 using ehci-pci
[   27.217499] md: raid10 personality registered for level 10
[   27.255093] e1000e 0000:00:19.0 eth1: registered PHC clock
[   27.256635] e1000e 0000:00:19.0 eth1: (PCI Express:2.5GT/s:Width
x1) c8:60:00:cb:35:99
[   27.258184] e1000e 0000:00:19.0 eth1: Intel(R) PRO/1000 Network Connection
[   27.259795] e1000e 0000:00:19.0 eth1: MAC: 10, PHY: 11, PBA No: FFFFFF-0FF
[   27.311387] ata3: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[   27.312978] ata2: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[   27.315617] ata6: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[   27.317209] ata5: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[   27.319706] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.321308] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT2._GTF] (Node ffff880808cc0cd0), AE_NOT_FOUND
(20141107/psparse-536)
[   27.322972] ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[   27.323400] ata7: SATA link down (SStatus 0 SControl 300)
[   27.326344] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.328040] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT1._GTF] (Node ffff880808cc0c58), AE_NOT_FOUND
(20141107/psparse-536)
[   27.329761] ata3.00: ATA-8: ST3000DM001-1CH166, CC24, max UDMA/133
[   27.331487] ata3.00: 5860533168 sectors, multi 16: LBA48 NCQ (depth
31/32), AA
[   27.333206] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.334902] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT0._GTF] (Node ffff880808cc0be0), AE_NOT_FOUND
(20141107/psparse-536)
[   27.336741] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.339086] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT5._GTF] (Node ffff880808cc0e38), AE_NOT_FOUND
(20141107/psparse-536)
[   27.340833] ata2.00: ATA-8: ST4000DM000-1F2168, CC52, max UDMA/133
[   27.341322] usb 7-1: New USB device found, idVendor=8087, idProduct=0024
[   27.341323] usb 7-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[   27.341614] hub 7-1:1.0: USB hub found
[   27.341695] hub 7-1:1.0: 6 ports detected
[   27.345799] ata2.00: 7814037168 sectors, multi 16: LBA48 NCQ (depth
31/32), AA
[   27.346711] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.347627] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT2._GTF] (Node ffff880808cc0cd0), AE_NOT_FOUND
(20141107/psparse-536)
[   27.348553] ata1.00: ATA-8: ST4000DM000-1F2168, CC52, max UDMA/133
[   27.349478] ata1.00: 7814037168 sectors, multi 16: LBA48 NCQ (depth
31/32), AA
[   27.350484] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.351832] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT4._GTF] (Node ffff880808cc0dc0), AE_NOT_FOUND
(20141107/psparse-536)
[   27.353179] ata3.00: configured for UDMA/133
[   27.354670] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.355739] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT1._GTF] (Node ffff880808cc0c58), AE_NOT_FOUND
(20141107/psparse-536)
[   27.356801] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.357844] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT0._GTF] (Node ffff880808cc0be0), AE_NOT_FOUND
(20141107/psparse-536)
[   27.358918] ata5.00: ATA-8: ST9500420AS, 0006HPM1, max UDMA/100
[   27.359370] ata15: SATA link down (SStatus 0 SControl 300)
[   27.361148] ata5.00: 976773168 sectors, multi 16: LBA48 NCQ (depth 31/32), AA
[   27.362340] ata1.00: configured for UDMA/133
[   27.363387] ata9: SATA link down (SStatus 0 SControl 300)
[   27.364586] ata2.00: configured for UDMA/133
[   27.364672] scsi 0:0:0:0: Direct-Access     ATA
ST4000DM000-1F21 CC52 PQ: 0 ANSI: 5
[   27.364831] sd 0:0:0:0: Attached scsi generic sg0 type 0
[   27.364840] sd 0:0:0:0: [sda] 7814037168 512-byte logical blocks:
(4.00 TB/3.63 TiB)
[   27.364842] sd 0:0:0:0: [sda] 4096-byte physical blocks
[   27.364900] sd 0:0:0:0: [sda] Write Protect is off
[   27.364901] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[   27.364942] sd 0:0:0:0: [sda] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[   27.371366] ata12: SATA link down (SStatus 0 SControl 300)
[   27.371401] ata13: SATA link down (SStatus 0 SControl 300)
[   27.371440] ata16: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[   27.371475] ata11: SATA link down (SStatus 0 SControl 300)
[   27.371519] ata14: SATA link down (SStatus 0 SControl 300)
[   27.371576] ata10: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[   27.371586] ata16.00: ATAPI: MARVELL VIRTUALL, 1.09, max UDMA/66
[   27.371851] ata16.00: configured for UDMA/66
[   27.382665] ata6.00: ATA-8: ST31500341AS, CC1H, max UDMA/133
[   27.382803] scsi 1:0:0:0: Direct-Access     ATA
ST4000DM000-1F21 CC52 PQ: 0 ANSI: 5
[   27.383091] sd 1:0:0:0: [sdb] 7814037168 512-byte logical blocks:
(4.00 TB/3.63 TiB)
[   27.383093] sd 1:0:0:0: [sdb] 4096-byte physical blocks
[   27.383126] sd 1:0:0:0: [sdb] Write Protect is off
[   27.383127] sd 1:0:0:0: [sdb] Mode Sense: 00 3a 00 00
[   27.383144] sd 1:0:0:0: Attached scsi generic sg1 type 0
[   27.383145] sd 1:0:0:0: [sdb] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[   27.383312] scsi 2:0:0:0: Direct-Access     ATA
ST3000DM001-1CH1 CC24 PQ: 0 ANSI: 5
[   27.383365] ata10.00: failed to get NCQ Send/Recv Log Emask 0x1
[   27.383367] ata10.00: ATA-9: Samsung SSD 840 Series, DXT09B0Q, max UDMA/133
[   27.383368] ata10.00: 976773168 sectors, multi 16: LBA48 NCQ (depth
31/32), AA
[   27.383506] sd 2:0:0:0: [sdc] 5860533168 512-byte logical blocks:
(3.00 TB/2.72 TiB)
[   27.383507] sd 2:0:0:0: [sdc] 4096-byte physical blocks
[   27.383515] sd 2:0:0:0: Attached scsi generic sg2 type 0
[   27.383583] sd 2:0:0:0: [sdc] Write Protect is off
[   27.383584] sd 2:0:0:0: [sdc] Mode Sense: 00 3a 00 00
[   27.383664] sd 2:0:0:0: [sdc] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[   27.399362] ata10.00: failed to get NCQ Send/Recv Log Emask 0x1
[   27.399364] ata10.00: configured for UDMA/133
[   27.406074] ata6.00: 2930277168 sectors, multi 16: LBA48 NCQ (depth 31/32)
[   27.406096]  sda: sda1 sda2
[   27.406406] sd 0:0:0:0: [sda] Attached SCSI disk
[   27.409696] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.410787] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT4._GTF] (Node ffff880808cc0dc0), AE_NOT_FOUND
(20141107/psparse-536)
[   27.412168] ata5.00: configured for UDMA/100
[   27.413415] scsi 4:0:0:0: Direct-Access     ATA      ST9500420AS
  HPM1 PQ: 0 ANSI: 5
[   27.415971] sd 4:0:0:0: [sdd] 976773168 512-byte logical blocks:
(500 GB/465 GiB)
[   27.416044] sd 4:0:0:0: Attached scsi generic sg3 type 0
[   27.417747] random: nonblocking pool is initialized
[   27.421307]  sdc: sdc1 sdc2
[   27.421834] sd 2:0:0:0: [sdc] Attached SCSI disk
[   27.423990] ACPI Error: [DSSP] Namespace lookup failure,
AE_NOT_FOUND (20141107/psargs-359)
[   27.423993] ACPI Error: Method parse/execution failed
[\_SB_.PCI0.SAT0.SPT5._GTF] (Node ffff880808cc0e38), AE_NOT_FOUND
(20141107/psparse-536)
[   27.428094]  sdb: sdb1 sdb2
[   27.428334] sd 1:0:0:0: [sdb] Attached SCSI disk
[   27.433587] sd 4:0:0:0: [sdd] Write Protect is off
[   27.434828] sd 4:0:0:0: [sdd] Mode Sense: 00 3a 00 00
[   27.436061] sd 4:0:0:0: [sdd] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[   27.451399] ata6.00: configured for UDMA/133
[   27.453737] scsi 5:0:0:0: Direct-Access     ATA      ST31500341AS
  CC1H PQ: 0 ANSI: 5
[   27.456233] sd 5:0:0:0: [sde] 2930277168 512-byte logical blocks:
(1.50 TB/1.36 TiB)
[   27.456253] sd 5:0:0:0: Attached scsi generic sg4 type 0
[   27.460201] usb 8-1.5: new high-speed USB device number 3 using ehci-pci
[   27.460214] sd 5:0:0:0: [sde] Write Protect is off
[   27.460217] sd 5:0:0:0: [sde] Mode Sense: 00 3a 00 00
[   27.460238] sd 5:0:0:0: [sde] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[   27.494725]  sdd: sdd1 sdd2
[   27.497248] sd 4:0:0:0: [sdd] Attached SCSI disk
[   27.512955]  sde: sde1 sde2
[   27.515787] sd 5:0:0:0: [sde] Attached SCSI disk
[   27.571496] usb 8-1.5: New USB device found, idVendor=05e3, idProduct=0510
[   27.573476] usb 8-1.5: New USB device strings: Mfr=2, Product=3,
SerialNumber=0
[   27.575479] usb 8-1.5: Product: USB2.0 UVC PC Camera
[   27.577471] usb 8-1.5: Manufacturer: GenesysLogic Technology Co., Ltd.
[   27.615458] usb 7-1.1: new full-speed USB device number 3 using ehci-pci
[   27.659510] usb 8-1.6: new low-speed USB device number 4 using ehci-pci
[   27.719189] usb 7-1.1: New USB device found, idVendor=0b05, idProduct=17b5
[   27.721245] usb 7-1.1: New USB device strings: Mfr=1, Product=2,
SerialNumber=3
[   27.723276] usb 7-1.1: Product: BCM20702A0
[   27.725323] usb 7-1.1: Manufacturer: Broadcom Corp
[   27.727368] usb 7-1.1: SerialNumber: 94DBC98A7B90
[   27.762609] usb 8-1.6: New USB device found, idVendor=04b4, idProduct=5500
[   27.764663] usb 8-1.6: New USB device strings: Mfr=1, Product=2,
SerialNumber=0
[   27.766694] usb 8-1.6: Product: USB to Serial
[   27.768712] usb 8-1.6: Manufacturer: Cypress Semiconductor
[   27.775400] ata8: SATA link down (SStatus 0 SControl 300)
[   27.777772] hidraw: raw HID events driver (C) Jiri Kosina
[   27.777785] scsi 9:0:0:0: Direct-Access     ATA      Samsung SSD
840  9B0Q PQ: 0 ANSI: 5
[   27.778271] ata10.00: Enabling discard_zeroes_data
[   27.778317] sd 9:0:0:0: [sdf] 976773168 512-byte logical blocks:
(500 GB/465 GiB)
[   27.778329] sd 9:0:0:0: Attached scsi generic sg5 type 0
[   27.778531] sd 9:0:0:0: [sdf] Write Protect is off
[   27.778534] sd 9:0:0:0: [sdf] Mode Sense: 00 3a 00 00
[   27.778610] sd 9:0:0:0: [sdf] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[   27.778714] scsi 15:0:0:0: Processor         Marvell  91xx Config
   1.01 PQ: 0 ANSI: 5
[   27.778820] ata10.00: Enabling discard_zeroes_data
[   27.781699]  sdf: sdf1 sdf2 sdf3
[   27.781862] ata10.00: Enabling discard_zeroes_data
[   27.782048] sd 9:0:0:0: [sdf] Attached SCSI disk
[   27.794051] usbcore: registered new interface driver usbhid
[   27.795070] usbhid: USB HID core driver
[   27.795451] ata16.00: exception Emask 0x1 SAct 0x0 SErr 0x0 action 0x0
[   27.795452] ata16.00: irq_stat 0x40000001
[   27.795558] scsi 15:0:0:0: Attached scsi generic sg6 type 3
[   27.799448] usb 7-1.4: new full-speed USB device number 4 using ehci-pci
[   27.843489] usb 8-1.7: new full-speed USB device number 5 using ehci-pci
[   27.897595] usb 7-1.4: New USB device found, idVendor=1b1c, idProduct=0c04
[   27.899606] usb 7-1.4: New USB device strings: Mfr=1, Product=2,
SerialNumber=0
[   27.901579] usb 7-1.4: Product: Integrated USB Bridge
[   27.903534] usb 7-1.4: Manufacturer: Corsair Memory, Inc.
[   27.909560] hid-generic 0003:1B1C:0C04.0001: hiddev0,hidraw0: USB
HID v1.11 Device [Corsair Memory, Inc. Integrated USB Bridge] on
usb-0000:00:1a.0-1.4/input0
[   27.944362] usb 8-1.7: New USB device found, idVendor=1ea7, idProduct=1002
[   27.946441] usb 8-1.7: New USB device strings: Mfr=1, Product=2,
SerialNumber=0
[   27.948532] usb 8-1.7: Product: Gaming Mouse
[   27.950591] usb 8-1.7: Manufacturer: BTL
[   27.961510] Btrfs loaded
[   27.965638] input: BTL Gaming Mouse as
/devices/pci0000:00/0000:00:1d.0/usb8/8-1/8-1.7/8-1.7:1.0/0003:1EA7:1002.0002/input/input5
[   28.023799] hid-generic 0003:1EA7:1002.0002: input,hiddev0,hidraw1:
USB HID v1.10 Mouse [BTL Gaming Mouse] on usb-0000:00:1d.0-1.7/input0
[   28.030094] input: BTL Gaming Mouse as
/devices/pci0000:00/0000:00:1d.0/usb8/8-1/8-1.7/8-1.7:1.1/0003:1EA7:1002.0003/input/input6
[   28.087588] hid-generic 0003:1EA7:1002.0003: input,hidraw2: USB HID
v1.11 Keyboard [BTL Gaming Mouse] on usb-0000:00:1d.0-1.7/input1
[   28.159488] usb 8-1.8: new low-speed USB device number 6 using ehci-pci
[   28.191363] EXT4-fs (dm-0): mounted filesystem with ordered data
mode. Opts: (null)
[   28.274997] usb 8-1.8: New USB device found, idVendor=04d9, idProduct=1503
[   28.277213] usb 8-1.8: New USB device strings: Mfr=1, Product=2,
SerialNumber=0
[   28.279418] usb 8-1.8: Product: USB Keyboard
[   28.281594] usb 8-1.8: Manufacturer:
[   28.294148] input:   USB Keyboard as
/devices/pci0000:00/0000:00:1d.0/usb8/8-1/8-1.8/8-1.8:1.0/0003:04D9:1503.0004/input/input7
[   28.351575] hid-generic 0003:04D9:1503.0004: input,hidraw3: USB HID
v1.10 Keyboard [  USB Keyboard] on usb-0000:00:1d.0-1.8/input0
[   28.371198] input:   USB Keyboard as
/devices/pci0000:00/0000:00:1d.0/usb8/8-1/8-1.8/8-1.8:1.1/0003:04D9:1503.0005/input/input8
[   28.395806] systemd[1]: Inserted module 'autofs4'
[   28.424536] systemd[1]: systemd 219 running in system mode. (+PAM
+AUDIT +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP
+GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN)
[   28.426800] systemd[1]: Detected virtualization xen.
[   28.427447] hid-generic 0003:04D9:1503.0005: input,hidraw4: USB HID
v1.10 Device [  USB Keyboard] on usb-0000:00:1d.0-1.8/input1
[   28.429150] systemd[1]: Detected architecture x86-64.
[   28.435007] systemd[1]: Set hostname to <carlos>.
[   28.555244] systemd[1]: Set up automount Arbitrary Executable File
Formats File System Automount Point.
[   28.557638] systemd[1]: Starting Arbitrary Executable File Formats
File System Automount Point.
[   28.562544] systemd[1]: Reached target Encrypted Volumes.
[   28.564939] systemd[1]: Starting Encrypted Volumes.
[   28.569832] systemd[1]: Created slice Root Slice.
[   28.572190] systemd[1]: Starting Root Slice.
[   28.577008] systemd[1]: Listening on Delayed Shutdown Socket.
[   28.579377] systemd[1]: Starting Delayed Shutdown Socket.
[   28.582120] systemd[1]: Listening on udev Control Socket.
[   28.583261] systemd[1]: Starting udev Control Socket.
[   28.586749] systemd[1]: Listening on Device-mapper event daemon FIFOs.
[   28.587933] systemd[1]: Starting Device-mapper event daemon FIFOs.
[   28.590298] systemd[1]: Listening on fsck to fsckd communication Socket.
[   28.591491] systemd[1]: Starting fsck to fsckd communication Socket.
[   28.593908] systemd[1]: Created slice User and Session Slice.
[   28.595063] systemd[1]: Starting User and Session Slice.
[   28.597474] systemd[1]: Listening on /dev/initctl Compatibility Named Pipe.
[   28.598639] systemd[1]: Starting /dev/initctl Compatibility Named Pipe.
[   28.601068] systemd[1]: Listening on Syslog Socket.
[   28.602210] systemd[1]: Starting Syslog Socket.
[   28.604538] systemd[1]: Listening on udev Kernel Socket.
[   28.605637] systemd[1]: Starting udev Kernel Socket.
[   28.606774] systemd[1]: Started Forward Password Requests to Wall
Directory Watch.
[   28.607915] systemd[1]: Starting Forward Password Requests to Wall
Directory Watch.
[   28.610198] systemd[1]: Listening on Journal Socket (/dev/log).
[   28.611292] systemd[1]: Starting Journal Socket (/dev/log).
[   28.613568] systemd[1]: Created slice System Slice.
[   28.614625] systemd[1]: Starting System Slice.
[   28.616844] systemd[1]: Created slice system-serial\x2dgetty.slice.
[   28.617879] systemd[1]: Starting system-serial\x2dgetty.slice.
[   28.620094] systemd[1]: Created slice system-systemd\x2dfsck.slice.
[   28.621124] systemd[1]: Starting system-systemd\x2dfsck.slice.
[   28.623265] systemd[1]: Created slice system-getty.slice.
[   28.624317] systemd[1]: Starting system-getty.slice.
[   28.626384] systemd[1]: Listening on Journal Audit Socket.
[   28.627402] systemd[1]: Starting Journal Audit Socket.
[   28.629401] systemd[1]: Listening on LVM2 metadata daemon socket.
[   28.630349] systemd[1]: Starting LVM2 metadata daemon socket.
[   28.632290] systemd[1]: Reached target Remote File Systems (Pre).
[   28.633206] systemd[1]: Starting Remote File Systems (Pre).
[   28.635058] systemd[1]: Reached target Slices.
[   28.635992] systemd[1]: Starting Slices.
[   28.637870] systemd[1]: Listening on Journal Socket.
[   28.638767] systemd[1]: Starting Journal Socket.
[   28.641545] systemd[1]: Started Braille Device Support.
[   28.642589] systemd[1]: Starting Braille Device Support...
[   28.645323] systemd[1]: Starting udev Coldplug all Devices...
[   28.648602] systemd[1]: Starting Setup Virtual Console...
[   28.651862] systemd[1]: Starting File System Check on Root Device...
[   28.655199] systemd[1]: Mounting Huge Pages File System...
[   28.659327] systemd[1]: Starting Journal Service...
[   28.661714] systemd[1]: Started Read required files in advance.
[   28.663582] systemd[1]: Mounting Debug File System...
[   28.666742] systemd[1]: Mounting POSIX Message Queue File System...
[   28.671110] systemd[1]: Starting Monitoring of LVM2 mirrors,
snapshots etc. using dmeventd or progress polling...
[   28.677229] systemd[1]: Starting Uncomplicated firewall...
[   28.682936] systemd[1]: Started Set Up Additional Binary Formats.
[   28.691770] systemd[1]: Starting Load Kernel Modules...
[   28.695544] systemd[1]: Starting Nameserver information manager...
[   28.699565] systemd[1]: Starting Create list of required static
device nodes for the current kernel...
[   28.703458] systemd[1]: Mounting Mount /proc/xen files...
[   28.704192] lp: driver loaded but no devices found
[   28.708618] ppdev: user-space parallel port driver
[   28.710922] systemd[1]: Mounted Huge Pages File System.
[   28.711977] parport_pc parport_pc.956: Unable to set coherent dma
mask: disabling DMA
[   28.712022] parport_pc parport_pc.888: Unable to set coherent dma
mask: disabling DMA
[   28.712086] parport_pc parport_pc.632: Unable to set coherent dma
mask: disabling DMA
[   28.716204] systemd[1]: Mounted POSIX Message Queue File System.
[   28.717326] xen:xen_evtchn: Event-channel device installed
[   28.719354] systemd[1]: Mounted Debug File System.
[   28.721706] systemd[1]: Mounted Mount /proc/xen files.
[   28.723814] systemd[1]: Started Journal Service.
[   28.728985] xen_pciback: backend is vpci
[   28.780076] EXT4-fs (dm-0): re-mounted. Opts: errors=remount-ro
[   28.795120] systemd-journald[342]: Received request to flush
runtime journal from PID 1
[   28.961189] wmi: Mapper loaded
[   29.011707] EDAC MC: Ver: 3.0.0
[   29.011708] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[   29.016348] EDAC ie31200: No ECC support
[   29.018010] xen: registering gsi 16 triggering 0 polarity 1
[   29.018013] Already setup the GSI :16
[   29.025387] ACPI Warning: SystemIO range
0x0000000000000428-0x000000000000042f conflicts with OpRegion
0x0000000000000400-0x000000000000047f (\PMIO) (20141107/utaddress-258)
[   29.027822] ACPI: If an ACPI driver is available for this device,
you should use it instead of the native driver
[   29.029060] ACPI Warning: SystemIO range
0x0000000000000540-0x000000000000054f conflicts with OpRegion
0x0000000000000500-0x0000000000000563 (\GPIO) (20141107/utaddress-258)
[   29.029308] [drm] Initialized drm 1.1.0 20060810
[   29.032796] ACPI Warning: SystemIO range
0x0000000000000540-0x000000000000054f conflicts with OpRegion
0x0000000000000500-0x000000000000057f (\_SB_.PCI0.LPCB.GPBX)
(20141107/utaddress-258)
[   29.035366] ACPI: If an ACPI driver is available for this device,
you should use it instead of the native driver
[   29.036562] ACPI Warning: SystemIO range
0x0000000000000530-0x000000000000053f conflicts with OpRegion
0x0000000000000500-0x0000000000000563 (\GPIO) (20141107/utaddress-258)
[   29.039452] ACPI Warning: SystemIO range
0x0000000000000530-0x000000000000053f conflicts with OpRegion
0x0000000000000500-0x000000000000057f (\_SB_.PCI0.LPCB.GPBX)
(20141107/utaddress-258)
[   29.042631] ACPI: If an ACPI driver is available for this device,
you should use it instead of the native driver
[   29.044187] ACPI Warning: SystemIO range
0x0000000000000500-0x000000000000052f conflicts with OpRegion
0x0000000000000500-0x0000000000000563 (\GPIO) (20141107/utaddress-258)
[   29.047254] ACPI Warning: SystemIO range
0x0000000000000500-0x000000000000052f conflicts with OpRegion
0x0000000000000500-0x000000000000057f (\_SB_.PCI0.LPCB.GPBX)
(20141107/utaddress-258)
[   29.050394] ACPI: If an ACPI driver is available for this device,
you should use it instead of the native driver
[   29.051948] lpc_ich: Resource conflict(s) found affecting gpio_ich
[   29.054270] media: Linux media interface: v0.10
[   29.056171] bcma-pci-bridge 0000:0c:00.0: enabling device (0100 -> 0102)
[   29.056986] Bluetooth: Core ver 2.20
[   29.056998] NET: Registered protocol family 31
[   29.056998] Bluetooth: HCI device and connection manager initialized
[   29.057001] Bluetooth: HCI socket layer initialized
[   29.057003] Bluetooth: L2CAP socket layer initialized
[   29.057008] Bluetooth: SCO socket layer initialized
[   29.068191] xen: registering gsi 19 triggering 0 polarity 1
[   29.069715] Already setup the GSI :19
[   29.071410] Linux video capture interface: v2.00
[   29.071649] usbcore: registered new interface driver btusb
[   29.072067] bcma: bus0: Found chip with id 43228, rev 0x00 and package 0x08
[   29.072101] bcma: bus0: Core 0 found: ChipCommon (manuf 0x4BF, id
0x800, rev 0x25, class 0x0)
[   29.072126] bcma: bus0: Core 1 found: IEEE 802.11 (manuf 0x4BF, id
0x812, rev 0x1E, class 0x0)
[   29.072178] bcma: bus0: Core 2 found: PCIe (manuf 0x4BF, id 0x820,
rev 0x12, class 0x0)
[   29.072202] bcma: bus0: Core 3 found: SDIO Device (manuf 0x4BF, id
0x829, rev 0x07, class 0x0)
[   29.084512] usbcore: registered new interface driver usbserial
[   29.086168] usbcore: registered new interface driver usbserial_generic
[   29.087910] bcma: bus0: Bus registered
[   29.090859] usbserial: USB Serial support registered for generic
[   29.097693] xen: registering gsi 16 triggering 0 polarity 1
[   29.099599] Already setup the GSI :16
[   29.106950] [drm] Memory usable by graphics device = 2048M
[   29.108819] checking generic (d0000000 500000) vs hw (d0000000 10000000)
[   29.110600] fb: switching to inteldrmfb from EFI VGA
[   29.112422] Console: switching to colour dummy device 80x25
[   29.113435] [drm] Replacing VGA console driver
[   29.117638] MXM: GUID detected in BIOS
[   29.117690] ACPI Warning: \_SB_.PCI0.GFX0._DSM: Argument #4 type
mismatch - Found [Buffer], ACPI requires [Package]
(20141107/nsarguments-95)
[   29.117834] xen: registering gsi 16 triggering 0 polarity 1
[   29.117840] Already setup the GSI :16
[   29.119193] usbcore: registered new interface driver cypress_m8
[   29.119208] usbserial: USB Serial support registered for DeLorme
Earthmate USB
[   29.119219] usbserial: USB Serial support registered for HID->COM
RS232 Adapter
[   29.119229] usbserial: USB Serial support registered for Nokia
CA-42 V2 Adapter
[   29.119247] cypress_m8 8-1.6:1.0: HID->COM RS232 Adapter converter detected
[   29.122669] AVX version of gcm_enc/dec engaged.
[   29.122672] AES CTR mode by8 optimization enabled
[   29.123352] uvcvideo: Found UVC 1.00 device USB2.0 UVC PC Camera (05e3:0510)
[   29.123374] usb 8-1.6: HID->COM RS232 Adapter converter now
attached to ttyUSB0
[   29.127596] input: USB2.0 UVC PC Camera as
/devices/pci0000:00/0000:00:1d.0/usb8/8-1/8-1.5/8-1.5:1.0/input/input9
[   29.127688] usbcore: registered new interface driver uvcvideo
[   29.127692] USB Video Class driver (1.1.1)
[   29.156956] intel_rapl: Found RAPL domain package
[   29.156964] intel_rapl: Found RAPL domain core
[   29.156969] intel_rapl: Found RAPL domain uncore
[   29.167419] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[   29.167424] [drm] Driver supports precise vblank timestamp query.
[   29.167576] vgaarb: device changed decodes:
PCI:0000:00:02.0,olddecodes=io+mem,decodes=none:owns=io+mem
[   29.176252] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[   29.176889] acpi device:54: registered as cooling_device14
[   29.176990] input: Video Bus as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input10
[   29.177517] [drm] Initialized i915 1.6.0 20141121 for 0000:00:02.0 on minor 0
[   29.177900] snd_hda_intel 0000:00:1b.0: enabling device (0000 -> 0002)
[   29.178190] nouveau  [  DEVICE][0000:01:00.0] BOOT0  : 0x0e4040a2
[   29.178193] nouveau  [  DEVICE][0000:01:00.0] Chipset: GK104 (NVE4)
[   29.178194] nouveau  [  DEVICE][0000:01:00.0] Family : NVE0
[   29.184063] xen: registering gsi 22 triggering 0 polarity 1
[   29.184082] xen: --> pirq=22 -> irq=22 (gsi=22)
[   29.202920] sound hdaudioC0D0: autoconfig: line_outs=4
(0x14/0x15/0x16/0x17/0x0) type:line
[   29.202927] sound hdaudioC0D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[   29.202930] sound hdaudioC0D0:    hp_outs=1 (0x1b/0x0/0x0/0x0/0x0)
[   29.202933] sound hdaudioC0D0:    mono: mono_out=0x0
[   29.202935] sound hdaudioC0D0:    dig-out=0x11/0x1e
[   29.202937] sound hdaudioC0D0:    inputs:
[   29.202940] sound hdaudioC0D0:      Front Mic=0x19
[   29.202943] sound hdaudioC0D0:      Rear Mic=0x18
[   29.202945] sound hdaudioC0D0:      Line=0x1a
[   29.213875] asus_wmi: ASUS WMI generic driver loaded
[   29.215799] asus_wmi: Initialization: 0x0
[   29.215854] asus_wmi: BIOS WMI version: 0.9
[   29.215912] asus_wmi: SFUN value: 0x0
[   29.216444] input: Eee PC WMI hotkeys as
/devices/platform/eeepc-wmi/input/input11
[   29.219126] asus_wmi: Disabling ACPI video driver
[   29.229722] cfg80211: Calling CRDA to update world regulatory domain
[   29.243624] input: HDA Intel PCH Front Mic as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input12
[   29.248606] Adding 33218556k swap on
/dev/mapper/ubuntu--gnome--vg-swap_1.  Priority:-1 extents:1
across:33218556k SSFS
[   29.251350] [drm] GMBUS [i915 gmbus vga] timed out, falling back to
bit banging on pin 2
[   29.253601] b43-phy0: Broadcom 43228 WLAN found (core revision 30)
[   29.254029] b43-phy0: Found PHY: Analog 9, Type 4 (N), Revision 16
[   29.254047] b43-phy0: Found Radio: Manuf 0x17F, ID 0x2057, Revision
9, Version 1
[   29.254645] Broadcom 43xx driver loaded [ Features: PNL ]
[   29.258330] cfg80211: World regulatory domain updated:
[   29.258336] cfg80211:  DFS Master region: unset
[   29.258337] cfg80211:   (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp), (dfs_cac_time)
[   29.258340] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm), (N/A)
[   29.258343] cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm), (N/A)
[   29.258345] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm), (N/A)
[   29.258347] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm), (N/A)
[   29.258350] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm), (N/A)
[   29.260707] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   29.283364] nouveau  [   VBIOS][0000:01:00.0] using image from PROM
[   29.283492] nouveau  [   VBIOS][0000:01:00.0] BIT signature found
[   29.283494] nouveau  [   VBIOS][0000:01:00.0] version 80.04.eb.00.17
[   29.284138] nouveau  [     PMC][0000:01:00.0] MSI interrupts enabled
[   29.284188] nouveau  [     PFB][0000:01:00.0] RAM type: GDDR5
[   29.284189] nouveau  [     PFB][0000:01:00.0] RAM size: 4096 MiB
[   29.284191] nouveau  [     PFB][0000:01:00.0]    ZCOMP: 0 tags
[   29.286400] nouveau  [    VOLT][0000:01:00.0] GPU voltage: 862500uv
[   29.321106] fbcon: inteldrmfb (fb0) is primary device
[   29.334597] nouveau  [  PTHERM][0000:01:00.0] FAN control: PWM
[   29.334607] nouveau  [  PTHERM][0000:01:00.0] fan management: automatic
[   29.334628] nouveau  [  PTHERM][0000:01:00.0] internal sensor: yes
[   29.334670] nouveau  [     CLK][0000:01:00.0] 07: core 405 MHz memory 648 MHz
[   29.334706] nouveau  [     CLK][0000:01:00.0] 0a: core 405-1032 MHz
memory 1620 MHz
[   29.334768] nouveau  [     CLK][0000:01:00.0] 0e: core 405-1293 MHz
memory 7010 MHz
[   29.334842] nouveau  [     CLK][0000:01:00.0] 0f: core 405-1293 MHz
memory 7010 MHz
[   29.334907] nouveau  [     CLK][0000:01:00.0] --: core 405 MHz memory 648 MHz
[   29.354425] Console: switching to colour frame buffer device 240x67
[   29.357672] [TTM] Zone  kernel: Available graphics memory: 15960430 kiB
[   29.357672] [TTM] Zone   dma32: Available graphics memory: 2097152 kiB
[   29.357672] [TTM] Initializing pool allocator
[   29.357675] [TTM] Initializing DMA pool allocator
[   29.357680] nouveau  [     DRM] VRAM: 4096 MiB
[   29.357681] nouveau  [     DRM] GART: 1048576 MiB
[   29.357683] nouveau  [     DRM] TMDS table version 2.0
[   29.357684] nouveau  [     DRM] DCB version 4.0
[   29.357685] nouveau  [     DRM] DCB outp 00: 01000f02 00020030
[   29.357685] nouveau  [     DRM] DCB outp 01: 02000f00 00000000
[   29.357686] nouveau  [     DRM] DCB outp 02: 08011f82 00020030
[   29.357687] nouveau  [     DRM] DCB outp 03: 02022f62 00020010
[   29.357688] nouveau  [     DRM] DCB outp 04: 04833fb6 0f420010
[   29.357688] nouveau  [     DRM] DCB outp 05: 04033f72 00020010
[   29.357689] nouveau  [     DRM] DCB conn 00: 00001030
[   29.357690] nouveau  [     DRM] DCB conn 01: 01000131
[   29.357690] nouveau  [     DRM] DCB conn 02: 00010261
[   29.357691] nouveau  [     DRM] DCB conn 03: 00020346
[   29.358086] i915 0000:00:02.0: fb0: inteldrmfb frame buffer device
[   29.358104] i915 0000:00:02.0: registered panic notifier
[   29.358449] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[   29.358470] [drm] Driver supports precise vblank timestamp query.
[   29.359488] input: HDA Intel PCH Rear Mic as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input13
[   29.359569] input: HDA Intel PCH Line as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input14
[   29.359655] input: HDA Intel PCH Line Out Front as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input15
[   29.359756] input: HDA Intel PCH Line Out Surround as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input16
[   29.359837] input: HDA Intel PCH Line Out CLFE as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input17
[   29.359921] input: HDA Intel PCH Line Out Side as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input18
[   29.360006] input: HDA Intel PCH Front Headphone as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input19
[   29.360080] input: HDA Intel PCH HDMI/DP,pcm=3 as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input20
[   29.360156] input: HDA Intel PCH HDMI/DP,pcm=7 as
/devices/pci0000:00/0000:00:1b.0/sound/card0/input21
[   29.362904] nouveau  [     DRM] MM: using COPY for buffer copies
[   29.439350] nouveau 0000:01:00.0: No connectors reported connected with modes
[   29.440275] [drm] Cannot find any crtc or sizes - going 1024x768
[   29.614321] nouveau  [     DRM] allocated 1024x768 fb: 0x60000, bo
ffff8808020a7400
[   29.615415] nouveau 0000:01:00.0: fb1: nouveaufb frame buffer device
[   29.616351] [drm] Initialized nouveau 1.2.1 20120801 for
0000:01:00.0 on minor 1
[   29.617342] snd_hda_intel 0000:01:00.1: enabling device (0000 -> 0002)
[   29.618387] xen: registering gsi 17 triggering 0 polarity 1
[   29.619747] Already setup the GSI :17
[   29.621222] snd_hda_intel 0000:01:00.1: Disabling MSI
[   29.622324] snd_hda_intel 0000:01:00.1: Handle VGA-switcheroo audio client
[   30.080051] input: HDA NVidia HDMI/DP,pcm=3 as
/devices/pci0000:00/0000:00:01.0/0000:01:00.1/sound/card1/input22
[   30.081424] input: HDA NVidia HDMI/DP,pcm=7 as
/devices/pci0000:00/0000:00:01.0/0000:01:00.1/sound/card1/input23
[   30.083971] input: HDA NVidia HDMI/DP,pcm=8 as
/devices/pci0000:00/0000:00:01.0/0000:01:00.1/sound/card1/input24
[   30.086405] input: HDA NVidia HDMI/DP,pcm=9 as
/devices/pci0000:00/0000:00:01.0/0000:01:00.1/sound/card1/input25
[   30.179448] EXT4-fs (sdf2): mounting ext2 file system using the
ext4 subsystem
[   30.181540] EXT4-fs (sdf2): mounted filesystem without journal. Opts: (null)
[   30.304633] audit: type=1400 audit(1428032096.988:2):
apparmor="STATUS" operation="profile_load" profile="unconfined"
name="/sbin/dhclient" pid=816 comm="apparmor_parser"
[   30.305706] audit: type=1400 audit(1428032096.988:3):
apparmor="STATUS" operation="profile_load" profile="unconfined"
name="/usr/lib/NetworkManager/nm-dhcp-client.action" pid=816
comm="apparmor_parser"
[   30.306777] audit: type=1400 audit(1428032096.988:4):
apparmor="STATUS" operation="profile_load" profile="unconfined"
name="/usr/lib/NetworkManager/nm-dhcp-helper" pid=816
comm="apparmor_parser"
[   30.307857] audit: type=1400 audit(1428032096.992:5):
apparmor="STATUS" operation="profile_load" profile="unconfined"
name="/usr/lib/connman/scripts/dhclient-script" pid=816
comm="apparmor_parser"
[   30.323239] audit: type=1400 audit(1428032097.004:6):
apparmor="STATUS" operation="profile_load" profile="unconfined"
name="/usr/bin/evince" pid=816 comm="apparmor_parser"
[   30.324329] audit: type=1400 audit(1428032097.008:7):
apparmor="STATUS" operation="profile_load" profile="unconfined"
name="sanitized_helper" pid=816 comm="apparmor_parser"
[   30.325407] audit: type=1400 audit(1428032097.008:8):
apparmor="STATUS" operation="profile_load" profile="unconfined"
name="/usr/bin/evince-previewer" pid=816 comm="apparmor_parser"
[   30.326474] audit: type=1400 audit(1428032097.008:9):
apparmor="STATUS" operation="profile_load" profile="unconfined"
name="sanitized_helper" pid=816 comm="apparmor_parser"
[   30.327564] audit: type=1400 audit(1428032097.012:10):
apparmor="STATUS" operation="profile_load" profile="unconfined"
name="/usr/bin/evince-thumbnailer" pid=816 comm="apparmor_parser"
[   30.528334] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   30.530615] Bluetooth: BNEP filters: protocol multicast
[   30.532659] Bluetooth: BNEP socket layer initialized
[   30.542584] Bluetooth: RFCOMM TTY layer initialized
[   30.543686] Bluetooth: RFCOMM socket layer initialized
[   30.544718] Bluetooth: RFCOMM ver 1.11
[   30.742318] r8169 0000:0d:00.0 eth0: link down
[   30.742402] r8169 0000:0d:00.0 eth0: link down
[   31.159372] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[   35.632151] r8169 0000:0d:00.0 eth0: link up
[   36.328454] e1000e: eth1 NIC Link is Up 100 Mbps Full Duplex, Flow
Control: Rx/Tx
[   36.328462] e1000e 0000:00:19.0 eth1: 10/100 speed: disabling TSO
"


--

Gustavo
