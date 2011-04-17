From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 17 Apr 2011 09:06:35 +0200
Subject: A small error in b43
In-Reply-To: <alpine.DEB.2.01.1104162313180.18728@trent.utfs.org>
References: <alpine.DEB.2.01.1104162313180.18728@trent.utfs.org>
Message-ID: <BANLkTimm-cJ6tvnuMpPvV4OPMmGXPZqCbA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/4/17 Christian Kujau <lists@nerdbynature.de>:
> I just stumbled over the "A small error in b43" thread and wanted to say
> thanks!
>
> With b43-fwcutter (git) and broadcom-wl-5.10.56.27.3/driver/wl_apsta/wl_prebuilt.o,
> my BCM4322 chip finally works!
>
> 2.6.38.2-9.fc15.x86_64 / MacBookPro5,5
>
> 03:00.0 Network controller: Broadcom Corporation BCM4322 802.11a/b/g/n Wireless LAN Controller (rev 01)
> ? ? ? ?Subsystem: Apple Computer Inc. Device 008d
> ? ? ? ?Flags: bus master, fast devsel, latency 0, IRQ 23
> ? ? ? ?Memory at d3200000 (64-bit, non-prefetchable) [size=16K]
> ? ? ? ?Capabilities: [40] Power Management version 3
> ? ? ? ?Capabilities: [58] Vendor Specific Information: Len=78 <?>
> ? ? ? ?Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
> ? ? ? ?Capabilities: [d0] Express Endpoint, MSI 00
> ? ? ? ?Capabilities: [100] Advanced Error Reporting
> ? ? ? ?Capabilities: [13c] Virtual Channel
> ? ? ? ?Capabilities: [160] Device Serial Number d5-53-bb-ff-ff-00-00-26
> ? ? ? ?Capabilities: [16c] Power Budgeting <?>
> ? ? ? ?Kernel driver in use: b43-pci-bridge
> ? ? ? ?Kernel modules: ssb
>
> It's pretty slow (max ~500KBps vs. ~3MBps in MacOS) and even SSH
> connections are a bit sluggish, but it's better than nothing :-)
>
> Thanks again!
> Christian.
>
>
> [ 4215.197290] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
> [ 4215.273450] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [ 4238.260117] b43-phy1: Broadcom 4322 WLAN found (core revision 16)
> [ 4238.283448] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
> [ 4238.283765] Registered led device: b43-phy1::tx
> [ 4238.283801] Registered led device: b43-phy1::rx
> [ 4238.283840] Registered led device: b43-phy1::radio
> [ 4238.283864] Broadcom 43xx driver loaded [ Features: PMNLS, Firmware-ID: FW13 ]
> [ 4238.486290] b43-phy1: Loading firmware version 508.1084 (2009-01-14 01:32:01)

Thanks for your report! :) Support in 2.6.38 is known to be speed
limited. Actually, if you check
http://wireless.kernel.org/en/users/Drivers/b43 , we report BCM4322 as
supported in 2.6.39+. With this newer kernel you should get 54M TX.

-- 
Rafa?
