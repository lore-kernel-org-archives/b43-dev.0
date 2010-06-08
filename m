From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Tue, 8 Jun 2010 03:14:26 +0200
Subject: BCM5354
In-Reply-To: <AANLkTimdhwo-KhM3c1mJmyZih4CKPNRKQmVLGNgY8DOg@mail.gmail.com>
References: <4C0D3B89.7060600@sephix.com> <4C0D3EF6.3040908@lwfinger.net> 
	<4C0D40C2.7050409@sephix.com> <4C0D4BB3.7070607@lwfinger.net> 
	<4C0D4E98.3040903@sephix.com>
	<AANLkTimhZWtVucKu4_Mhrd8WdHk2ngR37pEans71gZBa@mail.gmail.com> 
	<AANLkTimdhwo-KhM3c1mJmyZih4CKPNRKQmVLGNgY8DOg@mail.gmail.com>
Message-ID: <AANLkTik9Zf2ip8HIiyDn94T-hYAvYBdd4Js8g-22oRR7@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, Jun 8, 2010 at 1:38 AM, Chris Martin <chris@martin.cc> wrote:
> I to am working on project using openWrt and ?the??BCM5354, and we too are
> using the 2.4 kernel.
> However I have been testing the 2.6 with wireless compat (b43)
> I was about to log an trac issues with openWrt today, but I saw?this?post so
> I thought that would add my bit here as well.
> I can confirm that It works?flawlessly?in client mode. ?However It fails in
> AP mode.
> There are 2 types of errors that I encounter. ?NOTE: these problems do not
> appear in STA mode. ?I have been using STA mode for over a month - all day.
> ? I am currently working on another issue, but once I have that solved I was
> going to start on this. ?But in the mean time I DO have the?resources?and
> the time to test anything that anyone may suggest. ?and if I find a solution
> I will?obviously?be posting it back here.
> In AP mode the time it takes for the following errors to occur varies -
> sometimes it will run for 1/2 day OK. ?others it fails?almost?immediately?-
> but mostly it is unusable
> --------------ERROR 1----------------
> b43-phy0 ERROR: DMA RX buffer too small (len: 64653, buffer: 2352,
> nr-dropped: 28)
> b43-phy0 ERROR: MAC suspend failed
> b43-phy0 ERROR: MAC suspend failed
> --------------ERROR 2----------------
> root at OpenWrt:/# skb_over_panic: text:80c9a5f0 len:2382 put:2382
> head:81fdb000 data:81fdb040 tail:0x81fdb98e end:0x81fdb980 dev:<NULL>
> Kernel bug detected[#1]:
> Cpu 0
> $ 0 ? : 00000000 1000b800 0000007c 00000001
> $ 4 ? : 80277480 00001e19 ffffffff 00001e19
> $ 8 ? : 00004000 00000000 00000001 ffffffff
> $12 ? : 0000000f 80239688 ffffffff 00000007
> $16 ? : 01fdb040 81fdb040 00000930 80cca460
> $20 ? : 81fd8c00 0000003a a1fca3a0 80ca1198
> $24 ? : 00000002 8015d17c
> $28 ? : 80cea000 80cebdb0 0000003c 80199ff4

Please rebuild your image with symbolic kernel debugging enabled
(AFAIK it is in Image options).

> Hi ? ?: 00000000
> Lo ? ?: 00000077
> epc ? : 80199ff4 0x80199ff4
> ?? ?Not tainted
> ra ? ?: 80199ff4 0x80199ff4
> Status: 1000b803 ? ?KERNEL EXL IE
> Cause : 00800024
> PrId ?: 00029029 (Broadcom BCM3302)
> Modules linked in: nf_nat_tftp nf_conntrack_tftp nf_nat_irc nf_conntrack_irc
> nf_nat_ftp nf_conntrack_ftp xt_HL xt_hl xt_MARK ipt_ECN xt_CLASSIFY xt_time
> xt_tcpmss xt_statistic xt_mark xt_length ipt_ecn xt_DSCP xt_dscp xt_IMQ imq
> xt_string xt_layer7 ipt_MASQUERADE iptable_nat nf_nat xt_CONNMARK xt_recent
> xt_helper xt_conntrack xt_connmark xt_connbytes xt_NOTRACK iptable_raw
> xt_state nf_conntrack_ipv4 nf_defrag_ipv4 nf_conntrack pppoe pppox
> ipt_REJECT xt_TCPMSS ipt_LOG xt_comment xt_multiport xt_mac xt_limit
> iptable_mangle iptable_filter ip_tables xt_tcpudp x_tables ppp_async
> ppp_generic slhc b43 mac80211 ts_fsm ts_bm ts_kmp crc_ccitt cfg80211
> compat_firmware_class compat arc4 aes_generic deflate ecb cbc switch_robo
> switch_core diag
> Process irq/5-b43 (pid: 845, threadinfo=80cea000, task=81f0a188,
> tls=00000000)
> Stack : 00000000 80c9a5f0 0000094e 0000094e 81fdb000 81fdb040 81fdb98e
> 81fdb980
> ?? ? ? ?80253704 81fd8c00 0000003a 80c9a5f0 81fcb9cc 00ff0000 000000d0
> 00010000
> ?? ? ? ?81de4400 81de4400 81fea2b8 00ff0000 80ca1198 00010000 00010000
> 81de4400
> ?? ? ? ?00008000 00010000 81fd8ba4 00010000 802b1880 00000000 80279324
> 80c872b8
> ?? ? ? ?818906c4 81f0a188 81fd8b80 81f0a188 81f0a318 81fd8ba4 00010000
> 802b1880
> ?? ? ? ?...
> Call Trace:[<80c9a5f0>] 0x80c9a5f0
> [<80c9a5f0>] 0x80c9a5f0
> [<80c872b8>] 0x80c872b8
> [<8001ce58>] 0x8001ce58
> [<80186fdc>] 0x80186fdc
> [<80c87410>] 0x80c87410
> [<80056b3c>] 0x80056b3c
> [<8000afcc>] 0x8000afcc
> [<800569c0>] 0x800569c0
> [<800569c0>] 0x800569c0
> [<8003d250>] 0x8003d250
> [<81f9c08c>] 0x81f9c08c
> [<8000f884>] 0x8000f884
> [<8003d1d4>] 0x8003d1d4
> [<8000f874>] 0x8000f874
>
> Code: afab001c ?0c0028fd ?afa20020 <0200000d> 080667fe ?00000000 ?8fbf002c
> ?01201021 ?03e00008
> Disabling lock debugging due to kernel taint
> exiting task "irq/5-b43" (845) is an active IRQ thread (irq 5)
> ----------------------------------------------------------
> Chris Martin
> m: 0419812371
> ----------------------------------------------------------
>
>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
