From: Celejar <celejar@gmail.com>
Date: Mon, 12 Apr 2010 23:33:13 -0400
Subject: Asus 520gu
Message-ID: <20100412233313.542e9b8d.celejar@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

The recent OpenWrt release, along with the recent b43 work on the LP
PHY, inspired me to dig up my Asus 520gu and see what it could do.

Some documentation on the hardware is here:

http://mightyohm.com/blog/2008/10/detailed-specs-for-the-asus-wl-520gu-uber-hacking-platform/

OpenWrt (Blackfire) flashes and loads fine:

root at OpenWrt:/# uname -a
Linux OpenWrt 2.6.32.10 #20 Tue Apr 6 15:53:48 CEST 2010 mips GNU/Linux

[dmesg below]

This thing apparently has a Broadcom 5354 (Chip ID) radio, as reported by b43.  I
don't know how to get further information about it - lspci returns no
output on this box - I guess there's no pci bus?

OpenWrt has the radio disabled out of the box.  When I enable it, the
system seems to hang.  I say seems, since I don't have serial access -
all I know is that my telnet connection dies / freezes, and I can't log
in again.  All I can do is reflash.

Something does seem to be happening, though - the radio is sending out
beacons, as can be seen from a nearby box:

Cell 03 - Address: 00:22:15:53:42:17
                    Channel:5
                    Frequency:2.432 GHz (Channel 5)
                    Quality=55/70  Signal level=-55 dBm  
                    Encryption key:off
                    ESSID:"OpenWrt"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s; 6 Mb/s
                              9 Mb/s; 12 Mb/s; 18 Mb/s
                    Bit Rates:24 Mb/s; 36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=00000000006ef183
                    Extra: Last beacon: 219ms ago
                    IE: Unknown: 00074F70656E577274
                    IE: Unknown: 010882848B960C121824
                    IE: Unknown: 030105
                    IE: Unknown: 050401020000
                    IE: Unknown: 2A0100
                    IE: Unknown: 32043048606C
                    IE: Unknown: DD180050F2020101000103A4000027A4000042435E0062322F00

I cannot, however, get the nearby box to associate with the OpenWrt
box, no matter what I try.

What is the status of b43 for this device?  Is this sort of freeze /
crash something still expected at this stage?  I know that without
proper console / serial access, there's a limit to how useful my
information is, but does anyone have any suggestions, or directions for
further reading / testing / etc.?

Thanks for your work on this driver.

root at OpenWrt:/# dmesg
Linux version 2.6.32.10 (openwrt at wrt1.marcant.net) (gcc version 4.3.3 (GCC) ) #20 Tue Apr 6 15:53:48 CEST 2010
CPU revision is: 00029029 (Broadcom BCM3302)
ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x14, vendor 0x4243)
ssb: Core 1 found: Fast Ethernet (cc 0x806, rev 0x09, vendor 0x4243)
ssb: Core 2 found: MIPS 3302 (cc 0x816, rev 0x08, vendor 0x4243)
ssb: Core 3 found: USB 2.0 Host (cc 0x819, rev 0x02, vendor 0x4243)
ssb: Core 4 found: MEMC SDRAM (cc 0x80F, rev 0x04, vendor 0x4243)
ssb: Core 5 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor 0x4243)
ssb: Core 6 found: Roboswitch (cc 0x81C, rev 0x02, vendor 0x4243)
ssb: Found rev 0 PMU (capabilities 0x04A63400)
ssb: Initializing MIPS core...
ssb: set_irq: core 0x0806, irq 4 => 4
ssb: set_irq: core 0x0816, irq 5 => 2
ssb: set_irq: core 0x0812, irq 2 => 5
ssb: after irq reconfiguration
ssb: core 0x0800, irq : 2(S)  3* 4  5  6  D  I 
ssb: core 0x0806, irq : 2(S)  3  4* 5  6  D  I 
ssb: core 0x0816, irq : 2(S)* 3  4  5  6  D  I 
ssb: core 0x0819, irq : 2(S)  3  4  5  6* D  I 
ssb: core 0x080f, irq : 2(S)  3  4  5  6  D  I*
ssb: core 0x0812, irq : 2(S)  3  4  5* 6  D  I 
ssb: core 0x081c, irq : 2(S)  3  4  5  6  D  I*
ssb: Sonics Silicon Backplane found at address 0x18000000
Serial init done.
Determined physical RAM map:
 memory: 01000000 @ 00000000 (usable)
Initrd not found or empty - disabling initrd
Zone PFN ranges:
  Normal   0x00000000 -> 0x00001000
Movable zone start PFN for each node
early_node_map[1] active PFN ranges
    0: 0x00000000 -> 0x00001000
On node 0 totalpages: 4096
free_area_init_node: node 0, pgdat 8029e7d0, node_mem_map 802e4000
  Normal zone: 32 pages used for memmap
  Normal zone: 0 pages reserved
  Normal zone: 4064 pages, LIFO batch:0
Built 1 zonelists in Zone order, mobility grouping off.  Total pages: 4064
Kernel command line: root=/dev/mtdblock2 rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200
PID hash table entries: 64 (order: -4, 256 bytes)
Dentry cache hash table entries: 2048 (order: 1, 8192 bytes)
Inode-cache hash table entries: 1024 (order: 0, 4096 bytes)
Primary instruction cache 16kB, VIPT, 4-way, linesize 16 bytes.
Primary data cache 16kB, 2-way, VIPT, cache aliases, linesize 16 bytes
Memory: 13280k/16384k available (2322k kernel code, 3104k reserved, 357k data, 136k init, 0k highmem)
Hierarchical RCU implementation.
NR_IRQS:128
console [ttyS0] enabled
Calibrating delay loop... 239.10 BogoMIPS (lpj=478208)
Mount-cache hash table entries: 512
NET: Registered protocol family 16
bio: create slab <bio-0> at 0
Switching to clocksource MIPS
NET: Registered protocol family 2
IP route cache hash table entries: 1024 (order: 0, 4096 bytes)
TCP established hash table entries: 512 (order: 0, 4096 bytes)
TCP bind hash table entries: 512 (order: -1, 2048 bytes)
TCP: Hash tables configured (established 512 bind 512)
TCP reno registered
NET: Registered protocol family 1
squashfs: version 4.0 (2009/01/31) Phillip Lougher
Registering mini_fo version $Id$
JFFS2 version 2.2. (NAND) (SUMMARY)  ? 2001-2006 Red Hat, Inc.
msgmni has been set to 25
io scheduler noop registered
io scheduler deadline registered (default)
Serial: 8250/16550 driver, 2 ports, IRQ sharing enabled
serial8250: ttyS0 at MMIO 0xb8000300 (irq = 3) is a 16550A
serial8250: ttyS1 at MMIO 0xb8000400 (irq = 3) is a 16550A
serial8250.0: ttyS0 at MMIO 0xb8000300 (irq = 3) is a 16550A
serial8250.0: ttyS1 at MMIO 0xb8000400 (irq = 3) is a 16550A
flash init: 0x1c000000 0x02000000
Physically mapped flash: Found 1 x16 devices at 0x0 in 16-bit bank
Physically mapped flash: Found an alias at 0x400000 for the chip at 0x0
Physically mapped flash: Found an alias at 0x800000 for the chip at 0x0
Physically mapped flash: Found an alias at 0xc00000 for the chip at 0x0
Physically mapped flash: Found an alias at 0x1000000 for the chip at 0x0
Physically mapped flash: Found an alias at 0x1400000 for the chip at 0x0
Physically mapped flash: Found an alias at 0x1800000 for the chip at 0x0
Physically mapped flash: Found an alias at 0x1c00000 for the chip at 0x0
 Amd/Fujitsu Extended Query Table at 0x0040
number of CFI chips: 1
cfi_cmdset_0002: Disabling erase-suspend-program due to code brokenness.
Flash device: 0x400000 at 0x1fc00000
bootloader size: 131072
Creating 4 MTD partitions on "Physically mapped flash":
0x000000000000-0x000000020000 : "cfe"
0x000000020000-0x0000003f0000 : "linux"
0x0000000fa400-0x0000003f0000 : "rootfs"
mtd: partition "rootfs" must either start or end on erase block boundary or be smaller than an erase block -- forcing read-only
mtd: partition "rootfs" set to be root filesystem
mtd: partition "rootfs_data" created automatically, ofs=2D0000, len=120000 
0x0000002d0000-0x0000003f0000 : "rootfs_data"
0x0000003f0000-0x000000400000 : "nvram"
b44.c:v2.0
eth0: Broadcom 44xx/47xx 10/100BaseT Ethernet 00:22:15:53:42:17
BCM47xx Watchdog Timer enabled (30 seconds, nowayout)
TCP westwood registered
NET: Registered protocol family 17
802.1Q VLAN Support v1.8 Ben Greear <greearb@candelatech.com>
All bugs added by David S. Miller <davem@redhat.com>
VFS: Mounted root (squashfs filesystem) readonly on device 31:2.
Freeing unused kernel memory: 136k freed
Please be patient, while OpenWrt loads ...
diag: Detected 'ASUS WL-520gU'
b44: eth0: Link is up at 100 Mbps, full duplex.
b44: eth0: Flow control is off for TX and off for RX.
roboswitch: Probing device eth0: found a 5325! It's a 5350.
b44: eth0: powering down PHY
b44: eth0: Link is up at 100 Mbps, full duplex.
b44: eth0: Flow control is off for TX and off for RX.
b44: eth0: powering down PHY
b44: eth0: Link is up at 100 Mbps, full duplex.
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
b43-phy0: Broadcom 5354 WLAN found (core revision 13)
phy0: Selected rate control algorithm 'minstrel'
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Broadcom 43xx driver loaded [ Features: PL, Firmware-ID: FW13 ]
Broadcom 43xx-legacy driver loaded [ Features: PLID, Firmware-ID: FW10 ]
cfg80211: World regulatory domain updated:
    (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
    (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
    (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
    (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
    (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
    (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
PPP generic driver version 2.4.2
ip_tables: (C) 2000-2006 Netfilter Core Team
NET: Registered protocol family 24
nf_conntrack version 0.5.0 (209 buckets, 836 max)
CONFIG_NF_CT_ACCT is deprecated and will be removed soon. Please use
nf_conntrack.acct=1 kernel parameter, acct=1 nf_conntrack module option or
sysctl net.netfilter.nf_conntrack_acct=1 to enable it.

Celejar
-- 
foffl.sourceforge.net - Feeds OFFLine, an offline RSS/Atom aggregator
mailmin.sourceforge.net - remote access via secure (OpenPGP) email
ssuds.sourceforge.net - A Simple Sudoku Solver and Generator
