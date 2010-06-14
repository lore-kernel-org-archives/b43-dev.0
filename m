From: Paulo Riquelme <olivaresx@gmail.com>
Date: Mon, 14 Jun 2010 00:51:54 -0400
Subject: installing b43 from wiki debian, but don't found wlan0 or eth2...
Message-ID: <AANLkTilnIIjK-F1cM3baCCLvMlYqCIb4xpVCkA7coBVb@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

hello list, i'm new in this list, and i don't speak english but i try
explain my problem:
- i install debian squeeze (i have kernel 2.6.32-5-amd64)
- i search and found
http://wiki.debian.org/bcm43xx#b43-b43legacy-squeezefor to install
drivers to my wifi (i have a compaq 515, from lspci -nn =>
06:00.0 Network controller [0280]: Broadcom Corporation BCM4312 802.11b/g
LP-PHY [14e4:4315] (rev 01))
- in the steps of the page i:
    - add repository contrib non-free
    - aptitude update
    - wireless-tools package is already installed (for default from the
installation)
    - aptitude install firmware-b43-lpphy-installer (my appropiate firmware)
    - after i  write in the shell modprobe b43
    - at time of verify my device has an available interface write iwconfig
and appear:
              lo   no wireless extension
              eth0     no wireless extension
              pan0    no wireless extension

     - i try writing dpkg-reconfigure firmware-b43-lpphy-installer

but nothing, part of a dmesg:
[    1.354473]  sda:sr0: scsi3-mmc drive: 24x/24x writer dvd-ram cd/rw
xa/form2 cdda tray
[    1.358141] Uniform CD-ROM driver Revision: 3.20
[    1.358267] sr 1:0:0:0: Attached scsi CD-ROM sr0
[    1.392172]  sda1 sda2 < sda5 sda6 >
[    1.417188] sd 0:0:0:0: [sda] Attached SCSI disk
[    1.422905] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    1.422951] sr 1:0:0:0: Attached scsi generic sg1 type 5
[    1.463694] usb 3-2: New USB device found, idVendor=04f2, idProduct=b159
[    1.463699] usb 3-2: New USB device strings: Mfr=2, Product=1,
SerialNumber=3
[    1.463702] usb 3-2: Product: CNF8243
[    1.463705] usb 3-2: Manufacturer: Chicony Electronics Co., Ltd.
[    1.463707] usb 3-2: SerialNumber: SN0001
[    1.463820] usb 3-2: configuration #1 chosen from 1 choice
[    1.832933] PM: Starting manual resume from disk
[    1.832939] PM: Resume from partition 8:5
[    1.832941] PM: Checking hibernation image.
[    1.833220] PM: Error -22 checking image file
[    1.833224] PM: Resume from disk failed.
[    1.891815] EXT4-fs (sda1): mounted filesystem with ordered data mode
[    3.822260] udev: starting version 157
[    4.436623] ACPI: AC Adapter [AC] (on-line)
[    4.442091] processor LNXCPU:00: registered as cooling_device11
[    4.442235] processor LNXCPU:01: registered as cooling_device12
[    4.472115] ACPI: WMI: Mapper loaded
[    4.514934] input: Sleep Button as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input2
[    4.514945] ACPI: Sleep Button [SLPB]
[    4.515026] input: Lid Switch as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input3
[    4.515210] ACPI: Lid Switch [LID]
[    4.515299] input: Power Button as
/devices/LNXSYSTM:00/LNXPWRBN:00/input/input4
[    4.515303] ACPI: Power Button [PWRF]
[    4.536679] input: PC Speaker as /devices/platform/pcspkr/input/input5
[    4.582542] ACPI: Battery Slot [BAT0] (battery present)
[    4.752731] acpi device:01: registered as cooling_device13
[    4.753393] input: Video Bus as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A03:00/device:00/LNXVIDEO:00/input/input6
[    4.753463] ACPI: Video Device [IGFX] (multi-head: yes  rom: no  post:
no)
[    4.851455] EDAC MC: Ver: 2.1.0 Jun  1 2010
[    4.852786] piix4_smbus 0000:00:14.0: SMBus Host Controller at 0xb00,
revision 0
[    4.876833] EDAC amd64_edac:  Ver: 3.2.0 Jun  1 2010
[    4.876906] EDAC amd64: This node reports that Memory ECC is currently
disabled, set F3x44[22] (0000:00:18.3).
[    4.876930] EDAC amd64: ECC disabled in the BIOS or no ECC capability,
module will not load.
[    4.876931]  Either enable ECC checking or force module loading by
setting 'ecc_enable_override'.
[    4.876933]  (Note that use of the override may cause unknown side
effects.)
[    4.876942] amd64_edac: probe of 0000:00:18.2 failed with error -22
[    4.894064] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    4.896598] shpchp 0000:00:01.0: HPC vendor_id 1022 device_id 9602 ss_vid
0 ss_did 0
[    4.896603] shpchp 0000:00:01.0: Cannot reserve MMIO region
[    4.896718] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[    5.000071] [drm] Initialized drm 1.1.0 20060810
[    5.007587] Linux video capture interface: v2.00
[    5.054532] uvcvideo: Found UVC 1.00 device CNF8243 (04f2:b159)
[    5.112309] input: CNF8243 as
/devices/pci0000:00/0000:00:13.2/usb3/3-2/3-2:1.0/input/input7
[    5.112406] usbcore: registered new interface driver uvcvideo
[    5.112649] USB Video Class driver (v0.1.0)
[    5.265438] Synaptics Touchpad, model: 1, fw: 7.2, id: 0x1c0b1, caps:
0xd04731/0xa40000/0xa0000
[    5.306094] input: SynPS/2 Synaptics TouchPad as
/devices/platform/i8042/serio4/input/input8
[    5.504529] [drm] radeon kernel modesetting enabled.
[    5.504625] radeon 0000:01:05.0: PCI INT A -> GSI 18 (level, low) -> IRQ
18
[    5.504631] radeon 0000:01:05.0: setting latency timer to 64
[    5.509277] [drm] radeon: Initializing kernel modesetting.
[    5.509410] [drm] register mmio base: 0xD4300000
[    5.509413] [drm] register mmio size: 65536
[    5.509568] ATOM BIOS: HP_Volna
[    5.509595] [drm] Clocks initialized !
[    5.509817] [drm] Detected VRAM RAM=256M, BAR=256M
[    5.509822] [drm] RAM width 32bits DDR
[    5.509969] [TTM] Zone  kernel: Available graphics memory: 1416272 kiB.
[    5.509994] [drm] radeon: 256M of VRAM memory ready
[    5.509996] [drm] radeon: 512M of GTT memory ready.
[    5.510049] [drm] radeon: irq initialized.
[    5.510053] [drm] GART: num cpu pages 131072, num gpu pages 131072
[    5.511350] [drm] Loading RS780 Microcode
[    5.511991] platform radeon_cp.0: firmware: requesting
radeon/RS780_pfp.bin
[    5.568606] r600_cp: Failed to load firmware "radeon/RS780_pfp.bin"
[    5.568689] [drm:r600_startup] *ERROR* Failed to load firmware!
[    5.568734] radeon 0000:01:05.0: disabling GPU acceleration
[    5.568807] radeon 0000:01:05.0: ffff8800ae20d200 unpin not necessary
[    5.568810] radeon 0000:01:05.0: ffff8800ae20d200 unpin not necessary
[    5.568836] [drm] Enabling audio support
[    5.569009] [drm] Radeon Display Connectors
[    5.569011] [drm] Connector 0:
[    5.569013] [drm]   VGA
[    5.569016] [drm]   DDC: 0x7e40 0x7e40 0x7e44 0x7e44 0x7e48 0x7e48 0x7e4c
0x7e4c
[    5.569018] [drm]   Encoders:
[    5.569020] [drm]     CRT1: INTERNAL_KLDSCP_DAC1
[    5.569023] [drm] Connector 1:
[    5.569024] [drm]   LVDS
[    5.569027] [drm]   DDC: 0x7e50 0x7e50 0x7e54 0x7e54 0x7e58 0x7e58 0x7e5c
0x7e5c
[    5.569029] [drm]   Encoders:
[    5.569031] [drm]     LCD1: INTERNAL_KLDSCP_LVTMA
[    5.710716] [drm] fb mappable at 0xC0040000
[    5.710719] [drm] vram apper at 0xC0000000
[    5.710721] [drm] size 4325376
[    5.710723] [drm] fb depth is 24
[    5.710725] [drm]    pitch is 5632
[    5.860137] HDA Intel 0000:00:14.2: power state changed by ACPI to D0
[    5.860228] HDA Intel 0000:00:14.2: power state changed by ACPI to D0
[    5.860272] HDA Intel 0000:00:14.2: PCI INT A -> GSI 16 (level, low) ->
IRQ 16
[    6.115425] input: HDA Digital PCBeep as
/devices/pci0000:00/0000:00:14.2/input/input9
[    6.129107] input: HDA ATI SB Mic at Ext Front Jack as
/devices/pci0000:00/0000:00:14.2/sound/card0/input10
[    6.129226] input: HDA ATI SB HP Out at Ext Front Jack as
/devices/pci0000:00/0000:00:14.2/sound/card0/input11
[    6.666574] Console: switching to colour frame buffer device 170x48
[    6.685199] fb0: radeondrmfb frame buffer device
[    6.685201] registered panic notifier
[    6.685222] [drm] Initialized radeon 2.0.0 20080528 for 0000:01:05.0 on
minor 0
[    7.113733] Adding 2928632k swap on /dev/sda5.  Priority:-1 extents:1
across:2928632k
[    7.472955] loop: module loaded
[    7.904456] EXT4-fs (sda6): mounted filesystem with ordered data mode
[    9.089262] sky2 eth0: enabling interface
[    9.090067] ADDRCONF(NETDEV_UP): eth0: link is not ready
[    9.189062] fuse init (API version 7.13)
[   10.080554] input: ACPI Virtual Keyboard Device as
/devices/virtual/input/input12
[   10.593874] sky2 eth0: Link is up at 100 Mbps, full duplex, flow control
both
[   10.594723] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   11.609917] powernow-k8: Found 1 AMD Athlon(tm)X2 DualCore QL-64
processors (2 cpu cores) (version 2.20.00)
[   11.609974] powernow-k8:    0 : pstate 0 (2100 MHz)
[   11.609976] powernow-k8:    1 : pstate 1 (1050 MHz)
[   13.888408] Bluetooth: Core ver 2.15
[   13.888944] NET: Registered protocol family 31
[   13.888948] Bluetooth: HCI device and connection manager initialized
[   13.888956] Bluetooth: HCI socket layer initialized
[   13.896134] Bluetooth: L2CAP ver 2.14
[   13.896137] Bluetooth: L2CAP socket layer initialized
[   13.926497] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   13.926503] Bluetooth: BNEP filters: protocol multicast
[   13.961350] Bridge firewalling registered
[   13.972668] Bluetooth: SCO (Voice Link) ver 0.6
[   13.972674] Bluetooth: SCO socket layer initialized
[   14.089834] lp: driver loaded but no devices found
[   14.104811] ppdev: user-space parallel port driver
[   21.504058] eth0: no IPv6 routers present
[   22.294929] CPU0 attaching NULL sched-domain.
[   22.294945] CPU1 attaching NULL sched-domain.
[   22.324223] CPU0 attaching sched-domain:
[   22.324233]  domain 0: span 0-1 level MC
[   22.324239]   groups: 0 1
[   22.324254] CPU1 attaching sched-domain:
[   22.324258]  domain 0: span 0-1 level MC
[   22.324263]   groups: 1 0
[ 2030.498525] cfg80211: Using static regulatory domain info
[ 2030.498532] cfg80211: Regulatory domain: US
[ 2030.498536]     (start_freq - end_freq @ bandwidth), (max_antenna_gain,
max_eirp)
[ 2030.498543]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (600 mBi, 2700
mBm)
[ 2030.498549]     (5170000 KHz - 5190000 KHz @ 40000 KHz), (600 mBi, 2300
mBm)
[ 2030.498554]     (5190000 KHz - 5210000 KHz @ 40000 KHz), (600 mBi, 2300
mBm)
[ 2030.498560]     (5210000 KHz - 5230000 KHz @ 40000 KHz), (600 mBi, 2300
mBm)
[ 2030.498566]     (5230000 KHz - 5330000 KHz @ 40000 KHz), (600 mBi, 2300
mBm)
[ 2030.498572]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (600 mBi, 3000
mBm)
[ 2030.499364] cfg80211: Calling CRDA for country: US
[ 2030.608612] Broadcom 43xx driver loaded [ Features: PMLS, Firmware-ID:
FW13 ]

a question: must remove the ssb module and put it in the blacklist???

i wait for your answer, thank you, sorry for my bad english jej,

Paulo.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100614/b20d94dd/attachment.html>
