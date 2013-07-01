From: Rudy Patard <rudy.patard@gmail.com>
Date: Mon, 1 Jul 2013 20:53:38 +0200
Subject: B4311 bcm43xx crash, no blacklisting on b43 found
In-Reply-To: <CAFDBk-o6EA67LATyB62jEwptGyg3XAbxETbh6y+NfQOjfK0=tw@mail.gmail.com>
References: <CAFDBk-o6EA67LATyB62jEwptGyg3XAbxETbh6y+NfQOjfK0=tw@mail.gmail.com>
Message-ID: <CAFDBk-qD0XxtMC04bOThmhCPWNBy8CTOu0BJ+OAg_wP1OzPRig@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 1 July 2013 16:19, Rudy Patard <rudy.patard@gmail.com> wrote:
>
> Hello all,
>
> I'm a new user of OpenSuse, coming from Xubuntu, and I've got an issue
> with the wifi chip
>
> I went trough the forums about this topics, I've put the firmware 43X with
> the usual bug (complete crash)
> I search the blacklisting without success b43 do not appear as black
> listed.
> I'm stuck.
>
>
> BR
>
> Rudy
>
> Here are the required info :
>
> uname -a
>
> Linux linux-089l.site 3.7.10-1.16-desktop #1 SMP PREEMPT Fri May 31
> 20:21:23 UTC 2013 (97c14ba) x86_64 x86_64 x86_64 GNU/Linux
>
> lspci -vvn|grep 43 -A7
>
> 02:00.0 0280: 14e4:4311 (rev 01)
>         Subsystem: 1468:0422
>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>
>         Latency: 0, Cache Line Size: 32 bytes
>         Interrupt: pin A routed to IRQ 16
>         Region 0: Memory at 84000000 (32-bit, non-prefetchable) [size=16K]
>         Capabilities: [40] Power Management version 2
>
> --
>         Kernel driver in use: b43-pci-bridge
>
>
>  Prefetchable memory behind bridge: 0000000084300000-00000000844fffff
>         Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- <SERR- <PERR-
>
>         BridgeCtl: Parity- SERR- NoISA+ VGA- MAbort- >Reset- FastB2B-
>                 PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
>         Capabilities: [50] Power Management version 3
>                 Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
> PME(D0+,D1-,D2-,D3hot+,D3cold+)
>
>                 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
>         Capabilities: [58] Express (v1) Root Port (Slot+), MSI 00
> --
> 00:12.0 0101: 1002:4379 (rev 80) (prog-if 8f [Master SecP SecO PriP PriO])
>
>         Subsystem: 1002:4379
>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>         Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>
>         Latency: 64, Cache Line Size: 32 bytes
>         Interrupt: pin A routed to IRQ 22
>         Region 0: I/O ports at 8440 [size=8]
>         Region 1: I/O ports at 8434 [size=4]
>         Region 2: I/O ports at 8438 [size=8]
>
>         Region 3: I/O ports at 8430 [size=4]
>         Region 4: I/O ports at 8400 [size=16]
>         Region 5: Memory at b0004000 (32-bit, non-prefetchable) [size=512]
>         [virtual] Expansion ROM at 84900000 [disabled] [size=512K]
>
>         Capabilities: [60] Power Management version 2
>                 Flags: PMEClk- DSI+ D1+ D2+ AuxCurrent=0mA
> PME(D0-,D1-,D2-,D3hot-,D3cold-)
>                 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=2 PME-
>
>         Capabilities: [50] MSI: Enable- Count=1/1 Maskable- 64bit-
> --
> 00:13.0 0c03: 1002:4374 (rev 80) (prog-if 10 [OHCI])
>         Subsystem: 1025:009f
>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>
>         Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Latency: 64, Cache Line Size: 32 bytes
>
>         Interrupt: pin A routed to IRQ 19
>         Region 0: Memory at b0005000 (32-bit, non-prefetchable) [size=4K]
>
>         Kernel driver in use: ohci_hcd
> --
> 00:13.1 0c03: 1002:4375 (rev 80) (prog-if 10 [OHCI])
>
>         Subsystem: 1025:009f
>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>
>         Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Latency: 64, Cache Line Size: 32 bytes
>         Interrupt: pin A routed to IRQ 19
>
>         Region 0: Memory at b0006000 (32-bit, non-prefetchable) [size=4K]
>         Kernel driver in use: ohci_hcd
> --
> 00:13.2 0c03: 1002:4373 (rev 80) (prog-if 20 [EHCI])
>         Subsystem: 1025:009f
>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>
>         Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Latency: 64, Cache Line Size: 32 bytes
>         Interrupt: pin A routed to IRQ 19
>
>         Region 0: Memory at b0007000 (32-bit, non-prefetchable) [size=4K]
>         Capabilities: [dc] Power Management version 2
> --
> 00:14.0 0c05: 1002:4372 (rev 83)
>         Subsystem: 1025:009f
>         Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>
>         Status: Cap+ 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Region 0: I/O ports at 8410 [size=16]
>         Region 1: Memory at 84980000 (32-bit, non-prefetchable) [size=1K]
>
>         Capabilities: [b0] HyperTransport: MSI Mapping Enable- Fixed+
>         Kernel driver in use: piix4_smbus
> --
> 00:14.1 0101: 1002:4376 (rev 80) (prog-if 82 [Master PriP])
>         Subsystem: 1025:009f
>         Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV+ VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>
>         Status: Cap+ 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Latency: 64
>         Interrupt: pin A routed to IRQ 16
>         Region 0: I/O ports at 01f0 [size=8]
>
>         Region 1: I/O ports at 03f4 [size=1]
> --
> 00:14.2 0403: 1002:437b (rev 01)
>         Subsystem: 1025:009f
>         Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>
>         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=slow >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Latency: 64, Cache Line Size: 32 bytes
>         Interrupt: pin A routed to IRQ 16
>
>         Region 0: Memory at b0000000 (64-bit, non-prefetchable) [size=16K]
>         Capabilities: [50] Power Management version 2
> --
> 00:14.3 0601: 1002:4377 (rev 80)
>         Subsystem: 1025:009f
>         Control: I/O+ Mem+ BusMaster+ SpecCycle+ MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>
>         Status: Cap- 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Latency: 0
>
> 00:14.4 0604: 1002:4371 (rev 80) (prog-if 01 [Subtractive decode])
>
>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>         Status: Cap- 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>
>         Latency: 64
>         Bus: primary=00, secondary=06, subordinate=08, sec-latency=64
>         I/O behind bridge: 0000a000-0000afff
>         Memory behind bridge: b0300000-b03fffff
>         Prefetchable memory behind bridge: 80000000-83ffffff
>
> --
> 02:00.0 0280: 14e4:4311 (rev 01)
>         Subsystem: 1468:0422
>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>
>         Latency: 0, Cache Line Size: 32 bytes
>         Interrupt: pin A routed to IRQ 16
>         Region 0: Memory at 84000000 (32-bit, non-prefetchable) [size=16K]
>         Capabilities: [40] Power Management version 2
>
> --
>         Kernel driver in use: b43-pci-bridge
>
> 06:01.0 0200: 10ec:8139 (rev 10)
>         Subsystem: 1025:009f
>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>
>         Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Latency: 64 (8000ns min, 16000ns max)
>         Interrupt: pin A routed to IRQ 21
>
>
> dmesg
>
> I bet this is what matters to you :
> Note I did the installation and got the crash
>
> [   12.572627] b43-phy0: Broadcom 4311 WLAN found (core revision 10)
> [   12.588048] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision 8
> [   12.595279] Broadcom 43xx driver loaded [ Features: PMNLS ]
> [   12.644944] b43-phy0 ERROR: Firmware file "b43/ucode5.fw" not found
> [   12.644952] b43-phy0 ERROR: Firmware file "b43-open/ucode5.fw" not
> found
> [   12.644956] b43-phy0 ERROR: Please open a terminal and enter the
> command "sudo /usr/sbin/install_bcm43xx_firmware" to download the correct
> firmware for this driver version. For an off-line installation, go to
> http://en.opensuse.org/HCL/Network_Adapters_(Wireless)/Broadcom_BCM43xx and
> follow the instructions in the "Installing firmware from RPM packages"
> section.
> [
>
>
> [    0.000000] Initializing cgroup subsys cpuset
> [    0.000000] Initializing cgroup subsys cpu
> [    0.000000] Linux version 3.7.10-1.16-desktop (geeko at buildhost) (gcc
> version 4.7.2 20130108 [gcc-4_7-branch revision 195012] (SUSE Linux) ) #1
> SMP PREEMPT Fri May 31 20:21:23 UTC 2013 (97c14ba)
> [    0.000000] Command line: BOOT_IMAGE=/boot/vmlinuz-3.7.10-1.16-desktop
> root=UUID=11a00de6-2720-40b7-9ad0-01cc340505c6
> resume=/dev/disk/by-id/ata-ST9120822AS_5LZ2X4RP-part5 splash=silent quiet
> showopts
> [    0.000000] e820: BIOS-provided physical RAM map:
> [    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009dbff]
> usable
> [    0.000000] BIOS-e820: [mem 0x000000000009dc00-0x000000000009ffff]
> reserved
> [    0.000000] BIOS-e820: [mem 0x00000000000d0000-0x00000000000fffff]
> reserved
> [    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000006fe8ffff]
> usable
> [    0.000000] BIOS-e820: [mem 0x000000006fe90000-0x000000006fe99fff] ACPI
> data
> [    0.000000] BIOS-e820: [mem 0x000000006fe9a000-0x000000006fefffff] ACPI
> NVS
> [    0.000000] BIOS-e820: [mem 0x000000006ff00000-0x000000007fffffff]
> reserved
> [    0.000000] BIOS-e820: [mem 0x00000000e0000000-0x00000000efffffff]
> reserved
> [    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec0ffff]
> reserved
> [    0.000000] BIOS-e820: [mem 0x00000000fee00000-0x00000000fee00fff]
> reserved
> [    0.000000] BIOS-e820: [mem 0x00000000fff80000-0x00000000ffffffff]
> reserved
> [    0.000000] NX (Execute Disable) protection: active
> [    0.000000] SMBIOS 2.4 present.
> [    0.000000] DMI: Acer             Aspire 5100     /Navarro, BIOS V3.05B
> 05/16/2007
> [    0.000000] e820: update [mem 0x00000000-0x0000ffff] usable ==>
> reserved
> [    0.000000] e820: remove [mem 0x000a0000-0x000fffff] usable
> [    0.000000] No AGP bridge found
> [    0.000000] e820: last_pfn = 0x6fe90 max_arch_pfn = 0x400000000
> [    0.000000] MTRR default type: uncachable
> [    0.000000] MTRR fixed ranges enabled:
> [    0.000000]   00000-9FFFF write-back
> [    0.000000]   A0000-BFFFF uncachable
> [    0.000000]   C0000-CFFFF write-protect
> [    0.000000]   D0000-E3FFF uncachable
> [    0.000000]   E4000-FFFFF write-protect
> [    0.000000] MTRR variable ranges enabled:
> [    0.000000]   0 base 0000000000 mask FF80000000 write-back
> [    0.000000]   1 base 0070000000 mask FFF0000000 uncachable
> [    0.000000]   2 disabled
> [    0.000000]   3 disabled
> [    0.000000]   4 disabled
> [    0.000000]   5 disabled
> [    0.000000]   6 disabled
> [    0.000000]   7 disabled
> [    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new
> 0x7010600070106
> [    0.000000] found SMP MP-table at [mem 0x000f8120-0x000f812f] mapped at
> [ffff8800000f8120]
> [    0.000000] initial memory mapped: [mem 0x00000000-0x1fffffff]
> [    0.000000] Base memory trampoline at [ffff880000097000] 97000 size
> 24576
> [    0.000000] init_memory_mapping: [mem 0x00000000-0x6fe8ffff]
> [    0.000000]  [mem 0x00000000-0x6fdfffff] page 2M
> [    0.000000]  [mem 0x6fe00000-0x6fe8ffff] page 4k
> [    0.000000] kernel direct mapping tables up to 0x6fe8ffff @ [mem
> 0x1fffc000-0x1fffffff]
> [    0.000000] RAMDISK: [mem 0x34288000-0x3613bfff]
> [    0.000000] ACPI: RSDP 00000000000f8060 00014 (v00 ACRSYS)
> [    0.000000] ACPI: RSDT 000000006fe91bb4 00038 (v01 ACRSYS ACRPRDCT
> 06040000  LTP 00000000)
> [    0.000000] ACPI: FACP 000000006fe99bc2 00074 (v01 ATI    Bowfin
> 06040000 ATI  000F4240)
> [    0.000000] ACPI: DSDT 000000006fe91bec 07FD6 (v01   Acer  Navarro
> 06040000 MSFT 03000000)
> [    0.000000] ACPI: FACS 000000006fe9afc0 00040
> [    0.000000] ACPI: SLIC 000000006fe99c36 00176 (v01 ACRSYS ACRPRDCT
> 06040000 LOHR 00000000)
> [    0.000000] ACPI: APIC 000000006fe99dac 00054 (v01 PTLTD  ? APIC
> 06040000  LTP 00000000)
> [    0.000000] ACPI: MCFG 000000006fe99e00 0003C (v01 PTLTD    MCFG
> 06040000  LTP 00000000)
> [    0.000000] ACPI: SSDT 000000006fe99e3c 001C4 (v01 PTLTD  POWERNOW
> 06040000  LTP 00000001)
> [    0.000000] ACPI: Local APIC address 0xfee00000
> [    0.000000] Scanning NUMA topology in Northbridge 24
> [    0.000000] No NUMA configuration found
> [    0.000000] Faking a node at [mem
> 0x0000000000000000-0x000000006fe8ffff]
> [    0.000000] Initmem setup node 0 [mem 0x00000000-0x6fe8ffff]
> [    0.000000]   NODE_DATA [mem 0x6fe7c000-0x6fe8ffff]
> [    0.000000]  [ffffea0000000000-ffffea00019fffff] PMD ->
> [ffff88006da00000-ffff88006f3fffff] on node 0
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x00010000-0x00ffffff]
> [    0.000000]   DMA32    [mem 0x01000000-0xffffffff]
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x00010000-0x0009cfff]
> [    0.000000]   node   0: [mem 0x00100000-0x6fe8ffff]
> [    0.000000] On node 0 totalpages: 458269
> [    0.000000]   DMA zone: 56 pages used for memmap
> [    0.000000]   DMA zone: 6 pages reserved
> [    0.000000]   DMA zone: 3919 pages, LIFO batch:0
> [    0.000000]   DMA32 zone: 6211 pages used for memmap
> [    0.000000]   DMA32 zone: 448077 pages, LIFO batch:31
> [    0.000000] SB4X0 revision 0x83
> [    0.000000] Ignoring ACPI timer override.
> [    0.000000] If you got timer trouble try acpi_use_timer_override
> [    0.000000] Detected use of extended apic ids on hypertransport bus
> [    0.000000] ACPI: PM-Timer IO Port: 0x8008
> [    0.000000] ACPI: Local APIC address 0xfee00000
> [    0.000000] ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
> [    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
> [    0.000000] ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
> [    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
> [    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
> [    0.000000] IOAPIC[0]: apic_id 2, version 33, address 0xfec00000, GSI
> 0-23
> [    0.000000] ACPI: IRQ9 used by override.
> [    0.000000] Using ACPI (MADT) for SMP configuration information
> [    0.000000] smpboot: Allowing 2 CPUs, 0 hotplug CPUs
> [    0.000000] nr_irqs_gsi: 40
> [    0.000000] PM: Registered nosave memory: 000000000009d000 -
> 000000000009e000
> [    0.000000] PM: Registered nosave memory: 000000000009e000 -
> 00000000000a0000
> [    0.000000] PM: Registered nosave memory: 00000000000a0000 -
> 00000000000d0000
> [    0.000000] PM: Registered nosave memory: 00000000000d0000 -
> 0000000000100000
> [    0.000000] e820: [mem 0x80000000-0xdfffffff] available for PCI devices
> [    0.000000] Booting paravirtualized kernel on bare hardware
> [    0.000000] setup_percpu: NR_CPUS:512 nr_cpumask_bits:512 nr_cpu_ids:2
> nr_node_ids:1
> [    0.000000] PERCPU: Embedded 27 pages/cpu @ffff88006fc00000 s81856
> r8192 d20544 u1048576
> [    0.000000] pcpu-alloc: s81856 r8192 d20544 u1048576 alloc=1*2097152
> [    0.000000] pcpu-alloc: [0] 0 1
> [    0.000000] Built 1 zonelists in Node order, mobility grouping on.
> Total pages: 451996
> [    0.000000] Policy zone: DMA32
> [    0.000000] Kernel command line:
> BOOT_IMAGE=/boot/vmlinuz-3.7.10-1.16-desktop
> root=UUID=11a00de6-2720-40b7-9ad0-01cc340505c6
> resume=/dev/disk/by-id/ata-ST9120822AS_5LZ2X4RP-part5 splash=silent quiet
> showopts
> [    0.000000] bootsplash: silent mode.
> [    0.000000] PID hash table entries: 4096 (order: 3, 32768 bytes)
> [    0.000000] __ex_table already sorted, skipping sort
> [    0.000000] Checking aperture...
> [    0.000000] No AGP bridge found
> [    0.000000] Node 0: aperture @ 8000000000 size 32 MB
> [    0.000000] Aperture beyond 4GB. Ignoring.
> [    0.000000] Memory: 1760604k/1833536k available (5769k kernel code,
> 460k absent, 72472k reserved, 5184k data, 992k init)
> [    0.000000] Preemptible hierarchical RCU implementation.
> [    0.000000]  RCU dyntick-idle grace-period acceleration is enabled.
> [    0.000000]  RCU restricting CPUs from NR_CPUS=512 to nr_cpu_ids=2.
> [    0.000000] NR_IRQS:33024 nr_irqs:512 16
> [    0.000000] spurious 8259A interrupt: IRQ7.
> [    0.000000] Console: colour dummy device 80x25
> [    0.000000] console [tty0] enabled
> [    0.000000] allocated 7340032 bytes of page_cgroup
> [    0.000000] please try 'cgroup_disable=memory' option if you don't want
> memory cgroups
> [    0.000000] tsc: Fast TSC calibration using PIT
> [    0.000000] tsc: Detected 1695.874 MHz processor
> [    0.000000] tsc: Marking TSC unstable due to TSCs unsynchronized
> [    0.002006] Calibrating delay loop (skipped), value calculated using
> timer frequency.. 3391.74 BogoMIPS (lpj=1695874)
> [    0.002011] pid_max: default: 32768 minimum: 301
> [    0.002068] Security Framework initialized
> [    0.002091] AppArmor: AppArmor initialized
> [    0.002372] Dentry cache hash table entries: 262144 (order: 9, 2097152
> bytes)
> [    0.004372] Inode-cache hash table entries: 131072 (order: 8, 1048576
> bytes)
> [    0.005092] Mount-cache hash table entries: 256
> [    0.005394] Initializing cgroup subsys cpuacct
> [    0.005398] Initializing cgroup subsys memory
> [    0.005423] Initializing cgroup subsys devices
> [    0.005426] Initializing cgroup subsys freezer
> [    0.005429] Initializing cgroup subsys net_cls
> [    0.005432] Initializing cgroup subsys blkio
> [    0.005435] Initializing cgroup subsys perf_event
> [    0.005438] Initializing cgroup subsys hugetlb
> [    0.005475] tseg: 006ff00000
> [    0.005478] CPU: Physical Processor ID: 0
> [    0.005480] CPU: Processor Core ID: 0
> [    0.005483] mce: CPU supports 5 MCE banks
> [    0.005495] LVT offset 0 assigned for vector 0xf9
> [    0.005500] process: using AMD E400 aware idle routine
> [    0.005505] Last level iTLB entries: 4KB 512, 2MB 8, 4MB 4
> [    0.005505] Last level dTLB entries: 4KB 512, 2MB 8, 4MB 4
> [    0.005505] tlb_flushall_shift: 4
> [    0.005629] Freeing SMP alternatives: 20k freed
> [    0.006584] ACPI: Core revision 20120913
> [    0.013544] ..TIMER: vector=0x30 apic1=0 pin1=0 apic2=-1 pin2=-1
> [    0.023978] smpboot: CPU0: AMD Athlon(tm) 64 X2 Dual-Core Processor
> TK-53 (fam: 0f, model: 68, stepping: 01)
> [    0.024000] Performance Events: AMD PMU driver.
> [    0.024000] ... version:                0
> [    0.024000] ... bit width:              48
> [    0.024000] ... generic registers:      4
> [    0.024000] ... value mask:             0000ffffffffffff
> [    0.024000] ... max period:             00007fffffffffff
> [    0.024000] ... fixed-purpose events:   0
> [    0.024000] ... event mask:             000000000000000f
> [    0.024000] process: System has AMD C1E enabled
> [    0.024000] process: Switch to broadcast mode on CPU0
> [    0.029782] NMI watchdog: enabled on all CPUs, permanently consumes one
> hw-PMU counter.
> [    0.031146] smpboot: Booting Node   0, Processors  #1 OK
> [    0.003000] process: Switch to broadcast mode on CPU1
> [    0.102082] Brought up 2 CPUs
> [    0.102088] smpboot: Total of 2 processors activated (6782.82 BogoMIPS)
> [    0.102595] devtmpfs: initialized
> [    0.105049] PM: Registering ACPI NVS region [mem 0x6fe9a000-0x6fefffff]
> (417792 bytes)
> [    0.105238] RTC time:  7:42:51, date: 07/01/13
> [    0.105322] NET: Registered protocol family 16
> [    0.105573] node 0 link 0: io port [1000, fffff]
> [    0.105577] TOM: 0000000080000000 aka 2048M
> [    0.105581] node 0 link 0: mmio [d0000000, dfffffff]
> [    0.105586] node 0 link 0: mmio [c0000000, cfffffff]
> [    0.105589] node 0 link 0: mmio [a0000, bffff]
> [    0.105592] node 0 link 0: mmio [f0000000, ffffffff]
> [    0.105595] node 0 link 0: mmio [e0000000, efffffff]
> [    0.105598] node 0 link 0: mmio [80000000, bfffffff]
> [    0.105602] bus: [bus 00-ff] on node 0 link 0
> [    0.105605] bus: 00 [io  0x0000-0xffff]
> [    0.105607] bus: 00 [mem 0x80000000-0xefffffff]
> [    0.105610] bus: 00 [mem 0x000a0000-0x000bffff]
> [    0.105612] bus: 00 [mem 0xf0000000-0xfcffffffff]
> [    0.105669] ACPI: bus type pci registered
> [    0.105756] PCI: MMCONFIG for domain 0000 [bus 00-07] at [mem
> 0xe0000000-0xe07fffff] (base 0xe0000000)
> [    0.105760] PCI: MMCONFIG at [mem 0xe0000000-0xe07fffff] reserved in
> E820
> [    0.106289] PCI: Using configuration type 1 for base access
> [    0.106477] mtrr: your CPUs had inconsistent variable MTRR settings
> [    0.106479] mtrr: probably your BIOS does not setup all CPUs.
> [    0.106481] mtrr: corrected configuration.
> [    0.107612] bio: create slab <bio-0> at 0
> [    0.107612] ACPI: Added _OSI(Module Device)
> [    0.107612] ACPI: Added _OSI(Processor Device)
> [    0.107612] ACPI: Added _OSI(3.0 _SCP Extensions)
> [    0.107612] ACPI: Added _OSI(Processor Aggregator Device)
> [    0.108667] ACPI: EC: Look up EC in DSDT
> [    0.113071] [Firmware Bug]: ACPI: BIOS _OSI(Linux) query ignored
> [    0.134600] ACPI: Interpreter enabled
> [    0.134607] ACPI: (supports S0 S3 S4 S5)
> [    0.134632] ACPI: Using IOAPIC for interrupt routing
> [    0.211548] ACPI: EC: GPE = 0x10, I/O: command/status = 0x66, data =
> 0x62
> [    0.211854] ACPI: No dock devices found.
> [    0.211861] PCI: Ignoring host bridge windows from ACPI; if necessary,
> use "pci=use_crs" and report a bug
> [    0.212875] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
> [    0.214794] pci_root PNP0A03:00: host bridge window [mem
> 0x000a0000-0x000bffff] (ignored)
> [    0.214799] pci_root PNP0A03:00: host bridge window [mem
> 0x000d0000-0x000d1fff] (ignored)
> [    0.214802] pci_root PNP0A03:00: host bridge window [mem
> 0x000d2000-0x000d3fff] (ignored)
> [    0.214806] pci_root PNP0A03:00: host bridge window [mem
> 0x000d4000-0x000d5fff] (ignored)
> [    0.214811] pci_root PNP0A03:00: host bridge window [mem
> 0x000d6000-0x000d7fff] (ignored)
> [    0.214814] pci_root PNP0A03:00: host bridge window [mem
> 0x000d8000-0x000d9fff] (ignored)
> [    0.214818] pci_root PNP0A03:00: host bridge window [mem
> 0x000da000-0x000dbfff] (ignored)
> [    0.214822] pci_root PNP0A03:00: host bridge window [mem
> 0x000dc000-0x000ddfff] (ignored)
> [    0.214825] pci_root PNP0A03:00: host bridge window [mem
> 0x000de000-0x000dffff] (ignored)
> [    0.214829] pci_root PNP0A03:00: host bridge window [mem
> 0x000e0000-0x000e1fff] (ignored)
> [    0.214832] pci_root PNP0A03:00: host bridge window [mem
> 0x000e2000-0x000e3fff] (ignored)
> [    0.214837] pci_root PNP0A03:00: host bridge window [mem
> 0x80000000-0xffffffff] (ignored)
> [    0.214841] pci_root PNP0A03:00: host bridge window [io  0x0000-0x0cf7]
> (ignored)
> [    0.214844] pci_root PNP0A03:00: host bridge window [io  0x0d00-0xdfff]
> (ignored)
> [    0.214847] pci_root PNP0A03:00: host bridge window [io  0xe030-0xffff]
> (ignored)
> [    0.214851] PCI: root bus 00: hardware-probed resources
> [    0.214860] pci_root PNP0A03:00: [Firmware Info]: MMCONFIG for domain
> 0000 [bus 00-07] only partially covers this bridge
> [    0.214917] PCI host bridge to bus 0000:00
> [    0.214922] pci_bus 0000:00: root bus resource [bus 00-ff]
> [    0.214925] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
> [    0.214929] pci_bus 0000:00: root bus resource [mem
> 0x80000000-0xefffffff]
> [    0.214932] pci_bus 0000:00: root bus resource [mem
> 0x000a0000-0x000bffff]
> [    0.214936] pci_bus 0000:00: root bus resource [mem
> 0xf0000000-0xfcffffffff]
> [    0.214948] pci 0000:00:00.0: [1002:5950] type 00 class 0x060000
> [    0.214987] pci 0000:00:01.0: [1002:5a3f] type 01 class 0x060400
> [    0.215042] pci 0000:00:04.0: [1002:5a36] type 01 class 0x060400
> [    0.215082] pci 0000:00:04.0: PME# supported from D0 D3hot D3cold
> [    0.215102] pci 0000:00:05.0: [1002:5a37] type 01 class 0x060400
> [    0.215143] pci 0000:00:05.0: PME# supported from D0 D3hot D3cold
> [    0.215191] pci 0000:00:12.0: [1002:4379] type 00 class 0x01018f
> [    0.215219] pci 0000:00:12.0: reg 10: [io  0x8440-0x8447]
> [    0.215233] pci 0000:00:12.0: reg 14: [io  0x8434-0x8437]
> [    0.215247] pci 0000:00:12.0: reg 18: [io  0x8438-0x843f]
> [    0.215261] pci 0000:00:12.0: reg 1c: [io  0x8430-0x8433]
> [    0.215275] pci 0000:00:12.0: reg 20: [io  0x8400-0x840f]
> [    0.215289] pci 0000:00:12.0: reg 24: [mem 0xb0004000-0xb00041ff]
> [    0.215304] pci 0000:00:12.0: reg 30: [mem 0x00000000-0x0007ffff pref]
> [    0.215358] pci 0000:00:12.0: supports D1 D2
> [    0.215383] pci 0000:00:13.0: [1002:4374] type 00 class 0x0c0310
> [    0.215402] pci 0000:00:13.0: reg 10: [mem 0xb0005000-0xb0005fff]
> [    0.215496] pci 0000:00:13.1: [1002:4375] type 00 class 0x0c0310
> [    0.215516] pci 0000:00:13.1: reg 10: [mem 0xb0006000-0xb0006fff]
> [    0.215616] pci 0000:00:13.2: [1002:4373] type 00 class 0x0c0320
> [    0.215640] pci 0000:00:13.2: reg 10: [mem 0xb0007000-0xb0007fff]
> [    0.215744] pci 0000:00:13.2: supports D1 D2
> [    0.215747] pci 0000:00:13.2: PME# supported from D0 D1 D2 D3hot
> [    0.215784] pci 0000:00:14.0: [1002:4372] type 00 class 0x0c0500
> [    0.215806] pci 0000:00:14.0: reg 10: [io  0x8410-0x841f]
> [    0.215820] pci 0000:00:14.0: reg 14: [mem 0x00000000-0x000003ff]
> [    0.215878] HPET not enabled in BIOS. You might try hpet=force boot
> option
> [    0.215937] pci 0000:00:14.1: [1002:4376] type 00 class 0x010182
> [    0.215961] pci 0000:00:14.1: reg 10: [io  0x01f0-0x01f7]
> [    0.215975] pci 0000:00:14.1: reg 14: [io  0x03f4-0x03f7]
> [    0.215989] pci 0000:00:14.1: reg 18: [io  0x8450-0x8457]
> [    0.216013] pci 0000:00:14.1: reg 1c: [io  0x8448-0x844b]
> [    0.216027] pci 0000:00:14.1: reg 20: [io  0x8420-0x842f]
> [    0.216117] pci 0000:00:14.2: [1002:437b] type 00 class 0x040300
> [    0.216150] pci 0000:00:14.2: reg 10: [mem 0xb0000000-0xb0003fff 64bit]
> [    0.216258] pci 0000:00:14.2: PME# supported from D0 D3hot D3cold
> [    0.216285] pci 0000:00:14.3: [1002:4377] type 00 class 0x060100
> [    0.216394] pci 0000:00:14.4: [1002:4371] type 01 class 0x060401
> [    0.216465] pci 0000:00:18.0: [1022:1100] type 00 class 0x060000
> [    0.216492] pci 0000:00:18.1: [1022:1101] type 00 class 0x060000
> [    0.216518] pci 0000:00:18.2: [1022:1102] type 00 class 0x060000
> [    0.216541] pci 0000:00:18.3: [1022:1103] type 00 class 0x060000
> [    0.216601] pci 0000:01:05.0: [1002:5975] type 00 class 0x030000
> [    0.216610] pci 0000:01:05.0: reg 10: [mem 0xc0000000-0xcfffffff pref]
> [    0.216616] pci 0000:01:05.0: reg 14: [io  0x9000-0x90ff]
> [    0.216623] pci 0000:01:05.0: reg 18: [mem 0xb0100000-0xb010ffff]
> [    0.216639] pci 0000:01:05.0: reg 30: [mem 0x00000000-0x0001ffff pref]
> [    0.216652] pci 0000:01:05.0: supports D1 D2
> [    0.216669] pci 0000:00:01.0: PCI bridge to [bus 01]
> [    0.216674] pci 0000:00:01.0:   bridge window [io  0x9000-0x9fff]
> [    0.216678] pci 0000:00:01.0:   bridge window [mem
> 0xb0100000-0xb01fffff]
> [    0.216683] pci 0000:00:01.0:   bridge window [mem
> 0xc0000000-0xcfffffff 64bit pref]
> [    0.216731] pci 0000:02:00.0: [14e4:4311] type 00 class 0x028000
> [    0.216749] pci 0000:02:00.0: reg 10: [mem 0xb0200000-0xb0203fff]
> [    0.216862] pci 0000:02:00.0: supports D1 D2
> [    0.216883] pci 0000:02:00.0: disabling ASPM on pre-1.1 PCIe device.
> You can enable it with 'pcie_aspm=force'
> [    0.216894] pci 0000:00:04.0: PCI bridge to [bus 02-03]
> [    0.216899] pci 0000:00:04.0:   bridge window [io  0x0000-0x0fff]
> [    0.216903] pci 0000:00:04.0:   bridge window [mem
> 0x00000000-0x000fffff]
> [    0.216908] pci 0000:00:04.0:   bridge window [mem
> 0x00000000-0x000fffff 64bit pref]
> [    0.216937] pci 0000:00:05.0: PCI bridge to [bus 04-05]
> [    0.216942] pci 0000:00:05.0:   bridge window [io  0x0000-0x0fff]
> [    0.216946] pci 0000:00:05.0:   bridge window [mem
> 0x00000000-0x000fffff]
> [    0.216988] pci 0000:06:01.0: [10ec:8139] type 00 class 0x020000
> [    0.217021] pci 0000:06:01.0: reg 10: [io  0xa000-0xa0ff]
> [    0.217039] pci 0000:06:01.0: reg 14: [mem 0xb0300000-0xb03000ff]
> [    0.217154] pci 0000:06:01.0: supports D1 D2
> [    0.217158] pci 0000:06:01.0: PME# supported from D1 D2 D3hot D3cold
> [    0.217197] pci 0000:06:04.0: [1524:1412] type 02 class 0x060700
> [    0.217227] pci 0000:06:04.0: reg 10: [mem 0xb0301000-0xb0301fff]
> [    0.217276] pci 0000:06:04.0: supports D1 D2
> [    0.217279] pci 0000:06:04.0: PME# supported from D0 D1 D2 D3hot D3cold
> [    0.217315] pci 0000:06:04.1: [1524:0530] type 00 class 0x050100
> [    0.217344] pci 0000:06:04.1: reg 10: [mem 0xb0300400-0xb030047f]
> [    0.217477] pci 0000:06:04.1: supports D1 D2
> [    0.217481] pci 0000:06:04.1: PME# supported from D0 D1 D2 D3hot
> [    0.217516] pci 0000:06:04.2: [1524:0550] type 00 class 0x080501
> [    0.217547] pci 0000:06:04.2: reg 10: [mem 0xb0300800-0xb03008ff]
> [    0.217681] pci 0000:06:04.2: supports D1 D2
> [    0.217684] pci 0000:06:04.2: PME# supported from D0 D1 D2 D3hot
> [    0.217718] pci 0000:06:04.3: [1524:0520] type 00 class 0x050100
> [    0.217748] pci 0000:06:04.3: reg 10: [mem 0xb0300c00-0xb0300c7f]
> [    0.217881] pci 0000:06:04.3: supports D1 D2
> [    0.217884] pci 0000:06:04.3: PME# supported from D0 D1 D2 D3hot
> [    0.217920] pci 0000:06:04.4: [1524:0551] type 00 class 0x050100
> [    0.217950] pci 0000:06:04.4: reg 10: [mem 0x00000000-0x000000ff]
> [    0.218089] pci 0000:06:04.4: supports D1 D2
> [    0.218093] pci 0000:06:04.4: PME# supported from D0 D1 D2 D3hot
> [    0.218168] pci 0000:00:14.4: PCI bridge to [bus 06-08] (subtractive
> decode)
> [    0.218179] pci 0000:00:14.4:   bridge window [io  0xa000-0xafff]
> [    0.218185] pci 0000:00:14.4:   bridge window [mem
> 0xb0300000-0xb03fffff]
> [    0.218193] pci 0000:00:14.4:   bridge window [io  0x0000-0xffff]
> (subtractive decode)
> [    0.218196] pci 0000:00:14.4:   bridge window [mem
> 0x80000000-0xefffffff] (subtractive decode)
> [    0.218200] pci 0000:00:14.4:   bridge window [mem
> 0x000a0000-0x000bffff] (subtractive decode)
> [    0.218204] pci 0000:00:14.4:   bridge window [mem
> 0xf0000000-0xfcffffffff] (subtractive decode)
> [    0.218260] pci_bus 0000:07: busn_res: can not insert [bus 07-ff] under
> [bus 06-08] (conflicts with (null) [bus 06-08])
> [    0.218267] pci_bus 0000:07: busn_res: [bus 07-ff] end is updated to 07
> [    0.218293] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
> [    0.218424] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PB4_._PRT]
> [    0.218491] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PB5_._PRT]
> [    0.218565] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.BB4_._PRT]
> [    0.218628] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.BB5_._PRT]
> [    0.218750] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P2P_._PRT]
> [    0.218856] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.AGP_._PRT]
> [    0.218931]  pci0000:00: ACPI _OSC support notification failed,
> disabling PCIe ASPM
> [    0.218935]  pci0000:00: Unable to request _OSC control (_OSC support
> mask: 0x08)
> [    0.227090] ACPI: PCI Interrupt Link [LNKA] (IRQs 10 11) *0, disabled.
> [    0.227168] ACPI: PCI Interrupt Link [LNKB] (IRQs 10 11) *0, disabled.
> [    0.227240] ACPI: PCI Interrupt Link [LNKC] (IRQs 10 11) *0, disabled.
> [    0.227312] ACPI: PCI Interrupt Link [LNKD] (IRQs 10 11) *0, disabled.
> [    0.227383] ACPI: PCI Interrupt Link [LNKE] (IRQs 10 11) *0, disabled.
> [    0.227453] ACPI: PCI Interrupt Link [LNKF] (IRQs 10 11) *0, disabled.
> [    0.227524] ACPI: PCI Interrupt Link [LNKG] (IRQs 10 11) *0, disabled.
> [    0.227595] ACPI: PCI Interrupt Link [LNKH] (IRQs 10 11) *0, disabled.
> [    0.227666] ACPI: PCI Interrupt Link [LNKU] (IRQs 3 4 5 7) *0,
> disabled.
> [    0.228036] vgaarb: device added:
> PCI:0000:01:05.0,decodes=io+mem,owns=io+mem,locks=none
> [    0.228042] vgaarb: loaded
> [    0.228045] vgaarb: bridge control possible 0000:01:05.0
> [    0.228205] SCSI subsystem initialized
> [    0.228209] ACPI: bus type scsi registered
> [    0.229033] libata version 3.00 loaded.
> [    0.229079] ACPI: bus type usb registered
> [    0.229111] usbcore: registered new interface driver usbfs
> [    0.229128] usbcore: registered new interface driver hub
> [    0.229136] usbcore: registered new device driver usb
> [    0.229136] PCI: Using ACPI for IRQ routing
> [    0.229136] PCI: pci_cache_line_size set to 64 bytes
> [    0.229168] pci 0000:02:00.0: no compatible bridge window for [mem
> 0xb0200000-0xb0203fff]
> [    0.229238] e820: reserve RAM buffer [mem 0x0009dc00-0x0009ffff]
> [    0.229241] e820: reserve RAM buffer [mem 0x6fe90000-0x6fffffff]
> [    0.229420] NetLabel: Initializing
> [    0.229422] NetLabel:  domain hash size = 128
> [    0.229424] NetLabel:  protocols = UNLABELED CIPSOv4
> [    0.229443] NetLabel:  unlabeled traffic allowed by default
> [    0.229502] Switching to clocksource refined-jiffies
> [    0.233655] AppArmor: AppArmor Filesystem Enabled
> [    0.233710] pnp: PnP ACPI init
> [    0.233739] ACPI: bus type pnp registered
> [    0.234814] pnp 00:00: [bus 00-ff]
> [    0.234819] pnp 00:00: [mem 0x000a0000-0x000bffff window]
> [    0.234823] pnp 00:00: [mem 0x000c0000-0x000c1fff window]
> [    0.234827] pnp 00:00: [mem 0x000c2000-0x000c3fff window]
> [    0.234832] pnp 00:00: [mem 0x000c4000-0x000c5fff window]
> [    0.234835] pnp 00:00: [mem 0x000c6000-0x000c7fff window]
> [    0.234839] pnp 00:00: [mem 0x000c8000-0x000c9fff window]
> [    0.234842] pnp 00:00: [mem 0x000ca000-0x000cbfff window]
> [    0.234846] pnp 00:00: [mem 0x000cc000-0x000cdfff window]
> [    0.234849] pnp 00:00: [mem 0x000ce000-0x000cffff window]
> [    0.234853] pnp 00:00: [mem 0x000d0000-0x000d1fff window]
> [    0.234856] pnp 00:00: [mem 0x000d2000-0x000d3fff window]
> [    0.234860] pnp 00:00: [mem 0x000d4000-0x000d5fff window]
> [    0.234863] pnp 00:00: [mem 0x000d6000-0x000d7fff window]
> [    0.234867] pnp 00:00: [mem 0x000d8000-0x000d9fff window]
> [    0.234870] pnp 00:00: [mem 0x000da000-0x000dbfff window]
> [    0.234874] pnp 00:00: [mem 0x000dc000-0x000ddfff window]
> [    0.234877] pnp 00:00: [mem 0x000de000-0x000dffff window]
> [    0.234881] pnp 00:00: [mem 0x000e0000-0x000e1fff window]
> [    0.234884] pnp 00:00: [mem 0x000e2000-0x000e3fff window]
> [    0.234888] pnp 00:00: [mem 0x000e4000-0x000e5fff window]
> [    0.234891] pnp 00:00: [mem 0x000e6000-0x000e7fff window]
> [    0.234895] pnp 00:00: [mem 0x000e8000-0x000e9fff window]
> [    0.234898] pnp 00:00: [mem 0x000ea000-0x000ebfff window]
> [    0.234902] pnp 00:00: [mem 0x000ec000-0x000edfff window]
> [    0.234905] pnp 00:00: [mem 0x000ee000-0x000effff window]
> [    0.234909] pnp 00:00: [mem 0x80000000-0xffffffff window]
> [    0.234913] pnp 00:00: [io  0x0cf8-0x0cff]
> [    0.234916] pnp 00:00: [io  0x0000-0x0cf7 window]
> [    0.234920] pnp 00:00: [io  0x0d00-0xdfff window]
> [    0.234924] pnp 00:00: [io  0xe030-0xffff window]
> [    0.234988] pnp 00:00: Plug and Play ACPI device, IDs PNP0a03 (active)
> [    0.235086] pnp 00:01: [mem 0xe0000000-0xefffffff]
> [    0.235090] pnp 00:01: [mem 0xfec00000-0xfec00fff]
> [    0.235095] pnp 00:01: [mem 0xfee00000-0xfee00fff]
> [    0.235170] system 00:01: [mem 0xe0000000-0xefffffff] has been reserved
> [    0.235175] system 00:01: [mem 0xfec00000-0xfec00fff] could not be
> reserved
> [    0.235180] system 00:01: [mem 0xfee00000-0xfee00fff] has been reserved
> [    0.235185] system 00:01: Plug and Play ACPI device, IDs PNP0c02
> (active)
> [    0.235656] pnp 00:02: [io  0x0000-0x001f]
> [    0.235660] pnp 00:02: [io  0x0080-0x008f]
> [    0.235663] pnp 00:02: [io  0x00c0-0x00df]
> [    0.235667] pnp 00:02: [dma 4]
> [    0.235709] pnp 00:02: Plug and Play ACPI device, IDs PNP0200 (active)
> [    0.235725] pnp 00:03: [io  0x00f0-0x00fe]
> [    0.235741] pnp 00:03: [irq 13]
> [    0.235776] pnp 00:03: Plug and Play ACPI device, IDs PNP0c04 (active)
> [    0.235795] pnp 00:04: [io  0x0070-0x0071]
> [    0.235802] pnp 00:04: [irq 8]
> [    0.235837] pnp 00:04: Plug and Play ACPI device, IDs PNP0b00 (active)
> [    0.235854] pnp 00:05: [io  0x0061]
> [    0.235887] pnp 00:05: Plug and Play ACPI device, IDs PNP0800 (active)
> [    0.235933] pnp 00:06: [io  0x0060]
> [    0.235936] pnp 00:06: [io  0x0064]
> [    0.235943] pnp 00:06: [irq 1]
> [    0.236004] pnp 00:06: Plug and Play ACPI device, IDs PNP0303 (active)
> [    0.236090] pnp 00:07: [irq 12]
> [    0.236132] pnp 00:07: Plug and Play ACPI device, IDs SYN0701 SYN0700
> SYN0002 PNP0f13 (active)
> [    0.236157] pnp 00:08: [io  0x004e-0x004f]
> [    0.236160] pnp 00:08: [io  0x0072-0x0073]
> [    0.236163] pnp 00:08: [io  0x1080]
> [    0.236166] pnp 00:08: [io  0x00b0-0x00b1]
> [    0.236170] pnp 00:08: [io  0x0092]
> [    0.236173] pnp 00:08: [io  0x040b]
> [    0.236176] pnp 00:08: [io  0x04d0-0x04d1]
> [    0.236179] pnp 00:08: [io  0x04d6]
> [    0.236182] pnp 00:08: [io  0x0c00-0x0c01]
> [    0.236185] pnp 00:08: [io  0x0c14]
> [    0.236188] pnp 00:08: [io  0x0c50-0x0c52]
> [    0.236192] pnp 00:08: [io  0x0c6c]
> [    0.236195] pnp 00:08: [io  0x0c6f]
> [    0.236198] pnp 00:08: [io  0x0cd4-0x0cd5]
> [    0.236201] pnp 00:08: [io  0x0cd6-0x0cd7]
> [    0.236204] pnp 00:08: [io  0x0cd8-0x0cdf]
> [    0.236207] pnp 00:08: [io  0x8000-0x805f]
> [    0.236213] pnp 00:08: [io  0x8100-0x81ff window]
> [    0.236216] pnp 00:08: [io  0x0f40-0x0f47]
> [    0.236219] pnp 00:08: [io  0x0280-0x0293]
> [    0.236222] pnp 00:08: [io  0x087f]
> [    0.236309] system 00:08: [io  0x1080] has been reserved
> [    0.236314] system 00:08: [io  0x040b] has been reserved
> [    0.236318] system 00:08: [io  0x04d0-0x04d1] has been reserved
> [    0.236322] system 00:08: [io  0x04d6] has been reserved
> [    0.236326] system 00:08: [io  0x0c00-0x0c01] has been reserved
> [    0.236330] system 00:08: [io  0x0c14] has been reserved
> [    0.236334] system 00:08: [io  0x0c50-0x0c52] has been reserved
> [    0.236338] system 00:08: [io  0x0c6c] has been reserved
> [    0.236342] system 00:08: [io  0x0c6f] has been reserved
> [    0.236345] system 00:08: [io  0x0cd4-0x0cd5] has been reserved
> [    0.236349] system 00:08: [io  0x0cd6-0x0cd7] has been reserved
> [    0.236356] system 00:08: [io  0x0cd8-0x0cdf] has been reserved
> [    0.236360] system 00:08: [io  0x8000-0x805f] has been reserved
> [    0.236364] system 00:08: [io  0x8100-0x81ff window] has been reserved
> [    0.236368] system 00:08: [io  0x0f40-0x0f47] has been reserved
> [    0.236372] system 00:08: [io  0x0280-0x0293] has been reserved
> [    0.236376] system 00:08: [io  0x087f] has been reserved
> [    0.236382] system 00:08: Plug and Play ACPI device, IDs PNP0c02
> (active)
> [    0.236489] pnp 00:09: [mem 0x000e0000-0x000fffff]
> [    0.236493] pnp 00:09: [mem 0xfff00000-0xffffffff]
> [    0.236497] pnp 00:09: [mem 0x00000000-0x00000fff]
> [    0.236507] pnp 00:09: disabling [mem 0x00000000-0x00000fff] because it
> overlaps 0000:00:12.0 BAR 6 [mem 0x00000000-0x0007ffff pref]
> [    0.236519] pnp 00:09: disabling [mem 0x00000000-0x00000fff disabled]
> because it overlaps 0000:01:05.0 BAR 6 [mem 0x00000000-0x0001ffff pref]
> [    0.236524] pnp 00:09: disabling [mem 0x00000000-0x00000fff disabled]
> because it overlaps 0000:02:00.0 BAR 0 [mem 0x00000000-0x00003fff]
> [    0.236576] system 00:09: [mem 0x000e0000-0x000fffff] could not be
> reserved
> [    0.236581] system 00:09: [mem 0xfff00000-0xffffffff] could not be
> reserved
> [    0.236586] system 00:09: Plug and Play ACPI device, IDs PNP0c01
> (active)
> [    0.265133] pnp: PnP ACPI: found 10 devices
> [    0.265137] ACPI: ACPI bus type pnp unregistered
> [    0.272751] Switching to clocksource acpi_pm
> [    0.272993] pci 0000:00:04.0: bridge window [io  0x1000-0x0fff] to [bus
> 02-03] add_size 1000
> [    0.272993] pci 0000:00:04.0: bridge window [mem 0x00100000-0x000fffff
> 64bit pref] to [bus 02-03] add_size 200000
> [    0.272993] pci 0000:00:04.0: bridge window [mem 0x00100000-0x001fffff]
> to [bus 02-03] add_size 200000
> [    0.272993] pci 0000:00:05.0: bridge window [io  0x1000-0x0fff] to [bus
> 04-05] add_size 1000
> [    0.272993] pci 0000:00:05.0: bridge window [mem 0x00100000-0x000fffff
> 64bit pref] to [bus 04-05] add_size 200000
> [    0.272993] pci 0000:00:05.0: bridge window [mem 0x00100000-0x000fffff]
> to [bus 04-05] add_size 200000
> [    0.272993] pci 0000:06:04.0: res[15]=[mem 0x04000000-0x03ffffff pref]
> get_res_add_size add_size 4000000
> [    0.272993] pci 0000:00:14.4: bridge window [mem 0x04000000-0x03ffffff
> pref] to [bus 06-08] add_size 4000000
> [    0.272993] pci 0000:00:14.4: res[15]=[mem 0x04000000-0x03ffffff pref]
> get_res_add_size add_size 4000000
> [    0.272993] pci 0000:00:04.0: res[14]=[mem 0x00100000-0x001fffff]
> get_res_add_size add_size 200000
> [    0.272993] pci 0000:00:04.0: res[15]=[mem 0x00100000-0x000fffff 64bit
> pref] get_res_add_size add_size 200000
> [    0.272993] pci 0000:00:05.0: res[14]=[mem 0x00100000-0x000fffff]
> get_res_add_size add_size 200000
> [    0.272993] pci 0000:00:05.0: res[15]=[mem 0x00100000-0x000fffff 64bit
> pref] get_res_add_size add_size 200000
> [    0.272993] pci 0000:00:04.0: res[13]=[io  0x1000-0x0fff]
> get_res_add_size add_size 1000
> [    0.272993] pci 0000:00:05.0: res[13]=[io  0x1000-0x0fff]
> get_res_add_size add_size 1000
> [    0.272993] pci 0000:00:14.4: BAR 15: assigned [mem
> 0x80000000-0x83ffffff pref]
> [    0.272993] pci 0000:00:04.0: BAR 14: assigned [mem
> 0x84000000-0x842fffff]
> [    0.272993] pci 0000:00:04.0: BAR 15: assigned [mem
> 0x84300000-0x844fffff 64bit pref]
> [    0.272993] pci 0000:00:05.0: BAR 14: assigned [mem
> 0x84500000-0x846fffff]
> [    0.272993] pci 0000:00:05.0: BAR 15: assigned [mem
> 0x84700000-0x848fffff 64bit pref]
> [    0.272993] pci 0000:00:12.0: BAR 6: assigned [mem
> 0x84900000-0x8497ffff pref]
> [    0.272993] pci 0000:00:04.0: BAR 13: assigned [io  0x2000-0x2fff]
> [    0.272993] pci 0000:00:05.0: BAR 13: assigned [io  0x3000-0x3fff]
> [    0.272993] pci 0000:00:14.0: BAR 1: assigned [mem
> 0x84980000-0x849803ff]
> [    0.272993] pci 0000:01:05.0: BAR 6: assigned [mem
> 0xb0120000-0xb013ffff pref]
> [    0.272993] pci 0000:00:01.0: PCI bridge to [bus 01]
> [    0.272993] pci 0000:00:01.0:   bridge window [io  0x9000-0x9fff]
> [    0.272993] pci 0000:00:01.0:   bridge window [mem
> 0xb0100000-0xb01fffff]
> [    0.272993] pci 0000:00:01.0:   bridge window [mem
> 0xc0000000-0xcfffffff 64bit pref]
> [    0.273262] pci 0000:02:00.0: BAR 0: assigned [mem
> 0x84000000-0x84003fff]
> [    0.273269] pci 0000:00:04.0: PCI bridge to [bus 02-03]
> [    0.273272] pci 0000:00:04.0:   bridge window [io  0x2000-0x2fff]
> [    0.273279] pci 0000:00:04.0:   bridge window [mem
> 0x84000000-0x842fffff]
> [    0.273283] pci 0000:00:04.0:   bridge window [mem
> 0x84300000-0x844fffff 64bit pref]
> [    0.273288] pci 0000:00:05.0: PCI bridge to [bus 04-05]
> [    0.273291] pci 0000:00:05.0:   bridge window [io  0x3000-0x3fff]
> [    0.273296] pci 0000:00:05.0:   bridge window [mem
> 0x84500000-0x846fffff]
> [    0.273300] pci 0000:00:05.0:   bridge window [mem
> 0x84700000-0x848fffff 64bit pref]
> [    0.273310] pci 0000:06:04.0: res[15]=[mem 0x04000000-0x03ffffff pref]
> get_res_add_size add_size 4000000
> [    0.273313] pci 0000:06:04.0: res[16]=[mem 0x04000000-0x03ffffff]
> get_res_add_size add_size 4000000
> [    0.273317] pci 0000:06:04.0: res[13]=[io  0x0100-0x00ff]
> get_res_add_size add_size 100
> [    0.273321] pci 0000:06:04.0: res[14]=[io  0x0100-0x00ff]
> get_res_add_size add_size 100
> [    0.273325] pci 0000:06:04.0: BAR 15: assigned [mem
> 0x80000000-0x83ffffff pref]
> [    0.273330] pci 0000:06:04.0: BAR 16: assigned [mem
> 0x88000000-0x8bffffff]
> [    0.273334] pci 0000:06:04.0: BAR 13: assigned [io  0xa400-0xa4ff]
> [    0.273338] pci 0000:06:04.0: BAR 14: assigned [io  0xa800-0xa8ff]
> [    0.273342] pci 0000:06:04.4: BAR 0: assigned [mem
> 0xb0300100-0xb03001ff]
> [    0.273351] pci 0000:06:04.0: CardBus bridge to [bus 07]
> [    0.273354] pci 0000:06:04.0:   bridge window [io  0xa400-0xa4ff]
> [    0.273361] pci 0000:06:04.0:   bridge window [io  0xa800-0xa8ff]
> [    0.273369] pci 0000:06:04.0:   bridge window [mem
> 0x80000000-0x83ffffff pref]
> [    0.273376] pci 0000:06:04.0:   bridge window [mem
> 0x88000000-0x8bffffff]
> [    0.273383] pci 0000:00:14.4: PCI bridge to [bus 06-08]
> [    0.273388] pci 0000:00:14.4:   bridge window [io  0xa000-0xafff]
> [    0.273396] pci 0000:00:14.4:   bridge window [mem
> 0xb0300000-0xb03fffff]
> [    0.273403] pci 0000:00:14.4:   bridge window [mem
> 0x80000000-0x83ffffff pref]
> [    0.273423] pci 0000:00:04.0: enabling device (0000 -> 0003)
> [    0.273429] pci 0000:00:05.0: enabling device (0000 -> 0003)
> [    0.273470] pci_bus 0000:00: resource 4 [io  0x0000-0xffff]
> [    0.273474] pci_bus 0000:00: resource 5 [mem 0x80000000-0xefffffff]
> [    0.273477] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]
> [    0.273481] pci_bus 0000:00: resource 7 [mem 0xf0000000-0xfcffffffff]
> [    0.273485] pci_bus 0000:01: resource 0 [io  0x9000-0x9fff]
> [    0.273488] pci_bus 0000:01: resource 1 [mem 0xb0100000-0xb01fffff]
> [    0.273492] pci_bus 0000:01: resource 2 [mem 0xc0000000-0xcfffffff
> 64bit pref]
> [    0.273495] pci_bus 0000:02: resource 0 [io  0x2000-0x2fff]
> [    0.273499] pci_bus 0000:02: resource 1 [mem 0x84000000-0x842fffff]
> [    0.273502] pci_bus 0000:02: resource 2 [mem 0x84300000-0x844fffff
> 64bit pref]
> [    0.273506] pci_bus 0000:04: resource 0 [io  0x3000-0x3fff]
> [    0.273509] pci_bus 0000:04: resource 1 [mem 0x84500000-0x846fffff]
> [    0.273513] pci_bus 0000:04: resource 2 [mem 0x84700000-0x848fffff
> 64bit pref]
> [    0.273517] pci_bus 0000:06: resource 0 [io  0xa000-0xafff]
> [    0.273521] pci_bus 0000:06: resource 1 [mem 0xb0300000-0xb03fffff]
> [    0.273524] pci_bus 0000:06: resource 2 [mem 0x80000000-0x83ffffff
> pref]
> [    0.273528] pci_bus 0000:06: resource 4 [io  0x0000-0xffff]
> [    0.273531] pci_bus 0000:06: resource 5 [mem 0x80000000-0xefffffff]
> [    0.273535] pci_bus 0000:06: resource 6 [mem 0x000a0000-0x000bffff]
> [    0.273538] pci_bus 0000:06: resource 7 [mem 0xf0000000-0xfcffffffff]
> [    0.273542] pci_bus 0000:07: resource 0 [io  0xa400-0xa4ff]
> [    0.273545] pci_bus 0000:07: resource 1 [io  0xa800-0xa8ff]
> [    0.273549] pci_bus 0000:07: resource 2 [mem 0x80000000-0x83ffffff
> pref]
> [    0.273553] pci_bus 0000:07: resource 3 [mem 0x88000000-0x8bffffff]
> [    0.273647] NET: Registered protocol family 2
> [    0.274316] TCP established hash table entries: 262144 (order: 10,
> 4194304 bytes)
> [    0.276780] TCP bind hash table entries: 65536 (order: 8, 1048576
> bytes)
> [    0.277425] TCP: Hash tables configured (established 262144 bind 65536)
> [    0.277542] TCP: reno registered
> [    0.277557] UDP hash table entries: 1024 (order: 3, 32768 bytes)
> [    0.277588] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes)
> [    0.277734] NET: Registered protocol family 1
> [    0.277754] pci 0000:00:00.0: MSI quirk detected; MSI disabled
> [    0.277762] pci 0000:00:01.0: MSI quirk detected; subordinate MSI
> disabled
> [    0.379118] pci 0000:01:05.0: Boot video device
> [    0.379151] PCI: CLS 32 bytes, default 64
> [    0.379231] Unpacking initramfs...
> [    0.990799] Freeing initrd memory: 31440k freed
> [    1.011341] audit: initializing netlink socket (disabled)
> [    1.011365] type=2000 audit(1372664571.010:1): initialized
> [    1.039519] HugeTLB registered 2 MB page size, pre-allocated 0 pages
> [    1.040292] VFS: Disk quotas dquot_6.5.2
> [    1.040338] Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
> [    1.040632] msgmni has been set to 3500
> [    1.041206] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 252)
> [    1.041291] io scheduler noop registered
> [    1.041296] io scheduler deadline registered
> [    1.041323] io scheduler cfq registered (default)
> [    1.041724] vesafb: mode is 1024x768x32, linelength=4096, pages=0
> [    1.041727] vesafb: scrolling: redraw
> [    1.041731] vesafb: Truecolor: size=0:8:8:8, shift=0:16:8:0
> [    1.041919] vesafb: framebuffer at 0xc0000000, mapped to
> 0xffffc90001100000, using 3072k, total 3072k
> [    1.141126] Console: switching to colour frame buffer device 128x48
> [    1.239795] fb0: VESA VGA frame buffer device
> [    1.239857] GHES: HEST is not enabled!
> [    1.239962] Serial: 8250/16550 driver, 32 ports, IRQ sharing disabled
> [    1.242662] Non-volatile memory driver v1.3
> [    1.242667] Linux agpgart interface v0.103
> [    1.242890] libphy: Fixed MDIO Bus: probed
> [    1.242894] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [    1.242975] ehci_hcd 0000:00:13.2: EHCI Host Controller
> [    1.242990] ehci_hcd 0000:00:13.2: new USB bus registered, assigned bus
> number 1
> [    1.243107] ehci_hcd 0000:00:13.2: irq 19, io mem 0xb0007000
> [    1.249064] ehci_hcd 0000:00:13.2: USB 2.0 started, EHCI 1.00
> [    1.249098] usb usb1: New USB device found, idVendor=1d6b,
> idProduct=0002
> [    1.249102] usb usb1: New USB device strings: Mfr=3, Product=2,
> SerialNumber=1
> [    1.249105] usb usb1: Product: EHCI Host Controller
> [    1.249108] usb usb1: Manufacturer: Linux 3.7.10-1.16-desktop ehci_hcd
> [    1.249111] usb usb1: SerialNumber: 0000:00:13.2
> [    1.249335] hub 1-0:1.0: USB hub found
> [    1.249341] hub 1-0:1.0: 8 ports detected
> [    1.249597] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
> [    1.249670] ohci_hcd 0000:00:13.0: OHCI Host Controller
> [    1.249680] ohci_hcd 0000:00:13.0: new USB bus registered, assigned bus
> number 2
> [    1.249705] ohci_hcd 0000:00:13.0: irq 19, io mem 0xb0005000
> [    1.300094] usb usb2: New USB device found, idVendor=1d6b,
> idProduct=0001
> [    1.300098] usb usb2: New USB device strings: Mfr=3, Product=2,
> SerialNumber=1
> [    1.300101] usb usb2: Product: OHCI Host Controller
> [    1.300104] usb usb2: Manufacturer: Linux 3.7.10-1.16-desktop ohci_hcd
> [    1.300106] usb usb2: SerialNumber: 0000:00:13.0
> [    1.300266] hub 2-0:1.0: USB hub found
> [    1.300277] hub 2-0:1.0: 4 ports detected
> [    1.300458] ohci_hcd 0000:00:13.1: OHCI Host Controller
> [    1.300467] ohci_hcd 0000:00:13.1: new USB bus registered, assigned bus
> number 3
> [    1.300490] ohci_hcd 0000:00:13.1: irq 19, io mem 0xb0006000
> [    1.351074] usb usb3: New USB device found, idVendor=1d6b,
> idProduct=0001
> [    1.351078] usb usb3: New USB device strings: Mfr=3, Product=2,
> SerialNumber=1
> [    1.351081] usb usb3: Product: OHCI Host Controller
> [    1.351084] usb usb3: Manufacturer: Linux 3.7.10-1.16-desktop ohci_hcd
> [    1.351087] usb usb3: SerialNumber: 0000:00:13.1
> [    1.351252] hub 3-0:1.0: USB hub found
> [    1.351261] hub 3-0:1.0: 4 ports detected
> [    1.351414] uhci_hcd: USB Universal Host Controller Interface driver
> [    1.351509] i8042: PNP: PS/2 Controller [PNP0303:KBC0,PNP0f13:MSS0] at
> 0x60,0x64 irq 1,12
> [    1.356358] i8042: Detected active multiplexing controller, rev 1.1
> [    1.356461] serio: i8042 KBD port at 0x60,0x64 irq 1
> [    1.356508] serio: i8042 AUX0 port at 0x60,0x64 irq 12
> [    1.356540] serio: i8042 AUX1 port at 0x60,0x64 irq 12
> [    1.356568] serio: i8042 AUX2 port at 0x60,0x64 irq 12
> [    1.356601] serio: i8042 AUX3 port at 0x60,0x64 irq 12
> [    1.356812] mousedev: PS/2 mouse device common for all mice
> [    1.357030] rtc_cmos 00:04: RTC can wake from S4
> [    1.357253] rtc_cmos 00:04: rtc core: registered rtc_cmos as rtc0
> [    1.357293] rtc0: alarms up to one month, 114 bytes nvram
> [    1.357308] cpuidle: using governor ladder
> [    1.357310] cpuidle: using governor menu
> [    1.357317] ledtrig-cpu: registered to indicate activity on CPUs
> [    1.357320] EFI Variables Facility v0.08 2004-May-17
> [    1.357641] usbcore: registered new interface driver usbhid
> [    1.357643] usbhid: USB HID core driver
> [    1.357909] TCP: cubic registered
> [    1.357967] NET: Registered protocol family 10
> [    1.358281] lib80211: common routines for IEEE802.11 drivers
> [    1.358285] lib80211_crypt: registered algorithm 'NULL'
> [    1.358301] Key type dns_resolver registered
> [    1.358778] PM: Checking hibernation image partition
> /dev/disk/by-id/ata-ST9120822AS_5LZ2X4RP-part5
> [    1.359428] input: AT Translated Set 2 keyboard as
> /devices/platform/i8042/serio0/input/input0
> [    1.552061] usb 1-4: new high-speed USB device number 2 using ehci_hcd
> [    1.911379] usb 1-4: New USB device found, idVendor=5986,
> idProduct=0100
> [    1.911383] usb 1-4: New USB device strings: Mfr=0, Product=1,
> SerialNumber=0
> [    1.911386] usb 1-4: Product: USB2.0 Camera
> [    1.984519] psmouse serio4: synaptics: Touchpad model: 1, fw: 6.2, id:
> 0x1280b1, caps: 0xa04713/0x204000/0x0, board id: 3655, fw id: 235996
> [    2.014928] input: SynPS/2 Synaptics TouchPad as
> /devices/platform/i8042/serio4/input/input1
> [    2.017337] PM: Hibernation image not present or could not be loaded.
> [    2.017366] registered taskstats version 1
> [    2.018071]   Magic number: 5:504:722
> [    2.018221] rtc_cmos 00:04: setting system clock to 2013-07-01 07:42:53
> UTC (1372664573)
> [    2.020549] Freeing unused kernel memory: 992k freed
> [    2.021193] Write protecting the kernel read-only data: 10240k
> [    2.022867] Freeing unused kernel memory: 364k freed
> [    2.023630] Freeing unused kernel memory: 108k freed
> [    2.094179] hp_sw: device handler registered
> [    2.097187] emc: device handler registered
> [    2.100245] rdac: device handler registered
> [    2.103371] alua: device handler registered
> [    2.113372] systemd-udevd[91]: starting version 195
> [    2.144374] ACPI: processor limited to max C-state 1
> [    2.155539] [drm] Initialized drm 1.1.0 20060810
> [    2.172141] sata_sil 0000:00:12.0: version 2.4
> [    2.172192] sata_sil 0000:00:12.0: enabling device (0005 -> 0007)
> [    2.174067] scsi0 : sata_sil
> [    2.176055] scsi1 : sata_sil
> [    2.176293] ata1: SATA max UDMA/100 mmio m512 at 0xb0004000 tf 0xb0004080
> irq 22
> [    2.176299] ata2: SATA max UDMA/100 mmio m512 at 0xb0004000 tf 0xb00040c0
> irq 22
> [    2.178305] ACPI: Invalid active0 threshold
> [    2.179494] [drm] radeon defaulting to kernel modesetting.
> [    2.179501] [drm] radeon kernel modesetting enabled.
> [    2.179626] checking generic (c0000000 300000) vs hw (c0000000
> 10000000)
> [    2.179629] fb: conflicting fb hw usage radeondrmfb vs VESA VGA -
> removing generic driver
> [    2.179663] Console: switching to colour dummy device 80x25
> [    2.180272] [drm] initializing kernel modesetting (RS480 0x1002:0x5975
> 0x1025:0x009F).
> [    2.180302] [drm] register mmio base: 0xB0100000
> [    2.180304] [drm] register mmio size: 65536
> [    2.180442] [drm] Generation 2 PCI interface, using max accessible
> memory
> [    2.180451] radeon 0000:01:05.0: VRAM: 256M 0x0000000070000000 -
> 0x000000007FFFFFFF (256M used)
> [    2.180454] radeon 0000:01:05.0: GTT: 512M 0x0000000080000000 -
> 0x000000009FFFFFFF
> [    2.180471] [drm] Supports vblank timestamp caching Rev 1 (10.10.2010).
> [    2.180473] [drm] Driver supports precise vblank timestamp query.
> [    2.180507] [drm] radeon: irq initialized.
> [    2.180778] [drm] Detected VRAM RAM=256M, BAR=256M
> [    2.180784] [drm] RAM width 128bits DDR
> [    2.182092] [TTM] Zone  kernel: Available graphics memory: 896764 kiB
> [    2.182098] [TTM] Initializing pool allocator
> [    2.182106] [TTM] Initializing DMA pool allocator
> [    2.182150] [drm] radeon: 256M of VRAM memory ready
> [    2.182152] [drm] radeon: 512M of GTT memory ready.
> [    2.182188] [drm] GART: num cpu pages 131072, num gpu pages 131072
> [    2.187259] [drm] radeon: 1 quad pipes, 1 z pipes initialized.
> [    2.201359] [drm] PCIE GART of 512M enabled (table at
> 0x0000000035A00000).
> [    2.201417] radeon 0000:01:05.0: WB enabled
> [    2.201423] radeon 0000:01:05.0: fence driver on ring 0 use gpu addr
> 0x0000000080000000 and cpu addr 0xffff8800359ce000
> [    2.201520] [drm] Loading R300 Microcode
> [    2.201766] [drm] radeon: ring at 0x0000000080001000
> [    2.201788] [drm] ring test succeeded in 1 usecs
> [    2.201967] [drm] ib test succeeded in 0 usecs
> [    2.202243] [drm] Panel ID String: AUO
> [    2.202245] [drm] Panel Size 1280x800
> [    2.208177] thermal LNXTHERM:00: registered as thermal_zone0
> [    2.208187] ACPI: Thermal Zone [THRM] (76 C)
> [    2.222349] [drm] radeon legacy LVDS backlight initialized
> [    2.222352] [drm] Radeon Display Connectors
> [    2.222354] [drm] Connector 0:
> [    2.222356] [drm]   VGA-1
> [    2.222359] [drm]   DDC: 0x68 0x68 0x68 0x68 0x68 0x68 0x68 0x68
> [    2.222361] [drm]   Encoders:
> [    2.222363] [drm]     CRT1: INTERNAL_DAC2
> [    2.222365] [drm] Connector 1:
> [    2.222367] [drm]   LVDS-1
> [    2.222370] [drm]   DDC: 0x198 0x198 0x19c 0x19c 0x1a0 0x1a0 0x1a4
> 0x1a4
> [    2.222371] [drm]   Encoders:
> [    2.222373] [drm]     LCD1: INTERNAL_LVDS
> [    2.222400] [drm] radeon: power management initialized
> [    2.289391] [drm] fb mappable at 0xC0040000
> [    2.289394] [drm] vram apper at 0xC0000000
> [    2.289395] [drm] size 4096000
> [    2.289397] [drm] fb depth is 24
> [    2.289399] [drm]    pitch is 5120
> [    2.289510] fbcon: radeondrmfb (fb0) is primary device
> [    2.320653] Console: switching to colour frame buffer device 160x50
> [    2.330719] fb0: radeondrmfb frame buffer device
> [    2.330721] drm: registered panic notifier
> [    2.330730] [drm] Initialized radeon 2.24.0 20080528 for 0000:01:05.0
> on minor 0
> [    2.481098] ata1: SATA link up 1.5 Gbps (SStatus 113 SControl 310)
> [    2.484592] ata1.00: ATA-7: ST9120822AS, 3.ALD, max UDMA/133
> [    2.484599] ata1.00: 234441648 sectors, multi 16: LBA48 NCQ (depth
> 0/32)
> [    2.490529] ata1.00: configured for UDMA/100
> [    2.490780] scsi 0:0:0:0: Direct-Access     ATA      ST9120822AS
> 3.AL PQ: 0 ANSI: 5
> [    2.491220] sd 0:0:0:0: [sda] 234441648 512-byte logical blocks: (120
> GB/111 GiB)
> [    2.491293] sd 0:0:0:0: [sda] Write Protect is off
> [    2.491297] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
> [    2.491380] sd 0:0:0:0: [sda] Write cache: enabled, read cache:
> enabled, doesn't support DPO or FUA
> [    2.524334]  sda: sda1 sda2 < sda5 > sda3
> [    2.525082] sd 0:0:0:0: [sda] Attached SCSI disk
> [    2.796075] ata2: SATA link down (SStatus 0 SControl 310)
> [    4.219613] PM: Marking nosave pages: [mem 0x0009d000-0x000fffff]
> [    4.219623] PM: Basic memory bitmaps created
> [    4.229281] PM: Basic memory bitmaps freed
> [    4.345169] PM: Starting manual resume from disk
> [    4.345178] PM: Hibernation image partition 8:5 present
> [    4.345181] PM: Looking for hibernation image.
> [    4.345417] PM: Image not found (code -22)
> [    4.345419] PM: Hibernation image not present or could not be loaded.
> [    6.573938] EXT4-fs (sda1): mounted filesystem with ordered data mode.
> Opts: acl,user_xattr
> [    6.964654] EXT4-fs (sda1): re-mounted. Opts: acl,user_xattr
> [    7.910158] systemd[1]: systemd 195 running in system mode. (+PAM
> +LIBWRAP +AUDIT +SELINUX +IMA +SYSVINIT +LIBCRYPTSETUP +GCRYPT +ACL +XZ;
> suse)
> [    8.172202] systemd[1]: Inserted module 'autofs4'
> [    8.181442] systemd[1]: Set hostname to <linux-089l.site>.
> [    8.772194] systemd[1]: Starting Replay Read-Ahead Data...
> [    8.775325] systemd[1]: Starting Collect Read-Ahead Data...
> [    8.784343] systemd[1]: Starting Forward Password Requests to Wall
> Directory Watch.
> [    8.784576] systemd[1]: Started Forward Password Requests to Wall
> Directory Watch.
> [    8.784630] systemd[1]: Starting Syslog Socket.
> [    8.784889] systemd[1]: Listening on Syslog Socket.
> [    8.784944] systemd[1]: Starting System Time Synchronized.
> [    8.785078] systemd[1]: Reached target System Time Synchronized.
> [    8.785114] systemd[1]: Starting Remote File Systems.
> [    8.785185] systemd[1]: Reached target Remote File Systems.
> [    8.785222] systemd[1]: Starting /dev/initctl Compatibility Named Pipe.
> [    8.785353] systemd[1]: Listening on /dev/initctl Compatibility Named
> Pipe.
> [    8.785376] systemd[1]: Starting Delayed Shutdown Socket.
> [    8.785479] systemd[1]: Listening on Delayed Shutdown Socket.
> [    8.785545] systemd[1]: Starting Arbitrary Executable File Formats File
> System Automount Point.
> [    8.785810] systemd[1]: Set up automount Arbitrary Executable File
> Formats File System Automount Point.
> [    8.785994] systemd[1]: Starting udev Kernel Socket.
> [    8.786181] systemd[1]: Listening on udev Kernel Socket.
> [    8.786301] systemd[1]: Starting udev Control Socket.
> [    8.786430] systemd[1]: Listening on udev Control Socket.
> [    8.786466] systemd[1]: Starting Encrypted Volumes.
> [    8.786538] systemd[1]: Reached target Encrypted Volumes.
> [    8.786572] systemd[1]: Expecting device
> dev-disk-by\x2did-ata\x2dST9120822AS_5LZ2X4RP\x2dpart5.device...
> [    8.786652] systemd[1]: Expecting device
> dev-disk-by\x2did-ata\x2dST9120822AS_5LZ2X4RP\x2dpart3.device...
> [    8.786739] systemd[1]: Starting Journal Socket.
> [    8.786883] systemd[1]: Listening on Journal Socket.
> [    8.786940] systemd[1]: Starting Create dynamic rule for /dev/root
> link...
> [    8.791751] systemd[1]: Mounting Huge Pages File System...
> [    8.795181] systemd[1]: Mounting POSIX Message Queue File System...
> [    8.798656] systemd[1]: Starting Journal Service...
> [    8.801706] systemd[1]: Started Journal Service.
> [    8.852122] systemd-readahead[242]: Bumped block_nr parameter of 8:0 to
> 20480. This is a temporary hack and should be removed one day.
> [   10.418427] systemd-udevd[268]: starting version 195
> [   10.430525] EXT4-fs (sda1): re-mounted. Opts: acl,user_xattr
> [   10.741889] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
> [   10.741896] EDD information not available.
> [   12.096307] input: Lid Switch as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input2
> [   12.096486] ACPI: Lid Switch [LID]
> [   12.096566] input: Power Button as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input3
> [   12.096614] ACPI: Power Button [PWRB]
> [   12.096680] input: Sleep Button as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input4
> [   12.096864] ACPI: Sleep Button [SLPB]
> [   12.096961] input: Power Button as
> /devices/LNXSYSTM:00/LNXPWRBN:00/input/input5
> [   12.097034] ACPI: Power Button [PWRF]
> [   12.129074] ACPI: Deprecated procfs I/F for AC is loaded, please retry
> with CONFIG_ACPI_PROCFS_POWER cleared
> [   12.137901] ACPI: AC Adapter [ACAD] (on-line)
> [   12.147473] wmi: Mapper loaded
> [   12.151269] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
> [   12.157227] sd 0:0:0:0: Attached scsi generic sg0 type 0
> [   12.178061] pata_atiixp 0000:00:14.1: setting latency timer to 64
> [   12.182748] scsi2 : pata_atiixp
> [   12.183715] 8139cp: 8139cp: 10/100 PCI Ethernet driver v1.3 (Mar 22,
> 2004)
> [   12.183772] 8139cp 0000:06:01.0: This (id 10ec:8139 rev 10) is not an
> 8139C+ compatible chip, use 8139too
> [   12.190725] sdhci: Secure Digital Host Controller Interface driver
> [   12.190732] sdhci: Copyright(c) Pierre Ossman
> [   12.193732] ACPI: Video Device [VGA] (multi-head: yes  rom: no  post:
> no)
> [   12.193822] input: Video Bus as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A03:00/device:22/LNXVIDEO:00/input/input6
> [   12.197298] MCE: In-kernel MCE decoding enabled.
> [   12.210120] input: PC Speaker as /devices/platform/pcspkr/input/input7
> [   12.242069] microcode: AMD CPU family 0xf not supported
> [   12.259863] microcode: AMD CPU family 0xf not supported
> [   12.265804] kvm: Nested Virtualization enabled
> [   12.405458] ACPI: Deprecated procfs I/F for battery is loaded, please
> retry with CONFIG_ACPI_PROCFS_POWER cleared
> [   12.405474] ACPI: Battery Slot [BAT1] (battery present)
> [   12.406928] 8139too: 8139too Fast Ethernet driver 0.9.28
> [   12.408129] 8139too 0000:06:01.0 eth0: RealTek RTL8139 at
> 0xffffc9000034a000, 00:16:d4:db:d1:75, IRQ 21
> [   12.411237] sdhci-pci 0000:06:04.2: SDHCI controller found [1524:0550]
> (rev 1)
> [   12.411413] Registered led device: mmc0::
> [   12.419302] Linux video capture interface: v2.00
> [   12.420926] powernow-k8: fid 0x9 (1700 MHz), vid 0x13
> [   12.420932] powernow-k8: fid 0x8 (1600 MHz), vid 0x14
> [   12.420935] powernow-k8: fid 0x0 (800 MHz), vid 0x1a
> [   12.421107] ssb: Found chip with id 0x4311, rev 0x01 and package 0x00
> [   12.421124] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x11, vendor
> 0x4243)
> [   12.421132] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0A, vendor
> 0x4243)
> [   12.421139] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x03, vendor
> 0x4243)
> [   12.421147] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x01, vendor
> 0x4243)
> [   12.421717] uvcvideo: Found UVC 1.00 device USB2.0 Camera (5986:0100)
> [   12.424784] EDAC MC: Ver: 3.0.0
> [   12.426114] powernow-k8: Found 1 AMD Athlon(tm) 64 X2 Dual-Core
> Processor TK-53 (2 cpu cores) (version 2.20.00)
> [   12.427360] acer_wmi: Acer Laptop ACPI-WMI Extras
> [   12.431078] AMD64 EDAC driver v3.4.0
> [   12.434087] mmc0: SDHCI controller on PCI [0000:06:04.2] using PIO
> [   12.434211] sdhci-pci 0000:06:04.4: SDHCI controller found [1524:0551]
> (rev 1)
> [   12.434229] sdhci-pci 0000:06:04.4: enabling device (0000 -> 0002)
> [   12.434366] Registered led device: mmc1::
> [   12.443426] acer_wmi: Function bitmap for Communication Device: 0x21
> [   12.443440] acer_wmi: Disabling ACPI video driver
> [   12.444266] ssb: Sonics Silicon Backplane found on PCI device
> 0000:02:00.0
> [   12.457067] mmc1: SDHCI controller on PCI [0000:06:04.4] using PIO
> [   12.457353] yenta_cardbus 0000:06:04.0: CardBus bridge found
> [1025:009f]
> [   12.457391] yenta_cardbus 0000:06:04.0: Using CSCINT to route CSC
> interrupts to PCI
> [   12.457394] yenta_cardbus 0000:06:04.0: Routing CardBus interrupts to
> PCI
> [   12.457402] yenta_cardbus 0000:06:04.0: TI: mfunc 0x90501212, devctl
> 0x44
> [   12.463974] input: Acer BMA150 accelerometer as
> /devices/virtual/input/input8
> [   12.464237] Registered led device: acer-wmi::mail
> [   12.492595] input: USB2.0 Camera as
> /devices/pci0000:00/0000:00:13.2/usb1/1-4/1-4:1.0/input/input9
> [   12.492708] usbcore: registered new interface driver uvcvideo
> [   12.492711] USB Video Class driver (1.1.1)
> [   12.537856] cfg80211: Calling CRDA to update world regulatory domain
> [   12.571451] cfg80211: World regulatory domain updated:
> [   12.571459] cfg80211:   (start_freq - end_freq @ bandwidth),
> (max_antenna_gain, max_eirp)
> [   12.571463] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300
> mBi, 2000 mBm)
> [   12.571466] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300
> mBi, 2000 mBm)
> [   12.571468] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300
> mBi, 2000 mBm)
> [   12.571471] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300
> mBi, 2000 mBm)
> [   12.571473] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300
> mBi, 2000 mBm)
> [   12.572627] b43-phy0: Broadcom 4311 WLAN found (core revision 10)
> [   12.588048] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision 8
> [   12.595279] Broadcom 43xx driver loaded [ Features: PMNLS ]
> [   12.644944] b43-phy0 ERROR: Firmware file "b43/ucode5.fw" not found
> [   12.644952] b43-phy0 ERROR: Firmware file "b43-open/ucode5.fw" not
> found
> [   12.644956] b43-phy0 ERROR: Please open a terminal and enter the
> command "sudo /usr/sbin/install_bcm43xx_firmware" to download the correct
> firmware for this driver version. For an off-line installation, go to
> http://en.opensuse.org/HCL/Network_Adapters_(Wireless)/Broadcom_BCM43xx and
> follow the instructions in the "Installing firmware from RPM packages"
> section.
> [   12.680842] yenta_cardbus 0000:06:04.0: ISA IRQ mask 0x0cf8, PCI irq 20
> [   12.680850] yenta_cardbus 0000:06:04.0: Socket status: 30000006
> [   12.680862] yenta_cardbus 0000:06:04.0: pcmcia: parent PCI bridge
> window: [io  0xa000-0xafff]
> [   12.680866] yenta_cardbus 0000:06:04.0: pcmcia: parent PCI bridge
> window: [mem 0xb0300000-0xb03fffff]
> [   12.680870] pcmcia_socket pcmcia_socket0: cs: memory probe
> 0xb0300000-0xb03fffff:
> [    2.491489] ACPI: Invalid Power Resource to register!
> [   12.680878]  excluding 0xb0300000-0xb030ffff
> [   12.680891] yenta_cardbus 0000:06:04.0: pcmcia: parent PCI bridge
> window: [mem 0x80000000-0x83ffffff pref]
> [   12.680895] pcmcia_socket pcmcia_socket0: cs: memory probe
> 0x80000000-0x83ffffff:
> [   12.680904]  excluding 0x80000000-0x83ffffff
> [   12.690067] pcmcia_socket pcmcia_socket0: cs: memory probe
> 0x0c0000-0x0fffff:
> [   12.690083]  excluding 0xc0000-0xfffff
> [   12.690130] pcmcia_socket pcmcia_socket0: cs: memory probe
> 0xa0000000-0xa0ffffff:
> [   12.690145]  clean.
> [   12.690188] pcmcia_socket pcmcia_socket0: cs: memory probe
> 0x60000000-0x60ffffff:
> [   12.690198]  excluding 0x60000000-0x60ffffff
> [   12.933380] scsi3 : pata_atiixp
> [   12.933615] ata3: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0x8420
> irq 14
> [   12.933619] ata4: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0x8428
> irq 15
> [   12.933916] piix4_smbus 0000:00:14.0: SMBus Host Controller at 0x8410,
> revision 0
> [   12.934544] k8temp 0000:00:18.3: Temperature readouts might be wrong -
> check erratum #141
> [   12.934743] shpchp: Standard Hot Plug PCI Controller Driver version:
> 0.4
> [   12.934768] EDAC amd64: DRAM ECC disabled.
> [   12.934780] EDAC amd64: ECC disabled in the BIOS or no ECC capability,
> module will not load.
> [   12.934780]  Either enable ECC checking or force module loading by
> setting 'ecc_enable_override'.
> [   12.934780]  (Note that use of the override may cause unknown side
> effects.)
> [   12.934864] ALSA hda_intel.c:2902 Using LPIB position fix
> [   12.940649] ALSA hda_intel.c:1680 Enable sync_write for stable
> communication
> [   13.122785] ata3.00: ATAPI: Slimtype DVD A  DS8A1P, CA11, max UDMA/33
> [   13.163728] ata3.00: configured for UDMA/33
> [   13.167644] scsi 2:0:0:0: CD-ROM            Slimtype DVD A  DS8A1P
> CA11 PQ: 0 ANSI: 5
> [   13.168254] scsi 2:0:0:0: Attached scsi generic sg1 type 5
> [   13.169630] ALSA patch_realtek.c:1241 SKU: Nid=0x1d sku_cfg=0x4015130d
> [   13.169637] ALSA patch_realtek.c:1243 SKU: port_connectivity=0x1
> [   13.169640] ALSA patch_realtek.c:1244 SKU: enable_pcbeep=0x1
> [   13.169643] ALSA patch_realtek.c:1245 SKU: check_sum=0x00000005
> [   13.169646] ALSA patch_realtek.c:1246 SKU: customization=0x00000013
> [   13.169648] ALSA patch_realtek.c:1247 SKU: external_amp=0x1
> [   13.169651] ALSA patch_realtek.c:1248 SKU: platform_type=0x1
> [   13.169653] ALSA patch_realtek.c:1249 SKU: swap=0x0
> [   13.169656] ALSA patch_realtek.c:1250 SKU: override=0x1
> [   13.169665] ALSA hda_auto_parser.c:318 autoconfig: line_outs=1
> (0x14/0x0/0x0/0x0/0x0) type:hp
> [   13.169668] ALSA hda_auto_parser.c:322    speaker_outs=0
> (0x0/0x0/0x0/0x0/0x0)
> [   13.169671] ALSA hda_auto_parser.c:326    hp_outs=0
> (0x0/0x0/0x0/0x0/0x0)
> [   13.169674] ALSA hda_auto_parser.c:327    mono: mono_out=0x0
> [   13.169677] ALSA hda_auto_parser.c:330    dig-out=0x1e/0x0
> [   13.169679] ALSA hda_auto_parser.c:331    inputs:
> [   13.169682] ALSA hda_auto_parser.c:335      Mic=0x18
> [   13.169685] ALSA hda_auto_parser.c:335      Line=0x1a
> [   13.171978] ALSA patch_realtek.c:1304 realtek: No valid SSID, checking
> pincfg 0x4015130d for NID 0x1d
> [   13.171982] ALSA patch_realtek.c:1320 realtek: Enabling init
> ASM_ID=0x130d CODEC_ID=10ec0883
> [   13.172194] input: HDA Digital PCBeep as
> /devices/pci0000:00/0000:00:14.2/input/input10
> [   13.217351] sr0: scsi3-mmc drive: 24x/24x writer dvd-ram cd/rw xa/form2
> cdda tray
> [   13.217359] cdrom: Uniform CD-ROM driver Revision: 3.20
> [   13.219576] sr 2:0:0:0: Attached scsi CD-ROM sr0
> [   14.086636] Adding 4805628k swap on /dev/sda5.  Priority:-1 extents:1
> across:4805628k
> [   25.714887] EXT4-fs (sda3): mounted filesystem with ordered data mode.
> Opts: acl,user_xattr
> [   25.744106] systemd-journald[247]: Received SIGUSR1
> [   26.433294] ip6_tables: (C) 2000-2006 Netfilter Core Team
> [   26.454911] vboxguest: PCI device not found, probably running on
> physical hardware.
> [   26.478963] nf_conntrack version 0.5.0 (16384 buckets, 65536 max)
> [   26.489879] ip_tables: (C) 2000-2006 Netfilter Core Team
> [   26.870591] fuse init (API version 7.20)
> [   28.060357] 8139too 0000:06:01.0 eth0: link up, 100Mbps, full-duplex,
> lpa 0xC5E1
> [   29.189520] NET: Registered protocol family 17
> [   46.170581] EXT4-fs (sda1): re-mounted. Opts: acl,user_xattr,commit=0
> [   46.786170] EXT4-fs (sda3): re-mounted. Opts: acl,user_xattr,commit=0
> [   61.287003] Bluetooth: Core ver 2.16
> [   61.287602] NET: Registered protocol family 31
> [   61.287606] Bluetooth: HCI device and connection manager initialized
> [   61.287642] Bluetooth: HCI socket layer initialized
> [   61.287656] Bluetooth: L2CAP socket layer initialized
> [   61.287675] Bluetooth: SCO socket layer initialized
> [   61.309895] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
> [   61.309914] Bluetooth: BNEP filters: protocol multicast
> [   61.309954] Bluetooth: BNEP socket layer initialized
> [   63.149788] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [   79.152142] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [   90.631644] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=328 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=42072 LEN=308
> [   90.632934] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=326 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=42072 LEN=306
> [   90.633134] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=328 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=59661 LEN=308
> [   90.633392] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=326 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=59661 LEN=306
> [  111.161888] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [  125.700498] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=328 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=35000 LEN=308
> [  125.701960] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=326 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=35000 LEN=306
> [  175.174330] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [  280.748626] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=328 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=49787 LEN=308
> [  280.749644] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=326 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=49787 LEN=306
> [  280.749962] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=328 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=60394 LEN=308
> [  280.750192] SFW2-INext-DROP-DEFLT IN=eth0 OUT=
> MAC=00:16:d4:db:d1:75:30:7e:cb:89:10:28:08:00 SRC=192.168.1.1
> DST=192.168.1.71 LEN=326 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
> SPT=1900 DPT=60394 LEN=306
> [  303.202995] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [  559.251242] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [  828.155878] uvcvideo: UVC non compliance - GET_MIN/MAX(PROBE)
> incorrectly supported. Enabling workaround.
> [  828.362933] uvcvideo: Failed to query (GET_CUR) UVC control 3 on unit
> 1: -32 (exp. 1).
> [  998.661353] uvcvideo: Failed to query (GET_CUR) UVC control 3 on unit
> 1: -32 (exp. 1).
> [ 1071.280235] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [ 2095.379818] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [ 4143.389255] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [ 7385.702765] hrtimer: interrupt took 3267734 ns
> [ 7743.393148] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [ 8212.798814] uvcvideo: Failed to query (GET_CUR) UVC control 3 on unit
> 1: -32 (exp. 1).
> [ 8409.010105] usb 1-1: new high-speed USB device number 3 using ehci_hcd
> [ 8409.125468] usb 1-1: New USB device found, idVendor=059f,
> idProduct=102a
> [ 8409.125483] usb 1-1: New USB device strings: Mfr=10, Product=11,
> SerialNumber=5
> [ 8409.125492] usb 1-1: Product: LaCie Device
> [ 8409.125499] usb 1-1: Manufacturer: LaCie
> [ 8409.125505] usb 1-1: SerialNumber: 100411FC1420
> [ 8409.409918] Initializing USB Mass Storage driver...
> [ 8409.412230] scsi4 : usb-storage 1-1:1.0
> [ 8409.412591] usbcore: registered new interface driver usb-storage
> [ 8409.412598] USB Mass Storage support registered.
> [ 8410.456848] scsi 4:0:0:0: Direct-Access     Hitachi  HTS723232L9A360
> PQ: 0 ANSI: 2 CCS
> [ 8410.459382] sd 4:0:0:0: Attached scsi generic sg2 type 0
> [ 8410.460112] sd 4:0:0:0: [sdb] 625142448 512-byte logical blocks: (320
> GB/298 GiB)
> [ 8410.460963] sd 4:0:0:0: [sdb] Write Protect is off
> [ 8410.460978] sd 4:0:0:0: [sdb] Mode Sense: 28 00 00 00
> [ 8410.461965] sd 4:0:0:0: [sdb] No Caching mode page present
> [ 8410.461980] sd 4:0:0:0: [sdb] Assuming drive cache: write through
> [ 8410.466109] sd 4:0:0:0: [sdb] No Caching mode page present
> [ 8410.466131] sd 4:0:0:0: [sdb] Assuming drive cache: write through
> [ 8410.485244]  sdb: sdb1
> [ 8410.489420] sd 4:0:0:0: [sdb] No Caching mode page present
> [ 8410.489433] sd 4:0:0:0: [sdb] Assuming drive cache: write through
> [ 8410.489446] sd 4:0:0:0: [sdb] Attached SCSI disk
> [ 8522.725650] nf_conntrack: automatic helper assignment is deprecated and
> it will be removed soon. Use the iptables CT target to attach helpers
> instead.
> [10836.898637] usb 1-1: USB disconnect, device number 3
> [11343.479124] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [14943.575294] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [18543.712999] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
> [22143.787345] SFW2-INext-DROP-DEFLT IN=eth0 OUT= MAC=
> SRC=fe80:0000:0000:0000:0216:d4ff:fedb:d175
> DST=ff02:0000:0000:0000:0000:0000:0000:00fb LEN=84 TC=0 HOPLIMIT=255
> FLOWLBL=0 PROTO=UDP SPT=5353 DPT=5353 LEN=44
>
>
> Cordialement
> Rudy Patard
>
