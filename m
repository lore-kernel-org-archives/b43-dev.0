From: chris at martin.cc <chris@martin.cc>
Date: Thu, 3 Mar 2011 15:55:33 +1100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <4D6EBDE0.8020005@lwfinger.net>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTikcvuBdOi=LM5Bx9cxO2yY=0BzSTn18r938KjSr@mail.gmail.com>
	<AANLkTi=gjvA5=UxHENZ1ALcxomPEdL7NGeb7oFtdZ+t3@mail.gmail.com>
	<4D6EBDE0.8020005@lwfinger.net>
Message-ID: <AANLkTimuncYOf=0Qju3G3egfHTRGs98z=Ncp=zUJruKi@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I don't know if this is useful, but after the oom killer has destroyed
all the process the console log loops on the following message:

irq/5-b43: page allocation failure. order:0, mode:0x20
Call Trace:
[<80009120>] dump_stack+0x8/0x34
[<8006412c>] __alloc_pages_nodemask+0x514/0x570
[<8008d214>] cache_alloc_refill+0x280/0x740
[<8008d880>] kmem_cache_alloc+0x84/0xf4
[<81a14220>] 0x81a14220

Mem-Info:
Normal per-cpu:
CPU    0: hi:    0, btch:   1 usd:   0
active_anon:90 inactive_anon:140 isolated_anon:0
 active_file:3 inactive_file:3 isolated_file:0
 unevictable:0 dirty:0 writeback:0 unstable:0
 free:70 slab_reclaimable:116 slab_unreclaimable:6370
 mapped:4 shmem:10 pagetables:38 bounce:0
Normal free:280kB min:720kB low:900kB high:1080kB active_anon:360kB
inactive_anon:560kB active_file:12kB inactive_file:12kB
unevictable:0kB isolated(anon):0kB isolated(file):0kB present:32512kB
mlocked:0kB dirty:0kB writeback:0kB mapped:16kB shmem:40kB
slab_reclaimable:464kB slab_unreclaimable:25480kB kernel_stack:488kB
pagetables:152kB unstable:0kB bounce:0kB writeback_tmp:0kB
pages_scanned:36 all_unreclaimable? yes
lowmem_reserve[]: 0 0
Normal: 0*4kB 1*8kB 1*16kB 0*32kB 0*64kB 0*128kB 1*256kB 0*512kB
0*1024kB 0*2048kB 0*4096kB = 280kB
16 total pagecache pages
0 pages in swap cache
Swap cache stats: add 0, delete 0, find 0/0
Free swap  = 0kB
Total swap = 0kB
8192 pages RAM
757 pages reserved
25 pages shared
7201 pages non-shared


----------------------------------------------------------
Chris Martin
m: +61 419 812 371
----------------------------------------------------------
