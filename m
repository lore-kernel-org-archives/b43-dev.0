From: Vincenzo De Florio <vincenzo.deflorio@gmail.com>
Date: Thu, 16 Feb 2017 19:32:01 +0100
Subject: Problems with wireless on an iBook G4 laptop
Message-ID: <4640d642-cf07-7e75-dbea-8228c1095853@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I'm the owner of an old iBook G4 laptop. I've installed YellowDog on it 
without any problem, except for the fact that the system does not see 
the wireless adapter. I installed the b43 wireless driver but when I try 
to start eth1 (supposedly, the wireless) the system complains that 
"3c501 device eth1 seem not seem to be present". Any idea of what went 
wrong and what I could do to solve this problem? Thank you very much!
Kind regards,
Vincenzo

P.S.:
Please find herein the output of uname -a; lspci -vvn|grep 43 -A7; and 
dmesg:

Linux localhost.localdomain 2.6.27-1.ydl61.5 #1 SMP Fri Jun 26 20:22:13 
EDT 2009 ppc ppc ppc GNU/Linux

0001:10:12.0 0280: 14e4:4318 (rev 02)
     Subsystem: 106b:4318
     Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- 
Stepping- SERR- FastB2B-
     Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- 
<TAbort- <MAbort- >SERR- <PERR-
     Latency: 16
     Interrupt: pin A routed to IRQ 52
     Region 0: Memory@80084000 (32-bit, non-prefetchable) [size=8K]

0001:10:17.0 ff00: 106b:003e
--
0001:10:1b.0 0c03: 1033:0035 (rev 43) (prog-if 10)
     Subsystem: 1033:0035
     Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- 
Stepping- SERR- FastB2B-
     Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- 
<TAbort- <MAbort- >SERR- <PERR-
     Latency: 16 (250ns min, 10500ns max), Cache Line Size: 32 bytes
     Interrupt: pin A routed to IRQ 63
     Region 0: Memory@80082000 (32-bit, non-prefetchable) [size=4K]
     Capabilities: [40] Power Management version 2
--
0001:10:1b.1 0c03: 1033:0035 (rev 43) (prog-if 10)
     Subsystem: 1033:0035
     Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- 
Stepping- SERR- FastB2B-
     Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- 
<TAbort- <MAbort- >SERR- <PERR-
     Latency: 16 (250ns min, 10500ns max), Cache Line Size: 32 bytes
     Interrupt: pin B routed to IRQ 63
     Region 0: Memory at 80081000 (32-bit, non-prefetchable) [size=4K]
     Capabilities: [40] Power Management version 2
Using PowerMac machine description
Total memory = 768MB; using 2048kB for hash table (at cfe00000)
Linux version 2.6.27-1.ydl61.5 (root at build1) (gcc version 4.1.2 20071124 
(Red Hat 4.1.2-42)) #1 SMP Fri Jun 26 20:22:13 EDT 2009
Found initrd at 0xc1b00000:0xc1e24800
Found UniNorth memory controller & host bridge @ 0xf8000000 revision: 0xd2
Mapped at 0xff7c0000
Found a Intrepid mac-io controller, rev: 0, mapped at 0xff740000
Processor NAP mode on idle enabled.
PowerMac motherboard: iBook G4
via-pmu: Server Mode is disabled
PMU driver v2 initialized for Core99, firmware: 0c
CPU maps initialized for 1 thread per core
  (thread shift is 0)
console [udbg0] enabled
Found UniNorth PCI host bridge@0x00000000f0000000. Firmware bus 
number: 0->0
PCI host bridge /pci at f0000000  ranges:
  MEM 0x00000000f1000000..0x00000000f1ffffff -> 0x00000000f1000000
   IO 0x00000000f0000000..0x00000000f07fffff -> 0x0000000000000000
  MEM 0x0000000090000000..0x000000009fffffff -> 0x0000000090000000
Found UniNorth PCI host bridge at 0x00000000f2000000. Firmware bus 
number: 0->0
PCI host bridge /pci at f2000000 (primary) ranges:
  MEM 0x00000000f3000000..0x00000000f3ffffff -> 0x00000000f3000000
   IO 0x00000000f2000000..0x00000000f27fffff -> 0x0000000000000000
  MEM 0x0000000080000000..0x000000008fffffff -> 0x0000000080000000
Found UniNorth PCI host bridge at 0x00000000f4000000. Firmware bus 
number: 0->0
PCI host bridge /pci at f4000000  ranges:
  MEM 0x00000000f5000000..0x00000000f5ffffff -> 0x00000000f5000000
   IO 0x00000000f4000000..0x00000000f47fffff -> 0x0000000000000000
nvram: Checking bank 0...
nvram: gen0=666, gen1=667
nvram: Active bank is: 1
nvram: OF partition at 0x410
nvram: XP partition at 0x1020
nvram: NR partition at 0x1120
Top of RAM: 0x30000000, Total RAM: 0x30000000
Memory hole size: 0MB
Zone PFN ranges:
   DMA      0x00000000 -> 0x00030000
   Normal   0x00030000 -> 0x00030000
   HighMem  0x00030000 -> 0x00030000
Movable zone start PFN for each node
early_node_map[1] active PFN ranges
     0: 0x00000000 -> 0x00030000
On node 0 totalpages: 196608
free_area_init_node: node 0, pgdat c054f960, node_mem_map c05c0000
   DMA zone: 195072 pages, LIFO batch:31
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 195072
Kernel command line: ro rhgb quiet root=LABEL=/
mpic: Setting up MPIC " MPIC 1   " version 1.2 at 80040000, max 4 CPUs
mpic: ISU size: 64, shift: 6, mask: 3f
mpic: Initializing for 64 sources
PID hash table entries: 4096 (order: 12, 16384 bytes)
GMT Delta read from XPRAM: 0 minutes, DST: off
time_init: decrementer frequency = 18.432000 MHz
time_init: processor frequency   = 1420.000000 MHz
clocksource: timebase mult[d9038e4] shift[22] registered
clockevent: decrementer mult[4b7] shift[16] cpu[0]
Console: colour dummy device 80x25
console handover: boot [udbg0] -> real [tty0]
Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
High memory: 0k
Memory: 767488k/786432k available (5288k kernel code, 18464k reserved, 
160k data, 304k bss, 236k init)
Calibrating delay loop... 36.73 BogoMIPS (lpj=73472)
Mount-cache hash table entries: 512
device-tree: Duplicate name in /cpus/PowerPC,G4 at 0, renamed to "l2-cache#1"
PowerMac SMP probe found 1 cpus
Brought up 1 CPUs
CPU0 attaching NULL sched-domain.
net_namespace: 764 bytes
NET: Registered protocol family 16
KeyWest i2c @0xf8001003 irq 42 /uni-n at f8000000/i2c at f8001000
  channel 1 bus /uni-n at f8000000/i2c at f8001000/i2c-bus at 1
KeyWest i2c @0x80018000 irq 26 /pci at f2000000/mac-io at 17/i2c at 18000
  channel 0 bus /pci at f2000000/mac-io at 17/i2c at 18000/i2c-bus at 0
PMU i2c /pci at f2000000/mac-io at 17/via-pmu at 16000/pmu-i2c
  channel 1 bus <multibus>
  channel 2 bus <multibus>
PCI: Probing PCI hardware
PCI: 0000:00:10.0 reg 10 32bit mmio: [98000000, 9fffffff]
PCI: 0000:00:10.0 reg 14 io port: [400, 4ff]
PCI: 0000:00:10.0 reg 18 32bit mmio: [90000000, 9000ffff]
PCI: 0000:00:10.0 reg 30 32bit mmio: [90020000, 9003ffff]
pci 0000:00:10.0: supports D1
pci 0000:00:10.0: supports D2
PCI: 0001:10:12.0 reg 10 32bit mmio: [80084000, 80085fff]
PCI: 0001:10:17.0 reg 10 32bit mmio: [80000000, 8007ffff]
PCI: 0001:10:18.0 reg 10 32bit mmio: [0, fff]
PCI: 0001:10:19.0 reg 10 32bit mmio: [0, fff]
PCI: 0001:10:1a.0 reg 10 32bit mmio: [80083000, 80083fff]
PCI: 0001:10:1b.0 reg 10 32bit mmio: [80082000, 80082fff]
pci 0001:10:1b.0: supports D1
pci 0001:10:1b.0: supports D2
pci 0001:10:1b.0: PME# supported from D0 D1 D2 D3hot D3cold
pci 0001:10:1b.0: PME# disabled
PCI: 0001:10:1b.1 reg 10 32bit mmio: [80081000, 80081fff]
pci 0001:10:1b.1: supports D1
pci 0001:10:1b.1: supports D2
pci 0001:10:1b.1: PME# supported from D0 D1 D2 D3hot D3cold
pci 0001:10:1b.1: PME# disabled
PCI: 0001:10:1b.2 reg 10 32bit mmio: [80080000, 800800ff]
pci 0001:10:1b.2: supports D1
pci 0001:10:1b.2: supports D2
pci 0001:10:1b.2: PME# supported from D0 D1 D2 D3hot D3cold
pci 0001:10:1b.2: PME# disabled
PCI: 0002:20:0d.0 reg 10 32bit mmio: [f5004000, f5007fff]
PCI: 0002:20:0e.0 reg 10 32bit mmio: [f5000000, f5000fff]
pci 0002:20:0e.0: supports D1
pci 0002:20:0e.0: supports D2
pci 0002:20:0e.0: PME# supported from D0 D1 D2 D3hot
pci 0002:20:0e.0: PME# disabled
PCI: 0002:20:0f.0 reg 10 32bit mmio: [f5200000, f53fffff]
PCI: 0002:20:0f.0 reg 30 32bit mmio: [f5100000, f51fffff]
bus: 00 index 0 io port: [802000, 1001fff]
bus: 00 index 1 mmio: [f1000000, f1ffffff]
bus: 00 index 2 mmio: [90000000, 9fffffff]
bus: 10 index 0 io port: [0, 7fffff]
bus: 10 index 1 mmio: [f3000000, f3ffffff]
bus: 10 index 2 mmio: [80000000, 8fffffff]
bus: 20 index 0 io port: [ff7fe000, ffffdfff]
bus: 20 index 1 mmio: [f5000000, f5ffffff]
SCSI subsystem initialized
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
NET: Registered protocol family 2
IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
TCP established hash table entries: 131072 (order: 8, 1048576 bytes)
TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
TCP: Hash tables configured (established 131072 bind 65536)
TCP reno registered
NET: Registered protocol family 1
checking if image is initramfs... it is
Freeing initrd memory: 3218k freed
Thermal assist unit not available
Registering PowerMac CPU frequency driver
Low: 710 Mhz, High: 1420 Mhz, Boot: 710 Mhz
audit: initializing netlink socket (disabled)
type=2000 audit(1486578060.803:1): initialized
VFS: Disk quotas dquot_6.5.1
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
squashfs: version 4.0 (2009/01/31) Phillip Lougher
SGI XFS with security attributes, no debug enabled
SGI XFS Quota Management subsystem
msgmni has been set to 1506
io scheduler noop registered
io scheduler anticipatory registered (default)
io scheduler deadline registered
io scheduler cfq registered
radeonfb 0000:00:10.0: enabling device (0006 -> 0007)
radeonfb (0000:00:10.0): Invalid ROM signature 0 should be 0xaa55
radeonfb: Retrieved PLL infos from Open Firmware
radeonfb: Reference=27.00 MHz (RefDiv=12) Memory=183.00 Mhz, 
System=210.00 MHz
radeonfb: PLL min 12000 max 35000
i2c-adapter i2c-2: unable to read EDID block.
i2c-adapter i2c-2: unable to read EDID block.
i2c-adapter i2c-2: unable to read EDID block.
radeonfb: Monitor 1 type LCD found
radeonfb: EDID probed
radeonfb: Monitor 2 type no found
radeonfb: Using Firmware dividers 0x00020074 from PPLL 0
radeonfb: Dynamic Clock Power Management enabled
Console: switching to colour frame buffer device 128x48
radeonfb: Backlight initialized (radeonbl0)
radeonfb (0000:00:10.0): ATI Radeon 4e56 "NV"
Generic RTC Driver v1.07
Generic non-volatile memory driver v1.1
Linux agpgart interface v0.103
[drm] Initialized drm 1.1.0 20060810
brd: module loaded
loop: module loaded
tun: Universal TUN/TAP device driver, 1.6
tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
MacIO PCI driver attached to Intrepid chipset
input: Macintosh mouse button emulation as /class/input/input0
apm_emu: PMU APM Emulation initialized.
adt746x: version 1 (supported)
adt746x: Thermostat bus: 1, address: 0x2e, limit_adjust: 0, fan_speed: -1
sensor 0: PWR/MEMORY BOTTOMSIDE
sensor 1: CPU BOTTOMSIDE
sensor 2: GPU BOTTOMSIDE
adb: starting probe task...
Uniform Multi-Platform E-IDE driver
ide-pmac 0002:20:0d.0: enabling device (0000 -> 0002)
adb devices: [2]: 2 c4 [7]: 7 1f
ADB keyboard at 2, handler 1
Detected ADB keyboard, type ISO, swapping keys.
input: ADB keyboard as /class/input/input1
input: ADB Powerbook buttons as /class/input/input2
adb: finished probe task...
ide-pmac: Found Apple UniNorth ATA-6 controller (PCI), bus ID 3, irq 39
Probing IDE interface ide0...
hda: TOSHIBA MK6025GAS, ATA DISK drive
hda: host max PIO4 wanted PIO255(auto-tune) selected PIO4
hda: UDMA/100 mode selected
ide0 at 0xf102a000-0xf102a070,0xf102a160 on irq 39
ide-pmac: Found Apple KeyLargo ATA-3 controller (macio), bus ID 0, irq 24
Probing IDE interface ide1...
hdc: MATSHITADVD-R UJ-845E, ATAPI CD/DVD-ROM drive
hdc: host max PIO4 wanted PIO255(auto-tune) selected PIO4
hdc: MWDMA2 mode selected
ide1 at 0xf101e000-0xf101e070,0xf101e160 on irq 24
hda: max request size: 512KiB
hda: 117210240 sectors (60011 MB), CHS=16383/255/63
hda: cache flushes supported
  hda: [mac] hda1 hda2 hda3 hda4 hda5
hdc: ATAPI 24X DVD-ROM DVD-R CD-R/RW drive, 2048kB Cache
Uniform CD-ROM driver Revision: 3.20
ide-floppy driver 1.00
st: Version 20080504, fixed bufsize 32768, s/g segs 256
Driver 'st' needs updating - please use bus_type methods
Driver 'sd' needs updating - please use bus_type methods
Driver 'sr' needs updating - please use bus_type methods
usbmon: debugfs is not available
ehci_hcd 0001:10:1b.2: enabling device (0004 -> 0006)
ehci_hcd 0001:10:1b.2: EHCI Host Controller
ehci_hcd 0001:10:1b.2: new USB bus registered, assigned bus number 1
ehci_hcd 0001:10:1b.2: irq 63, io mem 0x80080000
ehci_hcd 0001:10:1b.2: USB 2.0 started, EHCI 1.00, driver 10 Dec 2004
usb usb1: configuration #1 chosen from 1 choice
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 5 ports detected
ohci_hcd: 2006 August 04 USB 1.1 'Open' Host Controller (OHCI) Driver
Apple USB OHCI 0001:10:18.0 disabled by firmware
Apple USB OHCI 0001:10:19.0 disabled by firmware
ohci_hcd 0001:10:1a.0: enabling device (0000 -> 0002)
ohci_hcd 0001:10:1a.0: OHCI Host Controller
ohci_hcd 0001:10:1a.0: new USB bus registered, assigned bus number 2
ohci_hcd 0001:10:1a.0: irq 29, io mem 0x80083000
usb usb2: configuration #1 chosen from 1 choice
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 2 ports detected
ohci_hcd 0001:10:1b.0: enabling device (0000 -> 0002)
ohci_hcd 0001:10:1b.0: OHCI Host Controller
ohci_hcd 0001:10:1b.0: new USB bus registered, assigned bus number 3
ohci_hcd 0001:10:1b.0: irq 63, io mem 0x80082000
usb usb3: configuration #1 chosen from 1 choice
hub 3-0:1.0: USB hub found
hub 3-0:1.0: 3 ports detected
usb 2-1: new full speed USB device using ohci_hcd and address 2
ohci_hcd 0001:10:1b.1: enabling device (0000 -> 0002)
ohci_hcd 0001:10:1b.1: OHCI Host Controller
ohci_hcd 0001:10:1b.1: new USB bus registered, assigned bus number 4
ohci_hcd 0001:10:1b.1: irq 63, io mem 0x80081000
usb usb4: configuration #1 chosen from 1 choice
hub 4-0:1.0: USB hub found
hub 4-0:1.0: 2 ports detected
usb 2-1: configuration #1 chosen from 1 choice
Initializing USB Mass Storage driver...
usb 2-2: new full speed USB device using ohci_hcd and address 3
usb 2-2: configuration #1 chosen from 1 choice
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
mice: PS/2 mouse device common for all mice
appletouch: Geyser mode initialized.
input: appletouch as /class/input/input3
usbcore: registered new interface driver appletouch
i2c /dev entries driver
PowerMac i2c bus pmu 2 registered
PowerMac i2c bus pmu 1 registered
PowerMac i2c bus mac-io 0 registered
adt746x: ADT7467 initializing
adt746x: Lowering max temperatures from 69, 92, 101 to 70, 50, 70
PowerMac i2c bus uni-n 1 registered
md: linear personality registered for level -1
md: raid0 personality registered for level 0
md: raid1 personality registered for level 1
md: raid10 personality registered for level 10
usbcore: registered new interface driver hiddev
input: HID 05ac:1000 as /class/input/input4
input: USB HID v1.11 Keyboard [HID 05ac:1000] on usb-0001:10:1a.0-1
input: HID 05ac:1000 as /class/input/input5
input: USB HID v1.11 Mouse [HID 05ac:1000] on usb-0001:10:1a.0-1
usbcore: registered new interface driver usbhid
usbhid: v2.6:USB HID core driver
TCP cubic registered
Initializing XFRM netlink socket
NET: Registered protocol family 17
NET: Registered protocol family 15
ieee80211: 802.11 data/management/control stack, git-1.1.13
ieee80211: Copyright (C) 2004-2005 Intel Corporation 
<jketreno@linux.intel.com>
ieee80211_crypt: registered algorithm 'NULL'
ieee80211_crypt: registered algorithm 'WEP'
ieee80211_crypt: registered algorithm 'CCMP'
ieee80211_crypt: registered algorithm 'TKIP'
input: PMU as /class/input/input6
Freeing unused kernel memory: 236k init
kjournald starting.  Commit interval 5 seconds
EXT3-fs: mounted filesystem with ordered data mode.
b43-pci-bridge 0001:10:12.0: enabling device (0004 -> 0006)
ssb: Sonics Silicon Backplane found on PCI device 0001:10:12.0
ohci1394 0002:20:0e.0: enabling device (0000 -> 0002)
ohci1394: fw-host0: OHCI-1394 1.1 (PCI): IRQ=[40] 
MMIO=[f5000000-f50007ff]  Max Packet=[2048]  IR/IT contexts=[8/8]
sungem.c:v0.98 8/24/03 David S. Miller (davem at redhat.com)
PHY ID: 4061e4, addr: 0
eth0: Sun GEM (PCI) 10/100/1000BaseT Ethernet 00:14:51:aa:51:22
eth0: Found BCM5221 PHY
ieee1394: Host added: ID:BUS[0-00:1023]  GUID[001451fffeaa5122]
snd-powermac no longer handles any machines with a layout-id property in 
the device-tree, use snd-aoa.
b43-phy0: Broadcom 4318 WLAN found
b43-phy0 debug: Found PHY: Analog 3, Type 2, Revision 7
b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 8
b43-phy0 debug: DebugFS (CONFIG_DEBUG_FS) not enabled in kernel config
phy0: Selected rate control algorithm 'pid'
Broadcom 43xx driver loaded [ Features: PM, Firmware-ID: FW13 ]
snd-aoa-fabric-layout: found bus with layout 92
snd-aoa-fabric-layout: Using PMF GPIOs
snd-aoa-codec-tas: found tas3004
snd-aoa-fabric-layout: can use this codec
snd-aoa-codec-tas: tas found, addr 0x35 on 
/pci at f2000000/mac-io at 17/i2c at 18000/i2c-bus at 0/codec at 6a
NET: Registered protocol family 10
md: Autodetecting RAID arrays.
md: Scanned 0 and added 0 devices.
md: autorun ...
md: ... autorun DONE.
device-mapper: ioctl: 4.14.0-ioctl (2008-04-23) initialised: 
dm-devel at redhat.com
EXT3 FS on hda4, internal journal
kjournald starting.  Commit interval 5 seconds
EXT3 FS on hda3, internal journal
EXT3-fs: mounted filesystem with ordered data mode.
Adding 1566328k swap on /dev/hda5.  Priority:-1 extents:1 across:1566328k
warning: process `kudzu' used the deprecated sysctl system call with 1.23.
ip6_tables: (C) 2000-2006 Netfilter Core Team
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (12288 buckets, 49152 max)
CONFIG_NF_CT_ACCT is deprecated and will be removed soon. Plase use
nf_conntrack.acct=1 kernel paramater, acct=1 nf_conntrack module option or
sysctl net.netfilter.nf_conntrack_acct=1 to enable it.
ADDRCONF(NETDEV_UP): eth0: link is not ready
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
warning: `dbus-daemon' uses 32-bit capabilities (legacy support in use)
usb 2-1: usbfs: USBDEVFS_CONTROL failed cmd hid2hci rqt 64 rq 0 len 0 
ret -62
Bluetooth: Core ver 2.13
NET: Registered protocol family 31
Bluetooth: HCI device and connection manager initialized
Bluetooth: HCI socket layer initialized
usb 2-1: USB disconnect, address 2
Bluetooth: L2CAP ver 2.11
Bluetooth: L2CAP socket layer initialized
Bluetooth: RFCOMM socket layer initialized
Bluetooth: RFCOMM TTY layer initialized
Bluetooth: RFCOMM ver 1.10
usb 2-1: new full speed USB device using ohci_hcd and address 4
usb 2-1: configuration #1 chosen from 1 choice
Bluetooth: HCI USB driver ver 2.10
usbcore: registered new interface driver hci_usb
Bluetooth: HIDP (Human Interface Emulation) ver 1.2
firmware: requesting b43/ucode5.fw
firmware: requesting b43/pcm5.fw
firmware: requesting b43/b0g0initvals5.fw
firmware: requesting b43/b0g0bsinitvals5.fw
b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
b43-phy0 debug: Chip initialized
b43-phy0 debug: 32-bit DMA initialized
b43-phy0 debug: Wireless interface started
b43-phy0 debug: Adding Interface type 2
ADDRCONF(NETDEV_UP): wlan0: link is not ready
ADDRCONF(NETDEV_UP): eth0: link is not ready
b43-phy0 debug: Removing Interface type 2
b43-phy0 debug: Wireless interface stopped
b43-phy0 debug: DMA-32 rx_ring: Used slots 1/64, Failed frames 0/0 = 
0.0%, Average tries 0.00
b43-phy0 debug: DMA-32 tx_ring_AC_BK: Used slots 0/128, Failed frames 
0/0 = 0.0%, Average tries 0.00
b43-phy0 debug: DMA-32 tx_ring_AC_BE: Used slots 0/128, Failed frames 
0/0 = 0.0%, Average tries 0.00
b43-phy0 debug: DMA-32 tx_ring_AC_VI: Used slots 0/128, Failed frames 
0/0 = 0.0%, Average tries 0.00
b43-phy0 debug: DMA-32 tx_ring_AC_VO: Used slots 2/128, Failed frames 
0/11 = 0.0%, Average tries 1.00
b43-phy0 debug: DMA-32 tx_ring_mcast: Used slots 0/128, Failed frames 
0/0 = 0.0%, Average tries 0.00
ssb: Sonics Silicon Backplane found on PCI device 0001:10:12.0
b43-phy0: Broadcom 4318 WLAN found
b43-phy0 debug: Found PHY: Analog 3, Type 2, Revision 7
b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 8
b43-phy0 debug: DebugFS (CONFIG_DEBUG_FS) not enabled in kernel config
phy0: Selected rate control algorithm 'pid'
Broadcom 43xx driver loaded [ Features: PM, Firmware-ID: FW13 ]
warning: process `/usr/sbin/syste' used the deprecated sysctl system 
call with 1.23.
ssb: Sonics Silicon Backplane found on PCI device 0001:10:12.0
b43-phy0: Broadcom 4318 WLAN found
b43-phy0 debug: Found PHY: Analog 3, Type 2, Revision 7
b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 8
b43-phy0 debug: DebugFS (CONFIG_DEBUG_FS) not enabled in kernel config
phy0: Selected rate control algorithm 'pid'
Broadcom 43xx driver loaded [ Features: PM, Firmware-ID: FW13 ]
