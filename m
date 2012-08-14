From: George Wright <gw@gwright.org.uk>
Date: Tue, 14 Aug 2012 15:07:32 -0400
Subject: Packet loss on bcm4331
Message-ID: <502AA1F4.7090607@gwright.org.uk>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I have a MacBook with a bcm4331 chip which mostly works in Linux (Fedora
17 w/kernel 3.5.1), but I'm noticing horrible packet loss and throughput
a lot of the time.

The setup is basically a small apartment with an 802.11bgn router
sitting in the living room; I've had the laptop sit directly on top of
the router and run ping to another computer wired directly into the
access point and experienced 75% packet loss. File transfers are
experiencing throughput in the region of 200kB/s to 800kB/s. Oddly
enough, the amount of packet loss is significantly reduced if I'm
connected in my bedroom (~20 feet from the router and with a couple of
walls in between). I've also experienced the same problems with my
backup wireless router (a WRT54GL running dd-wrt).

By comparison, on OS X I get 0% packet loss and throughput in the region
of 2MB-3MB/s.

System information:

[george at aluminium ~]$ uname -a
Linux aluminium 3.5.1-1.fc17.x86_64 #1 SMP Thu Aug 9 17:50:43 UTC 2012
x86_64 x86_64 x86_64 GNU/Linux

[george at aluminium ~]$ lspci -vnn | grep 43 -A7
04:00.0 Network controller [0280]: Broadcom Corporation BCM4331
802.11a/b/g/n [14e4:4331] (rev 02)
	Subsystem: Apple Computer Inc. Device [106b:00ef]
	Flags: bus master, fast devsel, latency 0, IRQ 17
	Memory at c1900000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: <access denied>
	Kernel driver in use: bcma-pci-bridge

In dmesg the relevant messages seem to be:

[ 3062.855352] wlan0: authenticate with d8:c7:c8:eb:08:20
[ 3062.865459] wlan0: direct probe to d8:c7:c8:eb:08:20 (try 1/3)
[ 3063.065716] wlan0: direct probe to d8:c7:c8:eb:08:20 (try 2/3)
[ 3063.266339] wlan0: direct probe to d8:c7:c8:eb:08:20 (try 3/3)
[ 3063.466953] wlan0: authentication with d8:c7:c8:eb:08:20 timed out
[ 3063.707190] wlan0: authenticate with d8:c7:c8:eb:0a:40
[ 3063.716868] wlan0: direct probe to d8:c7:c8:eb:0a:40 (try 1/3)
[ 3063.917113] wlan0: direct probe to d8:c7:c8:eb:0a:40 (try 2/3)
[ 3064.117756] wlan0: direct probe to d8:c7:c8:eb:0a:40 (try 3/3)
[ 3064.318329] wlan0: authentication with d8:c7:c8:eb:0a:40 timed out
[ 3064.563442] wlan0: authenticate with d8:c7:c8:eb:06:e0
[ 3064.563696] wlan0: send auth to d8:c7:c8:eb:06:e0 (try 1/3)
[ 3064.763538] wlan0: send auth to d8:c7:c8:eb:06:e0 (try 2/3)
[ 3064.771511] wlan0: authenticated
[ 3064.772525] wlan0: associate with d8:c7:c8:eb:06:e0 (try 1/3)
[ 3064.782600] wlan0: RX AssocResp from d8:c7:c8:eb:06:e0 (capab=0x431
status=0 aid=7)
[ 3064.782775] wlan0: associated
[ 3107.530689] ieee80211 phy0: wlan0: No probe response from AP
d8:c7:c8:eb:06:e0 after 500ms, disconnecting.
[ 3107.552816] cfg80211: Calling CRDA to update world regulatory domain
[ 3107.555845] cfg80211: World regulatory domain updated:
[ 3107.555850] cfg80211:   (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[ 3107.555854] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300
mBi, 2000 mBm)
[ 3107.555856] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300
mBi, 2000 mBm)
[ 3107.555858] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300
mBi, 2000 mBm)
[ 3107.555860] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300
mBi, 2000 mBm)
[ 3107.555863] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300
mBi, 2000 mBm)
[ 3107.556124] cfg80211: Calling CRDA for country: CA
[ 3107.559776] cfg80211: Regulatory domain changed to country: CA
[ 3107.559781] cfg80211:   (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[ 3107.559786] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300
mBi, 2700 mBm)
[ 3107.559790] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300
mBi, 1700 mBm)
[ 3107.559794] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300
mBi, 2000 mBm)
[ 3107.559798] cfg80211:   (5490000 KHz - 5710000 KHz @ 40000 KHz), (300
mBi, 2000 mBm)
[ 3107.559801] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300
mBi, 3000 mBm)

I'm loading the b43 module with the following parameters:

options b43 nohwcrypt=1 qos=0 hwpctl=1

I've also tried it with hwpctl=0 to no avail.

Can anyone suggest what may be going on here?

Thanks,

George
