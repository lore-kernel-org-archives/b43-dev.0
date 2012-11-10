From: nuno.silva at aalto.fi <nuno.silva@aalto.fi>
Date: Sat, 10 Nov 2012 19:45:52 +0200
Subject: bcm4312 and overloaded APs
Message-ID: <87625dcpwv.fsf@ist.utl.pt>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I am trying to debug a possible issue with my current configuration: I
am using wpa_supplicant together with a broadcom card (through the b43
driver) under Gentoo.

The card: 
Broadcom Corporation BCM4312 802.11b/g LP-PHY (rev 01)

And this is under linux version 3.2.1 on amd64, with some Gentoo-level
patches.

At my school, we have an open wireless network, and computers are
frequently within reach of several access points for this network.

But the APs seem to employ some load-balancing strategy, where several
APs will turn down the association request claiming they're overloaded
(RX AssocResp with status=17).

It is frequent that, when connecting, my laptop will try all the APs,
one by one, taking possibly more than one minute to associate; it seems
that, although the association responses are immediate, the driver waits
for some moments before trying the next AP in the list; I've seen the
driver also trying the same AP *again* (with the same result) before
moving on to the next in the list.

Now I don't know if this is some kind of load-balancing or how does it
work, nor do I know if this is the expected behavior (maybe it is?). If
this is not supposed to happen, where can I look to try to fix the
issue?


(Sure, this is not a *recent* kernel, but if this is a known issue that
was fixed in recent versions, just tell me and I'll upgrade.)


Here go some more detailed outputs on the hardware and on the kernel:

$ uname -a
Linux monolith 3.2.1-gentoo-r2-ir1-20120214 #1 Tue Feb 14 21:53:49 WET 2012 x86_64 AMD Athlon(tm) Neo Processor MV-40 AuthenticAMD GNU/Linux

$ /usr/sbin/lspci -vvn|grep 4315 -A7
02:00.0 0280: 14e4:4315 (rev 01)
	Subsystem: 103c:1508
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 32 bytes
	Interrupt: pin A routed to IRQ 18
	Region 0: Memory@f0200000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3

$ grep .  /sys/module/b43/parameters/ -R
/sys/module/b43/parameters/pio:0
/sys/module/b43/parameters/verbose:2
/sys/module/b43/parameters/btcoex:1
/sys/module/b43/parameters/qos:1
/sys/module/b43/parameters/hwtkip:0
/sys/module/b43/parameters/nohwcrypt:0
/sys/module/b43/parameters/hwpctl:0
/sys/module/b43/parameters/bad_frames_preempt:0


And a small excerpt of the kernel log, concerning two failed and one
successful association attempts:

Nov  6 14:43:14 localhost kernel: [346192.270484] wlan0: authenticate with 00:27:0d:08:c3:20 (try 1)
Nov  6 14:43:14 localhost kernel: [346192.273708] wlan0: authenticated
Nov  6 14:43:14 localhost kernel: [346192.273763] wlan0: associate with 00:27:0d:08:c3:20 (try 1)
Nov  6 14:43:14 localhost kernel: [346192.276756] wlan0: RX AssocResp from 00:27:0d:08:c3:20 (capab=0x401 status=17 aid=0)
Nov  6 14:43:14 localhost kernel: [346192.276765] wlan0: 00:27:0d:08:c3:20 denied association (code=17)
Nov  6 14:43:14 localhost kernel: [346192.276959] wlan0: deauthenticating from 00:27:0d:08:c3:20 by local choice (reason=3)
Nov  6 14:43:25 localhost kernel: [346203.607492] wlan0: direct probe to 00:27:0d:2d:d0:70 (try 1/3)
Nov  6 14:43:25 localhost kernel: [346203.619432] wlan0: direct probe responded
Nov  6 14:43:25 localhost kernel: [346203.619461] wlan0: authenticate with 00:27:0d:2d:d0:70 (try 1)
Nov  6 14:43:25 localhost kernel: [346203.623198] wlan0: authenticated
Nov  6 14:43:25 localhost kernel: [346203.623686] wlan0: associate with 00:27:0d:2d:d0:70 (try 1)
Nov  6 14:43:25 localhost kernel: [346203.626206] wlan0: RX AssocResp from 00:27:0d:2d:d0:70 (capab=0x401 status=17 aid=0)
Nov  6 14:43:25 localhost kernel: [346203.626215] wlan0: 00:27:0d:2d:d0:70 denied association (code=17)
Nov  6 14:43:25 localhost kernel: [346203.626515] wlan0: deauthenticating from 00:27:0d:2d:d0:70 by local choice (reason=3)
Nov  6 14:43:36 localhost kernel: [346214.958491] wlan0: authenticate with 00:27:0d:2d:d0:70 (try 1)
Nov  6 14:43:36 localhost kernel: [346214.964027] wlan0: authenticated
Nov  6 14:43:36 localhost kernel: [346214.964091] wlan0: associate with 00:27:0d:2d:d0:70 (try 1)
Nov  6 14:43:36 localhost kernel: [346214.967219] wlan0: RX AssocResp from 00:27:0d:2d:d0:70 (capab=0x421 status=0 aid=48)
Nov  6 14:43:36 localhost kernel: [346214.967226] wlan0: associated
Nov  6 14:43:36 localhost kernel: [346214.968876] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
Nov  6 14:43:36 localhost wpa_cli: interface wlan0 CONNECTED


-- 
Thanks,
Nuno Silva (aka njsg)
http://njsg.sdf-eu.org/
