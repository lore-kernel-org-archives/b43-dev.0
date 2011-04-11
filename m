From: chris at martin.cc <chris@martin.cc>
Date: Mon, 11 Apr 2011 19:59:05 +1000
Subject: Out of memory problem with newer firmware
In-Reply-To: <BANLkTin0-MWxJV=7cNnOhiSKbieuo7OAfQ@mail.gmail.com>
References: <BANLkTin0-MWxJV=7cNnOhiSKbieuo7OAfQ@mail.gmail.com>
Message-ID: <BANLkTinXKpXgwkF6u51L3uKMT_K9=iHUBQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/4/11 Rafa? Mi?ecki <zajec5@gmail.com>
>
> Summary:
> 1) Chris has ASUS WL500pv2 with OpenWRT
> 2) This is router with Broadcom 5354 SoC and LP-PHY card
> 3) Firmware 410.2160 (broadcom-wl-4.150.10.5.tar.bz2) works OK
> 4) Firmware 478.104 (broadcom-wl-4.178.10.4.tar.bz2) causes OOM
>
> Larry was testing his LP-PHY with kmemleak but didn't find anything.
>
> Chris traced a lot of skbs being allocated before OOM (500+).
>
> I suspect that with new firmware we provide slightly different RX
> packets to mac80211 and there is sth wrong with mac80211 causing SKBs
> not being freed. I don't have any other idea how changing firmware
> could cause out of memory problems.
>
> The alloc code is question is dma.c::~585
> skb = __dev_alloc_skb(ring->rx_buffersize, gfp_flags);
>
> I've written patch to dump data we provide mac80211. My hope is to
> notice differences in that data between older vs. newer firmware.
>
> Chris: could you try attached patch and provide dmesg from older and
> newer firmware with this patch applied?
>
> --
> Rafa?


I applied the patch to  the latest OpenWrt trunk. (rev 26588) with
compat-wireless 2011-04-06

Experimental (478.104)
-----------------------------------------------------------------------------------------------------
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
device wlan0 entered promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
br-lan: port 2(wlan0) entering forwarding state
b43-phy0 ERROR: RX: phystat0:0x0000 phystat3:0x3140 macstat:0x01060000
chanstat:0x000D mactime:0x1FE0
b43-phy0 ERROR: RX: ieee80211_rx_status: band:0 freq:31 signal:15
antenna:0 rate_idx:0 flag:0x0080
b43-phy0 ERROR: RX: phystat0:0x0000 phystat3:0x8540 macstat:0x01060000
chanstat:0x000D mactime:0x3EB7
b43-phy0 ERROR: RX: ieee80211_rx_status: band:0 freq:31 signal:-74
antenna:0 rate_idx:0 flag:0x0080
b43-phy0 ERROR: RX: phystat0:0x0000 phystat3:0x3140 macstat:0x01060000
chanstat:0x000D mactime:0x779E
b43-phy0 ERROR: RX: ieee80211_rx_status: band:0 freq:31 signal:-2
antenna:0 rate_idx:0 flag:0x0080
b43-phy0 ERROR: RX: phystat0:0x0000 phystat3:0x3140 macstat:0x01060000
chanstat:0x000D mactime:0x1D85
b43-phy0 ERROR: RX: ieee80211_rx_status: band:0 freq:31 signal:-14
antenna:0 rate_idx:0 flag:0x0080
b43-phy0 ERROR: RX: phystat0:0x0000 phystat3:0x8540 macstat:0x01060000
chanstat:0x000D mactime:0x5142
b43-phy0 ERROR: RX: ieee80211_rx_status: band:0 freq:31 signal:-50
antenna:0 rate_idx:0 flag:0x0080

Followed immediately by OOM


Stable (410.2160)
-----------------------------------------------------------------------------------------------------
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
device wlan0 entered promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
br-lan: port 2(wlan0) entering forwarding state
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x7940	macstat:0x01060000	chanstat:0x005D	mactime:0xC2F6
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-19	antenna:0	rate_idx:0	flag:0x0080
b43-phy0 ERROR: RX:
phystat0:0x0020	phystat3:0x8540	macstat:0x01060004	chanstat:0x005D	mactime:0xCD95
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-74	antenna:1	rate_idx:0	flag:0x0000
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x2240	macstat:0x01060000	chanstat:0x005D	mactime:0x2B07
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-24	antenna:0	rate_idx:0	flag:0x0080
b43-phy0 ERROR: RX:
phystat0:0x0001	phystat3:0x31A0	macstat:0x01060000	chanstat:0x005D	mactime:0xEAE0
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-19	antenna:0	rate_idx:11	flag:0x0000
b43-phy0 ERROR: RX:
phystat0:0x0001	phystat3:0x31A0	macstat:0x01060000	chanstat:0x005D	mactime:0xEF34
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-22	antenna:0	rate_idx:11	flag:0x0000
device wlan0 left promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
device wlan0 entered promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
br-lan: port 2(wlan0) entering forwarding state
net_ratelimit: 348 callbacks suppressed
b43-phy0 ERROR: RX:
phystat0:0x0020	phystat3:0xB540	macstat:0x01068000	chanstat:0x005D	mactime:0x52E8
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-21	antenna:1	rate_idx:0	flag:0x0080
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x3140	macstat:0x01068028	chanstat:0x005D	mactime:0x5985
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-21	antenna:0	rate_idx:0	flag:0x0000
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x2240	macstat:0x01068000	chanstat:0x005D	mactime:0xBB50
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-13	antenna:0	rate_idx:0	flag:0x0080
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x8540	macstat:0x01068000	chanstat:0x005D	mactime:0x16DC
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-76	antenna:0	rate_idx:0	flag:0x0080
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x8540	macstat:0x01068000	chanstat:0x005D	mactime:0x2000
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-77	antenna:0	rate_idx:0	flag:0x0080
net_ratelimit: 400 callbacks suppressed
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x3140	macstat:0x01068000	chanstat:0x005D	mactime:0xE2DA
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-22	antenna:0	rate_idx:0	flag:0x0080
b43-phy0 ERROR: RX:
phystat0:0x0020	phystat3:0xB540	macstat:0x01068000	chanstat:0x005D	mactime:0x4B9B
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-11	antenna:1	rate_idx:0	flag:0x0080
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x3140	macstat:0x01068000	chanstat:0x005D	mactime:0x72D9
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-22	antenna:0	rate_idx:0	flag:0x0080
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x3140	macstat:0x01068000	chanstat:0x005D	mactime:0xDB9C
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:2	antenna:0	rate_idx:0	flag:0x0080
b43-phy0 ERROR: RX:
phystat0:0x0000	phystat3:0x8540	macstat:0x01068000	chanstat:0x005D	mactime:0x40E8
b43-phy0 ERROR: RX: ieee80211_rx_status:
band:0	freq:33	signal:-79	antenna:0	rate_idx:0	flag:0x0080
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08

No More messages after this, The device functions OK


----------------------------------------------------------
Chris Martin
m: +61 419 812 371
----------------------------------------------------------
