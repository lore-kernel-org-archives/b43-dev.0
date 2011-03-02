From: chris at martin.cc <chris@martin.cc>
Date: Wed, 2 Mar 2011 14:30:43 +1100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
Message-ID: <AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/2 chris at martin.cc <chris@martin.cc>
>
> As one of the people why reported some of these issues, I am going to take it upon my self to
> test the current b43 firmware with an ASUS WL500pv2. ?This uses the Broadcom 5354 SoC and > has a LP-PHY with Both the stable(4.150.10.5) and experimental?(4.178.10.4)?firmware.

OK. ?I managed that faster that I expected
I tested the latest (fresh checkout) of OpenWrt backfire 10.03
I can confirm that when using the broadcom 5354 SoC (LP-PHY) that the
experimental??(4.178.10.4)?firmware. causes "oom" errors.
I repeated tests with both stable and experimental with the same
configuration and the
experimental version always caused "oom"

happy to test anything else as needed.  I currently have the stable
version under a load test

The following is the first "iteration" of the log - as up can see the
firmware is loaded.
The radio interface is added to the bridge and  moved to the
forwarding state, then POW.

b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
device wlan0 entered promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
hotplug2 invoked oom-killer: gfp_mask=0x80d0, order=0, oom_adj=0
Call Trace:
[<8000a230>] dump_stack+0x8/0x34
[<80063280>] oom_kill_process+0x68/0x200
[<800639f8>] __out_of_memory+0x17c/0x1b0
[<80063a9c>] out_of_memory+0x70/0xa0
[<800677a4>] __alloc_pages_nodemask+0x4bc/0x5e8
[<800678e8>] __get_free_pages+0x18/0x50
[<800e5820>] sysfs_read_file+0x8c/0x174
[<800968b0>] sys_read+0x58/0x9c
[<80003230>] stack_done+0x20/0x3c
Mem-Info:
Normal per-cpu:
CPU ? ?0: hi: ? ?0, btch: ? 1 usd: ? 0
active_anon:387 inactive_anon:428 isolated_anon:0
?active_file:15 inactive_file:42 isolated_file:0
?unevictable:0 dirty:0 writeback:0 unstable:0
?free:172 slab_reclaimable:163 slab_unreclaimable:5627
?mapped:52 shmem:49 pagetables:70 bounce:0
Normal free:688kB min:720kB low:900kB high:1080kB active_anon:1548kB
inactive_anon:1712kB active_file:60kB inactive_file:168kB
unevictable:0kB isolated(anon):0kB isolated(file):0kB present:32512kB
mlocked:0kB dirty:0kB writeback:0kB mapped:208kB shmem:196kB
slab_reclaimable:652kB slab_unreclaimable:22508kB kernel_stack:312kB
pagetables:280kB unstable:0kB bounce:0kB writeback_tmp:0kB
pages_scanned:81 all_unreclaimable? no
lowmem_reserve[]: 0 0
Normal: 32*4kB 0*8kB 1*16kB 1*32kB 0*64kB 0*128kB 0*256kB 1*512kB
0*1024kB 0*2048kB 0*4096kB = 688kB
106 total pagecache pages
0 pages in swap cache
Swap cache stats: add 0, delete 0, find 0/0
Free swap ?= 0kB
Total swap = 0kB
8192 pages RAM
790 pages reserved
507 pages shared
7011 pages non-shared
Out of memory: kill process 664 (dnsmasq) score 228 or a child
Killed process 664 (dnsmasq)

Cheers
----------------------------------------------------------
Chris Martin
m: +61 419 812 371
----------------------------------------------------------
