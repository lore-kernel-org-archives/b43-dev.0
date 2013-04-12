From: Callum Hutchinson <callumhutchinson1@gmail.com>
Date: Fri, 12 Apr 2013 08:08:55 +0100
Subject: No subject
Message-ID: <CAKUzqopKB5h-NFoEPkMqakk5_90T8RYn5JVeF64GK76t15n2dQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

Hi Kernel Maintainers,

Tried to report this properly via email but got some formatting issues
coming back, I've attached the content of the original email report as
'Report.txt'.

It is the same file as found on comment 12 on Launchpad bug.
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1142385

Apologies for any missing information or lack of reporting experience :)
-------------- next part --------------
B43 Wireless Autoconnect Failure

I installed raring to test whether this bug existed in it and quantal too.
In the 3.8+ kernels there seems to be an issue with the b43 drivers, my
wireless works however it won't automatically connect to my hidden wireless
network. I have to go into network manager on each login and manually
select the option to connect, it takes a while but then the connection
works fine.
I know this didn't exist in 3.7.x because I was using those kernels
absolutely fine, it's only when I tried 3.8 on both quantal and raring that
the issue arose.
Note: I can't edit the wireless settings on my network as I am not the
administrator in my house.

ProblemType: Bug
DistroRelease: Ubuntu 13.04
Package: linux-image-3.8.0-9-generic 3.8.0-9.18
ProcVersionSignature: Ubuntu 3.8.0-9.18-generic 3.8.1
Uname: Linux 3.8.0-9-generic x86_64
ApportVersion: 2.9-0ubuntu2
Architecture: amd64
AudioDevicesInUse:
 USER PID ACCESS COMMAND
 /dev/snd/controlC0: callum 1770 F.... pulseaudio
                      callum 3234 F.... pulseaudio
CRDA:
 country GB:
  (2402 - 2482 @ 40), (N/A, 20)
  (5170 - 5250 @ 40), (N/A, 20)
  (5250 - 5330 @ 40), (N/A, 20), DFS
  (5490 - 5710 @ 40), (N/A, 27), DFS
Date: Sun Mar 3 16:13:52 2013
HibernationDevice: RESUME=UUID=53b96653-3e0d-426b-a911-9c34d8657655
InstallationDate: Installed on 2013-03-02 (1 days ago)
InstallationMedia: Ubuntu 13.04 "Raring Ringtail" - Alpha amd64 (20130301)
MachineType: Apple Inc. Macmini5,1
MarkForUpload: True
ProcFB: 0 inteldrmfb
ProcKernelCmdLine: BOOT_IMAGE=/boot/vmlinuz-3.8.0-9-generic
root=UUID=b4faf392-19de-4749-bd48-bbda7a7519b3 ro quiet splash vt.handoff=7
RelatedPackageVersions:
 linux-restricted-modules-3.8.0-9-generic N/A
 linux-backports-modules-3.8.0-9-generic N/A
 linux-firmware 1.103
SourcePackage: linux
UpgradeStatus: No upgrade log present (probably fresh install)
dmi.bios.date: 01/24/2012
dmi.bios.vendor: Apple Inc.
dmi.bios.version: MM51.88Z.0077.B10.1201241549
dmi.board.asset.tag: Base Board Asset Tag#
dmi.board.name: Mac-8ED6AF5B48C039E1
dmi.board.vendor: Apple Inc.
dmi.board.version: Macmini5,1
dmi.chassis.type: 16
dmi.chassis.vendor: Apple Inc.
dmi.chassis.version: Mac-8ED6AF5B48C039E1
dmi.modalias:
dmi:bvnAppleInc.:bvrMM51.88Z.0077.B10.1201241549:bd01/24/2012:svnAppleInc.:pnMacmini5,1:pvr1.0:rvnAppleInc.:rnMac-8ED6AF5B48C039E1:rvrMacmini5,1:cvnAppleInc.:ct16:cvrMac-8ED6AF5B48C039E1:
dmi.product.name: Macmini5,1
dmi.product.version: 1.0
dmi.sys.vendor: Apple Inc.

https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1142385

amd64, mac, b43, networking, wireless, kernel

Linux version 3.9.0-030900rc4-generic (apw at gomeisa) (gcc version 4.6.3
(Ubuntu/Linaro 4.6.3-1ubuntu5) ) #201303232035 SMP Sun Mar 24 00:36:21 UTC
2013

Description: Ubuntu Raring Ringtail (development branch)

Release: 13.04

If some fields are empty or look unusual you may have an old version.

Compare to the current minimal requirements in Documentation/Changes.



Linux callum-Macmini 3.9.0-030900rc4-generic #201303232035 SMP Sun Mar 24
00:36:21 UTC 2013 x86_64 x86_64 x86_64 GNU/Linux



Gnu C                  4.7

Gnu make               3.81

binutils               2.23.2

util-linux             2.20.1

mount                  support

module-init-tools      9

e2fsprogs              1.42.5

pcmciautils            018

PPP                    2.4.5

Linux C Library        2.17

Dynamic linker (ldd)   2.17

Procps                 3.3.3

Net-tools              1.60

Kbd                    1.15.5

Sh-utils               8.20

wireless-tools         30

Modules Loaded         btrfs raid6_pq zlib_deflate xor ufs qnx4 hfsplus hfs
minix ntfs msdos jfs xfs libcrc32c reiserfs ext2 hid_magicmouse joydev hidp
parport_pc ppdev bnep rfcomm coretemp kvm_intel arc4 kvm snd_hda_codec_hdmi
snd_hda_codec_cirrus snd_hda_intel b43 btusb ghash_clmulni_intel
snd_hda_codec aesni_intel bluetooth aes_x86_64 snd_hwdep xts snd_pcm lrw
gf128mul binfmt_misc ablk_helper mac80211 i915 snd_page_alloc cryptd
snd_seq_midi snd_seq_midi_event snd_rawmidi cfg80211 snd_seq drm_kms_helper
snd_seq_device drm snd_timer ssb snd apple_gmux i2c_algo_bit soundcore
microcode shpchp applesmc mei apple_bl mac_hid input_polldev lpc_ich bcma
video lp parport hid_generic hid_apple usbhid hid firewire_ohci sdhci_pci
sdhci firewire_core tg3 crc_itu_t ptp pps_core
processor : 0
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i5-2415M CPU @ 2.30GHz
stepping : 7
microcode : 0x1a
cpu MHz : 800.000
cache size : 3072 KB
physical id : 0
siblings : 4
core id : 0
cpu cores : 2
apicid : 0
initial apicid : 0
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3
cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes
xsave avx lahf_lm ida arat xsaveopt pln pts dtherm tpr_shadow vnmi
flexpriority ept vpid
bogomips : 4589.47
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 1
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i5-2415M CPU @ 2.30GHz
stepping : 7
microcode : 0x1a
cpu MHz : 800.000
cache size : 3072 KB
physical id : 0
siblings : 4
core id : 1
cpu cores : 2
apicid : 2
initial apicid : 2
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3
cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes
xsave avx lahf_lm ida arat xsaveopt pln pts dtherm tpr_shadow vnmi
flexpriority ept vpid
bogomips : 4589.47
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 2
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i5-2415M CPU @ 2.30GHz
stepping : 7
microcode : 0x1a
cpu MHz : 800.000
cache size : 3072 KB
physical id : 0
siblings : 4
core id : 0
cpu cores : 2
apicid : 1
initial apicid : 1
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3
cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes
xsave avx lahf_lm ida arat xsaveopt pln pts dtherm tpr_shadow vnmi
flexpriority ept vpid
bogomips : 4589.47
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 3
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i5-2415M CPU @ 2.30GHz
stepping : 7
microcode : 0x1a
cpu MHz : 800.000
cache size : 3072 KB
physical id : 0
siblings : 4
core id : 1
cpu cores : 2
apicid : 3
initial apicid : 3
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3
cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes
xsave avx lahf_lm ida arat xsaveopt pln pts dtherm tpr_shadow vnmi
flexpriority ept vpid
bogomips : 4589.47
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

btrfs 843910 0 - Live 0x0000000000000000
raid6_pq 97812 1 btrfs, Live 0x0000000000000000
zlib_deflate 27110 1 btrfs, Live 0x0000000000000000
xor 21411 1 btrfs, Live 0x0000000000000000
ufs 75149 0 - Live 0x0000000000000000
qnx4 13396 0 - Live 0x0000000000000000
hfsplus 103443 0 - Live 0x0000000000000000
hfs 54780 0 - Live 0x0000000000000000
minix 36387 0 - Live 0x0000000000000000
ntfs 101633 0 - Live 0x0000000000000000
msdos 17332 0 - Live 0x0000000000000000
jfs 186589 0 - Live 0x0000000000000000
xfs 888928 0 - Live 0x0000000000000000
libcrc32c 12615 2 btrfs,xfs, Live 0x0000000000000000
reiserfs 248298 0 - Live 0x0000000000000000
ext2 73755 0 - Live 0x0000000000000000
hid_magicmouse 13712 0 - Live 0x0000000000000000
joydev 17613 0 - Live 0x0000000000000000
hidp 22599 2 - Live 0x0000000000000000
parport_pc 32866 0 - Live 0x0000000000000000
ppdev 17106 0 - Live 0x0000000000000000
bnep 18258 2 - Live 0x0000000000000000
rfcomm 47863 12 - Live 0x0000000000000000
coretemp 13596 0 - Live 0x0000000000000000
kvm_intel 138733 0 - Live 0x0000000000000000
arc4 12573 2 - Live 0x0000000000000000
kvm 452835 1 kvm_intel, Live 0x0000000000000000
snd_hda_codec_hdmi 37407 1 - Live 0x0000000000000000
snd_hda_codec_cirrus 14090 1 - Live 0x0000000000000000
snd_hda_intel 44397 3 - Live 0x0000000000000000
b43 391985 0 - Live 0x0000000000000000
btusb 18291 0 - Live 0x0000000000000000
ghash_clmulni_intel 13259 0 - Live 0x0000000000000000
snd_hda_codec 190010 3
snd_hda_codec_hdmi,snd_hda_codec_cirrus,snd_hda_intel, Live
0x0000000000000000
aesni_intel 55449 2 - Live 0x0000000000000000
bluetooth 251354 31 hidp,bnep,rfcomm,btusb, Live 0x0000000000000000
aes_x86_64 17131 1 aesni_intel, Live 0x0000000000000000
snd_hwdep 13613 1 snd_hda_codec, Live 0x0000000000000000
xts 12922 1 aesni_intel, Live 0x0000000000000000
snd_pcm 102477 3 snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec, Live
0x0000000000000000
lrw 13294 1 aesni_intel, Live 0x0000000000000000
gf128mul 14951 2 xts,lrw, Live 0x0000000000000000
binfmt_misc 17540 1 - Live 0x0000000000000000
ablk_helper 13597 1 aesni_intel, Live 0x0000000000000000
mac80211 656112 1 b43, Live 0x0000000000000000
i915 631460 4 - Live 0x0000000000000000
snd_page_alloc 18798 2 snd_hda_intel,snd_pcm, Live 0x0000000000000000
cryptd 20501 3 ghash_clmulni_intel,aesni_intel,ablk_helper, Live
0x0000000000000000
snd_seq_midi 13324 0 - Live 0x0000000000000000
snd_seq_midi_event 14899 1 snd_seq_midi, Live 0x0000000000000000
snd_rawmidi 30417 1 snd_seq_midi, Live 0x0000000000000000
cfg80211 547072 2 b43,mac80211, Live 0x0000000000000000
snd_seq 61930 2 snd_seq_midi,snd_seq_midi_event, Live 0x0000000000000000
drm_kms_helper 49082 1 i915, Live 0x0000000000000000
snd_seq_device 14497 3 snd_seq_midi,snd_rawmidi,snd_seq, Live
0x0000000000000000
drm 295908 5 i915,drm_kms_helper, Live 0x0000000000000000
snd_timer 29989 2 snd_pcm,snd_seq, Live 0x0000000000000000
ssb 57592 1 b43, Live 0x0000000000000000
snd 69533 16
snd_hda_codec_hdmi,snd_hda_codec_cirrus,snd_hda_intel,snd_hda_codec,snd_hwdep,snd_pcm,snd_rawmidi,snd_seq,snd_seq_device,snd_timer,
Live 0x0000000000000000
apple_gmux 13406 0 - Live 0x0000000000000000
i2c_algo_bit 13564 1 i915, Live 0x0000000000000000
soundcore 12680 1 snd, Live 0x0000000000000000
microcode 22923 0 - Live 0x0000000000000000
shpchp 37201 0 - Live 0x0000000000000000
applesmc 19564 0 - Live 0x0000000000000000
mei 46555 0 - Live 0x0000000000000000
apple_bl 13673 1 apple_gmux, Live 0x0000000000000000
mac_hid 13253 0 - Live 0x0000000000000000
input_polldev 13896 1 applesmc, Live 0x0000000000000000
lpc_ich 17060 0 - Live 0x0000000000000000
bcma 41434 1 b43, Live 0x0000000000000000
video 19467 2 i915,apple_gmux, Live 0x0000000000000000
lp 17799 0 - Live 0x0000000000000000
parport 46562 3 parport_pc,ppdev,lp, Live 0x0000000000000000
hid_generic 12548 0 - Live 0x0000000000000000
hid_apple 13389 0 - Live 0x0000000000000000
usbhid 47346 0 - Live 0x0000000000000000
hid 101248 5 hid_magicmouse,hidp,hid_generic,hid_apple,usbhid, Live
0x0000000000000000
firewire_ohci 44864 0 - Live 0x0000000000000000
sdhci_pci 18720 0 - Live 0x0000000000000000
sdhci 33227 1 sdhci_pci, Live 0x0000000000000000
firewire_core 64836 1 firewire_ohci, Live 0x0000000000000000
tg3 165632 0 - Live 0x0000000000000000
crc_itu_t 12707 1 firewire_core, Live 0x0000000000000000
ptp 18668 1 tg3, Live 0x0000000000000000
pps_core 14080 1 ptp, Live 0x0000000000000000

0000-0cf7 : PCI Bus 0000:00
  0000-001f : dma1
  0020-0021 : pic1
  0040-0043 : timer0
  0050-0053 : timer1
  0060-0060 : keyboard
  0062-0062 : EC data
  0064-0064 : keyboard
  0066-0066 : EC cmd
  0070-0077 : rtc0
  0080-008f : dma page reg
  00a0-00a1 : pic2
  00c0-00df : dma2
  00f0-00ff : fpu
  0300-031f : applesmc
  0400-047f : pnp 00:04
    0400-0403 : ACPI PM1a_EVT_BLK
    0404-0405 : ACPI PM1a_CNT_BLK
    0408-040b : ACPI PM_TMR
    0410-0415 : ACPI CPU throttle
    0420-042f : ACPI GPE0_BLK
    0430-0433 : iTCO_wdt
    0450-0450 : ACPI PM2_CNT_BLK
    0460-047f : iTCO_wdt
  0500-057f : pnp 00:04
0cf8-0cff : PCI conf1
0d00-ffff : PCI Bus 0000:00
  1000-100f : pnp 00:04
  2000-203f : 0000:00:02.0
  2060-206f : 0000:00:1f.2
    2060-206f : ata_piix
  20c0-20df : 0000:00:1d.0
    20c0-20df : uhci_hcd
  2120-213f : 0000:00:1a.0
    2120-213f : uhci_hcd
  2140-2147 : 0000:00:1f.2
    2140-2147 : ata_piix
  2148-214f : 0000:00:1f.2
    2148-214f : ata_piix
  2158-215b : 0000:00:1f.2
    2158-215b : ata_piix
  215c-215f : 0000:00:1f.2
    215c-215f : ata_piix
  3000-3fff : PCI Bus 0000:06
  efa0-efbf : 0000:00:1f.3
  ffe0-ffef : 0000:00:1f.2
    ffe0-ffef : ata_piix
00000000-00000fff : reserved
00001000-0008efff : System RAM
0008f000-0008ffff : reserved
00090000-0009fbff : System RAM
0009fc00-000fffff : reserved
  000a0000-000bffff : PCI Bus 0000:00
  000c0000-000cedff : Video ROM
  000f0000-000fffff : System ROM
00100000-1fffffff : System RAM
  01000000-01710dd0 : Kernel code
  01710dd1-01cf3b7f : Kernel data
  01e3c000-01f75fff : Kernel bss
20000000-201fffff : reserved
  20000000-201fffff : pnp 00:09
20200000-3fffffff : System RAM
40000000-401fffff : reserved
  40000000-401fffff : pnp 00:09
40200000-8ad33fff : System RAM
8ad34000-8ad5efff : ACPI Non-volatile Storage
8ad5f000-8afa1fff : ACPI Tables
8afa2000-8affefff : reserved
8afff000-8affffff : ACPI Tables
8b000000-8f9fffff : reserved
8fa00000-feafffff : PCI Bus 0000:00
  90000000-9fffffff : 0000:00:02.0
  a0000000-a03fffff : 0000:00:02.0
  a0400000-a04fffff : PCI Bus 0000:02
    a0400000-a040ffff : 0000:02:00.0
      a0400000-a040ffff : tg3
    a0410000-a041ffff : 0000:02:00.0
      a0410000-a041ffff : tg3
    a0420000-a042ffff : 0000:02:00.1
      a0420000-a042ffff : mmc0
  a0500000-a05fffff : PCI Bus 0000:04
    a0500000-a05fffff : PCI Bus 0000:05
      a0500000-a0503fff : 0000:05:00.0
      a0504000-a05047ff : 0000:05:00.0
        a0504000-a05047ff : firewire_ohci
  a0600000-a06fffff : PCI Bus 0000:03
    a0600000-a0603fff : 0000:03:00.0
      a0600000-a0603fff : bcma-pci-bridge
  a0700000-a07fffff : PCI Bus 0000:02
  a0800000-a08fffff : PCI Bus 0000:01
  a0900000-a0903fff : 0000:00:1b.0
    a0900000-a0903fff : ICH HD audio
  a0906800-a0906bff : 0000:00:1d.7
    a0906800-a0906bff : ehci_hcd
  a0906c00-a0906fff : 0000:00:1a.7
    a0906c00-a0906fff : ehci_hcd
  a0907000-a09070ff : 0000:00:1f.3
  a0907100-a090710f : 0000:00:16.0
    a0907100-a090710f : mei
  a0a00000-a4efffff : PCI Bus 0000:06
  a4f00000-a8efffff : PCI Bus 0000:06
  e0000000-efffffff : reserved
    e0000000-efffffff : pnp 00:08
      e0000000-e9cfffff : PCI MMCONFIG 0000 [bus 00-9c]
fec00000-fec00fff : reserved
  fec00000-fec003ff : IOAPIC 0
fed00000-fed03fff : reserved
  fed00000-fed003ff : HPET 0
    fed00000-fed003ff : pnp 00:02
fed10000-fed13fff : reserved
fed18000-fed19fff : reserved
  fed18000-fed18fff : pnp 00:08
  fed19000-fed19fff : pnp 00:08
fed1c000-fed1ffff : reserved
  fed1c000-fed1ffff : pnp 00:08
    fed1f410-fed1f414 : iTCO_wdt
fed20000-fed3ffff : pnp 00:08
fed40000-fed44fff : PCI Bus 0000:00
fed45000-fed8ffff : pnp 00:08
fed90000-fed93fff : pnp 00:08
fee00000-fee00fff : Local APIC
  fee00000-fee00fff : reserved
ff800000-ffffffff : reserved
100000000-26fdfffff : System RAM
26fe00000-26fffffff : RAM buffer

AFCap: TP+ FLR+
AFCtrl: FLR-
AFStatus: TP-
Kernel driver in use: ehci-pci

00:1b.0 Audio device: Intel Corporation 6 Series/C200 Series Chipset Family
High Definition Audio Controller (rev 05)
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Interrupt: pin A routed to IRQ 47
Region 0: Memory@a0900000 (64-bit, non-prefetchable) [size=16K]
 Capabilities: [50] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=55mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [60] MSI: Enable+ Count=1/1 Maskable- 64bit+
 Address: 00000000fee0f00c  Data: 4162
Capabilities: [70] Express (v1) Root Complex Integrated Endpoint, MSI 00
 DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
ExtTag- RBE- FLReset+
 DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
 MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #0, Speed unknown, Width x0, ASPM unknown, Latency L0 <64ns,
L1 <1us
ClockPM- Surprise- LLActRep- BwNot-
 LnkCtl: ASPM Disabled; Disabled- Retrain- CommClk-
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed unknown, Width x0, TrErr- Train- SlotClk- DLActive- BWMgmt-
ABWMgmt-
Capabilities: [100 v1] Virtual Channel
 Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
Arb: Fixed- WRR32- WRR64- WRR128-
 Ctrl: ArbSelect=Fixed
Status: InProgress-
 VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
 Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=01
Status: NegoPending- InProgress-
 VC1: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
 Ctrl: Enable+ ID=1 ArbSelect=Fixed TC/VC=22
Status: NegoPending- InProgress-
 Capabilities: [130 v1] Root Complex Link
Desc: PortNumber=0f ComponentID=00 EltType=Config
 Link0: Desc: TargetPort=00 TargetComponent=00 AssocRCRB-
LinkType=MemMapped LinkValid+
 Addr: 00000000fed1c000
Kernel driver in use: snd_hda_intel

00:1c.0 PCI bridge: Intel Corporation 6 Series/C200 Series Chipset Family
PCI Express Root Port 1 (rev b5) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=02, subordinate=02, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0700000-a07fffff
 Prefetchable memory behind bridge: 00000000a0400000-00000000a04fffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal+ Fatal+ Unsupported+
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #1, Speed 5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns, L1
<16us
ClockPM- Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #0, PowerLimit 10.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet- LinkState+
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Range BC, TimeoutDis+ ARIFwd-
 DevCtl2: Completion Timeout: 260ms to 900ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 41d1
Capabilities: [90] Subsystem: Intel Corporation Apple MacBookPro8,2 [Core
i7, 15", 2011]
 Capabilities: [a0] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Kernel driver in use: pcieport

00:1c.1 PCI bridge: Intel Corporation 6 Series/C200 Series Chipset Family
PCI Express Root Port 2 (rev b5) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=03, subordinate=03, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0600000-a06fffff
 Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal+ Fatal+ Unsupported+
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #2, Speed 5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns, L1
<16us
ClockPM- Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #0, PowerLimit 10.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet- LinkState+
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Range BC, TimeoutDis+ ARIFwd-
 DevCtl2: Completion Timeout: 260ms to 900ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 41e1
Capabilities: [90] Subsystem: Intel Corporation Apple MacBookPro8,2 [Core
i7, 15", 2011]
 Capabilities: [a0] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Kernel driver in use: pcieport

00:1c.2 PCI bridge: Intel Corporation 6 Series/C200 Series Chipset Family
PCI Express Root Port 3 (rev b5) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=04, subordinate=05, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0500000-a05fffff
 Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal+ Fatal+ Unsupported+
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #3, Speed 5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1
<16us
ClockPM- Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk-
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #0, PowerLimit 10.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet- LinkState+
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Range BC, TimeoutDis+ ARIFwd-
 DevCtl2: Completion Timeout: 260ms to 900ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 4122
Capabilities: [90] Subsystem: Intel Corporation Apple MacBookPro8,2 [Core
i7, 15", 2011]
 Capabilities: [a0] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Kernel driver in use: pcieport

00:1d.0 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Universal Host Controller #1 (rev 05) (prog-if 00 [UHCI])
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin B routed to IRQ 19
Region 4: I/O ports@20c0 [size=32]
 Capabilities: [50] PCI Advanced Features
AFCap: TP+ FLR+
AFCtrl: FLR-
 AFStatus: TP-
Kernel driver in use: uhci_hcd

00:1d.7 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Enhanced Host Controller #1 (rev 05) (prog-if 20 [EHCI])
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0
 Interrupt: pin A routed to IRQ 22
Region 0: Memory@a0906800 (32-bit, non-prefetchable) [size=1K]
Capabilities: [50] Power Management version 2
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
 Capabilities: [58] Debug port: BAR=1 offset=00a0
Capabilities: [98] PCI Advanced Features
AFCap: TP+ FLR+
 AFCtrl: FLR-
AFStatus: TP-
Kernel driver in use: ehci-pci

00:1f.0 ISA bridge: Intel Corporation HM65 Express Chipset Family LPC
Controller (rev 05)
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Capabilities: [e0] Vendor Specific Information: Len=0c <?>
Kernel driver in use: lpc_ich

00:1f.2 IDE interface: Intel Corporation 6 Series/C200 Series Chipset
Family 4 port SATA IDE Controller (rev 05) (prog-if 8f [Master SecP SecO
PriP PriO])
Subsystem: Intel Corporation Device 7270
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin B routed to IRQ 19
Region 0: I/O ports at 2148 [size=8]
 Region 1: I/O ports at 215c [size=4]
Region 2: I/O ports at 2140 [size=8]
Region 3: I/O ports at 2158 [size=4]
 Region 4: I/O ports at 2060 [size=16]
Region 5: I/O ports@ffe0 [size=16]
Capabilities: [70] Power Management version 3
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
 Capabilities: [b0] PCI Advanced Features
AFCap: TP+ FLR+
AFCtrl: FLR-
 AFStatus: TP-
Kernel driver in use: ata_piix

00:1f.3 SMBus: Intel Corporation 6 Series/C200 Series Chipset Family SMBus
Controller (rev 05)
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Interrupt: pin C routed to IRQ 11
 Region 0: Memory at a0907000 (64-bit, non-prefetchable) [size=256]
Region 4: I/O ports@efa0 [size=32]

02:00.0 Ethernet controller: Broadcom Corporation NetXtreme BCM57765
Gigabit Ethernet PCIe (rev 10)
Subsystem: Broadcom Corporation NetXtreme BCM57765 Gigabit Ethernet PCIe
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Interrupt: pin A routed to IRQ 16
Region 0: Memory at a0400000 (64-bit, prefetchable) [size=64K]
 Region 2: Memory@a0410000 (64-bit, prefetchable) [size=64K]
Capabilities: [48] Power Management version 3
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
 Capabilities: [58] MSI: Enable- Count=1/8 Maskable- 64bit+
Address: 0000000000000000  Data: 0000
Capabilities: [a0] MSI-X: Enable+ Count=6 Masked-
 Vector table: BAR=2 offset=00000000
PBA: BAR=2 offset=00000120
Capabilities: [ac] Express (v2) Endpoint, MSI 00
 DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
 DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
RlxdOrd- ExtTag- PhantFunc- AuxPwr+ NoSnoop-
 MaxPayload 128 bytes, MaxReadReq 4096 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <2us, L1
<64us
ClockPM+ Surprise- LLActRep- BwNot-
 LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Advanced Error Reporting
UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
 CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 AERCap: First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
Capabilities: [13c v1] Device Serial Number 00-00-3c-07-54-52-c0-d1
 Capabilities: [150 v1] Power Budgeting <?>
Capabilities: [160 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Kernel driver in use: tg3

02:00.1 SD Host controller: Broadcom Corporation NetXtreme BCM57765 Memory
Card Reader (rev 10) (prog-if 01)
Subsystem: Broadcom Corporation Device 0000
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Interrupt: pin B routed to IRQ 17
Region 0: Memory@a0420000 (64-bit, prefetchable) [size=64K]
 Capabilities: [48] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
Capabilities: [58] MSI: Enable- Count=1/1 Maskable- 64bit+
 Address: 0000000000000000  Data: 0000
Capabilities: [ac] Express (v2) Endpoint, MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
 ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd+ ExtTag- PhantFunc- AuxPwr+ NoSnoop+
MaxPayload 128 bytes, MaxReadReq 4096 bytes
DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <2us, L1
<64us
ClockPM+ Surprise- LLActRep- BwNot-
 LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Advanced Error Reporting
UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
 CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 AERCap: First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
Capabilities: [150 v1] Power Budgeting <?>
 Capabilities: [160 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Kernel driver in use: sdhci-pci

03:00.0 Network controller: Broadcom Corporation BCM4331 802.11a/b/g/n (rev
02)
Subsystem: Apple Inc. Device 00e4
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Interrupt: pin A routed to IRQ 17
Region 0: Memory@a0600000 (64-bit, non-prefetchable) [size=16K]
Capabilities: [40] Power Management version 3
 Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=2 PME-
 Capabilities: [58] Vendor Specific Information: Len=78 <?>
Capabilities: [48] MSI: Enable- Count=1/1 Maskable- 64bit+
 Address: 0000000000000000  Data: 0000
Capabilities: [d0] Express (v1) Endpoint, MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 unlimited
 ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 512 bytes
DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <4us, L1
<64us
ClockPM+ Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt-
ABWMgmt-
Capabilities: [100 v1] Advanced Error Reporting
 UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UESvrt: DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
AERCap: First Error Pointer: 14, GenCap+ CGenEn- ChkCap+ ChkEn-
 Capabilities: [13c v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Capabilities: [160 v1] Device Serial Number 87-7d-6d-ff-ff-57-68-a8
 Capabilities: [16c v1] Power Budgeting <?>
Kernel driver in use: bcma-pci-bridge

04:00.0 PCI bridge: Texas Instruments XIO2213A/B/XIO2221 PCI Express to PCI
Bridge [Cheetah Express] (rev 01) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=04, secondary=05, subordinate=05, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0500000-a05fffff
 Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
Secondary status: 66MHz+ FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [50] Power Management version 3
Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
Bridge: PM- B3+
Capabilities: [60] MSI: Enable- Count=1/16 Maskable- 64bit+
 Address: 0000000000000000  Data: 0000
Capabilities: [80] Subsystem: Device 0000:0000
Capabilities: [90] Express (v1) PCI/PCI-X Bridge, MSI 00
 DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
 DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop+ BrConfRtry-
 MaxPayload 128 bytes, MaxReadReq 512 bytes
DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr- TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns,
L1 <16us
ClockPM+ Surprise- LLActRep- BwNot-
 LnkCtl: ASPM Disabled; Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
Capabilities: [100 v1] Advanced Error Reporting
 UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq+ ACSViol-
UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UESvrt: DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
AERCap: First Error Pointer: 14, GenCap+ CGenEn- ChkCap+ ChkEn-

05:00.0 FireWire (IEEE 1394): Texas Instruments XIO2213A/B/XIO2221
IEEE-1394b OHCI Controller [Cheetah Express] (rev 01) (prog-if 10 [OHCI])
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 248 (500ns min, 1000ns max), Cache Line Size: 64 bytes
 Interrupt: pin A routed to IRQ 18
Region 0: Memory at a0504000 (32-bit, non-prefetchable) [size=2K]
Region 1: Memory at a0500000 (32-bit, non-prefetchable) [size=16K]
 Capabilities: [44] Power Management version 3
Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold-)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME+
Kernel driver in use: firewire_ohci

callum@callum-Macmini:~$ sudo lspci -vvv
00:00.0 Host bridge: Intel Corporation 2nd Generation Core Processor Family
DRAM Controller (rev 09)
Subsystem: Apple Inc. Device 00e6
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ >SERR- <PERR- INTx-
 Latency: 0
Capabilities: [e0] Vendor Specific Information: Len=0c <?>

00:01.0 PCI bridge: Intel Corporation Xeon E3-1200/2nd Generation Core
Processor Family PCI Express Root Port (rev 09) (prog-if 00 [Normal decode])
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Bus: primary=00, secondary=01, subordinate=01, sec-latency=0
I/O behind bridge: 0000f000-00000fff
 Memory behind bridge: a0800000-a08fffff
Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
 Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- <SERR- <PERR-
BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
 PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
Capabilities: [88] Subsystem: Apple Inc. Device 00e6
 Capabilities: [80] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
 Address: fee0f00c  Data: 41b1
Capabilities: [a0] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr- TransPend-
 LnkCap: Port #2, Speed 5GT/s, Width x8, ASPM L0s L1, Latency L0 <1us, L1
<4us
ClockPM- Surprise- LLActRep- BwNot+
 LnkCtl: ASPM Disabled; RCB 64 bytes Disabled+ Retrain- CommClk-
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x0, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #1, PowerLimit 75.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet- Interlock-
 Changed: MRL- PresDet- LinkState-
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Not Supported, TimeoutDis- ARIFwd-
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -3.5dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Capabilities: [140 v1] Root Complex Link
 Desc: PortNumber=02 ComponentID=01 EltType=Config
Link0: Desc: TargetPort=00 TargetComponent=01 AssocRCRB- LinkType=MemMapped
LinkValid+
 Addr: 00000000fed19000
Kernel driver in use: pcieport

00:01.1 PCI bridge: Intel Corporation Xeon E3-1200/2nd Generation Core
Processor Family PCI Express Root Port (rev 09) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=06, subordinate=9c, sec-latency=0
I/O behind bridge: 00003000-00003fff
Memory behind bridge: a0a00000-a4efffff
 Prefetchable memory behind bridge: 00000000a4f00000-00000000a8efffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [88] Subsystem: Apple Inc. Device 00e6
Capabilities: [80] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
 Address: fee0f00c  Data: 41c1
Capabilities: [a0] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr- TransPend-
 LnkCap: Port #3, Speed 5GT/s, Width x8, ASPM L0s L1, Latency L0 <256ns, L1
<4us
ClockPM- Surprise- LLActRep- BwNot+
 LnkCtl: ASPM Disabled; RCB 64 bytes Disabled+ Retrain- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 5GT/s, Width x4, TrErr- Train- SlotClk+ DLActive- BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #2, PowerLimit 75.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet+ LinkState-
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Not Supported, TimeoutDis- ARIFwd-
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -3.5dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Capabilities: [140 v1] Root Complex Link
 Desc: PortNumber=03 ComponentID=01 EltType=Config
Link0: Desc: TargetPort=00 TargetComponent=01 AssocRCRB- LinkType=MemMapped
LinkValid+
 Addr: 00000000fed19000
Kernel driver in use: pcieport

00:02.0 VGA compatible controller: Intel Corporation 2nd Generation Core
Processor Family Integrated Graphics Controller (rev 09) (prog-if 00 [VGA
controller])
Subsystem: Apple Inc. Device 00e6
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin A routed to IRQ 46
Region 0: Memory at a0000000 (64-bit, non-prefetchable) [size=4M]
 Region 2: Memory at 90000000 (64-bit, prefetchable) [size=256M]
Region 4: I/O ports at 2000 [size=64]
 Expansion ROM@<unassigned> [disabled]
Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 4152
 Capabilities: [d0] Power Management version 2
Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [a4] PCI Advanced Features
AFCap: TP+ FLR+
 AFCtrl: FLR-
AFStatus: TP-
Kernel driver in use: i915

00:16.0 Communication controller: Intel Corporation 6 Series/C200 Series
Chipset Family MEI Controller #1 (rev 04)
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin A routed to IRQ 45
Region 0: Memory@a0907100 (64-bit, non-prefetchable) [size=16]
 Capabilities: [50] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [8c] MSI: Enable+ Count=1/1 Maskable- 64bit+
 Address: 00000000fee0f00c  Data: 4142
Kernel driver in use: mei

00:1a.0 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Universal Host Controller #5 (rev 05) (prog-if 00 [UHCI])
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0
 Interrupt: pin B routed to IRQ 21
Region 4: I/O ports@2120 [size=32]
Capabilities: [50] PCI Advanced Features
 AFCap: TP+ FLR+
AFCtrl: FLR-
AFStatus: TP-
 Kernel driver in use: uhci_hcd

00:1a.7 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Enhanced Host Controller #2 (rev 05) (prog-if 20 [EHCI])
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0
 Interrupt: pin A routed to IRQ 23
Region 0: Memory@a0906c00 (32-bit, non-prefetchable) [size=1K]
Capabilities: [50] Power Management version 2
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
 Capabilities: [58] Debug port: BAR=1 offset=00a0
Capabilities: [98] PCI Advanced Features
AFCap: TP+ FLR+
 AFCtrl: FLR-
AFStatus: TP-
Kernel driver in use: ehci-pci

00:1b.0 Audio device: Intel Corporation 6 Series/C200 Series Chipset Family
High Definition Audio Controller (rev 05)
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Interrupt: pin A routed to IRQ 47
Region 0: Memory@a0900000 (64-bit, non-prefetchable) [size=16K]
 Capabilities: [50] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=55mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [60] MSI: Enable+ Count=1/1 Maskable- 64bit+
 Address: 00000000fee0f00c  Data: 4162
Capabilities: [70] Express (v1) Root Complex Integrated Endpoint, MSI 00
 DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
ExtTag- RBE- FLReset+
 DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
 MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #0, Speed unknown, Width x0, ASPM unknown, Latency L0 <64ns,
L1 <1us
ClockPM- Surprise- LLActRep- BwNot-
 LnkCtl: ASPM Disabled; Disabled- Retrain- CommClk-
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed unknown, Width x0, TrErr- Train- SlotClk- DLActive- BWMgmt-
ABWMgmt-
Capabilities: [100 v1] Virtual Channel
 Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
Arb: Fixed- WRR32- WRR64- WRR128-
 Ctrl: ArbSelect=Fixed
Status: InProgress-
 VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
 Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=01
Status: NegoPending- InProgress-
 VC1: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
 Ctrl: Enable+ ID=1 ArbSelect=Fixed TC/VC=22
Status: NegoPending- InProgress-
 Capabilities: [130 v1] Root Complex Link
Desc: PortNumber=0f ComponentID=00 EltType=Config
 Link0: Desc: TargetPort=00 TargetComponent=00 AssocRCRB-
LinkType=MemMapped LinkValid+
 Addr: 00000000fed1c000
Kernel driver in use: snd_hda_intel

00:1c.0 PCI bridge: Intel Corporation 6 Series/C200 Series Chipset Family
PCI Express Root Port 1 (rev b5) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=02, subordinate=02, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0700000-a07fffff
 Prefetchable memory behind bridge: 00000000a0400000-00000000a04fffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal+ Fatal+ Unsupported+
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #1, Speed 5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns, L1
<16us
ClockPM- Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #0, PowerLimit 10.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet- LinkState+
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Range BC, TimeoutDis+ ARIFwd-
 DevCtl2: Completion Timeout: 260ms to 900ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 41d1
Capabilities: [90] Subsystem: Intel Corporation Apple MacBookPro8,2 [Core
i7, 15", 2011]
 Capabilities: [a0] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Kernel driver in use: pcieport

00:1c.1 PCI bridge: Intel Corporation 6 Series/C200 Series Chipset Family
PCI Express Root Port 2 (rev b5) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=03, subordinate=03, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0600000-a06fffff
 Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal+ Fatal+ Unsupported+
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #2, Speed 5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns, L1
<16us
ClockPM- Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #0, PowerLimit 10.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet- LinkState+
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Range BC, TimeoutDis+ ARIFwd-
 DevCtl2: Completion Timeout: 260ms to 900ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 41e1
Capabilities: [90] Subsystem: Intel Corporation Apple MacBookPro8,2 [Core
i7, 15", 2011]
 Capabilities: [a0] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Kernel driver in use: pcieport

00:1c.2 PCI bridge: Intel Corporation 6 Series/C200 Series Chipset Family
PCI Express Root Port 3 (rev b5) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=04, subordinate=05, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0500000-a05fffff
 Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal+ Fatal+ Unsupported+
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #3, Speed 5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1
<16us
ClockPM- Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk-
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #0, PowerLimit 10.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet- LinkState+
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Range BC, TimeoutDis+ ARIFwd-
 DevCtl2: Completion Timeout: 260ms to 900ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 4122
Capabilities: [90] Subsystem: Intel Corporation Apple MacBookPro8,2 [Core
i7, 15", 2011]
 Capabilities: [a0] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Kernel driver in use: pcieport

00:1d.0 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Universal Host Controller #1 (rev 05) (prog-if 00 [UHCI])
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin B routed to IRQ 19
Region 4: I/O ports@20c0 [size=32]
 Capabilities: [50] PCI Advanced Features
AFCap: TP+ FLR+
AFCtrl: FLR-
 AFStatus: TP-
Kernel driver in use: uhci_hcd

00:1d.7 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Enhanced Host Controller #1 (rev 05) (prog-if 20 [EHCI])
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0
 Interrupt: pin A routed to IRQ 22
Region 0: Memory@a0906800 (32-bit, non-prefetchable) [size=1K]
Capabilities: [50] Power Management version 2
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
 Capabilities: [58] Debug port: BAR=1 offset=00a0
Capabilities: [98] PCI Advanced Features
AFCap: TP+ FLR+
 AFCtrl: FLR-
AFStatus: TP-
Kernel driver in use: ehci-pci

00:1f.0 ISA bridge: Intel Corporation HM65 Express Chipset Family LPC
Controller (rev 05)
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Capabilities: [e0] Vendor Specific Information: Len=0c <?>
Kernel driver in use: lpc_ich

00:1f.2 IDE interface: Intel Corporation 6 Series/C200 Series Chipset
Family 4 port SATA IDE Controller (rev 05) (prog-if 8f [Master SecP SecO
PriP PriO])
Subsystem: Intel Corporation Device 7270
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin B routed to IRQ 19
Region 0: I/O ports at 2148 [size=8]
 Region 1: I/O ports at 215c [size=4]
Region 2: I/O ports at 2140 [size=8]
Region 3: I/O ports at 2158 [size=4]
 Region 4: I/O ports at 2060 [size=16]
Region 5: I/O ports@ffe0 [size=16]
Capabilities: [70] Power Management version 3
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
 Capabilities: [b0] PCI Advanced Features
AFCap: TP+ FLR+
AFCtrl: FLR-
 AFStatus: TP-
Kernel driver in use: ata_piix

00:1f.3 SMBus: Intel Corporation 6 Series/C200 Series Chipset Family SMBus
Controller (rev 05)
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Interrupt: pin C routed to IRQ 11
 Region 0: Memory at a0907000 (64-bit, non-prefetchable) [size=256]
Region 4: I/O ports@efa0 [size=32]

02:00.0 Ethernet controller: Broadcom Corporation NetXtreme BCM57765
Gigabit Ethernet PCIe (rev 10)
Subsystem: Broadcom Corporation NetXtreme BCM57765 Gigabit Ethernet PCIe
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Interrupt: pin A routed to IRQ 16
Region 0: Memory at a0400000 (64-bit, prefetchable) [size=64K]
 Region 2: Memory@a0410000 (64-bit, prefetchable) [size=64K]
Capabilities: [48] Power Management version 3
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
 Capabilities: [58] MSI: Enable- Count=1/8 Maskable- 64bit+
Address: 0000000000000000  Data: 0000
Capabilities: [a0] MSI-X: Enable+ Count=6 Masked-
 Vector table: BAR=2 offset=00000000
PBA: BAR=2 offset=00000120
Capabilities: [ac] Express (v2) Endpoint, MSI 00
 DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
 DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
RlxdOrd- ExtTag- PhantFunc- AuxPwr+ NoSnoop-
 MaxPayload 128 bytes, MaxReadReq 4096 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <2us, L1
<64us
ClockPM+ Surprise- LLActRep- BwNot-
 LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Advanced Error Reporting
UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
 CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 AERCap: First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
Capabilities: [13c v1] Device Serial Number 00-00-3c-07-54-52-c0-d1
 Capabilities: [150 v1] Power Budgeting <?>
Capabilities: [160 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Kernel driver in use: tg3

02:00.1 SD Host controller: Broadcom Corporation NetXtreme BCM57765 Memory
Card Reader (rev 10) (prog-if 01)
Subsystem: Broadcom Corporation Device 0000
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Interrupt: pin B routed to IRQ 17
Region 0: Memory@a0420000 (64-bit, prefetchable) [size=64K]
 Capabilities: [48] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
Capabilities: [58] MSI: Enable- Count=1/1 Maskable- 64bit+
 Address: 0000000000000000  Data: 0000
Capabilities: [ac] Express (v2) Endpoint, MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
 ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd+ ExtTag- PhantFunc- AuxPwr+ NoSnoop+
MaxPayload 128 bytes, MaxReadReq 4096 bytes
DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <2us, L1
<64us
ClockPM+ Surprise- LLActRep- BwNot-
 LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Advanced Error Reporting
UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
 CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 AERCap: First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
Capabilities: [150 v1] Power Budgeting <?>
 Capabilities: [160 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Kernel driver in use: sdhci-pci

03:00.0 Network controller: Broadcom Corporation BCM4331 802.11a/b/g/n (rev
02)
Subsystem: Apple Inc. Device 00e4
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Interrupt: pin A routed to IRQ 17
Region 0: Memory@a0600000 (64-bit, non-prefetchable) [size=16K]
Capabilities: [40] Power Management version 3
 Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=2 PME-
 Capabilities: [58] Vendor Specific Information: Len=78 <?>
Capabilities: [48] MSI: Enable- Count=1/1 Maskable- 64bit+
 Address: 0000000000000000  Data: 0000
Capabilities: [d0] Express (v1) Endpoint, MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 unlimited
 ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 512 bytes
DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <4us, L1
<64us
ClockPM+ Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt-
ABWMgmt-
Capabilities: [100 v1] Advanced Error Reporting
 UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UESvrt: DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
AERCap: First Error Pointer: 14, GenCap+ CGenEn- ChkCap+ ChkEn-
 Capabilities: [13c v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Capabilities: [160 v1] Device Serial Number 87-7d-6d-ff-ff-57-68-a8
 Capabilities: [16c v1] Power Budgeting <?>
Kernel driver in use: bcma-pci-bridge

04:00.0 PCI bridge: Texas Instruments XIO2213A/B/XIO2221 PCI Express to PCI
Bridge [Cheetah Express] (rev 01) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=04, secondary=05, subordinate=05, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0500000-a05fffff
 Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
Secondary status: 66MHz+ FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [50] Power Management version 3
Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
Bridge: PM- B3+
Capabilities: [60] MSI: Enable- Count=1/16 Maskable- 64bit+
 Address: 0000000000000000  Data: 0000
Capabilities: [80] Subsystem: Device 0000:0000
Capabilities: [90] Express (v1) PCI/PCI-X Bridge, MSI 00
 DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
 DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop+ BrConfRtry-
 MaxPayload 128 bytes, MaxReadReq 512 bytes
DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr- TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns,
L1 <16us
ClockPM+ Surprise- LLActRep- BwNot-
 LnkCtl: ASPM Disabled; Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
Capabilities: [100 v1] Advanced Error Reporting
 UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq+ ACSViol-
UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UESvrt: DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
AERCap: First Error Pointer: 14, GenCap+ CGenEn- ChkCap+ ChkEn-

05:00.0 FireWire (IEEE 1394): Texas Instruments XIO2213A/B/XIO2221
IEEE-1394b OHCI Controller [Cheetah Express] (rev 01) (prog-if 10 [OHCI])
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 248 (500ns min, 1000ns max), Cache Line Size: 64 bytes
 Interrupt: pin A routed to IRQ 18
Region 0: Memory at a0504000 (32-bit, non-prefetchable) [size=2K]
Region 1: Memory at a0500000 (32-bit, non-prefetchable) [size=16K]
 Capabilities: [44] Power Management version 3
Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold-)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME+
Kernel driver in use: firewire_ohci

callum at callum-Macmini:~$ clear

callum@callum-Macmini:~$ sudo lspci -vvv
00:00.0 Host bridge: Intel Corporation 2nd Generation Core Processor Family
DRAM Controller (rev 09)
 Subsystem: Apple Inc. Device 00e6
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ >SERR- <PERR- INTx-
Latency: 0
 Capabilities: [e0] Vendor Specific Information: Len=0c <?>

00:01.0 PCI bridge: Intel Corporation Xeon E3-1200/2nd Generation Core
Processor Family PCI Express Root Port (rev 09) (prog-if 00 [Normal decode])
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Bus: primary=00, secondary=01, subordinate=01, sec-latency=0
I/O behind bridge: 0000f000-00000fff
 Memory behind bridge: a0800000-a08fffff
Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
 Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- <SERR- <PERR-
BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
 PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
Capabilities: [88] Subsystem: Apple Inc. Device 00e6
 Capabilities: [80] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
 Address: fee0f00c  Data: 41b1
Capabilities: [a0] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr- TransPend-
 LnkCap: Port #2, Speed 5GT/s, Width x8, ASPM L0s L1, Latency L0 <1us, L1
<4us
ClockPM- Surprise- LLActRep- BwNot+
 LnkCtl: ASPM Disabled; RCB 64 bytes Disabled+ Retrain- CommClk-
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x0, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #1, PowerLimit 75.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet- Interlock-
 Changed: MRL- PresDet- LinkState-
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Not Supported, TimeoutDis- ARIFwd-
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -3.5dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Capabilities: [140 v1] Root Complex Link
 Desc: PortNumber=02 ComponentID=01 EltType=Config
Link0: Desc: TargetPort=00 TargetComponent=01 AssocRCRB- LinkType=MemMapped
LinkValid+
 Addr: 00000000fed19000
Kernel driver in use: pcieport

00:01.1 PCI bridge: Intel Corporation Xeon E3-1200/2nd Generation Core
Processor Family PCI Express Root Port (rev 09) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=06, subordinate=9c, sec-latency=0
I/O behind bridge: 00003000-00003fff
Memory behind bridge: a0a00000-a4efffff
 Prefetchable memory behind bridge: 00000000a4f00000-00000000a8efffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [88] Subsystem: Apple Inc. Device 00e6
Capabilities: [80] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
 Address: fee0f00c  Data: 41c1
Capabilities: [a0] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr- TransPend-
 LnkCap: Port #3, Speed 5GT/s, Width x8, ASPM L0s L1, Latency L0 <256ns, L1
<4us
ClockPM- Surprise- LLActRep- BwNot+
 LnkCtl: ASPM Disabled; RCB 64 bytes Disabled+ Retrain- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 5GT/s, Width x4, TrErr- Train- SlotClk+ DLActive- BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #2, PowerLimit 75.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet+ LinkState-
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Not Supported, TimeoutDis- ARIFwd-
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -3.5dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Capabilities: [140 v1] Root Complex Link
 Desc: PortNumber=03 ComponentID=01 EltType=Config
Link0: Desc: TargetPort=00 TargetComponent=01 AssocRCRB- LinkType=MemMapped
LinkValid+
 Addr: 00000000fed19000
Kernel driver in use: pcieport

00:02.0 VGA compatible controller: Intel Corporation 2nd Generation Core
Processor Family Integrated Graphics Controller (rev 09) (prog-if 00 [VGA
controller])
Subsystem: Apple Inc. Device 00e6
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin A routed to IRQ 46
Region 0: Memory at a0000000 (64-bit, non-prefetchable) [size=4M]
 Region 2: Memory at 90000000 (64-bit, prefetchable) [size=256M]
Region 4: I/O ports at 2000 [size=64]
 Expansion ROM@<unassigned> [disabled]
Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 4152
 Capabilities: [d0] Power Management version 2
Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [a4] PCI Advanced Features
AFCap: TP+ FLR+
 AFCtrl: FLR-
AFStatus: TP-
Kernel driver in use: i915

00:16.0 Communication controller: Intel Corporation 6 Series/C200 Series
Chipset Family MEI Controller #1 (rev 04)
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin A routed to IRQ 45
Region 0: Memory@a0907100 (64-bit, non-prefetchable) [size=16]
 Capabilities: [50] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [8c] MSI: Enable+ Count=1/1 Maskable- 64bit+
 Address: 00000000fee0f00c  Data: 4142
Kernel driver in use: mei

00:1a.0 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Universal Host Controller #5 (rev 05) (prog-if 00 [UHCI])
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0
 Interrupt: pin B routed to IRQ 21
Region 4: I/O ports@2120 [size=32]
Capabilities: [50] PCI Advanced Features
 AFCap: TP+ FLR+
AFCtrl: FLR-
AFStatus: TP-
 Kernel driver in use: uhci_hcd

00:1a.7 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Enhanced Host Controller #2 (rev 05) (prog-if 20 [EHCI])
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0
 Interrupt: pin A routed to IRQ 23
Region 0: Memory@a0906c00 (32-bit, non-prefetchable) [size=1K]
Capabilities: [50] Power Management version 2
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
 Capabilities: [58] Debug port: BAR=1 offset=00a0
Capabilities: [98] PCI Advanced Features
AFCap: TP+ FLR+
 AFCtrl: FLR-
AFStatus: TP+
Kernel driver in use: ehci-pci

00:1b.0 Audio device: Intel Corporation 6 Series/C200 Series Chipset Family
High Definition Audio Controller (rev 05)
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Interrupt: pin A routed to IRQ 47
Region 0: Memory@a0900000 (64-bit, non-prefetchable) [size=16K]
 Capabilities: [50] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=55mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [60] MSI: Enable+ Count=1/1 Maskable- 64bit+
 Address: 00000000fee0f00c  Data: 4162
Capabilities: [70] Express (v1) Root Complex Integrated Endpoint, MSI 00
 DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
ExtTag- RBE- FLReset+
 DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
 MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #0, Speed unknown, Width x0, ASPM unknown, Latency L0 <64ns,
L1 <1us
ClockPM- Surprise- LLActRep- BwNot-
 LnkCtl: ASPM Disabled; Disabled- Retrain- CommClk-
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed unknown, Width x0, TrErr- Train- SlotClk- DLActive- BWMgmt-
ABWMgmt-
Capabilities: [100 v1] Virtual Channel
 Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
Arb: Fixed- WRR32- WRR64- WRR128-
 Ctrl: ArbSelect=Fixed
Status: InProgress-
 VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
 Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=01
Status: NegoPending- InProgress-
 VC1: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
 Ctrl: Enable+ ID=1 ArbSelect=Fixed TC/VC=22
Status: NegoPending- InProgress-
 Capabilities: [130 v1] Root Complex Link
Desc: PortNumber=0f ComponentID=00 EltType=Config
 Link0: Desc: TargetPort=00 TargetComponent=00 AssocRCRB-
LinkType=MemMapped LinkValid+
 Addr: 00000000fed1c000
Kernel driver in use: snd_hda_intel

00:1c.0 PCI bridge: Intel Corporation 6 Series/C200 Series Chipset Family
PCI Express Root Port 1 (rev b5) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=02, subordinate=02, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0700000-a07fffff
 Prefetchable memory behind bridge: 00000000a0400000-00000000a04fffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal+ Fatal+ Unsupported+
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #1, Speed 5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns, L1
<16us
ClockPM- Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #0, PowerLimit 10.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet- LinkState+
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Range BC, TimeoutDis+ ARIFwd-
 DevCtl2: Completion Timeout: 260ms to 900ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 41d1
Capabilities: [90] Subsystem: Intel Corporation Apple MacBookPro8,2 [Core
i7, 15", 2011]
 Capabilities: [a0] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Kernel driver in use: pcieport

00:1c.1 PCI bridge: Intel Corporation 6 Series/C200 Series Chipset Family
PCI Express Root Port 2 (rev b5) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=03, subordinate=03, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0600000-a06fffff
 Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal+ Fatal+ Unsupported+
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #2, Speed 5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns, L1
<16us
ClockPM- Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #0, PowerLimit 10.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet- LinkState+
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Range BC, TimeoutDis+ ARIFwd-
 DevCtl2: Completion Timeout: 260ms to 900ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 41e1
Capabilities: [90] Subsystem: Intel Corporation Apple MacBookPro8,2 [Core
i7, 15", 2011]
 Capabilities: [a0] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Kernel driver in use: pcieport

00:1c.2 PCI bridge: Intel Corporation 6 Series/C200 Series Chipset Family
PCI Express Root Port 3 (rev b5) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=00, secondary=04, subordinate=05, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0500000-a05fffff
 Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
 ExtTag- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal+ Fatal+ Unsupported+
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 128 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #3, Speed 5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1
<16us
ClockPM- Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk-
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt+
ABWMgmt-
SltCap: AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
 Slot #0, PowerLimit 10.000W; Interlock- NoCompl+
SltCtl: Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
 Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
SltSta: Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
 Changed: MRL- PresDet- LinkState+
RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
 RootCap: CRSVisible-
RootSta: PME ReqID 0000, PMEStatus- PMEPending-
DevCap2: Completion Timeout: Range BC, TimeoutDis+ ARIFwd-
 DevCtl2: Completion Timeout: 260ms to 900ms, TimeoutDis- ARIFwd-
LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
Address: fee0f00c  Data: 4122
Capabilities: [90] Subsystem: Intel Corporation Apple MacBookPro8,2 [Core
i7, 15", 2011]
 Capabilities: [a0] Power Management version 2
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Kernel driver in use: pcieport

00:1d.0 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Universal Host Controller #1 (rev 05) (prog-if 00 [UHCI])
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin B routed to IRQ 19
Region 4: I/O ports@20c0 [size=32]
 Capabilities: [50] PCI Advanced Features
AFCap: TP+ FLR+
AFCtrl: FLR-
 AFStatus: TP-
Kernel driver in use: uhci_hcd

00:1d.7 USB controller: Intel Corporation 6 Series/C200 Series Chipset
Family USB Enhanced Host Controller #1 (rev 05) (prog-if 20 [EHCI])
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0
 Interrupt: pin A routed to IRQ 22
Region 0: Memory@a0906800 (32-bit, non-prefetchable) [size=1K]
Capabilities: [50] Power Management version 2
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
 Capabilities: [58] Debug port: BAR=1 offset=00a0
Capabilities: [98] PCI Advanced Features
AFCap: TP+ FLR+
 AFCtrl: FLR-
AFStatus: TP-
Kernel driver in use: ehci-pci

00:1f.0 ISA bridge: Intel Corporation HM65 Express Chipset Family LPC
Controller (rev 05)
Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Capabilities: [e0] Vendor Specific Information: Len=0c <?>
Kernel driver in use: lpc_ich

00:1f.2 IDE interface: Intel Corporation 6 Series/C200 Series Chipset
Family 4 port SATA IDE Controller (rev 05) (prog-if 8f [Master SecP SecO
PriP PriO])
Subsystem: Intel Corporation Device 7270
 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
Interrupt: pin B routed to IRQ 19
Region 0: I/O ports at 2148 [size=8]
 Region 1: I/O ports at 215c [size=4]
Region 2: I/O ports at 2140 [size=8]
Region 3: I/O ports at 2158 [size=4]
 Region 4: I/O ports at 2060 [size=16]
Region 5: I/O ports@ffe0 [size=16]
Capabilities: [70] Power Management version 3
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
 Capabilities: [b0] PCI Advanced Features
AFCap: TP+ FLR+
AFCtrl: FLR-
 AFStatus: TP-
Kernel driver in use: ata_piix

00:1f.3 SMBus: Intel Corporation 6 Series/C200 Series Chipset Family SMBus
Controller (rev 05)
 Subsystem: Intel Corporation Apple MacBookPro8,2 [Core i7, 15", 2011]
Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Interrupt: pin C routed to IRQ 11
 Region 0: Memory at a0907000 (64-bit, non-prefetchable) [size=256]
Region 4: I/O ports@efa0 [size=32]

02:00.0 Ethernet controller: Broadcom Corporation NetXtreme BCM57765
Gigabit Ethernet PCIe (rev 10)
Subsystem: Broadcom Corporation NetXtreme BCM57765 Gigabit Ethernet PCIe
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Interrupt: pin A routed to IRQ 16
Region 0: Memory at a0400000 (64-bit, prefetchable) [size=64K]
 Region 2: Memory@a0410000 (64-bit, prefetchable) [size=64K]
Capabilities: [48] Power Management version 3
 Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
 Capabilities: [58] MSI: Enable- Count=1/8 Maskable- 64bit+
Address: 0000000000000000  Data: 0000
Capabilities: [a0] MSI-X: Enable+ Count=6 Masked-
 Vector table: BAR=2 offset=00000000
PBA: BAR=2 offset=00000120
Capabilities: [ac] Express (v2) Endpoint, MSI 00
 DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
 DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
RlxdOrd- ExtTag- PhantFunc- AuxPwr+ NoSnoop-
 MaxPayload 128 bytes, MaxReadReq 4096 bytes
DevSta: CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <2us, L1
<64us
ClockPM+ Surprise- LLActRep- BwNot-
 LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Advanced Error Reporting
UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
 CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 AERCap: First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
Capabilities: [13c v1] Device Serial Number 00-00-3c-07-54-52-c0-d1
 Capabilities: [150 v1] Power Budgeting <?>
Capabilities: [160 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Kernel driver in use: tg3

02:00.1 SD Host controller: Broadcom Corporation NetXtreme BCM57765 Memory
Card Reader (rev 10) (prog-if 01)
Subsystem: Broadcom Corporation Device 0000
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0, Cache Line Size: 256 bytes
Interrupt: pin B routed to IRQ 17
Region 0: Memory@a0420000 (64-bit, prefetchable) [size=64K]
 Capabilities: [48] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
Capabilities: [58] MSI: Enable- Count=1/1 Maskable- 64bit+
 Address: 0000000000000000  Data: 0000
Capabilities: [ac] Express (v2) Endpoint, MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
 ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd+ ExtTag- PhantFunc- AuxPwr+ NoSnoop+
MaxPayload 128 bytes, MaxReadReq 4096 bytes
DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <2us, L1
<64us
ClockPM+ Surprise- LLActRep- BwNot-
 LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable
De-emphasis: -6dB
 Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
 Compliance De-emphasis: -6dB
 LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
 Capabilities: [100 v1] Advanced Error Reporting
UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
 CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 AERCap: First Error Pointer: 00, GenCap+ CGenEn- ChkCap+ ChkEn-
Capabilities: [150 v1] Power Budgeting <?>
 Capabilities: [160 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Kernel driver in use: sdhci-pci

03:00.0 Network controller: Broadcom Corporation BCM4331 802.11a/b/g/n (rev
02)
Subsystem: Apple Inc. Device 00e4
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Interrupt: pin A routed to IRQ 17
Region 0: Memory@a0600000 (64-bit, non-prefetchable) [size=16K]
Capabilities: [40] Power Management version 3
 Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=2 PME-
 Capabilities: [58] Vendor Specific Information: Len=78 <?>
Capabilities: [48] MSI: Enable- Count=1/1 Maskable- 64bit+
 Address: 0000000000000000  Data: 0000
Capabilities: [d0] Express (v1) Endpoint, MSI 00
DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 unlimited
 ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 512 bytes
DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <4us, L1
<64us
ClockPM+ Surprise- LLActRep+ BwNot-
 LnkCtl: ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt-
ABWMgmt-
Capabilities: [100 v1] Advanced Error Reporting
 UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UESvrt: DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
AERCap: First Error Pointer: 14, GenCap+ CGenEn- ChkCap+ ChkEn-
 Capabilities: [13c v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
 Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
 Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
 Status: NegoPending- InProgress-
Capabilities: [160 v1] Device Serial Number 87-7d-6d-ff-ff-57-68-a8
 Capabilities: [16c v1] Power Budgeting <?>
Kernel driver in use: bcma-pci-bridge

04:00.0 PCI bridge: Texas Instruments XIO2213A/B/XIO2221 PCI Express to PCI
Bridge [Cheetah Express] (rev 01) (prog-if 00 [Normal decode])
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 256 bytes
 Bus: primary=04, secondary=05, subordinate=05, sec-latency=0
I/O behind bridge: 0000f000-00000fff
Memory behind bridge: a0500000-a05fffff
 Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff
Secondary status: 66MHz+ FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort+ <SERR- <PERR-
 BridgeCtl: Parity- SERR- NoISA- VGA- MAbort- >Reset- FastB2B-
PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
 Capabilities: [50] Power Management version 3
Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
 Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
Bridge: PM- B3+
Capabilities: [60] MSI: Enable- Count=1/16 Maskable- 64bit+
 Address: 0000000000000000  Data: 0000
Capabilities: [80] Subsystem: Device 0000:0000
Capabilities: [90] Express (v1) PCI/PCI-X Bridge, MSI 00
 DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
 DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop+ BrConfRtry-
 MaxPayload 128 bytes, MaxReadReq 512 bytes
DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr- TransPend-
 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <512ns,
L1 <16us
ClockPM+ Surprise- LLActRep- BwNot-
 LnkCtl: ASPM Disabled; Disabled- Retrain- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
Capabilities: [100 v1] Advanced Error Reporting
 UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq+ ACSViol-
UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
 UESvrt: DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
AERCap: First Error Pointer: 14, GenCap+ CGenEn- ChkCap+ ChkEn-

05:00.0 FireWire (IEEE 1394): Texas Instruments XIO2213A/B/XIO2221
IEEE-1394b OHCI Controller [Cheetah Express] (rev 01) (prog-if 10 [OHCI])
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
 Status: Cap+ 66MHz+ UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
Latency: 248 (500ns min, 1000ns max), Cache Line Size: 64 bytes
 Interrupt: pin A routed to IRQ 18
Region 0: Memory at a0504000 (32-bit, non-prefetchable) [size=2K]
Region 1: Memory@a0500000 (32-bit, non-prefetchable) [size=16K]
 Capabilities: [44] Power Management version 3
Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold-)
 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME+
Kernel driver in use: firewire_ohci

Attached devices:
Host: scsi0 Channel: 00 Id: 00 Lun: 00
  Vendor: ATA      Model: Hitachi HTS54505 Rev: PB4A
  Type:   Direct-Access                    ANSI  SCSI revision: 05

(Apologies to the kernel devs for any useless crap/long reading, I'm just
following the guide to reporting a proper bug for you from
https://wiki.ubuntu.com/Bugs/Upstream/kernel )
