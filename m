From: Christian Klein <cklein@mpi-sb.mpg.de>
Date: Sat, 23 Mar 2013 18:47:33 +0100
Subject: [PATCH] b43: remove warning for LP-PHY with sprom < 8
In-Reply-To: <1363894120-14563-1-git-send-email-hauke@hauke-m.de>
References: <1363894120-14563-1-git-send-email-hauke@hauke-m.de>
Message-ID: <20130323174732.GE2873@Vault13>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, Mar 21, 2013 at 08:28:40PM +0100, Hauke Mehrtens wrote:
> The BCM5354 SoC has a build in ieee80211 core rev 13 with a LP-PHY on
> it. This devices has a sprom version 3 stored in the nvram. This patch
> removes the warning and uses the opo values from the sprom as mentioned
> in the specs.

Hello Hauke,

thanks for the patch. I tried it on my Asus WL-520GU with BCM5354 SoC.
As expected, the warning goes away. But the router still becomes unstable
as soon as I start WIFI. I tried both the 666.2 and the 410.2160 firmware,
but the results are the same. As soon as WIFI starts, the system becomes so
unresponsive that it seems like it crashed. However, a previously started
dmesg in a "while true" loop still works for some time, albeit it responds
very slowly.  After a few minutes the router will reset.

With 666.2, the oom-killer kicks in, too. I didn't see this in the dmesg
with the 410.2160 firmware, but it may just be that the dmesg process died.

I attached the dmesg output for both cases. I'd be happy to provide more
help in debugging and fixing this issue.

-- 
CU, Christian Klein
-------------- next part --------------
[  234.504000] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
[  234.512000] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  240.008000] b43-phy0 debug: Chip initialized
[  240.044000] b43-phy0 debug: 64-bit DMA initialized
[  240.044000] b43-phy0 debug: QoS enabled
[  240.560000] b43-phy0 debug: Wireless interface started
[  240.560000] b43-phy0 debug: Adding Interface type 2
[  240.568000] b43-phy0 debug: Removing Interface type 2
[  240.568000] b43-phy0 debug: Wireless interface stopped
[  240.572000] b43-phy0 debug: DMA-64 rx_ring: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  240.572000] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  240.580000] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  241.012000] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  241.020000] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  241.028000] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  241.060000] device wlan0 entered promiscuous mode
[  241.292000] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
[  241.300000] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  247.156000] b43-phy0 debug: Chip initialized
[  247.172000] b43-phy0 debug: 64-bit DMA initialized
[  247.172000] b43-phy0 debug: QoS enabled
[  247.184000] b43-phy0 debug: Wireless interface started
[  247.184000] b43-phy0 debug: Adding Interface type 3
[  250.788000] b43-phy0 debug: Set beacon interval to 100
[  250.788000] b43-phy0 debug: Updated beacon template at 0x68
[  250.788000] b43-phy0 debug: Updated beacon template at 0x468
[  250.788000] br-lan: port 2(wlan0) entered forwarding state
[  250.796000] br-lan: port 2(wlan0) entered forwarding state
[  252.800000] br-lan: port 2(wlan0) entered forwarding state
[  253.920000] [sched_delayed] sched: RT throttling activated
-------------- next part --------------
[  512.732000] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[  512.740000] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  518.916000] b43-phy0 debug: Chip initialized
[  519.340000] b43-phy0 debug: 64-bit DMA initialized
[  519.340000] b43-phy0 debug: QoS enabled
[  519.348000] b43-phy0 debug: Wireless interface started
[  519.348000] b43-phy0 debug: Adding Interface type 2
[  555.380000] sleep invoked oom-killer: gfp_mask=0x201da, order=0, oom_score_adj=0
[  555.388000] Call Trace:
[  555.392000] [<80011eb4>] dump_stack+0x8/0x34
[  555.396000] [<8005f2ec>] dump_header.isra.16+0x44/0x124
[  555.400000] [<8005f688>] oom_kill_process+0x134/0x56c
[  555.408000] [<80060048>] out_of_memory+0x324/0x37c
[  555.412000] [<80063380>] __alloc_pages_nodemask+0x550/0x634
[  555.416000] [<8005e8ac>] filemap_fault+0x2d4/0x45c
[  555.424000] [<80078a94>] __do_fault+0xd0/0x680
[  555.428000] [<8007c7e0>] handle_pte_fault+0x46c/0x9e0
[  555.432000] [<8007ce04>] handle_mm_fault+0xb0/0xdc
[  555.440000] [<80015de8>] do_page_fault+0x148/0x38c
[  555.444000] [<80001420>] ret_from_exception+0x0/0x24
[  555.448000] 
[  555.452000] Mem-Info:
[  555.452000] Normal per-cpu:
[  555.456000] CPU    0: hi:    0, btch:   1 usd:   0
[  555.460000] active_anon:593 inactive_anon:11 isolated_anon:0
[  555.460000]  active_file:8 inactive_file:63 isolated_file:0
[  555.460000]  unevictable:0 dirty:0 writeback:0 unstable:0
[  555.460000]  free:127 slab_reclaimable:195 slab_unreclaimable:1158
[  555.460000]  mapped:5 shmem:20 pagetables:97 bounce:0
[  555.460000]  free_cma:0
[  555.492000] Normal free:508kB min:508kB low:632kB high:760kB active_anon:2372                                                                                                                                 
kB inactive_anon:44kB active_file:32kB inactive_file:252kB unevictable:0kB isola                                                                                                                                 
ted(anon):0kB isolated(file):0kB present:16256kB managed:12896kB mlocked:0kB dir                                                                                                                                 
ty:0kB writeback:0kB mapped:20kB shmem:80kB slab_reclaimable:780kB slab_unreclai                                                                                                                                 
mable:4632kB kernel_stack:352kB pagetables:388kB unstable:0kB bounce:0kB free_cm                                                                                                                                 
a:0kB writeback_tmp:0kB pages_scanned:189 all_unreclaimable? yes
[  555.536000] lowmem_reserve[]: 0 0
[  555.540000] Normal: 1*4kB (U) 9*8kB (UR) 3*16kB (UR) 2*32kB (UR) 1*64kB (R) 2                                                                                                                                 
*128kB (UR) 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB = 508kB
[  555.552000] 92 total pagecache pages
[  555.556000] 0 pages in swap cache
[  555.560000] Swap cache stats: add 0, delete 0, find 0/0
[  555.568000] Free swap  = 0kB
[  555.568000] Total swap = 0kB
[  555.576000] 4096 pages RAM
[  555.576000] 824 pages reserved
[  555.580000] 263956 pages shared
[  555.584000] 2769 pages non-shared
[  555.588000] [ pid ]   uid  tgid total_vm      rss nr_ptes swapents oom_score_adj name
[  555.596000] [  346]     0   346      371       19       4        0             0 init
[  555.604000] [  467]     0   467      372       20       4        0             0 syslogd
[  555.612000] [  469]     0   469      367       16       4        0             0 klogd
[  555.620000] [  471]     0   471      212       29       5        0             0 hotplug2
[  555.632000] [  480]     0   480      322       36       3        0             0 procd
[  555.640000] [  486]     0   486      384       49       5        0             0 netifd
[  555.648000] [  494]     0   494      219       15       3        0             0 ubusd
[  555.656000] [  548]     0   548      367       16       3        0             0 watchdog
[  555.664000] [  595]     0   595      370       18       3        0             0 udhcpc
[  555.672000] [  869]     0   869      289       18       5        0             0 dropbear
[  555.680000] [  907] 65534   907      235       19       4        0             0 dnsmasq
[  555.692000] [  918]     0   918      370       19       4        0             0 ntpd
[  555.700000] [  921]     0   921      306       38       5        0             0 dropbear
[  555.708000] [  922]     0   922      371       20       4        0             0 ash
[  555.716000] [  931]     0   931      306       38       5        0             0 dropbear
[  555.724000] [  932]     0   932      371       20       5        0             0 ash
[  555.732000] [  937]     0   937      306       38       5        0             0 dropbear
[  555.740000] [  938]     0   938      371       20       4        0             0 ash
[  555.748000] [ 1234]     0  1234      410       60       4        0             0 wifi
[  555.756000] [ 1268]     0  1268      410       64       4        0             0 wifi
[  555.768000] [ 1348]     0  1348      391       24       4        0             0 hostapd
[  555.776000] [ 1358]     0  1358      370       19       3        0             0 top
[  555.784000] [ 1426]     0  1426      367       12       3        0             0 sleep
[  555.792000] Out of memory: Kill process 907 (dnsmasq) score 7 or sacrifice child
[  555.800000] Killed process 907 (dnsmasq) total-vm:940kB, anon-rss:76kB, file-rss:0kB
[  575.408000] udhcpc invoked oom-killer: gfp_mask=0x201da, order=0, oom_score_adj=0
[  575.416000] Call Trace:
[  575.420000] [<80011eb4>] dump_stack+0x8/0x34
[  575.424000] [<8005f2ec>] dump_header.isra.16+0x44/0x124
[  575.432000] [<8005f688>] oom_kill_process+0x134/0x56c
[  575.436000] [<80060048>] out_of_memory+0x324/0x37c
[  575.440000] [<80063380>] __alloc_pages_nodemask+0x550/0x634
[  575.448000] [<8005e8ac>] filemap_fault+0x2d4/0x45c
[  575.452000] [<80078a94>] __do_fault+0xd0/0x680
[  575.456000] [<8007c7e0>] handle_pte_fault+0x46c/0x9e0
[  575.464000] [<8007ce04>] handle_mm_fault+0xb0/0xdc
[  575.468000] [<80015de8>] do_page_fault+0x148/0x38c
[  575.472000] [<80001420>] ret_from_exception+0x0/0x24
[  575.480000] 
[  575.480000] Mem-Info:
[  575.484000] Normal per-cpu:
[  575.488000] CPU    0: hi:    0, btch:   1 usd:   0
[  575.492000] active_anon:574 inactive_anon:11 isolated_anon:0
[  575.492000]  active_file:3 inactive_file:62 isolated_file:0
[  575.492000]  unevictable:0 dirty:0 writeback:0 unstable:0
[  575.492000]  free:127 slab_reclaimable:193 slab_unreclaimable:1132
[  575.492000]  mapped:5 shmem:20 pagetables:93 bounce:0
[  575.492000]  free_cma:0
[  575.524000] Normal free:508kB min:508kB low:632kB high:760kB active_anon:2296                                                                                                                                 
kB inactive_anon:44kB active_file:12kB inactive_file:248kB unevictable:0kB isola                                                                                                                                 
ted(anon):0kB isolated(file):0kB present:16256kB managed:12896kB mlocked:0kB dir                                                                                                                                 
ty:0kB writeback:0kB mapped:20kB shmem:80kB slab_reclaimable:772kB slab_unreclai                                                                                                                                 
mable:4528kB kernel_stack:344kB pagetables:372kB unstable:0kB bounce:0kB free_cm                                                                                                                                 
a:0kB writeback_tmp:0kB pages_scanned:138 all_unreclaimable? yes
[  575.564000] lowmem_reserve[]: 0 0
[  575.568000] Normal: 1*4kB (U) 13*8kB (UR) 5*16kB (UR) 2*32kB (UR) 2*64kB (UR)                                                                                                                                 
 1*128kB (R) 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB = 508kB
[  575.584000] 92 total pagecache pages
[  575.588000] 0 pages in swap cache
[  575.592000] Swap cache stats: add 0, delete 0, find 0/0
[  575.596000] Free swap  = 0kB
[  575.600000] Total swap = 0kB
[  575.604000] 4096 pages RAM
[  575.608000] 824 pages reserved
[  575.612000] 264100 pages shared
[  575.616000] 2746 pages non-shared
[  575.620000] [ pid ]   uid  tgid total_vm      rss nr_ptes swapents oom_score_adj name
[  575.628000] [  346]     0   346      371       19       4        0           0 init
[  575.636000] [  467]     0   467      372       20       4        0           0 syslogd
[  575.644000] [  469]     0   469      367       16       4        0           0 klogd
[  575.652000] [  471]     0   471      212       29       5        0           0 hotplug2
[  575.660000] [  480]     0   480      322       36       3        0           0 procd
[  575.668000] [  486]     0   486      384       49       5        0           0 netifd
[  575.676000] [  494]     0   494      219       15       3        0           0 ubusd
[  575.688000] [  548]     0   548      367       16       3        0           0 watchdog
[  575.696000] [  595]     0   595      370       18       3        0           0 udhcpc
[  575.704000] [  869]     0   869      289       18       5        0           0 dropbear
[  575.712000] [  918]     0   918      370       19       4        0           0 ntpd
[  575.720000] [  921]     0   921      306       38       5        0           0 dropbear
[  575.728000] [  922]     0   922      371       20       4        0           0 ash
[  575.736000] [  931]     0   931      306       38       5        0           0 dropbear
[  575.748000] [  932]     0   932      371       20       5        0           0 ash
[  575.756000] [  937]     0   937      306       38       5        0           0 dropbear
[  575.764000] [  938]     0   938      371       20       4        0           0 ash
[  575.772000] [ 1234]     0  1234      410       60       4        0           0 wifi
[  575.780000] [ 1268]     0  1268      410       64       4        0           0 wifi
[  575.788000] [ 1348]     0  1348      391       24       4        0           0 hostapd
[  575.796000] [ 1358]     0  1358      370       19       3        0           0 top
[  575.804000] [ 1426]     0  1426      367       12       3        0           0 sleep
[  575.812000] Out of memory: Kill process 346 (init) score 0 or sacrifice child
[  575.820000] Killed process 346 (init) total-vm:1484kB, anon-rss:76kB, file-rss:0kB
[  619.964000] dropbear invoked oom-killer: gfp_mask=0x201da, order=0, oom_score_adj=0
[  619.972000] Call Trace:
[  619.976000] [<80011eb4>] dump_stack+0x8/0x34
[  619.980000] [<8005f2ec>] dump_header.isra.16+0x44/0x124
[  619.988000] [<8005f688>] oom_kill_process+0x134/0x56c
[  619.992000] [<80060048>] out_of_memory+0x324/0x37c
[  619.996000] [<80063380>] __alloc_pages_nodemask+0x550/0x634
[  620.004000] [<8005e8ac>] filemap_fault+0x2d4/0x45c
[  620.008000] [<80078a94>] __do_fault+0xd0/0x680
[  620.016000] [<8007c7e0>] handle_pte_fault+0x46c/0x9e0
[  620.020000] [<8007ce04>] handle_mm_fault+0xb0/0xdc
[  620.024000] [<80015de8>] do_page_fault+0x148/0x38c
[  620.032000] [<80001420>] ret_from_exception+0x0/0x24
[  620.036000] 
[  620.036000] Mem-Info:
[  620.040000] Normal per-cpu:
[  620.044000] CPU    0: hi:    0, btch:   1 usd:   0
[  620.048000] active_anon:567 inactive_anon:11 isolated_anon:0
[  620.048000]  active_file:8 inactive_file:56 isolated_file:0
[  620.048000]  unevictable:0 dirty:0 writeback:0 unstable:0
[  620.048000]  free:127 slab_reclaimable:194 slab_unreclaimable:1020
[  620.048000]  mapped:5 shmem:20 pagetables:89 bounce:0
[  620.048000]  free_cma:0
[  620.080000] Normal free:508kB min:508kB low:632kB high:760kB active_anon:2268                                                                                                                                 
kB inactive_anon:44kB active_file:32kB inactive_file:224kB unevictable:0kB isola                                                                                                                                 
ted(anon):0kB isolated(file):0kB present:16256kB managed:12896kB mlocked:0kB dir                                                                                                                                 
ty:0kB writeback:0kB mapped:20kB shmem:80kB slab_reclaimable:776kB slab_unreclai                                                                                                                                 
mable:4080kB kernel_stack:336kB pagetables:356kB unstable:0kB bounce:0kB free_cm                                                                                                                                 
a:0kB writeback_tmp:0kB pages_scanned:233 all_unreclaimable? yes
[  620.120000] lowmem_reserve[]: 0 0
[  620.124000] Normal: 1*4kB (U) 25*8kB (UR) 17*16kB (UR) 1*32kB (R) 0*64kB 0*12                                                                                                                                 
8kB 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB = 508kB
[  620.140000] 87 total pagecache pages
[  620.144000] 0 pages in swap cache
[  620.148000] Swap cache stats: add 0, delete 0, find 0/0
[  620.152000] Free swap  = 0kB
[  620.156000] Total swap = 0kB
[  620.160000] 4096 pages RAM
[  620.164000] 824 pages reserved
[  620.168000] 264921 pages shared
[  620.172000] 2678 pages non-shared
[  620.172000] [ pid ]   uid  tgid total_vm      rss nr_ptes swapents oom_score_adj name
[  620.184000] [  467]     0   467      372       20       4        0           0 syslogd
[  620.192000] [  469]     0   469      367       16       4        0           0 klogd
[  620.200000] [  471]     0   471      212       29       5        0           0 hotplug2
[  620.208000] [  480]     0   480      322       36       3        0           0 procd
[  620.216000] [  486]     0   486      384       49       5        0           0 netifd
[  620.224000] [  494]     0   494      219       15       3        0           0 ubusd
[  620.232000] [  548]     0   548      367       16       3        0           0 watchdog
[  620.244000] [  595]     0   595      370       18       3        0           0 udhcpc
[  620.252000] [  869]     0   869      289       18       5        0           0 dropbear
[  620.260000] [  918]     0   918      370       19       4        0           0 ntpd
[  620.268000] [  921]     0   921      306       38       5        0           0 dropbear
[  620.276000] [  922]     0   922      371       20       4        0           0 ash
[  620.284000] [  931]     0   931      306       38       5        0           0 dropbear
[  620.292000] [  932]     0   932      371       20       5        0           0 ash
[  620.300000] [  937]     0   937      306       38       5        0           0 dropbear
[  620.312000] [  938]     0   938      371       20       4        0           0 ash
[  620.320000] [ 1234]     0  1234      410       60       4        0           0 wifi
[  620.328000] [ 1268]     0  1268      410       64       4        0           0 wifi
[  620.336000] [ 1348]     0  1348      391       24       4        0           0 hostapd
[  620.344000] [ 1358]     0  1358      370       19       3        0           0 top
[  620.352000] [ 1426]     0  1426      367       12       3        0           0 sleep
[  620.360000] Out of memory: Kill process 467 (syslogd) score 0 or sacrifice child
[  620.368000] Killed process 467 (syslogd) total-vm:1488kB, anon-rss:64kB, file-rss:16kB
[  643.600000] b43-phy0 debug: Removing Interface type 2
[  643.600000] b43-phy0 debug: Wireless interface stopped
[  643.600000] b43-phy0 debug: DMA-64 rx_ring: Used slots 34/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  643.604000] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  643.716000] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  644.968000] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  644.976000] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  644.984000] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  647.848000] device wlan0 entered promiscuous mode
[  648.280000] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[  648.288000] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  653.908000] b43-phy0 debug: Chip initialized
[  654.120000] b43-phy0 debug: 64-bit DMA initialized
[  654.120000] b43-phy0 debug: QoS enabled
[  654.128000] b43-phy0 debug: Wireless interface started
[  654.128000] b43-phy0 debug: Adding Interface type 3
[  668.092000] b43-phy0 debug: Set beacon interval to 100
[  668.096000] b43-phy0 debug: Updated beacon template at 0x68
[  668.096000] b43-phy0 debug: Updated beacon template at 0x468
[  668.096000] br-lan: port 2(wlan0) entered forwarding state
[  668.104000] br-lan: port 2(wlan0) entered forwarding state
[  670.108000] br-lan: port 2(wlan0) entered forwarding state
[  674.888000] [sched_delayed] sched: RT throttling activated
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 198 bytes
Desc: Digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130323/29e90182/attachment-0001.sig>
