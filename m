From: Chris Martin <chris@martin.cc>
Date: Tue, 8 Jun 2010 12:52:23 +1000
Subject: BCM5354
In-Reply-To: <AANLkTik9Zf2ip8HIiyDn94T-hYAvYBdd4Js8g-22oRR7@mail.gmail.com>
References: <4C0D3B89.7060600@sephix.com> <4C0D3EF6.3040908@lwfinger.net> 
	<4C0D40C2.7050409@sephix.com> <4C0D4BB3.7070607@lwfinger.net> 
	<4C0D4E98.3040903@sephix.com>
	<AANLkTimhZWtVucKu4_Mhrd8WdHk2ngR37pEans71gZBa@mail.gmail.com> 
	<AANLkTimdhwo-KhM3c1mJmyZih4CKPNRKQmVLGNgY8DOg@mail.gmail.com> 
	<AANLkTik9Zf2ip8HIiyDn94T-hYAvYBdd4Js8g-22oRR7@mail.gmail.com>
Message-ID: <AANLkTil1EUY34XS6jZ6pwmRXetGhJQVgr6UNz3EvoMoR@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Gabor

Thanks for taking an interest in this

Attached is the kernel panic (with kernel symbols)
I will send others if the stack trace differs.
I assume that you really only want the stack trace


skb_over_panic: text:80c1a5f0 len:2382 put:2382 head:80d1d000 data:80d1d040
tail:0x80d          1d98e end:0x80d1d980 dev:<NULL>
Kernel bug detected[#1]:
Cpu 0
$ 0   : 00000000 1000b800 0000007c 00000001
$ 4   : 80299480 00001e55 ffffffff 00001e55
$ 8   : 00004000 00000000 8029fcf0 00000001
$12   : 0000000f 8023b738 ffffffff 00480000
$16   : 00d1d040 80d1d040 00000930 81c41d40
$20   : 81e1e300 00000024 a1faf240 80c21198
$24   : 00000002 8015f4d4
$28   : 80dac000 80daddb0 00000026 8019c3a0
Hi    : 00000000
Lo    : 00000077
epc   : 8019c3a0 skb_put+0x74/0x90
    Not tainted
ra    : 8019c3a0 skb_put+0x74/0x90
Status: 1000b803    KERNEL EXL IE
Cause : 00800024
PrId  : 00029029 (Broadcom BCM3302)
Modules linked in: nf_nat_tftp nf_conntrack_tftp nf_nat_irc nf_conntrack_irc
nf_nat_ftp nf_conntrack_ftp xt_HL xt          _hl xt_MARK ipt_ECN
xt_CLASSIFY xt_time xt_tcpmss xt_statistic xt_mark xt_length ipt_ecn xt_DSCP
xt_dscp xt_IMQ i          mq xt_string xt_layer7 ipt_MASQUERADE iptable_nat
nf_nat xt_CONNMARK xt_recent xt_helper xt_conntrack xt_connmark
xt_connbytes xt_NOTRACK iptable_raw xt_state nf_conntrack_ipv4
nf_defrag_ipv4 nf_conntrack pppoe pppox ipt_REJEC          T xt_TCPMSS
ipt_LOG xt_comment xt_multiport xt_mac xt_limit iptable_mangle
iptable_filter ip_tables xt_tcpudp x_t          ables ppp_async ppp_generic
slhc b43 mac80211 ts_fsm ts_bm ts_kmp crc_ccitt cfg80211
compat_firmware_class compat           arc4 aes_generic deflate ecb cbc
switch_robo switch_core diag
Process irq/5-b43 (pid: 845, threadinfo=80dac000, task=81eb5168,
tls=00000000)
Stack : 00000000 80c1a5f0 0000094e 0000094e 80d1d000 80d1d040 80d1d98e
80d1d980
        80275e08 81e1e300 00000024 80c1a5f0 80d533fc 00ff0000 00000054
00010000
        81e3ac00 81e3ac00 80d505b0 00ff0000 80c21198 00010000 00010000
81e3ac00
        00008000 00010000 81e1e2a4 00010000 802d3880 00000000 8029b324
80c072b8
        1000b803 81eb5168 81e1e280 81eb5168 81eb52f8 81e1e2a4 00010000
802d3880
        ...
Call Trace:
[<8019c3a0>] skb_put+0x74/0x90
[<80c1a5f0>] b43_dma_rx+0x350/0x474 [b43]
[<80c072b8>] b43_controller_restart+0x7a8/0x97c [b43]


Code: afab001c  0c0028f6  afa20020 <0200000d> 080670e9  00000000  8fbf002c
 01201021  03e00008
Disabling lock debugging due to kernel taint
exiting task "irq/5-b43" (845) is an active IRQ thread (irq 5)


Cheers

----------------------------------------------------------
Chris Martin
m: 0419812371
----------------------------------------------------------
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100608/5b159c32/attachment.html>
