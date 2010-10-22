From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 22 Oct 2010 15:16:55 -0500
Subject: BCM4318KFBG not recognized by b43
In-Reply-To: <AANLkTinq8diNDc_0TA7jUDrAeNHWLLOVbVQuW5hpfJ3y@mail.gmail.com>
References: <AANLkTinoQH52c33L2UMo3=03Oq2qGqNDcnQ3iiffZ334@mail.gmail.com>	<AANLkTik_pkUw4B0yVXDpoXAOSeb-HqSb3VWbGLsNW_kA@mail.gmail.com>	<AANLkTi=FoL44CquvC68BU65HPXf4dtET0uq3cLO5Bgf1@mail.gmail.com>
	<AANLkTinq8diNDc_0TA7jUDrAeNHWLLOVbVQuW5hpfJ3y@mail.gmail.com>
Message-ID: <4CC1F137.9050409@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/22/2010 04:15 AM, Daniel Klaffenbach wrote:
> I got a little bit further by adding the vendor id to
> b43_pci_bridge.c. Note that it now detects the card correctly (4318).
> 
> root at OpenWrt:/# modprobe b43
> Segmentation fault
> 
> b43-phy0: Broadcom 4318 WLAN found (core revision 9)
> Data bus error, epc == 8013e42c, ra == 80784704
> Oops[#1]:
> Cpu 0
> $ 0   : 00000000 1000bc00 200002ff 00000000
> $ 4   : c0000f9c 00000004 0c040083 00000000
> $ 8   : 00000010 00000080 00000004 8026e000
> $12   : 80273920 00000002 00000001 00000002
> $16   : 80e7ad00 802e7000 00000000 807a013c
> $20   : 8027a6f4 00000000 00407ed4 00000000
> $24   : 3b9aca00 80014630
> $28   : 802a0000 802a1d48 80e7ad00 80784704
> Hi    : 00000018
> Lo    : 52101200
> epc   : 8013e42c 0x8013e42c
>     Not tainted
> ra    : 80784704 0x80784704
> Status: 1000bc03    KERNEL EXL IE
> Cause : 0080001c
> PrId  : 00024000 (Broadcom BCM4710)
> Modules linked in: b43(+) usb_storage ohci_hcd ip6t_REJECT ip6t_LOG
> ip6t_rt ip6t_hbh ip6t_mh ip6t_ipv6header ip6t_frag ip6t_eui64 ip6t_ah
> ip6table_raw ip6_queue ip6table_mangle ip6table_filter ip6_tables
> nf_conntrack_ipv6 nf_nat_tftp nf_conntrack_tftp nf_nat_irc
> nf_conntrack_irc nf_nat_ftp nf_conntrack_ftp xt_iprange xt_string
> ipt_MASQUERADE iptable_nat nf_nat xt_NOTRACK iptable_raw xt_state
> nf_conntrack_ipv4 nf_defrag_ipv4 nf_conntrack sd_mod ipt_REJECT
> xt_TCPMSS ipt_LOG xt_comment xt_multiport xt_mac xt_limit
> iptable_mangle iptable_filter ip_tables xt_tcpudp x_tables sit ext2
> tunnel4 ext3 jbd nls_utf8 mac80211 usbcore ts_fsm ts_bm ts_kmp
> switch_core scsi_mod nls_base mbcache crc16 cfg80211 compat arc4
> aes_generic deflate ecb cbc ipv6 diag [last unloaded: switch_core]
> Process insmod (pid: 1115, threadinfo=802a0000, task=80dc5a38, tls=00000000)
> Stack : 00000662 800dfefc 00004318 00000009 80a27f84 80a27f2c 00000000 80e7ad00
>         80851000 80851400 80e7ad88 802e72f8 00000001 806f4380 807a0120 80851058
>         807a013c 807a013c 8027a6f4 00000000 00407ed4 00000002 7fb5beb8 80186954
>         80851058 806f4380 fffffffe 802542cc ffffffed ffffffed 80855180 80167598
>         8027a6f4 80122cf8 80340010 00000004 808551b4 80855180 807a013c 8016774c
>         ...
> Call Trace:[<800dfefc>] 0x800dfefc
> [<80186954>] 0x80186954
> [<80167598>] 0x80167598
> [<80122cf8>] 0x80122cf8
> [<8016774c>] 0x8016774c
> [<80122d40>] 0x80122d40
> [<801676e0>] 0x801676e0
> [<80166c90>] 0x80166c90
> [<80122dd0>] 0x80122dd0
> [<80166458>] 0x80166458
> [<80083d38>] 0x80083d38
> [<80632000>] 0x80632000
> [<80167adc>] 0x80167adc
> [<80055054>] 0x80055054
> [<80632000>] 0x80632000
> [<80632020>] 0x80632020
> [<8000c4e0>] 0x8000c4e0
> [<8004271c>] 0x8004271c
> [<80055730>] 0x80055730
> [<8008e040>] 0x8008e040
> [<80003630>] 0x80003630

Any chance of getting these addresses translated into something a bit more
symbolic? There is a package that does this, but I don't remember the name. Can
anyone help with that part?

Larry
