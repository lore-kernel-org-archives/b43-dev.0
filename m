From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 30 May 2011 11:26:49 +0200
Subject: BCM5354 (Asus WL500GPv2) DMA RX buffer too small and
	skb_over_panic
In-Reply-To: <4DE25A8F.6040606@lwfinger.net>
References: <4DE22C0E.1050902@hauke-m.de>
	<BANLkTinZA=fOLGnoCQ-1-4ng1GKAv5_5gA@mail.gmail.com>
	<4DE25A8F.6040606@lwfinger.net>
Message-ID: <BANLkTikVr+28ccfhWOc_kuTcygQLS47nDQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 29 maja 2011 16:39 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 05/29/2011 06:35 AM, Rafa? Mi?ecki wrote:
>>
>> Hey,
>>
>> W dniu 29 maja 2011 13:20 u?ytkownik Hauke Mehrtens<hauke@hauke-m.de>
>> ?napisa?:
>>>
>>> Hi Rafa?,
>>>
>>> I got some bug reports [0] in OpenWrt regarding a kernel panic because
>>> of b43. It occurs on BCM5354 devices, when they are in AP mode.
>>>
>>> There was also a discussion about this on this mailing list some years
>>> ago. [1]
>>>
>>> It happens after some time ( 3h to 2d ) without any load or anything not
>>> normal, in station mode this panic does not occur.
>>> After the error occurred the CPU usage increases to 3.0 - 5.0
>>> Sometimes "b43-phy0 ERROR: MAC suspend failed" is shown in the log
>>> before this panic.
>>>
>>> Rafa? could you please have a look at the issue?
>>>
>>> ------
>>> Hauke
>>>
>>> [0]: https://dev.openwrt.org/ticket/9459
>>> [1]: http://permalink.gmane.org/gmane.linux.drivers.bcm54xx.devel/10682
>>>
>>>
>>>
>>> Kernel panic:
>>>
>>> b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
>>> b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
>>> ......
>>> b43-phy0 ERROR: DMA RX buffer too small (len: 42390, buffer: 2352,
>>> nr-dropped: 19)
>>> b43-phy0 ERROR: DMA RX buffer too small (len: 25505, buffer: 2352,
>>> nr-dropped: 11)
>>> b43-phy0 ERROR: DMA RX buffer too small (len: 19022, buffer: 2352,
>>> nr-dropped: 9)
>>> b43-phy0 ERROR: DMA RX buffer too small (len: 4189, buffer: 2352,
>>> nr-dropped: 2)
>>> b43-phy0 ERROR: DMA RX buffer too small (len: 37381, buffer: 2352,
>>> nr-dropped: 16)
>>> skb_over_panic: text:80c9a408 len:2378 put:2378 head:80eef000
>>> data:80eef040 tail:0x80eef98a end:0x80eef980 dev:<NULL>
>>> Kernel bug detected[#1]:
>>> Cpu 0
>>> $ 0 ? : 00000000 1000b800 0000007c 00000001
>>> $ 4 ? : 80293498 000020ed ffffffff 000020ed
>>> $ 8 ? : 00004000 00000000 00000001 ffffffff
>>> $12 ? : 0000000f 80253c78 ffffffff 00000000
>>> $16 ? : 00eef040 0000092c 80eef040 819e0740
>>> $20 ? : 81b3cb00 0000001e a1b4a1e0 80c9f978
>>> $24 ? : 00000002 80166250
>>> $28 ? : 81a46000 81a47db0 00000020 801a3d24
>>> Hi ? ?: 00000000
>>> Lo ? ?: 00000077
>>> epc ? : 801a3d24 0x801a3d24
>>> ? ?Not tainted
>>> ra ? ?: 801a3d24 0x801a3d24
>>> Status: 1000b803 ? ?KERNEL EXL IE
>>> Cause : 00800024
>>> PrId ?: 00029029 (Broadcom BCM3302)
>>> Modules linked in: xt_IMQ nf_nat_tftp nf_conntrack_tftp nf_nat_irc
>>> nf_conntrack_irc nf_nat_ftp nf_conntrack_ftp xt_HL xt_hl xt_MARK ipt_ECN
>>> xt_CLASSIFY xt_time xt_tcpmss xt_statistic xt_mark xt_length ipt_ecn
>>> xt_DSCP xt_dscp xt_string xt_layer7 ipt_MASQUERADE iptable_nat nf_nat
>>> xt_CONNMARK xt_recent xt_helper xt_conntrack xt_connmark xt_connbytes
>>> xt_NOTRACK iptable_raw xt_state nf_conntrack_ipv4 nf_defrag_ipv4
>>> nf_conntrack pppoe pppox ipt_REJECT xt_TCPMSS ipt_LOG xt_comment
>>> xt_multiport xt_mac xt_limit iptable_mangle iptable_filter ip_tables
>>> xt_tcpudp x_tables ppp_async ppp_generic slhc b43legacy sch_red b43
>>> sch_sfq sch_hfsc cls_fw imq mac80211 ts_fsm ts_bm ts_kmp crc_ccitt
>>> cfg80211 compat_firmware_class compat arc4 aes_generic deflate ecb cbc
>>> switch_robo switch_core diag
>>> Process irq/5-b43 (pid: 895, threadinfo=81a46000, task=81ab45d0,
>>> tls=00000000)
>>> Stack : 00000000 80c9a408 0000094a 0000094a 80eef000 80eef040 80eef98a
>>> 80eef980
>>> ? ? ? ?8026e09c 0000001e a1b4a1e0 80c9a408 80c17ad4 00ff0000 000000e6
>>> 00010000
>>> ? ? ? ?819e2400 819e2400 80d31568 00ff0000 80c9f978 00010000 00010000
>>> 819e2400
>>> ? ? ? ?00008000 00010000 81b3ca24 00010000 802ce8c0 00000000 802953b4
>>> 80c872cc
>>> ? ? ? ?00010000 802ce8c0 80292f28 8001ce0c 819ea138 819ea138 80292f28
>>> 8001eba0
>>> ? ? ? ?...
>>> Call Trace:[<80c9a408>] 0x80c9a408
>>> [<80c9a408>] 0x80c9a408
>>> [<80c872cc>] 0x80c872cc
>>> [<8001ce0c>] 0x8001ce0c
>>> [<8001eba0>] 0x8001eba0
>>> [<8001cef8>] 0x8001cef8
>>> [<80190bf4>] 0x80190bf4
>>> [<80c87424>] 0x80c87424
>>> [<80057480>] 0x80057480
>>> [<8000af98>] 0x8000af98
>>> [<80057304>] 0x80057304
>>> [<80057304>] 0x80057304
>>> [<8003db30>] 0x8003db30
>>> [<8000f86c>] 0x8000f86c
>>> [<8003dab4>] 0x8003dab4
>>> [<8000f85c>] 0x8000f85c
>>>
>>>
>>> Code: afab001c ?0c0028ff ?afa20020<0200000d> ?08068f4a ?00000000
>>> 8fbf002c ?01201021 ?03e00008
>>> Disabling lock debugging due to kernel taint
>>> exiting task "irq/5-b43" (895) is an active IRQ thread (irq 5)
>>>
>>>
>>> Call Trace from an other report:
>>>
>>> Jan ?1 04:03:40 OpenWrt user.warn kernel: Call Trace:
>>> Jan ?1 04:03:40 OpenWrt user.warn kernel: [<8019bc10>] skb_put+0x74/0x90
>>> Jan ?1 04:03:40 OpenWrt user.warn kernel: [<8051a3e8>]
>>> b43_dma_rx+0x294/0x378 [b43]
>>> Jan ?1 04:03:40 OpenWrt user.warn kernel: [<805072b8>]
>>> b43_controller_restart+0x7a8/0x97c [b43]
>>> Jan ?1 04:03:40 OpenWrt user.warn kernel: Code: afab001c ?0c0028c2
>>> afa20020<0200000d> ?08066f05 ?00000000 ?8fbf002c ?01201021 ?03e00008
>>> Jan ?1 04:03:40 OpenWrt user.warn kernel: Disabling lock debugging due
>>> to kernel taint
>>> Jan ?1 04:03:40 OpenWrt user.err kernel: exiting task "irq/5-b43" (763)
>>> is an active IRQ thread (irq 5)
>>
>> This sounds like duplicate of:
>> https://bugzilla.kernel.org/show_bug.cgi?id=32042
>>
>> Larry fixed this issue, also CC-ing stable at kernel. I believe updating
>> kernel or applying c85ce65ecac078ab1a1835c87c4a6319cf74660a manually
>> will help :)
>
> This may not be the same issue as the buffer lengths in the panic message
> are very large.
>
> For the record, John Linville fixed that issue.

You're right, sorry for the false reference to fix.

This is just another issue with firmware on BCM5354.

-- 
Rafa?
