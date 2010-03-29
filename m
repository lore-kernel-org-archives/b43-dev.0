From: Sean Nowlan <mrnowls@gmail.com>
Date: Mon, 29 Mar 2010 11:13:50 -0700
Subject: pci-id 14e4:4320 reporting rev 02; works only with b43legacy
Message-ID: <10872c491003291113y1efa3f0eiac91b30f92d896f1@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I built OpenWrt for the Linksys wrt54g v1.0 router, which reports to have a
bcm4306 rev 02 device even though its pci-id is 14e4:4320.  This contradicts
http://wireless.kernel.org/en/users/Drivers/b43#Known_PCI_devices , which
says this device should be at rev 03.  Not surprisingly, b43legacy works but
b43 does not.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
root at OpenWrt:~# uname -a

Linux OpenWrt 2.6.32.9 #3 Fri Mar 26 13:03:34 PDT 2010 mips GNU/Linux


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
root at OpenWrt:~# lspci -vvn | grep 43 -A7

00:08.0 0280: 14e4:4320 (rev 02)
        Subsystem: 16a5:1603
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 64
        Interrupt: pin A routed to IRQ 6
        Region 0: Memory at 40000000 (32-bit, non-prefetchable) [size=8K]
        Capabilities: [40] Power Management version 2
--
        Kernel driver in use: b43-pci-bridge


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
root at OpenWrt:~# dmesg

Linux version 2.6.32.9 (nowlans@ubuntu) (gcc version 4.3.3 (GCC) ) #3 Fri
Mar 26 13:03:34 PDT 2010
CPU revision is: 00024000 (Broadcom
BCM4710)
ssb: Core 0 found: SDRAM (cc 0x803, rev 0x00, vendor
0x4243)
ssb: Core 1 found: ILine 20 (cc 0x801, rev 0x00, vendor
0x4243)
ssb: Core 2 found: Fast Ethernet (cc 0x806, rev 0x00, vendor
0x4243)
ssb: Core 3 found: V90 (cc 0x807, rev 0x00, vendor
0x4243)
ssb: Core 4 found: USB 1.1 Hostdev (cc 0x808, rev 0x00, vendor
0x4243)
ssb: Core 5 found: PCI (cc 0x804, rev 0x00, vendor
0x4243)
ssb: Core 6 found: MIPS (cc 0x805, rev 0x00, vendor
0x4243)
ssb: Core 7 found: EXTIF (cc 0x811, rev 0x00, vendor
0x4243)
ssb: Core 8 found: Fast Ethernet (cc 0x806, rev 0x00, vendor
0x4243)
ssb: Initializing MIPS
core...
ssb: set_irq: core 0x0806, irq 4 =>
4
ssb: set_irq: core 0x0811, irq 7 =>
2
ssb: set_irq: core 0x0801, irq 5 =>
2
ssb: set_irq: core 0x0806, irq 7 =>
5
ssb: after irq
reconfiguration

ssb: core 0x0803, irq : 2(S)  3  4  5  6  D
I*
ssb: core 0x0801, irq : 2(S)* 3  4  5  6  D
I
ssb: core 0x0806, irq : 2(S)  3  4* 5  6  D
I
ssb: core 0x0807, irq : 2(S)  3  4  5  6  D*
I
ssb: core 0x0808, irq : 2(S)  3* 4  5  6  D
I
ssb: core 0x0804, irq : 2(S)  3  4  5  6* D
I
ssb: core 0x0805, irq : 2(S)  3  4  5  6  D
I*
ssb: core 0x0811, irq : 2(S)* 3  4  5  6  D
I
ssb: core 0x0806, irq : 2(S)  3  4  5* 6  D
I
ssb: Sonics Silicon Backplane found at address
0x18000000
Serial init
done.

Determined physical RAM
map:
 memory: 01000000 @ 00000000
(usable)
Initrd not found or empty - disabling
initrd
Zone PFN
ranges:

  Normal   0x00000000 ->
0x00001000
Movable zone start PFN for each
node
early_node_map[1] active PFN
ranges
    0: 0x00000000 ->
0x00001000

On node 0 totalpages:
4096
free_area_init_node: node 0, pgdat 80281b00, node_mem_map
802c7000
  Normal zone: 32 pages used for
memmap
  Normal zone: 0 pages
reserved
  Normal zone: 4064 pages, LIFO
batch:0
Built 1 zonelists in Zone order, mobility grouping off.  Total pages:
4064
Kernel command line: root=/dev/mtdblock2 rootfstype=squashfs,jffs2 noinitrd
console=ttyS0,115200
PID hash table entries: 64 (order: -4, 256
bytes)
Dentry cache hash table entries: 2048 (order: 1, 8192
bytes)
Inode-cache hash table entries: 1024 (order: 0, 4096
bytes)
Enabling BCM4710A0 cache
workarounds.
Primary instruction cache 8kB, VIPT, 2-way, linesize 16
bytes.
Primary data cache 4kB, 2-way, VIPT, no aliases, linesize 16
bytes
Memory: 13396k/16384k available (2217k kernel code, 2988k reserved, 347k
data, 136k init, 0k highmem)
Hierarchical RCU
implementation.

NR_IRQS:128

Calibrating delay loop... 82.68 BogoMIPS
(lpj=165376)
Mount-cache hash table entries:
512
NET: Registered protocol family
16
bio: create slab <bio-0> at
0
Switching to clocksource
MIPS
ssb: PCIcore in host mode
found
PCI: Fixing up bridge
0000:00:00.0

PCI: Setting latency timer of device 0000:00:00.0 to
64
PCI: Fixing up device
0000:00:00.0

PCI: Fixing latency timer of device 0000:00:00.0 to
168
pci 0000:00:00.0: reg 10 32bit mmio:
[0x000000-0x001fff]
pci 0000:00:00.0: reg 14 32bit mmio pref:
[0x000000-0x7ffffff]
pci 0000:00:08.0: reg 10 32bit mmio:
[0x000000-0x001fff]
pci 0000:00:08.0: supports D1
D2
pci 0000:00:08.0: PME# supported from D0 D1 D2 D3hot
D3cold
pci 0000:00:08.0: PME#
disabled

PCI: Enabling device 0000:00:08.0 (0000 ->
0002)
PCI: Fixing up device
0000:00:08.0

PCI: Setting latency timer of device 0000:00:08.0 to
64
ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x02, vendor
0x4243)
ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x04, vendor
0x4243)
ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x01, vendor
0x4243)
ssb: Core 3 found: V90 (cc 0x807, rev 0x01, vendor
0x4243)
ssb: Core 4 found: PCI (cc 0x804, rev 0x07, vendor
0x4243)
ssb: Core 5 found: IEEE 802.11 (cc 0x812, rev 0x04, vendor
0x4243)
ssb: Ignoring additional 802.11
core
ssb: SPROM revision 1
detected.

ssb: Sonics Silicon Backplane found on PCI device
0000:00:08.0
NET: Registered protocol family
2
IP route cache hash table entries: 1024 (order: 0, 4096
bytes)
TCP established hash table entries: 512 (order: 0, 4096
bytes)
TCP bind hash table entries: 512 (order: -1, 2048
bytes)
TCP: Hash tables configured (established 512 bind
512)
TCP reno
registered

NET: Registered protocol family
1
squashfs: version 4.0 (2009/01/31) Phillip
Lougher
Registering mini_fo version
$Id$
JFFS2 version 2.2. (NAND) (SUMMARY)  ? 2001-2006 Red Hat,
Inc.
msgmni has been set to
26

io scheduler noop
registered

io scheduler deadline registered
(default)
Serial: 8250/16550 driver, 2 ports, IRQ sharing
enabled
flash init: 0x1fc00000
0x00400000

Physically mapped flash: Found 1 x16 devices at 0x0 in 16-bit
bank
 Amd/Fujitsu Extended Query Table at
0x0040
number of CFI chips:
1

cfi_cmdset_0002: Disabling erase-suspend-program due to code
brokenness.
Flash device: 0x400000 at
0x1fc00000
bootloader size:
262144

Creating 4 MTD partitions on "Physically mapped
flash":
0x000000000000-0x000000040000 :
"cfe"
0x000000040000-0x0000003f0000 :
"linux"
0x000000111c00-0x0000003f0000 :
"rootfs"
mtd: partition "rootfs" must either start or end on erase block boundary or
be smaller than an erase block -- forcing read-only
mtd: partition "rootfs" set to be root
filesystem

mtd: partition "rootfs_data" created automatically, ofs=2B0000,
len=140000
0x0000002b0000-0x0000003f0000 :
"rootfs_data"

0x0000003f0000-0x000000400000 :
"nvram"

b44.c:v2.0

eth0: Broadcom 44xx/47xx 10/100BaseT Ethernet
00:06:25:c5:35:4f

eth1: Broadcom 44xx/47xx 10/100BaseT Ethernet
00:06:25:c5:35:50

BCM47xx Watchdog Timer enabled (30 seconds,
nowayout)

TCP westwood
registered

NET: Registered protocol family
17

802.1Q VLAN Support v1.8 Ben Greear <greearb@candelatech.com>

All bugs added by David S. Miller <davem@redhat.com>

VFS: Mounted root (squashfs filesystem) readonly on device
31:2.
Freeing unused kernel memory: 136k
freed

Please be patient, while OpenWrt loads
...

diag: Detected 'Linksys WRT54G
V1.x'

b44: eth0: Link is up at 100 Mbps, full
duplex.

b44: eth0: Flow control is off for TX and off for
RX.

roboswitch: Probing device eth0: No Robo switch in managed mode found,
phy_id = 0xffffffff
roboswitch: Probing device
eth1:

roboswitch:
[/home/nowlans/openwrt/kamikaze/build_dir/linux-brcm47xx/kmod-switch/switch-robo.c:130]
SIOCGETCPHYRD failed!
roboswitch:
[/home/nowlans/openwrt/kamikaze/build_dir/linux-brcm47xx/kmod-switch/switch-robo.c:130]
SIOCGETCPHYRD failed!
No Robo switch in managed mode found, phy_id =
0xffffffff

roboswitch: Probing device eth2: No such
device

roboswitch: Probing device eth3: No such
device

b44: eth0: powering down
PHY

b44: eth0: Link is up at 100 Mbps, full
duplex.

b44: eth0: Flow control is off for TX and off for
RX.

b44: eth0: powering down
PHY

b44: eth0: Link is up at 100 Mbps, full
duplex.

b44: eth0: Flow control is off for TX and off for RX.
b44: eth0: powering down PHY
mini_fo: using base directory: /
mini_fo: using storage directory: /overlay
b44: eth0: Link is up at 100 Mbps, full duplex.
b44: eth0: Flow control is off for TX and off for RX.
b44: eth0: powering down PHY
b44: eth0: Link is up at 100 Mbps, full duplex.
b44: eth0: Flow control is off for TX and off for RX.
b44: eth0: powering down PHY
b44: eth0: Link is up at 100 Mbps, full duplex.
b44: eth0: Flow control is off for TX and off for RX.
device eth0.0 entered promiscuous mode
device eth0 entered promiscuous mode
br-lan: port 1(eth0.0) entering forwarding state
Generic kernel compatibility enabled based on linux-next next-20100113
cfg80211: Calling CRDA to update world regulatory domain
There is already a switch registered on the device 'eth0'
roboswitch: Probing device eth1:
roboswitch:
[/home/nowlans/openwrt/kamikaze/build_dir/linux-brcm47xx/kmod-switch/switch-robo.c:130]
SIOCGETCPHYRD failed!
roboswitch:
[/home/nowlans/openwrt/kamikaze/build_dir/linux-brcm47xx/kmod-switch/switch-robo.c:130]
SIOCGETCPHYRD failed!
No Robo switch in managed mode found, phy_id = 0xffffffff
roboswitch: Probing device eth2: No such device
roboswitch: Probing device eth3: No such device
cfg80211: World regulatory domain updated:
    (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
    (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
    (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
    (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
    (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
    (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]
PPP generic driver version 2.4.2
ip_tables: (C) 2000-2006 Netfilter Core Team
NET: Registered protocol family 24
nf_conntrack version 0.5.0 (211 buckets, 844 max)
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100329/19de9763/attachment-0001.htm>
