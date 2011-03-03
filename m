From: chris at martin.cc <chris@martin.cc>
Date: Thu, 3 Mar 2011 16:34:44 +1100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTinHzH2RjoxM+yQGttxmgpr3K=BNdXupHB6nJ-9B@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTim4XtL9+2mw7Kx_Cu_LXak8Y6a_CgkwtrUHf_bo@mail.gmail.com>
	<AANLkTinHzH2RjoxM+yQGttxmgpr3K=BNdXupHB6nJ-9B@mail.gmail.com>
Message-ID: <AANLkTimYAEDK7aF1aaNS5_CrbRrxChct4UFKfXDZ+2F6@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/3 Rafa? Mi?ecki <zajec5@gmail.com>:
>
> Also: could you try loading b43 with pio mode instead of dma? To do this:
> rmmod b43
> rmmod ssb
> insmod /lib/modules/2.6.32.x/b43.ko pio=1
>

I reversed the "810-b43_no_pio.patch" patch as Jonas recommended
I also set CONFIG_B43_FORCE_PIO=y
the recompiled.

Just to be sure I also loaded with
    b43 pio=1

NOTE: there is no ssb module in OpenWrt.  perhaps its built in or
included in another module, I'm not sure

I still get the same OoM error, all be it a little bit latter.

The kzalloc() messages are now from the file pio.c - so I'm very sure
that its using polled I/O

root at OpenWrt:/# wifi up
Configuration file: /var/run/hostapd-phy0.conf
compat-wireless-2011-02-25/drivers/net/wireless/b43/main.c:2260
kzalloc 332 bytes
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:178 kzalloc 8 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/main.c:2260
kzalloc 332 bytes
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:143 kzalloc 668 bytes
compat-wireless-2011-02-25/drivers/net/wireless/b43/pio.c:178 kzalloc 8 bytes
device wlan0 entered promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
br-lan: port 2(wlan0) entering forwarding state
Using interface wlan0 with hwaddr 00:22:15:5c:e5:82 and ssid 'OpenWrt'
device wlan0 left promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
device wlan0 entered promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
br-lan: port 2(wlan0) entering forwarding state
kworker/0:15 invoked oom-killer: gfp_mask=0xd0, order=0, oom_adj=0,
oom_score_adj=0
Call Trace:
[<80009120>] dump_stack+0x8/0x34
[<8005f828>] dump_header.clone.13+0x4c/0x120
[<8005fa50>] oom_kill_process.clone.15+0x5c/0x2b4
[<800601f8>] out_of_memory+0x2d4/0x364
[<80064074>] __alloc_pages_nodemask+0x45c/0x570
[<8008d214>] cache_alloc_refill+0x280/0x740
[<8008d880>] kmem_cache_alloc+0x84/0xf4
[<80188a38>] skb_clone+0xdc/0x120
[<80117520>] broadcast_uevent+0x64/0xe0
[<81a14678>] 0x81a14678


----------------------------------------------------------
Chris Martin
m: +61 419 812 371
----------------------------------------------------------
