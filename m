From: Geoff <capsthorne@yahoo.co.uk>
Date: Fri, 20 Jun 2014 14:13:52 +0100
Subject: BCM 4311 cannot connect to router under kernel 3.15
Message-ID: <20140620141352.cf66d6cf355510c0148a4d00@yahoo.co.uk>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I am not at all expert in these matters - please forgive any omitted
information - I will be happy to provide more / carry out tests.

I use Arch Linux. I have a compaq nx6325 laptop with a BCM 4311. I have been
using the standard kernel module(s) and version 5.100.138-2 of the b43-firmware
from the Arch User Repository. I connect to my home router (TP-LINK
WD8960N) using netctl as follows:

Interface=wlan0
Connection=wireless
Security=wpa
ESSID=geoffnet
Key=<my key here>
IP=static
Address=('10.0.0.2/24') Gateway='10.0.0.138' DNS=('10.0.0.138')

Authentication at the router set to "WPA2-PSK (best)"

Everything has been running perfectly until the kernel was upgraded from 3.14 to
3.15 a couple of days ago.  I can still bring wlan0 up and down with "ip link
set", but I can no longer connect to the router.  netctl fails.  The output of
status netctl at geoffnet.service is :

* netctl at geoffnet.service - Networking for netctl profile geoffnet
   Loaded: loaded (/usr/lib/systemd/system/netctl at .service; static)
   Active: failed (Result: exit-code) since Fri 2014-06-20 13:46:16 BST; 21s ago
     Docs: man:netctl.profile(5)
  Process: 1720 ExecStart=/usr/lib/network/network start %I (code=exited,
status=1/FAILURE) Main PID: 1720 (code=exited, status=1/FAILURE)

Jun 20 13:45:58 hplap network[1720]: Starting network profile 'geoffnet'...
Jun 20 13:46:16 hplap network[1720]: WPA association/authentication failed for
interface 'wlan0' Jun 20 13:46:16 hplap network[1720]: Failed to bring the
network up for profile 'geoffnet' Jun 20 13:46:16 hplap systemd[1]:
netctl at geoffnet.service: main process exited, code=exited, status=1/FAILURE

The output of journalctl -xn is :

-- Logs begin at Thu 2014-05-15 16:50:02 BST, end at Fri 2014-06-20 13:46:16
BST. -- Jun 20 13:45:26 hplap su[1711]: pam_unix(su:session): session opened
for user root b Jun 20 13:45:58 hplap systemd[1]: Starting Networking for
netctl profile geoffnet...
-- Subject: Unit netctl at geoffnet.service has begun with start-up
-- Defined-By: systemd
-- Support: http://lists.freedesktop.org/mailman/listinfo/systemd-devel
-- 
-- Unit netctl at geoffnet.service has begun starting up.
Jun 20 13:45:58 hplap network[1720]: Starting network profile 'geoffnet'...
Jun 20 13:45:58 hplap kernel: b43-phy0: Loading firmware version 666.2
(2011-02-23 0 Jun 20 13:45:58 hplap kernel: IPv6: ADDRCONF(NETDEV_UP): wlan0:
link is not ready Jun 20 13:46:16 hplap network[1720]: WPA
association/authentication failed for inter Jun 20 13:46:16 hplap network
[1720]: Failed to bring the network up for profile 'geo Jun 20 13:46:16 hplap
systemd[1]: netctl at geoffnet.service: main process exited, code Jun 20 13:46:16
hplap systemd[1]: Failed to start Networking for netctl profile geof
-- Subject: Unit netctl at geoffnet.service has failed
-- Defined-By: systemd
-- Support: http://lists.freedesktop.org/mailman/listinfo/systemd-devel
-- 
-- Unit netctl at geoffnet.service has failed.
-- 
-- The result is failed.
Jun 20 13:46:16 hplap systemd[1]: Unit netctl at geoffnet.service entered failed
state.

If I try to connect using wp_supplicant rather than netctl the the output is an
endless loop of "CTRL-EVENT-SCAN-STARTED".

I have confirmed that reverting to kernel 3.14 cures the problem.

I have found one other bug report which involves the same machine and
4311 card. It appears to be treated as an issue with the closed Broadcom module.

https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/1330050

Additional information as per your bug report guidelines is appended.

I am not subscribed to this list, please copy me in on any response.

Thanks in anticipation for your help.

Geoff

uname -a :

Linux hplap 3.15.1-1-ARCH #1 SMP PREEMPT Tue Jun 17 09:32:20 CEST 2014 x86_64
GNU/Linux

lspci -vvn|grep 43 -A7:

	Memory behind bridge: d4300000-d43fffff
	Prefetchable memory behind bridge: 00000000c0000000-00000000c7ffffff
	Secondary status: 66MHz+ FastB2B- ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort+ <SERR- <PERR- BridgeCtl: Parity- SERR- NoISA+ VGA+ MAbort-
>Reset- FastB2B- PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: <access denied>
	Kernel modules: shpchp

--
00:12.0 0101: 1002:4379 (rev 80) (prog-if 8f [Master SecP SecO PriP PriO])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr-
DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Latency: 64, Cache
Line Size: 64 bytes Interrupt: pin A routed to IRQ 16
	Region 0: I/O ports at 9000 [size=8]
	Region 1: I/O ports at 9008 [size=4]
	Region 2: I/O ports@9010 [size=8]
--
00:13.0 0c03: 1002:4374 (rev 80) (prog-if 10 [OHCI])
	Subsystem: 103c:30b0
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr-
DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Latency: 64, Cache
Line Size: 64 bytes Interrupt: pin A routed to IRQ 19
	Region 0: Memory@d4401000 (32-bit, non-prefetchable) [size=4K]
	Capabilities: <access denied>
--
00:13.1 0c03: 1002:4375 (rev 80) (prog-if 10 [OHCI])
	Subsystem: 103c:30b0
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr-
DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Latency: 64, Cache
Line Size: 64 bytes Interrupt: pin A routed to IRQ 19
	Region 0: Memory@d4402000 (32-bit, non-prefetchable) [size=4K]
	Capabilities: <access denied>
--
00:13.2 0c03: 1002:4373 (rev 80) (prog-if 20 [EHCI])
	Subsystem: 103c:30b0
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr-
DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Latency: 64, Cache
Line Size: 64 bytes Interrupt: pin A routed to IRQ 19
	Region 0: Memory@d4403000 (32-bit, non-prefetchable) [size=4K]
	Capabilities: <access denied>
--
00:14.0 0c05: 1002:4372 (rev 82)
	Subsystem: 103c:30b0
	Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap+ 66MHz+ UDF- FastB2B- ParErr-
DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Region 0: I/O
ports at 8200 [size=16] Region 1: Memory@d4404000 (32-bit, non-prefetchable)
[size=1K] Capabilities: <access denied>
	Kernel driver in use: piix4_smbus
--
00:14.1 0101: 1002:4376 (rev 80) (prog-if 82 [Master PriP])
	Subsystem: 103c:30b0
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap+ 66MHz+ UDF- FastB2B- ParErr-
DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Latency: 64, Cache
Line Size: 64 bytes Interrupt: pin A routed to IRQ 16
	Region 0: I/O ports at 01f0 [size=8]
	Region 1: I/O ports@03f4
--
00:14.2 0403: 1002:437b (rev 01)
	Subsystem: 30b0:103c
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap+ 66MHz- UDF- FastB2B- ParErr-
DEVSEL=slow >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Latency: 64, Cache
Line Size: 64 bytes Interrupt: pin A routed to IRQ 16
	Region 0: Memory@100000000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: <access denied>
--
00:14.3 0601: 1002:4377 (rev 80)
	Subsystem: 103c:30b0
	Control: I/O+ Mem+ BusMaster+ SpecCycle+ MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap- 66MHz+ UDF- FastB2B- ParErr-
DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Latency: 0

00:14.4 0604: 1002:4371 (rev 80) (prog-if 01 [Subtractive decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop+ ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap- 66MHz+ UDF- FastB2B+ ParErr-
DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Latency: 64
	Bus: primary=00, secondary=02, subordinate=03, sec-latency=64
	I/O behind bridge: 00001000-00001fff
	Memory behind bridge: d4000000-d42fffff
	Prefetchable memory behind bridge: 80000000-83ffffff
--
	Region 2: Memory at d4300000 (32-bit, non-prefetchable) [size=64K]
	[virtual] Expansion ROM@d4320000 [disabled] [size=128K]
	Capabilities: <access denied>
	Kernel driver in use: radeon
	Kernel modules: radeon

02:01.0 0200: 14e4:169c (rev 03)
	Subsystem: 103c:30b0
	Physical Slot: 1-2
--
30:00.0 0280: 14e4:4312 (rev 01)
	Subsystem: 103c:1361
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx- Status: Cap+ 66MHz- UDF- FastB2B- ParErr-
DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx- Latency: 0, Cache
Line Size: 64 bytes Interrupt: pin A routed to IRQ 18
	Region 0: Memory@c8000000 (32-bit, non-prefetchable) [size=16K]
	Capabilities: <access denied>
	Kernel driver in use: b43-pci-bridge
	Kernel modules: ssb, wl

dmesg:

[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Initializing cgroup subsys cpuacct
[    0.000000] Linux version 3.15.1-1-ARCH
(nobody at var-lib-archbuild-testing-x86_64-tobias) (gcc version 4.9.0 20140604
(prerelease) (GCC) ) #1 SMP PREEMPT Tue Jun 17 09:32:20 CEST 2014
[    0.000000] Command line: BOOT_IMAGE=../vmlinuz-linux root=/dev/sda1 rw
initrd=../initramfs-linux.img [    0.000000] e820: BIOS-provided physical RAM
map: [    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff]
usable [    0.000000] BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff]
reserved [    0.000000] BIOS-e820: [mem 0x00000000000e0000-0x00000000000fffff]
reserved [    0.000000] BIOS-e820: [mem 0x0000000000100000-0x0000000077fcffff]
usable [    0.000000] BIOS-e820: [mem 0x0000000077fd0000-0x0000000077fe55ff]
reserved [    0.000000] BIOS-e820: [mem 0x0000000077fe5600-0x0000000077ff7fff]
ACPI NVS [    0.000000] BIOS-e820: [mem 0x0000000077ff8000-0x000000007fffffff]
reserved [    0.000000] BIOS-e820: [mem 0x00000000e0000000-0x00000000efffffff]
reserved [    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec01fff]
reserved [    0.000000] BIOS-e820: [mem 0x00000000ffbc0000-0x00000000ffcbffff]
reserved [    0.000000] BIOS-e820: [mem 0x00000000fff00000-0x00000000ffffffff]
reserved [    0.000000] NX (Execute Disable) protection: active [    0.000000]
SMBIOS 2.4 present. [    0.000000] DMI: Hewlett-Packard HP Compaq nx6325
(EY345EA#ABU)/30B0, BIOS 68TT2 Ver. F.04 11/06/2006 [    0.000000] e820: update
[mem 0x00000000-0x00000fff] usable ==> reserved [    0.000000] e820: remove
[mem 0x000a0000-0x000fffff] usable [    0.000000] No AGP bridge found
[    0.000000] e820: last_pfn = 0x77fd0 max_arch_pfn = 0x400000000
[    0.000000] MTRR default type: uncachable [    0.000000] MTRR fixed ranges
enabled: [    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-C0FFF write-protect
[    0.000000]   C1000-C3FFF write-back
[    0.000000]   C4000-C4FFF write-protect
[    0.000000]   C5000-C7FFF write-back
[    0.000000]   C8000-C8FFF write-protect
[    0.000000]   C9000-CBFFF write-back
[    0.000000]   CC000-CCFFF write-protect
[    0.000000]   CD000-CFFFF write-back
[    0.000000]   D0000-EFFFF uncachable
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
[    0.000000] Base memory trampoline at [ffff880000099000] 99000 size 24576
[    0.000000] init_memory_mapping: [mem 0x00000000-0x000fffff]
[    0.000000]  [mem 0x00000000-0x000fffff] page 4k
[    0.000000] BRK [0x01b3e000, 0x01b3efff] PGTABLE
[    0.000000] BRK [0x01b3f000, 0x01b3ffff] PGTABLE
[    0.000000] BRK [0x01b40000, 0x01b40fff] PGTABLE
[    0.000000] init_memory_mapping: [mem 0x77a00000-0x77bfffff]
[    0.000000]  [mem 0x77a00000-0x77bfffff] page 2M
[    0.000000] BRK [0x01b41000, 0x01b41fff] PGTABLE
[    0.000000] init_memory_mapping: [mem 0x74000000-0x779fffff]
[    0.000000]  [mem 0x74000000-0x779fffff] page 2M
[    0.000000] init_memory_mapping: [mem 0x00100000-0x73ffffff]
[    0.000000]  [mem 0x00100000-0x001fffff] page 4k
[    0.000000]  [mem 0x00200000-0x73ffffff] page 2M
[    0.000000] init_memory_mapping: [mem 0x77c00000-0x77fcffff]
[    0.000000]  [mem 0x77c00000-0x77dfffff] page 2M
[    0.000000]  [mem 0x77e00000-0x77fcffff] page 4k
[    0.000000] BRK [0x01b42000, 0x01b42fff] PGTABLE
[    0.000000] RAMDISK: [mem 0x77c79000-0x77fcffff]
[    0.000000] ACPI: RSDP 0x00000000000F79C0 000024 (v02 HP    )
[    0.000000] ACPI: XSDT 0x0000000077FE57B8 00005C (v01 HPQOEM SLIC-MPC
00000001 HP   00000001) [    0.000000] ACPI: FACP 0x0000000077FE5684 0000F4
(v04 HP     0944     00000003 HP   00000001) [    0.000000] ACPI: DSDT
0x0000000077FE5A60 00EE9E (v01 HP     SB400    00010000 MSFT 0100000E)
[    0.000000] ACPI: FACS 0x0000000077FF7E80 000040 [    0.000000] ACPI: SLIC
0x0000000077FE5814 000176 (v01 HPQOEM SLIC-MPC 00000001 HP   00000001)
[    0.000000] ACPI: APIC 0x0000000077FE598C 000062 (v01 HP     0944
00000001 HP   00000001) [    0.000000] ACPI: MCFG 0x0000000077FE59F0 00003C
(v01 HP     0944     00000001 HP   00000001) [    0.000000] ACPI: TCPA
0x0000000077FE5A2C 000032 (v02 HP     0944     00000001 HP   00000001)
[    0.000000] ACPI: SSDT 0x0000000077FF48FE 000059 (v01 HP     HPQNLP
00000001 MSFT 0100000E) [    0.000000] ACPI: SSDT 0x0000000077FF4957 0000F4
(v01 HP     PSSTBLID 00000001 HP   00000001) [    0.000000] ACPI: Local APIC
address 0xfee00000 [    0.000000] Scanning NUMA topology in Northbridge 24
[    0.000000] No NUMA configuration found [    0.000000] Faking a node at [mem
0x0000000000000000-0x0000000077fcffff] [    0.000000] Initmem setup node 0 [mem
0x00000000-0x77fcffff] [    0.000000]   NODE_DATA [mem 0x77c74000-0x77c78fff]
[    0.000000]  [ffffea0000000000-ffffea0001dfffff] PMD ->
[ffff880075600000-ffff8800773fffff] on node 0 [    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x00001000-0x00ffffff] [    0.000000]   DMA32
[mem 0x01000000-0xffffffff] [    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x00001000-0x0009efff]
[    0.000000]   node   0: [mem 0x00100000-0x77fcffff]
[    0.000000] On node 0 totalpages: 491374
[    0.000000]   DMA zone: 64 pages used for memmap
[    0.000000]   DMA zone: 21 pages reserved
[    0.000000]   DMA zone: 3998 pages, LIFO batch:0
[    0.000000]   DMA32 zone: 7616 pages used for memmap
[    0.000000]   DMA32 zone: 487376 pages, LIFO batch:31
[    0.000000] SB4X0 revision 0x82
[    0.000000] Ignoring ACPI timer override.
[    0.000000] If you got timer trouble try acpi_use_timer_override
[    0.000000] Detected use of extended apic ids on hypertransport bus
[    0.000000] ACPI: PM-Timer IO Port: 0x8008
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] disabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 33, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: BIOS IRQ0 override ignored.
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 21 low level)
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] smpboot: Allowing 2 CPUs, 1 hotplug CPUs
[    0.000000] nr_irqs_gsi: 40
[    0.000000] PM: Registered nosave memory: [mem 0x0009f000-0x0009ffff]
[    0.000000] PM: Registered nosave memory: [mem 0x000a0000-0x000dffff]
[    0.000000] PM: Registered nosave memory: [mem 0x000e0000-0x000fffff]
[    0.000000] e820: [mem 0x80000000-0xdfffffff] available for PCI devices
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] setup_percpu: NR_CPUS:128 nr_cpumask_bits:128 nr_cpu_ids:2
nr_node_ids:1 [    0.000000] PERCPU: Embedded 29 pages/cpu @ffff880077a00000
s87168 r8192 d23424 u1048576 [    0.000000] pcpu-alloc: s87168 r8192 d23424
u1048576 alloc=1*2097152 [    0.000000] pcpu-alloc: [0] 0 1 
[    0.000000] Built 1 zonelists in Node order, mobility grouping on.  Total
pages: 483673 [    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: BOOT_IMAGE=../vmlinuz-linux root=/dev/sda1
rw initrd=../initramfs-linux.img [    0.000000] PID hash table entries: 4096
(order: 3, 32768 bytes) [    0.000000] Checking aperture...
[    0.000000] No AGP bridge found
[    0.000000] Node 0: aperture @ 24f6000000 size 32 MB
[    0.000000] Aperture beyond 4GB. Ignoring.
[    0.000000] Memory: 1919232K/1965496K available (5222K kernel code, 885K
rwdata, 1644K rodata, 1116K init, 1284K bss, 46264K reserved) [    0.000000]
SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1 [    0.000000]
Preemptible hierarchical RCU implementation. [    0.000000] 	RCU
dyntick-idle grace-period acceleration is enabled. [    0.000000] 	Dump
stacks of tasks blocking RCU-preempt GP. [    0.000000] 	RCU restricting
CPUs from NR_CPUS=128 to nr_cpu_ids=2. [    0.000000] RCU: Adjusting geometry
for rcu_fanout_leaf=16, nr_cpu_ids=2 [    0.000000] NR_IRQS:8448 nr_irqs:512 16
[    0.000000] Console: colour VGA+ 80x25
[    0.000000] console [tty0] enabled
[    0.000000] allocated 7864320 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't want
memory cgroups [    0.000000] tsc: Fast TSC calibration using PIT
[    0.000000] tsc: Detected 1795.507 MHz processor
[    0.000000] tsc: Marking TSC unstable due to TSCs unsynchronized
[    0.003351] Calibrating delay loop (skipped), value calculated using timer
frequency.. 3592.63 BogoMIPS (lpj=5985023) [    0.003355] pid_max: default:
32768 minimum: 301 [    0.003369] ACPI: Core revision 20140214
[    0.011697] ACPI: All ACPI Tables successfully acquired
[    0.013400] Security Framework initialized
[    0.013412] Yama: becoming mindful.
[    0.013679] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes)
[    0.017360] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes)
[    0.018029] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes)
[    0.018037] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes)
[    0.018371] Initializing cgroup subsys memory
[    0.018379] Initializing cgroup subsys devices
[    0.018382] Initializing cgroup subsys freezer
[    0.018385] Initializing cgroup subsys net_cls
[    0.018388] Initializing cgroup subsys blkio
[    0.018413] tseg: 0000000000
[    0.018423] mce: CPU supports 5 MCE banks
[    0.018434] LVT offset 0 assigned for vector 0xf9
[    0.018438] process: using AMD E400 aware idle routine
[    0.018441] Last level iTLB entries: 4KB 512, 2MB 8, 4MB 4
Last level dTLB entries: 4KB 512, 2MB 8, 4MB 4, 1GB 0
tlb_flushall_shift: 6
[    0.024672] ftrace: allocating 20223 entries in 79 pages
[    0.033886] ..TIMER: vector=0x30 apic1=0 pin1=0 apic2=-1 pin2=-1
[    0.068117] smpboot: CPU0: Mobile AMD Sempron(tm) Processor 3500+ (fam: 0f,
model: 4c, stepping: 02) [    0.069999] Performance Events: AMD PMU driver.
[    0.069999] ... version:                0
[    0.069999] ... bit width:              48
[    0.069999] ... generic registers:      4
[    0.069999] ... value mask:             0000ffffffffffff
[    0.069999] ... max period:             00007fffffffffff
[    0.069999] ... fixed-purpose events:   0
[    0.069999] ... event mask:             000000000000000f
[    0.083356] NMI watchdog: enabled on all CPUs, permanently consumes one
hw-PMU counter. [    0.083395] x86: Booted up 1 node, 1 CPUs
[    0.083398] smpboot: Total of 1 processors activated (3592.63 BogoMIPS)
[    0.083837] devtmpfs: initialized
[    0.089949] PM: Registering ACPI NVS region [mem 0x77fe5600-0x77ff7fff]
(76288 bytes) [    0.089962] reboot: HP Compaq Laptop series board detected.
Selecting BIOS-method for reboots. [    0.091650] pinctrl core: initialized
pinctrl subsystem [    0.091706] RTC time: 13:03:57, date: 06/20/14
[    0.091769] NET: Registered protocol family 16
[    0.091919] cpuidle: using governor ladder
[    0.091922] cpuidle: using governor menu
[    0.091928] node 0 link 0: io port [1000, fffff]
[    0.091932] TOM: 0000000080000000 aka 2048M
[    0.091935] node 0 link 0: mmio [f0000000, ffffffff]
[    0.091938] node 0 link 0: mmio [e0000000, efffffff]
[    0.091941] node 0 link 0: mmio [c8000000, dfffffff]
[    0.091943] node 0 link 0: mmio [c0000000, c7ffffff]
[    0.091946] node 0 link 0: mmio [a0000, bffff]
[    0.091949] node 0 link 0: mmio [80000000, bfffffff]
[    0.091952] bus: [bus 00-ff] on node 0 link 0
[    0.091955] bus: 00 [io  0x0000-0xffff]
[    0.091957] bus: 00 [mem 0x80000000-0xfcffffffff]
[    0.091959] bus: 00 [mem 0x000a0000-0x000bffff]
[    0.091978] ACPI: bus type PCI registered
[    0.091981] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.092062] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem
0xe0000000-0xefffffff] (base 0xe0000000) [    0.092066] PCI: MMCONFIG at [mem
0xe0000000-0xefffffff] reserved in E820 [    0.102256] PCI: Using configuration
type 1 for base access [    0.103425] ACPI: Added _OSI(Module Device)
[    0.103428] ACPI: Added _OSI(Processor Device)
[    0.103430] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.103432] ACPI: Added _OSI(Processor Aggregator Device)
[    0.126746] ACPI: Interpreter enabled
[    0.126758] ACPI Exception: AE_NOT_FOUND, While evaluating Sleep State
[\_S1_] (20140214/hwxface-580) [    0.126764] ACPI Exception: AE_NOT_FOUND,
While evaluating Sleep State [\_S2_] (20140214/hwxface-580) [    0.126781]
ACPI: (supports S0 S3 S4 S5) [    0.126783] ACPI: Using IOAPIC for interrupt
routing [    0.126894] PCI: Ignoring host bridge windows from ACPI; if
necessary, use "pci=use_crs" and report a bug [    0.127317] [Firmware Bug]:
ACPI: No _BQC method, cannot determine initial brightness [    0.130492] ACPI:
Power Resource [C223] (off) [    0.131002] ACPI: Power Resource [C1F1] (off)
[    0.131360] ACPI: Power Resource [C1FE] (off)
[    0.131995] ACPI: Power Resource [C217] (on)
[    0.144585] ACPI: Power Resource [C34B] (off)
[    0.144644] ACPI: Power Resource [C34C] (off)
[    0.144696] ACPI: Power Resource [C34D] (off)
[    0.144755] ACPI: Power Resource [C34E] (off)
[    0.145244] ACPI: \_PR_.C001: failed to get CPU APIC ID.
[    0.148777] ACPI: PCI Root Bridge [C074] (domain 0000 [bus 00-ff])
[    0.148786] acpi PNP0A03:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM
Segments MSI] [    0.148793] acpi PNP0A03:00: _OSC failed (AE_NOT_FOUND);
disabling ASPM [    0.155795] acpi PNP0A03:00: host bridge window [io
0x0000-0x0cf7] (ignored) [    0.155798] acpi PNP0A03:00: host bridge window
[io  0x0d00-0xffff] (ignored) [    0.155802] acpi PNP0A03:00: host bridge
window [mem 0x000a0000-0x000bffff] (ignored) [    0.155805] acpi PNP0A03:00:
host bridge window [mem 0x80000000-0xfedfffff] (ignored) [    0.155808] acpi
PNP0A03:00: host bridge window [mem 0xfee01000-0xffffffff] (ignored)
[    0.155810] acpi PNP0A03:00: host bridge window [mem 0x000d0000-0x000dffff]
(ignored) [    0.155813] PCI: root bus 00: hardware-probed resources
[    0.156004] PCI host bridge to bus 0000:00 [    0.156008] pci_bus 0000:00:
root bus resource [bus 00-ff] [    0.156011] pci_bus 0000:00: root bus resource
[io  0x0000-0xffff] [    0.156014] pci_bus 0000:00: root bus resource [mem
0x80000000-0xfcffffffff] [    0.156017] pci_bus 0000:00: root bus resource [mem
0x000a0000-0x000bffff] [    0.156028] pci 0000:00:00.0: [1002:5950] type 00
class 0x060000 [    0.156127] pci 0000:00:01.0: [1002:5a3f] type 01 class
0x060400 [    0.156237] pci 0000:00:04.0: [1002:5a36] type 01 class 0x060400
[    0.156279] pci 0000:00:04.0: PME# supported from D0 D3hot D3cold
[    0.156323] pci 0000:00:04.0: System wakeup disabled by ACPI
[    0.156379] pci 0000:00:05.0: [1002:5a37] type 01 class 0x060400
[    0.156421] pci 0000:00:05.0: PME# supported from D0 D3hot D3cold
[    0.156511] pci 0000:00:06.0: [1002:5a38] type 01 class 0x060400
[    0.156552] pci 0000:00:06.0: PME# supported from D0 D3hot D3cold
[    0.156594] pci 0000:00:06.0: System wakeup disabled by ACPI
[    0.156683] pci 0000:00:12.0: [1002:4379] type 00 class 0x01018f
[    0.156712] pci 0000:00:12.0: reg 0x10: [io  0x9000-0x9007]
[    0.156726] pci 0000:00:12.0: reg 0x14: [io  0x9008-0x900b]
[    0.156739] pci 0000:00:12.0: reg 0x18: [io  0x9010-0x9017]
[    0.156753] pci 0000:00:12.0: reg 0x1c: [io  0x7018-0x701b]
[    0.156767] pci 0000:00:12.0: reg 0x20: [io  0x7020-0x702f]
[    0.156781] pci 0000:00:12.0: reg 0x24: [mem 0xd4409000-0xd44091ff]
[    0.156796] pci 0000:00:12.0: reg 0x30: [mem 0x00000000-0x0007ffff pref]
[    0.156851] pci 0000:00:12.0: supports D1 D2
[    0.156949] pci 0000:00:13.0: [1002:4374] type 00 class 0x0c0310
[    0.156973] pci 0000:00:13.0: reg 0x10: [mem 0xd4401000-0xd4401fff]
[    0.157119] pci 0000:00:13.0: System wakeup disabled by ACPI
[    0.157182] pci 0000:00:13.1: [1002:4375] type 00 class 0x0c0310
[    0.157207] pci 0000:00:13.1: reg 0x10: [mem 0xd4402000-0xd4402fff]
[    0.157353] pci 0000:00:13.1: System wakeup disabled by ACPI
[    0.157420] pci 0000:00:13.2: [1002:4373] type 00 class 0x0c0320
[    0.157448] pci 0000:00:13.2: reg 0x10: [mem 0xd4403000-0xd4403fff]
[    0.157568] pci 0000:00:13.2: supports D1 D2
[    0.157571] pci 0000:00:13.2: PME# supported from D0 D1 D2 D3hot
[    0.157619] pci 0000:00:13.2: System wakeup disabled by ACPI
[    0.157689] pci 0000:00:14.0: [1002:4372] type 00 class 0x0c0500
[    0.157712] pci 0000:00:14.0: reg 0x10: [io  0x8200-0x820f]
[    0.157726] pci 0000:00:14.0: reg 0x14: [mem 0xd4404000-0xd44043ff]
[    0.157785] HPET not enabled in BIOS. You might try hpet=force boot option
[    0.157908] pci 0000:00:14.1: [1002:4376] type 00 class 0x010182
[    0.157932] pci 0000:00:14.1: reg 0x10: [io  0x0000-0x0007]
[    0.157946] pci 0000:00:14.1: reg 0x14: [io  0x0000-0x0003]
[    0.157959] pci 0000:00:14.1: reg 0x18: [io  0x0000-0x0007]
[    0.157973] pci 0000:00:14.1: reg 0x1c: [io  0x0000-0x0003]
[    0.157987] pci 0000:00:14.1: reg 0x20: [io  0x7040-0x704f]
[    0.158016] pci 0000:00:14.1: legacy IDE quirk: reg 0x10: [io  0x01f0-0x01f7]
[    0.158019] pci 0000:00:14.1: legacy IDE quirk: reg 0x14: [io  0x03f6]
[    0.158022] pci 0000:00:14.1: legacy IDE quirk: reg 0x18: [io  0x0170-0x0177]
[    0.158025] pci 0000:00:14.1: legacy IDE quirk: reg 0x1c: [io  0x0376]
[    0.158154] pci 0000:00:14.2: [1002:437b] type 00 class 0x040300
[    0.158188] pci 0000:00:14.2: reg 0x10: [mem 0xd4408000-0xd440bfff 64bit]
[    0.158297] pci 0000:00:14.2: PME# supported from D0 D3hot D3cold
[    0.158345] pci 0000:00:14.2: System wakeup disabled by ACPI
[    0.158403] pci 0000:00:14.3: [1002:4377] type 00 class 0x060100
[    0.158578] pci 0000:00:14.4: [1002:4371] type 01 class 0x060401
[    0.158662] pci 0000:00:14.4: System wakeup disabled by ACPI
[    0.158726] pci 0000:00:18.0: [1022:1100] type 00 class 0x060000
[    0.158811] pci 0000:00:18.1: [1022:1101] type 00 class 0x060000
[    0.158893] pci 0000:00:18.2: [1022:1102] type 00 class 0x060000
[    0.158975] pci 0000:00:18.3: [1022:1103] type 00 class 0x060000
[    0.159118] pci 0000:01:05.0: [1002:5975] type 00 class 0x030000
[    0.159128] pci 0000:01:05.0: reg 0x10: [mem 0xc0000000-0xc7ffffff pref]
[    0.159134] pci 0000:01:05.0: reg 0x14: [io  0x6000-0x60ff]
[    0.159140] pci 0000:01:05.0: reg 0x18: [mem 0xd4300000-0xd430ffff]
[    0.159155] pci 0000:01:05.0: reg 0x30: [mem 0x00000000-0x0001ffff pref]
[    0.159169] pci 0000:01:05.0: supports D1 D2
[    0.159232] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.159237] pci 0000:00:01.0:   bridge window [io  0x6000-0x6fff]
[    0.159241] pci 0000:00:01.0:   bridge window [mem 0xd4300000-0xd43fffff]
[    0.159246] pci 0000:00:01.0:   bridge window [mem 0xc0000000-0xc7ffffff
64bit pref] [    0.159344] acpiphp: Slot [1] registered
[    0.159377] pci 0000:00:04.0: PCI bridge to [bus 10]
[    0.159381] pci 0000:00:04.0:   bridge window [io  0x4000-0x5fff]
[    0.159385] pci 0000:00:04.0:   bridge window [mem 0xd0000000-0xd3ffffff]
[    0.159473] acpiphp: Slot [1-1] registered
[    0.159502] pci 0000:00:05.0: PCI bridge to [bus 20]
[    0.159506] pci 0000:00:05.0:   bridge window [io  0x2000-0x3fff]
[    0.159510] pci 0000:00:05.0:   bridge window [mem 0xcc000000-0xcfffffff]
[    0.159583] pci 0000:30:00.0: [14e4:4312] type 00 class 0x028000
[    0.159601] pci 0000:30:00.0: reg 0x10: [mem 0xc8000000-0xc8003fff]
[    0.159726] pci 0000:30:00.0: supports D1 D2
[    0.159755] pci 0000:30:00.0: System wakeup disabled by ACPI
[    0.159803] pci 0000:30:00.0: disabling ASPM on pre-1.1 PCIe device.  You
can enable it with 'pcie_aspm=force' [    0.159813] pci 0000:00:06.0: PCI
bridge to [bus 30] [    0.159819] pci 0000:00:06.0:   bridge window [mem
0xc8000000-0xc80fffff] [    0.159900] acpiphp: Slot [1-2] registered
[    0.159933] pci 0000:02:01.0: [14e4:169c] type 00 class 0x020000
[    0.159972] pci 0000:02:01.0: reg 0x10: [mem 0xd4000000-0xd400ffff]
[    0.160152] pci 0000:02:01.0: PME# supported from D3hot D3cold
[    0.160187] pci 0000:02:01.0: System wakeup disabled by ACPI
[    0.160260] pci 0000:02:04.0: [104c:8039] type 02 class 0x060700
[    0.160290] pci 0000:02:04.0: reg 0x10: [mem 0xd4010000-0xd4010fff]
[    0.160340] pci 0000:02:04.0: supports D1 D2
[    0.160343] pci 0000:02:04.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.160432] pci 0000:02:04.1: [104c:803a] type 00 class 0x0c0010
[    0.160462] pci 0000:02:04.1: reg 0x10: [mem 0xd4011000-0xd40117ff]
[    0.160479] pci 0000:02:04.1: reg 0x14: [mem 0xd4014000-0xd4017fff]
[    0.160599] pci 0000:02:04.1: supports D1 D2
[    0.160602] pci 0000:02:04.1: PME# supported from D0 D1 D2 D3hot
[    0.160688] pci 0000:02:04.2: [104c:803b] type 00 class 0x018000
[    0.160717] pci 0000:02:04.2: reg 0x10: [mem 0xd4018000-0xd4018fff]
[    0.160846] pci 0000:02:04.2: supports D1 D2
[    0.160849] pci 0000:02:04.2: PME# supported from D0 D1 D2 D3hot
[    0.160933] pci 0000:02:04.3: [104c:803c] type 00 class 0x080500
[    0.160962] pci 0000:02:04.3: reg 0x10: [mem 0xd4019000-0xd40190ff]
[    0.161091] pci 0000:02:04.3: supports D1 D2
[    0.161094] pci 0000:02:04.3: PME# supported from D0 D1 D2 D3hot
[    0.161227] pci 0000:00:14.4: PCI bridge to [bus 02-03] (subtractive decode)
[    0.161240] pci 0000:00:14.4:   bridge window [mem 0xd4000000-0xd42fffff]
[    0.161246] pci 0000:00:14.4:   bridge window [io  0x0000-0xffff]
(subtractive decode) [    0.161249] pci 0000:00:14.4:   bridge window [mem
0x80000000-0xfcffffffff] (subtractive decode) [    0.161252] pci
0000:00:14.4:   bridge window [mem 0x000a0000-0x000bffff] (subtractive decode)
[    0.161324] pci 0000:02:04.0: max busn 06 is outside [bus 02-03]
[    0.161328] pci_bus 0000:03: busn_res: [bus 03] end is updated to 03
[    0.161353] pci_bus 0000:00: on NUMA node 0 [    0.161972] ACPI: PCI
Interrupt Link [C125] (IRQs 10 11) *0, disabled. [    0.162063] ACPI: PCI
Interrupt Link [C126] (IRQs 10 11) *0, disabled. [    0.162152] ACPI: PCI
Interrupt Link [C127] (IRQs 10 11) *0, disabled. [    0.162242] ACPI: PCI
Interrupt Link [C128] (IRQs 10 11) *0, disabled. [    0.162332] ACPI: PCI
Interrupt Link [C129] (IRQs 10 11) *0, disabled. [    0.162422] ACPI: PCI
Interrupt Link [C12A] (IRQs 9) *0, disabled. [    0.162512] ACPI: PCI Interrupt
Link [C12B] (IRQs 10 11) *0, disabled. [    0.162609] ACPI: PCI Interrupt Link
[C12C] (IRQs *10 11) [    0.163161] ACPI: Enabled 11 GPEs in block 00 to 1F
[    0.163215] ACPI : EC: GPE = 0x11, I/O: command/status = 0x66, data = 0x62
[    0.163377] vgaarb: device added: PCI:0000:01:05.0,decodes=io+mem,owns=io
+mem,locks=none [    0.163380] vgaarb: loaded
[    0.163382] vgaarb: bridge control possible 0000:01:05.0
[    0.163430] PCI: Using ACPI for IRQ routing
[    0.175201] PCI: pci_cache_line_size set to 64 bytes
[    0.175235] pci 0000:00:14.2: can't claim BAR 0 [mem 0xd4408000-0xd440bfff
64bit]: address conflict with 0000:00:12.0 [mem 0xd4409000-0xd44091ff]
[    0.175293] e820: reserve RAM buffer [mem 0x0009fc00-0x0009ffff]
[    0.175296] e820: reserve RAM buffer [mem 0x77fd0000-0x77ffffff]
[    0.175437] NetLabel: Initializing [    0.175440] NetLabel:  domain hash
size = 128 [    0.175441] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.175461] NetLabel:  unlabeled traffic allowed by default
[    0.175510] Switched to clocksource refined-jiffies
[    0.184995] pnp: PnP ACPI init
[    0.185023] ACPI: bus type PNP registered
[    0.185233] system 00:00: [mem 0x00000000-0x0009ffff] could not be reserved
[    0.185238] system 00:00: [mem 0x000e0000-0x000fffff] could not be reserved
[    0.185241] system 00:00: [mem 0x00100000-0x77ffffff] could not be reserved
[    0.185247] system 00:00: Plug and Play ACPI device, IDs PNP0c01 (active)
[    0.185545] pnp 00:01: Plug and Play ACPI device, IDs PNP0401 (disabled)
[    0.185668] pnp 00:02: Plug and Play ACPI device, IDs IFX0102 PNP0c31
(active) [    0.185719] pnp 00:03: Plug and Play ACPI device, IDs PNP0c04
(active) [    0.185734] pnp 00:04: [dma 4]
[    0.185764] pnp 00:04: Plug and Play ACPI device, IDs PNP0200 (active)
[    0.185800] pnp 00:05: Plug and Play ACPI device, IDs PNP0800 (active)
[    0.185847] pnp 00:06: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.185891] pnp 00:07: Plug and Play ACPI device, IDs PNP0303 (active)
[    0.185936] pnp 00:08: Plug and Play ACPI device, IDs SYN0118 SYN0100
SYN0002 PNP0f13 (active) [    0.186132] system 00:09: [io  0x040b] has been
reserved [    0.186136] system 00:09: [io  0x04d0-0x04d1] has been reserved
[    0.186139] system 00:09: [io  0x04d6] has been reserved
[    0.186142] system 00:09: [io  0x0500-0x051f] has been reserved
[    0.186145] system 00:09: [io  0x0c00-0x0c01] has been reserved
[    0.186148] system 00:09: [io  0x0c14] has been reserved
[    0.186152] system 00:09: [io  0x0c50-0x0c51] has been reserved
[    0.186155] system 00:09: [io  0x0c52] has been reserved
[    0.186158] system 00:09: [io  0x0c6c] has been reserved
[    0.186161] system 00:09: [io  0x0c6f] has been reserved
[    0.186164] system 00:09: [io  0x0cd4-0x0cdf] has been reserved
[    0.186168] system 00:09: [mem 0xffb00000-0xffbfffff] could not be reserved
[    0.186171] system 00:09: [mem 0xfff00000-0xffffffff] has been reserved
[    0.186175] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.186655] system 00:0a: [io  0x8000-0x802f] could not be reserved
[    0.186658] system 00:0a: [io  0x8100-0x811f] has been reserved
[    0.186675] system 00:0a: [mem 0xe0000000-0xefffffff] has been reserved
[    0.186678] system 00:0a: [mem 0xfec00000-0xfec00fff] could not be reserved
[    0.186682] system 00:0a: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.186987] system 00:0b: [mem 0x78000000-0x7fffffff] has been reserved
[    0.186991] system 00:0b: [mem 0xfee00000-0xfee00fff] has been reserved
[    0.186995] system 00:0b: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.187011] pnp: PnP ACPI: found 12 devices
[    0.187012] ACPI: bus type PNP unregistered
[    0.194018] Switched to clocksource acpi_pm
[    0.194062] pci 0000:02:04.0: res[13]=[io  0x0100-0x00ff] get_res_add_size
add_size 100 [    0.194065] pci 0000:02:04.0: res[14]=[io  0x0100-0x00ff]
get_res_add_size add_size 100 [    0.194070] pci 0000:00:14.4: bridge window
[io  0x1000-0x0fff] to [bus 02-03] add_size 1000 [    0.194075] pci
0000:02:04.0: res[15]=[mem 0x04000000-0x03ffffff pref] get_res_add_size
add_size 4000000 [    0.194079] pci 0000:00:14.4: bridge window [mem
0x04000000-0x03ffffff pref] to [bus 02-03] add_size 4000000 [    0.194090] pci
0000:00:14.4: res[15]=[mem 0x04000000-0x03ffffff pref] get_res_add_size
add_size 4000000 [    0.194093] pci 0000:00:14.4: res[13]=[io  0x1000-0x0fff]
get_res_add_size add_size 1000 [    0.194101] pci 0000:00:14.4: BAR 15:
assigned [mem 0x80000000-0x83ffffff pref] [    0.194105] pci 0000:00:12.0: BAR
6: assigned [mem 0x84000000-0x8407ffff pref] [    0.194110] pci 0000:00:14.2:
BAR 0: assigned [mem 0x100000000-0x100003fff 64bit] [    0.194129] pci
0000:00:14.4: BAR 13: assigned [io  0x1000-0x1fff] [    0.194135] pci
0000:01:05.0: BAR 6: assigned [mem 0xd4320000-0xd433ffff pref] [    0.194138]
pci 0000:00:01.0: PCI bridge to [bus 01] [    0.194142] pci 0000:00:01.0:
bridge window [io  0x6000-0x6fff] [    0.194146] pci 0000:00:01.0:   bridge
window [mem 0xd4300000-0xd43fffff] [    0.194149] pci 0000:00:01.0:   bridge
window [mem 0xc0000000-0xc7ffffff 64bit pref] [    0.194154] pci 0000:00:04.0:
PCI bridge to [bus 10] [    0.194157] pci 0000:00:04.0:   bridge window [io
0x4000-0x5fff] [    0.194161] pci 0000:00:04.0:   bridge window [mem
0xd0000000-0xd3ffffff] [    0.194166] pci 0000:00:05.0: PCI bridge to [bus 20]
[    0.194169] pci 0000:00:05.0:   bridge window [io  0x2000-0x3fff]
[    0.194172] pci 0000:00:05.0:   bridge window [mem 0xcc000000-0xcfffffff]
[    0.194178] pci 0000:00:06.0: PCI bridge to [bus 30] [    0.194182] pci
0000:00:06.0:   bridge window [mem 0xc8000000-0xc80fffff] [    0.194189] pci
0000:02:04.0: res[15]=[mem 0x04000000-0x03ffffff pref] get_res_add_size
add_size 4000000 [    0.194192] pci 0000:02:04.0: res[16]=[mem
0x04000000-0x03ffffff] get_res_add_size add_size 4000000 [    0.194195] pci
0000:02:04.0: res[13]=[io  0x0100-0x00ff] get_res_add_size add_size 100
[    0.194198] pci 0000:02:04.0: res[14]=[io  0x0100-0x00ff] get_res_add_size
add_size 100 [    0.194202] pci 0000:02:04.0: BAR 15: assigned [mem
0x80000000-0x83ffffff pref] [    0.194206] pci 0000:02:04.0: BAR 16: assigned
[mem 0x88000000-0x8bffffff] [    0.194209] pci 0000:02:04.0: BAR 13: assigned
[io  0x1000-0x10ff] [    0.194212] pci 0000:02:04.0: BAR 14: assigned [io
0x1400-0x14ff] [    0.194215] pci 0000:02:04.0: CardBus bridge to [bus 03]
[    0.194218] pci 0000:02:04.0:   bridge window [io  0x1000-0x10ff]
[    0.194227] pci 0000:02:04.0:   bridge window [io  0x1400-0x14ff]
[    0.194234] pci 0000:02:04.0:   bridge window [mem 0x80000000-0x83ffffff
pref] [    0.194240] pci 0000:02:04.0:   bridge window [mem
0x88000000-0x8bffffff] [    0.194247] pci 0000:00:14.4: PCI bridge to [bus
02-03] [    0.194251] pci 0000:00:14.4:   bridge window [io  0x1000-0x1fff]
[    0.194258] pci 0000:00:14.4:   bridge window [mem 0xd4000000-0xd42fffff]
[    0.194264] pci 0000:00:14.4:   bridge window [mem 0x80000000-0x83ffffff
pref] [    0.194273] pci_bus 0000:00: resource 4 [io  0x0000-0xffff]
[    0.194276] pci_bus 0000:00: resource 5 [mem 0x80000000-0xfcffffffff]
[    0.194279] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]
[    0.194282] pci_bus 0000:01: resource 0 [io  0x6000-0x6fff] [    0.194285]
pci_bus 0000:01: resource 1 [mem 0xd4300000-0xd43fffff] [    0.194288] pci_bus
0000:01: resource 2 [mem 0xc0000000-0xc7ffffff 64bit pref] [    0.194291]
pci_bus 0000:10: resource 0 [io  0x4000-0x5fff] [    0.194294] pci_bus 0000:10:
resource 1 [mem 0xd0000000-0xd3ffffff] [    0.194297] pci_bus 0000:20: resource
0 [io  0x2000-0x3fff] [    0.194300] pci_bus 0000:20: resource 1 [mem
0xcc000000-0xcfffffff] [    0.194303] pci_bus 0000:30: resource 1 [mem
0xc8000000-0xc80fffff] [    0.194306] pci_bus 0000:02: resource 0 [io
0x1000-0x1fff] [    0.194309] pci_bus 0000:02: resource 1 [mem
0xd4000000-0xd42fffff] [    0.194312] pci_bus 0000:02: resource 2 [mem
0x80000000-0x83ffffff pref] [    0.194315] pci_bus 0000:02: resource 4 [io
0x0000-0xffff] [    0.194317] pci_bus 0000:02: resource 5 [mem
0x80000000-0xfcffffffff] [    0.194320] pci_bus 0000:02: resource 6 [mem
0x000a0000-0x000bffff] [    0.194323] pci_bus 0000:03: resource 0 [io
0x1000-0x10ff] [    0.194326] pci_bus 0000:03: resource 1 [io  0x1400-0x14ff]
[    0.194329] pci_bus 0000:03: resource 2 [mem 0x80000000-0x83ffffff pref]
[    0.194332] pci_bus 0000:03: resource 3 [mem 0x88000000-0x8bffffff]
[    0.194376] NET: Registered protocol family 2 [    0.194622] TCP established
hash table entries: 16384 (order: 5, 131072 bytes) [    0.194725] TCP bind hash
table entries: 16384 (order: 6, 262144 bytes) [    0.194856] TCP: Hash tables
configured (established 16384 bind 16384) [    0.194931] TCP: reno registered
[    0.194938] UDP hash table entries: 1024 (order: 3, 32768 bytes)
[    0.194966] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes)
[    0.195069] NET: Registered protocol family 1 [    0.195086] pci
0000:00:00.0: MSI quirk detected; MSI disabled [    0.195093] pci 0000:00:01.0:
MSI quirk detected; subordinate MSI disabled [    0.195960] pci 0000:01:05.0:
Boot video device [    0.195987] PCI: CLS 64 bytes, default 64
[    0.196068] Unpacking initramfs...
[    0.294194] Freeing initrd memory: 3420K (ffff880077c79000 -
ffff880077fd0000) [    0.294349] Scanning for low memory corruption every 60
seconds [    0.294713] futex hash table entries: 512 (order: 3, 32768 bytes)
[    0.311224] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[    0.313663] zbud: loaded
[    0.313898] VFS: Disk quotas dquot_6.5.2
[    0.313954] Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.314126] msgmni has been set to 3755
[    0.314202] Key type big_key registered
[    0.314366] Block layer SCSI generic (bsg) driver version 0.4 loaded (major
252) [    0.314408] io scheduler noop registered
[    0.314411] io scheduler deadline registered
[    0.314455] io scheduler cfq registered (default)
[    0.314735] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    0.314758] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    0.314849] GHES: HEST is not enabled!
[    0.314916] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.315431] Linux agpgart interface v0.103
[    0.315479] rtc_cmos 00:06: RTC can wake from S4
[    0.315646] rtc_cmos 00:06: rtc core: registered rtc_cmos as rtc0
[    0.315685] rtc_cmos 00:06: alarms up to one month, y3k, 114 bytes nvram
[    0.315699] ledtrig-cpu: registered to indicate activity on CPUs
[    0.315842] TCP: cubic registered
[    0.316001] NET: Registered protocol family 10
[    0.316307] NET: Registered protocol family 17
[    0.316600] registered taskstats version 1
[    0.317103]   Magic number: 2:394:79
[    0.317208] rtc_cmos 00:06: setting system clock to 2014-06-20 13:03:57 UTC
(1403269437) [    0.317285] PM: Hibernation image not present or could not be
loaded. [    0.319399] Freeing unused kernel memory: 1116K (ffffffff818df000 -
ffffffff819f6000) [    0.319402] Write protecting the kernel read-only data:
8192k [    0.323665] Freeing unused kernel memory: 912K (ffff88000151c000 -
ffff880001600000) [    0.325447] Freeing unused kernel memory: 404K
(ffff88000179b000 - ffff880001800000) [    0.337087] random: systemd-tmpfile
urandom read with 65 bits of entropy available [    0.341918] pps_core:
LinuxPPS API ver. 1 registered [    0.341923] pps_core: Software ver. 5.3.6 -
Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it> [    0.342144] PTP
clock support registered [    0.343653] systemd-udevd[41]: starting version 213
[    0.350392] tg3.c:v3.136 (Jan 03, 2014)
[    0.390212] tg3 0000:02:01.0 eth0: Tigon3 [partno(BCM95788A50) rev 3003]
(PCI:33MHz:32-bit) MAC address 00:17:08:46:65:5f [    0.390219] tg3
0000:02:01.0 eth0: attached PHY is 5705 (10/100/1000Base-T Ethernet) (WireSpeed
[0], EEE[0]) [    0.390223] tg3 0000:02:01.0 eth0: RXcsums[1] LinkChgREG[0]
MIirq[0] ASF[0] TSOcap[1] [    0.390226] tg3 0000:02:01.0 eth0: dma_rwctrl
[763f0000] dma_mask[32-bit] [    0.427506] i8042: PNP: PS/2 Controller
[PNP0303:C214,PNP0f13:C215] at 0x60,0x64 irq 1,12 [    0.429307] i8042:
Detected active multiplexing controller, rev 1.1 [    0.431604] serio: i8042
KBD port at 0x60,0x64 irq 1 [    0.431931] serio: i8042 AUX0 port at 0x60,0x64
irq 12 [    0.432238] serio: i8042 AUX1 port at 0x60,0x64 irq 12 [    0.432291]
serio: i8042 AUX2 port at 0x60,0x64 irq 12 [    0.432330] serio: i8042 AUX3
port at 0x60,0x64 irq 12 [    0.452829] ACPI: bus type USB registered
[    0.452872] usbcore: registered new interface driver usbfs
[    0.452892] usbcore: registered new interface driver hub
[    0.453903] SCSI subsystem initialized
[    0.456067] usbcore: registered new device driver usb
[    0.458204] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.458444] ehci-pci: EHCI PCI platform driver
[    0.458674] ehci-pci 0000:00:13.2: EHCI Host Controller
[    0.458684] ehci-pci 0000:00:13.2: new USB bus registered, assigned bus
number 1 [    0.458765] ehci-pci 0000:00:13.2: irq 19, io mem 0xd4403000
[    0.459265] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.459445] ohci-pci: OHCI PCI platform driver
[    0.466750] ehci-pci 0000:00:13.2: USB 2.0 started, EHCI 1.00
[    0.467071] hub 1-0:1.0: USB hub found
[    0.467082] hub 1-0:1.0: 8 ports detected
[    0.468177] ohci-pci 0000:00:13.0: OHCI PCI host controller
[    0.468187] ohci-pci 0000:00:13.0: new USB bus registered, assigned bus
number 2 [    0.468226] ohci-pci 0000:00:13.0: irq 19, io mem 0xd4401000
[    0.469560] sdhci: Secure Digital Host Controller Interface driver
[    0.469564] sdhci: Copyright(c) Pierre Ossman
[    0.469961] sdhci-pci 0000:02:04.3: SDHCI controller found [104c:803c] (rev
0) [    0.470127] mmc0: no vqmmc regulator found
[    0.470129] mmc0: no vmmc regulator found
[    0.470243] mmc0: SDHCI controller on PCI [0000:02:04.3] using PIO
[    0.476776] libata version 3.00 loaded.
[    0.523411] firewire_ohci 0000:02:04.1: added OHCI v1.10 device as card 0, 4
IR + 8 IT contexts, quirks 0x2 [    0.524398] hub 2-0:1.0: USB hub found
[    0.524461] hub 2-0:1.0: 4 ports detected
[    0.526202] scsi0 : pata_atiixp
[    0.526397] scsi1 : pata_atiixp
[    0.526467] ata1: PATA max UDMA/100 cmd 0x1f0 ctl 0x3f6 bmdma 0x7040 irq 14
[    0.526470] ata2: PATA max UDMA/100 cmd 0x170 ctl 0x376 bmdma 0x7048 irq 15
[    0.526494] sata_sil 0000:00:12.0: version 2.4
[    0.526499] sata_sil 0000:00:12.0: quirky BIOS, skipping spindown on
poweroff and hibernation [    0.527971] scsi2 : sata_sil
[    0.528175] scsi3 : sata_sil
[    0.528252] ata3: SATA max UDMA/100 mmio m512 at 0xd4409000 tf 0xd4409080 irq 16
[    0.528256] ata4: SATA max UDMA/100 mmio m512 at 0xd4409000 tf 0xd44090c0 irq 16
[    0.528756] ohci-pci 0000:00:13.1: OHCI PCI host controller
[    0.528767] ohci-pci 0000:00:13.1: new USB bus registered, assigned bus
number 3 [    0.528803] ohci-pci 0000:00:13.1: irq 19, io mem 0xd4402000
[    0.530724] input: AT Translated Set 2 keyboard
as /devices/platform/i8042/serio0/input/input0 [    0.584456] hub 3-0:1.0: USB
hub found [    0.584473] hub 3-0:1.0: 4 ports detected
[    0.687245] ata1.00: ATAPI: HL-DT-ST DVDRAM GSA-T10N, PC05, max MWDMA2
[    0.700523] ata1.00: configured for MWDMA2
[    0.706283] scsi 0:0:0:0: CD-ROM            HL-DT-ST DVDRAM GSA-T10N  PC05
PQ: 0 ANSI: 5 [    0.953397] ata3: SATA link up 1.5 Gbps (SStatus 113 SControl
300) [    1.023449] firewire_core 0000:02:04.1: created device fw0: GUID
00023f992919440c, S400 [    1.256700] usb 3-1: new full-speed USB device number
2 using ohci-pci [    1.319163] ata3.00: ATA-7: TOSHIBA MK6034GSX, AH101M, max
UDMA/100 [    1.319166] ata3.00: 117210240 sectors, multi 16: LBA48 NCQ (depth
0/32) [    1.330499] ata3.00: configured for UDMA/100
[    1.330633] scsi 2:0:0:0: Direct-Access     ATA      TOSHIBA MK6034GS AH10
PQ: 0 ANSI: 5 [    1.650046] ata4: SATA link down (SStatus 0 SControl 300)
[    1.670031] sr0: scsi3-mmc drive: 24x/24x writer dvd-ram cd/rw xa/form2 cdda
tray [    1.670039] cdrom: Uniform CD-ROM driver Revision: 3.20
[    1.670366] sr 0:0:0:0: Attached scsi CD-ROM sr0
[    1.670584] sd 2:0:0:0: [sda] 117210240 512-byte logical blocks: (60.0
GB/55.8 GiB) [    1.670661] sd 2:0:0:0: [sda] Write Protect is off
[    1.670665] sd 2:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.670699] sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled,
doesn't support DPO or FUA [    1.771207]  sda: sda1 sda2
[    1.771645] sd 2:0:0:0: [sda] Attached SCSI disk
[    1.843378] usb 2-3: new low-speed USB device number 2 using ohci-pci
[    2.034098] hidraw: raw HID events driver (C) Jiri Kosina
[    2.040759] usbcore: registered new interface driver usbhid
[    2.040763] usbhid: USB HID core driver
[    2.041888] input: USB Optical Mouse
as /devices/pci0000:00/0000:00:13.0/usb2/2-3/2-3:1.0/0003:192F:0916.0001/input/input5
[    2.042002] hid-generic 0003:192F:0916.0001: input,hidraw0: USB HID v1.11
Mouse [USB Optical Mouse] on usb-0000:00:13.0-3/input0 [    2.214336] EXT4-fs
(sda1): mounted filesystem with ordered data mode. Opts: (null) [    2.242424]
random: nonblocking pool is initialized [    3.274585] systemd[1]: systemd 213
running in system mode. (+PAM -AUDIT -SELINUX -IMA -SYSVINIT +LIBCRYPTSETUP
+GCRYPT +ACL +XZ +SECCOMP -APPARMOR) [    3.274764] systemd[1]: Detected
architecture 'x86-64'. [    3.306859] systemd[1]: Set hostname to <hplap>.
[    4.678142] systemd[1]: Cannot add dependency job for unit
display-manager.service, ignoring: Unit display-manager.service failed to load:
No such file or directory. [    4.678814] systemd[1]: Starting Forward Password
Requests to Wall Directory Watch. [    4.678918] systemd[1]: Started Forward
Password Requests to Wall Directory Watch. [    4.678942] systemd[1]: Starting
Remote File Systems. [    4.679295] systemd[1]: Reached target Remote File
Systems. [    4.679340] systemd[1]: Starting Arbitrary Executable File Formats
File System Automount Point. [    4.679761] systemd[1]: Set up automount
Arbitrary Executable File Formats File System Automount Point. [    4.679792]
systemd[1]: Starting Encrypted Volumes. [    4.680134] systemd[1]: Reached
target Encrypted Volumes. [    4.680160] systemd[1]: Starting Dispatch Password
Requests to Console Directory Watch. [    4.680216] systemd[1]: Started
Dispatch Password Requests to Console Directory Watch. [    4.680237] systemd
[1]: Expecting device dev-sda2.device... [    4.680457] systemd[1]: Starting
Root Slice. [    4.688942] systemd[1]: Created slice Root Slice. [    4.688975]
systemd[1]: Starting User and Session Slice. [    4.689526] systemd[1]: Created
slice User and Session Slice. [    4.689548] systemd[1]: Starting Device-mapper
event daemon FIFOs. [    4.689889] systemd[1]: Listening on Device-mapper event
daemon FIFOs. [    4.689910] systemd[1]: Starting Delayed Shutdown Socket.
[    4.690323] systemd[1]: Listening on Delayed Shutdown Socket. [    4.690344]
systemd[1]: Starting /dev/initctl Compatibility Named Pipe. [    4.690659]
systemd[1]: Listening on /dev/initctl Compatibility Named Pipe. [    4.690685]
systemd[1]: Starting udev Kernel Socket. [    4.690997] systemd[1]: Listening
on udev Kernel Socket. [    4.691021] systemd[1]: Starting udev Control Socket.
[    4.691339] systemd[1]: Listening on udev Control Socket. [    4.691359]
systemd[1]: Starting LVM2 metadata daemon socket. [    4.691682] systemd[1]:
Listening on LVM2 metadata daemon socket. [    4.691708] systemd[1]: Starting
Journal Socket. [    4.692055] systemd[1]: Listening on Journal Socket.
[    4.692093] systemd[1]: Starting System Slice.
[    4.692660] systemd[1]: Created slice System Slice.
[    4.692690] systemd[1]: Started File System Check on Root Device.
[    4.692708] systemd[1]: Mounting Temporary Directory...
[    4.710946] systemd[1]: Starting system-getty.slice.
[    4.711688] systemd[1]: Created slice system-getty.slice.
[    4.877843] systemd[1]: Starting Create list of required static device nodes
for the current kernel... [    4.878947] systemd[1]: Starting udev Coldplug all
Devices... [    4.905256] systemd[1]: Started Load Kernel Modules.
[    4.905318] systemd[1]: Mounted FUSE Control File System.
[    4.932339] systemd[1]: Started Set Up Additional Binary Formats.
[    4.932387] systemd[1]: Mounting Debug File System...
[    4.933530] systemd[1]: Mounting POSIX Message Queue File System...
[    4.934618] systemd[1]: Mounting Huge Pages File System...
[    4.936396] systemd[1]: Starting Apply Kernel Variables...
[    4.937610] systemd[1]: Mounting Configuration File System...
[    4.941000] systemd[1]: Starting Setup Virtual Console...
[    4.945120] systemd[1]: Starting Journal Service...
[    4.950468] systemd[1]: Started Journal Service.
[    5.277421] EXT4-fs (sda1): re-mounted. Opts: data=ordered
[    5.342809] systemd-udevd[120]: starting version 213
[    5.700043] systemd[1]: Unit systemd-journald.service entered failed state.
[    5.701098] systemd[1]: Started Trigger Flushing of Journal to Persistent
Storage. [    5.702433] systemd[1]: systemd-journald.service has no holdoff
time, scheduling restart. [    5.707266] systemd[1]: Stopping Journal Service...
[    5.707780] systemd[1]: Starting Journal Service...
[    5.709257] systemd[1]: Started Journal Service.
[    5.778491] systemd-journald[133]: Received request to flush runtime journal
from PID 1 [    7.518754] input: Sleep Button
as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input6 [    7.518763]
ACPI: Sleep Button [C25A] [    7.518856] input: Lid Switch
as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input7 [    7.518933]
ACPI: Lid Switch [C25B] [    7.519015] input: Power Button
as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input8 [    7.519018] ACPI: Power
Button [PWRF] [    7.621314] ACPI: AC Adapter [C1BD] (on-line)
[    7.700690] [Firmware Bug]: _BCQ is used instead of _BQC
[    7.700707] ACPI: Video Device [C076] (multi-head: yes  rom: no  post: no)
[    7.700726] [Firmware Bug]: ACPI: No _BQC method, cannot determine initial
brightness [    7.701249] acpi device:02: registered as cooling_device1
[    7.701368] input: Video Bus
as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A03:00/device:00/LNXVIDEO:00/input/input9
[    7.880918] tpm_tis 00:02: 1.2 TPM (device-id 0xB, rev-id 16) [    7.980122]
tpm_tis 00:02: Adjusting TPM timeout parameters. [    8.354825] thermal
LNXTHERM:00: registered as thermal_zone0 [    8.354831] ACPI: Thermal Zone
[TZ1] (44 C) [    8.360128] thermal LNXTHERM:01: registered as thermal_zone1
[    8.360132] ACPI: Thermal Zone [TZ2] (44 C)
[    8.372699] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[    8.387166] thermal LNXTHERM:02: registered as thermal_zone2
[    8.387172] ACPI: Thermal Zone [TZ3] (28 C)
[    8.417260] wmi: Mapper loaded
[    8.499228] ACPI: Fan [C34F] (off)
[    8.499857] ACPI: Fan [C350] (off)
[    8.499945] ACPI: Fan [C351] (off)
[    8.500077] ACPI: Fan [C352] (off)
[    8.666927] ACPI: Battery Slot [C1BF] (battery present)
[    8.667047] ACPI: Battery Slot [C1BE] (battery absent)
[    8.850511] piix4_smbus 0000:00:14.0: SMBus Host Controller at 0x8200,
revision 0 [    8.920072] tpm_tis 00:02: TPM is disabled/deactivated (0x7)
[    8.920310] parport_pc 00:01: [io  0x0378-0x037f]
[    8.920316] parport_pc 00:01: [io  0x0778-0x077a]
[    8.920417] parport_pc 00:01: [irq 7]
[    8.920421] parport_pc 00:01: [dma 1]
[    8.921721] parport_pc 00:01: activated
[    8.921726] parport_pc 00:01: reported by Plug and Play ACPI
[    8.921802] parport0: PC-style at 0x378 (0x778), irq 7 [PCSPP,TRISTATE]
[    9.130062] ssb: Found chip with id 0x4311, rev 0x01 and package 0x00
[    9.130077] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x11, vendor 0x4243)
[    9.130085] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0A, vendor
0x4243) [    9.130092] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x03,
vendor 0x4243) [    9.130098] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x01,
vendor 0x4243) [    9.183523] ssb: Sonics Silicon Backplane found on PCI device
0000:30:00.0 [    9.368104] [drm] Initialized drm 1.1.0 20060810
[    9.743520] MCE: In-kernel MCE decoding enabled.
[    9.797689] EDAC MC: Ver: 3.0.0
[    9.891775] yenta_cardbus 0000:02:04.0: CardBus bridge found [103c:30b0]
[    9.891803] yenta_cardbus 0000:02:04.0: Enabling burst memory read
transactions [    9.891810] yenta_cardbus 0000:02:04.0: Using INTVAL to route
CSC interrupts to PCI [    9.891813] yenta_cardbus 0000:02:04.0: Routing
CardBus interrupts to PCI [    9.891820] yenta_cardbus 0000:02:04.0: TI: mfunc
0x01a11002, devctl 0x64 [    9.937499] systemd-udevd[145]: renamed network
interface eth0 to enp2s1 [    9.977016] AMD64 EDAC driver v3.4.0
[    9.977055] EDAC amd64: DRAM ECC disabled.
[    9.977060] EDAC amd64: ECC disabled in the BIOS or no ECC capability,
module will not load. Either enable ECC checking or force module loading by
setting 'ecc_enable_override'. (Note that use of the override may cause unknown
side effects.) [    9.991389] k8temp 0000:00:18.3: Temperature readouts might
be wrong - check erratum #141 [   10.120746] yenta_cardbus 0000:02:04.0: ISA
IRQ mask 0x0c78, PCI irq 20 [   10.120753] yenta_cardbus 0000:02:04.0: Socket
status: 30000006 [   10.120763] yenta_cardbus 0000:02:04.0: pcmcia: parent PCI
bridge window: [io  0x1000-0x1fff] [   10.120767] yenta_cardbus 0000:02:04.0:
pcmcia: parent PCI bridge window: [mem 0xd4000000-0xd42fffff] [   10.120771]
pcmcia_socket pcmcia_socket0: cs: memory probe 0xd4000000-0xd42fffff:
[   10.120776]  excluding 0xd4000000-0xd402ffff [   10.120788] yenta_cardbus
0000:02:04.0: pcmcia: parent PCI bridge window: [mem 0x80000000-0x83ffffff
pref] [   10.120791] pcmcia_socket pcmcia_socket0: cs: memory probe
0x80000000-0x83ffffff: [   10.120797]  excluding 0x80000000-0x83ffffff
[   10.206052] mousedev: PS/2 mouse device common for all mice [   10.524582]
sound hdaudioC0D0: autoconfig: line_outs=1 (0x5/0x0/0x0/0x0/0x0) type:line
[   10.524599] sound hdaudioC0D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[   10.524603] sound hdaudioC0D0:    hp_outs=1 (0x6/0x0/0x0/0x0/0x0)
[   10.524606] sound hdaudioC0D0:    mono: mono_out=0x0 [   10.524609] sound
hdaudioC0D0:    inputs: [   10.524613] sound hdaudioC0D0:      Front Mic=0x8
[   10.524616] sound hdaudioC0D0:      Rear Mic=0x18
[   10.524619] sound hdaudioC0D0:      Line=0x9
[   10.543982] sound hdaudioC0D1: autoconfig: line_outs=0 (0x0/0x0/0x0/0x0/0x0)
type:line [   10.543998] sound hdaudioC0D1:    speaker_outs=0
(0x0/0x0/0x0/0x0/0x0) [   10.544002] sound hdaudioC0D1:    hp_outs=0
(0x0/0x0/0x0/0x0/0x0) [   10.544005] sound hdaudioC0D1:    mono: mono_out=0x0
[   10.544007] sound hdaudioC0D1:    inputs:
[   10.556868] input: HDA Digital PCBeep
as /devices/pci0000:00/0000:00:14.2/sound/card0/hdaudioC0D0/input14
[   10.557239] input: HDA ATI SB Front Mic
as /devices/pci0000:00/0000:00:14.2/sound/card0/input15 [   10.557808] input:
HDA ATI SB Rear Mic as /devices/pci0000:00/0000:00:14.2/sound/card0/input16
[   10.557910] input: HDA ATI SB Line
as /devices/pci0000:00/0000:00:14.2/sound/card0/input17 [   10.558007] input:
HDA ATI SB Front Headphone
as /devices/pci0000:00/0000:00:14.2/sound/card0/input18 [   10.563270] psmouse
serio4: synaptics: Touchpad model: 1, fw: 6.2, id: 0x2580b1, caps:
0xa04793/0x300000/0x0, board id: 71, fw id: 240405 [   10.563280] psmouse
serio4: synaptics: serio: Synaptics pass-through port at isa0060/serio4/input0
[   10.576744] input: PC Speaker as /devices/platform/pcspkr/input/input19
[   10.603848] input: SynPS/2 Synaptics TouchPad
as /devices/platform/i8042/serio4/input/input13 [   10.618465] cfg80211:
Calling CRDA to update world regulatory domain [   10.798474] lib80211: common
routines for IEEE802.11 drivers [   10.798480] lib80211_crypt: registered
algorithm 'NULL' [   10.819699] [drm] radeon kernel modesetting enabled.
[   10.820342] [drm] initializing kernel modesetting (RS480 0x1002:0x5975
0x103C:0x30B0). [   10.820362] [drm] register mmio base: 0xD4300000
[   10.820364] [drm] register mmio size: 65536 [   10.820452] [drm] Generation
2 PCI interface, using max accessible memory [   10.820459] radeon
0000:01:05.0: VRAM: 128M 0x0000000078000000 - 0x000000007FFFFFFF (128M used)
[   10.820462] radeon 0000:01:05.0: GTT: 512M 0x0000000080000000 -
0x000000009FFFFFFF [   10.820471] [drm] Detected VRAM RAM=128M, BAR=128M
[   10.820472] [drm] RAM width 128bits DDR [   10.820550] [TTM] Zone  kernel:
Available graphics memory: 962542 kiB [   10.820552] [TTM] Initializing pool
allocator [   10.820560] [TTM] Initializing DMA pool allocator [   10.820590]
[drm] radeon: 128M of VRAM memory ready [   10.820592] [drm] radeon: 512M of
GTT memory ready. [   10.820617] [drm] GART: num cpu pages 131072, num gpu
pages 131072 [   10.824189] [drm] radeon: power management initialized
[   10.824207] [drm] radeon: 2 quad pipes, 1 z pipes initialized.
[   10.829767] [drm] PCIE GART of 512M enabled (table at 0x0000000072B80000).
[   10.829805] radeon 0000:01:05.0: WB enabled [   10.829810] radeon
0000:01:05.0: fence driver on ring 0 use gpu addr 0x0000000080000000 and cpu
addr 0xffff880072b2e000 [   10.829813] [drm] Supports vblank timestamp caching
Rev 2 (21.10.2013). [   10.829815] [drm] Driver supports precise vblank
timestamp query. [   10.829844] [drm] radeon: irq initialized. [   10.829857]
[drm] Loading R300 Microcode [   11.199276] ppdev: user-space parallel port
driver [   11.222128] microcode: AMD CPU family 0xf not supported
[   11.270296] powernow-k8: fid 0xa (1800 MHz), vid 0x10 [   11.270301]
powernow-k8: fid 0x8 (1600 MHz), vid 0x12 [   11.270304] powernow-k8: fid 0x0
(800 MHz), vid 0x18 [   11.270381] powernow-k8: Found 1 Mobile AMD Sempron(tm)
Processor 3500+ (1 cpu cores) (version 2.20.00) [   11.529857] pcmcia_socket
pcmcia_socket0: cs: memory probe 0x0c0000-0x0fffff: [   11.529889]  excluding
0xc0000-0xfffff [   11.529937] pcmcia_socket pcmcia_socket0: cs: memory probe
0xa0000000-0xa0ffffff: [   11.529961]  clean. [   11.530057] pcmcia_socket
pcmcia_socket0: cs: memory probe 0x60000000-0x60ffffff: [   11.530076]
excluding 0x60000000-0x60ffffff [   11.739562] [drm] radeon: ring at
0x0000000080001000 [   11.739601] [drm] ring test succeeded in 1 usecs
[   11.740045] [drm] ib test succeeded in 0 usecs
[   11.741353] [drm] Panel ID String: QDS                     
[   11.741361] [drm] Panel Size 1024x768
[   11.766287] [drm] radeon legacy LVDS backlight initialized
[   11.766295] [drm] Radeon Display Connectors
[   11.766300] [drm] Connector 0:
[   11.766304] [drm]   VGA-1
[   11.766310] [drm]   DDC: 0x68 0x68 0x68 0x68 0x68 0x68 0x68 0x68
[   11.766313] [drm]   Encoders:
[   11.766317] [drm]     CRT1: INTERNAL_DAC2
[   11.766321] [drm] Connector 1:
[   11.766324] [drm]   LVDS-1
[   11.766330] [drm]   DDC: 0x198 0x198 0x19c 0x19c 0x1a0 0x1a0 0x1a4 0x1a4
[   11.766333] [drm]   Encoders:
[   11.766336] [drm]     LCD1: INTERNAL_LVDS
[   11.766339] [drm] Connector 2:
[   11.766343] [drm]   SVIDEO-1
[   11.766346] [drm]   Encoders:
[   11.766349] [drm]     TV1: INTERNAL_DAC2
[   11.837580] [drm] fb mappable at 0xC0040000
[   11.837588] [drm] vram apper at 0xC0000000
[   11.837591] [drm] size 3145728
[   11.837595] [drm] fb depth is 24
[   11.837599] [drm]    pitch is 4096
[   11.837995] fbcon: radeondrmfb (fb0) is primary device
[   11.887503] Console: switching to colour frame buffer device 128x48
[   11.894696] radeon 0000:01:05.0: fb0: radeondrmfb frame buffer device
[   11.894699] radeon 0000:01:05.0: registered panic notifier
[   11.894708] [drm] Initialized radeon 2.38.0 20080528 for 0000:01:05.0 on
minor 0 [   12.088856] input: HP WMI hotkeys as /devices/virtual/input/input21
[   12.129954] Adding 6176280k swap on /dev/sda2.  Priority:-1 extents:1
across:6176280k FS [   12.646928] b43-phy0: Broadcom 4311 WLAN found (core
revision 10) [   12.683382] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision
8 [   12.704332] Broadcom 43xx driver loaded [ Features: PMNLS ]
[   12.827559] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   26.030060] systemd[1]: PID file /var/run/nmbd.pid not readable (yet?) after
start.
