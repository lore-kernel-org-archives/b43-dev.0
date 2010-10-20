From: Daniel Klaffenbach <danielklaffenbach@gmail.com>
Date: Wed, 20 Oct 2010 21:28:40 +0200
Subject: BCM4318KFBG not recognized by b43
Message-ID: <AANLkTinoQH52c33L2UMo3=03Oq2qGqNDcnQ3iiffZ334@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

I just got a new Mini-PCI wireless card which does not seem to be
supported by b43 yet. On the chipset it says "BCM4318KFBG". I suspect
the vendor id of the card is causing trouble - it is 14a4 (GVC/BCM
Advanced Research) instead of the usual 14e4.

root at OpenWrt:~# uname -a
Linux OpenWrt 2.6.34.7 #1 Wed Oct 20 16:10:32 CEST 2010 mips GNU/Linux

root at OpenWrt:~# lspci -vvn
00:02.0 0280: 14a4:4318 (rev 02)
        Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
        Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR+ INTx-
        Interrupt: pin A routed to IRQ 0
        Region 0: Memory at 40000000 (32-bit, non-prefetchable)
[disabled] [size=8K]


I've already tried to force the b43-pci-bridge to use this device, but
it resulted in a kernel Oops (I don't know if that made sense anyway):

root@OpenWrt:~# echo '14a4 4318' > /sys/bus/pci/drivers/b43-pci-bridge/new_id
PCI: Enabling device 0000:00:02.0 (0000 -> 0002)
PCI: Fixing up device 0000:00:02.0
PCI: Setting latency timer of device 0000:00:02.0 to 64
ssb: PCI-ID not in fallback list
ssb: CHIPID not in nrcores fallback list
ssb: Core 0 found: UNKNOWN (cc 0x014, rev 0x00, vendor 0x0000)
Data bus error, epc == 8013e404, ra == 80188ff8
Oops[#1]:
Cpu 0
$ 0   : 00000000 1000bc00 00000000 00000018
$ 4   : c0a05018 804ef300 00000000 00000000
$ 8   : 00000000 80005510 00000002 8026e000
$12   : 80273920 00000002 00000001 00000002
$16   : 0000000d 804ef318 80d26c00 80d26f84
$20   : 80d26c00 80239ce4 80637f10 805dde18
$24   : 3b9aca00 80014630
$28   : 80636000 80637c68 00467034 80188ff8
Hi    : 00000068
Lo    : 4a59d500
epc   : 8013e404 0x8013e404
    Not tainted
ra    : 80188ff8 0x80188ff8
Status: 1000bc03    KERNEL EXL IE
Cause : 0080001c
PrId  : 00024000 (Broadcom BCM4710)
Modules linked in: usb_storage ohci_hcd ip6t_REJECT ip6t_LOG ip6t_rt
ip6t_hbh ip6t_mh ip6t_ipv6header ip6t_frag ip6t_eui64 ip6t_ah
ip6table_raw ip6_queue ip6table_mangle ip6table_filter ip6_tables
nf_conntrack_ipv6 nf_nat_tftp nf_conntrack_tftp nf_nat_irc
nf_conntrack_irc nf_nat_ftp nf_conntrack_ftp xt_iprange xt_string
ipt_MASQUERADE iptable_nat nf_nat xt_NOTRACK iptable_raw xt_state
nf_conntrack_ipv4 nf_defrag_ipv4 nf_conntrack sd_mod ipt_REJECT
xt_TCPMSS ipt_LOG xt_comment xt_multiport xt_mac xt_limit
iptable_mangle iptable_filter ip_tables xt_tcpudp x_tables sit ext2
tunnel4 ext3 jbd tun vfat fat ext4 jbd2 b43 nls_utf8 mac80211 usbcore
ts_fsm ts_bm ts_kmp switch_core scsi_mod nls_base mbcache crc16
cfg80211 compat arc4 aes_generic deflate ecb cbc ipv6 diag [last
unloaded: switch_core]
Process ash (pid: 1708, threadinfo=80636000, task=8030aa58, tls=00000000)
Stack : 80637c98 80354d48 00000000 80637cc8 fffffff4 804ef300 80637cc8 80189568
        00000000 00000000 80637cc8 00000000 80d26c00 80637cc8 00000000 80d26c00
        80d26f84 801894b0 80239ce4 8018753c 00000037 80023e74 1000bc00 00000001
        00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
        ...
Call Trace:[<80189568>] 0x80189568
[<801894b0>] 0x801894b0
[<8018753c>] 0x8018753c
[<80023e74>] 0x80023e74
[<8018771c>] 0x8018771c
[<8018a370>] 0x8018a370
[<8014533c>] 0x8014533c
[<801453b4>] 0x801453b4
[<801673d4>] 0x801673d4
[<80167598>] 0x80167598
[<8016774c>] 0x8016774c
[<801676e0>] 0x801676e0
[<80166c90>] 0x80166c90
[<800798b8>] 0x800798b8
[<80145770>] 0x80145770
[<80127e24>] 0x80127e24
[<8014589c>] 0x8014589c
[<80016bb4>] 0x80016bb4
[<800dea68>] 0x800dea68
[<80090fac>] 0x80090fac
[<8009ed20>] 0x8009ed20
[<80003630>] 0x80003630
[<8002727c>] 0x8002727c

Code: 90820000  03e00008  304200ff <94820000> 03e00008  3042ffff
94820000  3042ffff  00021a02
Disabling lock debugging due to kernel taint


The full dmesg output of the device is available at http://pastebin.ca/1968330.

Is there anything else I can do to get the device to work? I'd be
happy to test any patches but please keep in mind that my distribution
(OpenWRT) requires me to use Linux 2.6.34 at the moment (which is the
most current version for BCM47xx in OpenWRT trunk).


Regards,
Daniel
