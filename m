From: Tom Gundersen <teg@jklm.no>
Date: Mon, 21 Feb 2011 01:05:47 +0100
Subject: bcm4322 success (WPA2)!
In-Reply-To: <AANLkTi=p50uBUTLQO6Jx0N1ODbpwSHxk3jx7aN4yPP-R@mail.gmail.com>
References: <201101032121.10454.christoph.thielecke@gmx.de>
	<201102201340.52880.christoph.thielecke@gmx.de>
	<AANLkTimRE9iAcoODyWmhcp0rOUAwEG_vy3Ozs7c3VM7N@mail.gmail.com>
	<201102201431.45988.christoph.thielecke@gmx.de>
	<AANLkTik4xfzORZm03u+pMoezaV+HNUw-n7OqH-oZ_Dt1@mail.gmail.com>
	<20110220182541.GP6696@helfmeier.de>
	<AANLkTi=p50uBUTLQO6Jx0N1ODbpwSHxk3jx7aN4yPP-R@mail.gmail.com>
Message-ID: <AANLkTinarPPuNDXtxC=AoakSWn63mpqjcGJ3EM=magBg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Rafa?,

I also have a bcm4322 chip, which works with WPA2 using 2.6.38-rc5.

2011/2/20 Rafa? Mi?ecki <zajec5@gmail.com>:
> For now you have to download huge firmware (and hacking extractor) or
> try linking ucode16_mimo to ucode16.

This is the only thing I had to do to make it work.

> 2011/2/20 Clemens Helfmeier <clemens@helfmeier.de>:
>> My dmesg log shows quite a lot of error messages (approx every 7 seconds in
>> idle and more often when traffic is high):
>> [ 4015.044435] b43-phy0 ERROR: PHY transmission error
>> [ 4021.910720] b43-phy0 ERROR: PHY transmission error
>> [ 4028.866892] b43-phy0 ERROR: PHY transmission error

I'm seeing about the same here.

Furthermore, I get about 5% packet loss when pinging my wireless
router (with no other traffic).

> Just for sure: can you try forcing rate to 1M, 2M or 11M? Does it
> noticeably lowers amount of reported PHY errors? The command you need
> to use is like:
> iwconfig wlan0 rate 1M
> iwconfig wlan0 rate 2M
> iwconfig wlan0 rate 11M

iwconfig says that my rate is 11 Mb/s, but since I expected it to be
54, I figured this might be wrong, so I tried
% iwconfig wlan0 rate 11M

This appears to solve the problem completely! I have not seen any more
errors and my packet loss is 0%. (The download speed is still
suboptimal, but I read that you already have some patches for that, so
I'll just wait for when they are posted.)

Thanks for making this work! (It is infinitely better than the wl
driver...). If ever you need some testing of new patches related to my
card, let me know.

Cheers,

Tom


FYI:

% lspci -vvv -d 43
lspci -vvv -d :432b
0c:00.0 Network controller: Broadcom Corporation BCM4322 802.11a/b/g/n
Wireless LAN Controller (rev 01)
        Subsystem: Dell Wireless 1510 Wireless-N WLAN Mini-Card
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0, Cache Line Size: 64 bytes
        Interrupt: pin A routed to IRQ 17
        Region 0: Memory@f69fc000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: <access denied>
        Kernel driver in use: b43-pci-bridge
        Kernel modules: ssb

% dmesg | grep b43 | grep -v error
[    4.634710] b43-pci-bridge 0000:0c:00.0: PCI INT A -> GSI 17
(level, low) -> IRQ 17
[    4.634726] b43-pci-bridge 0000:0c:00.0: setting latency timer to 64
[    5.081082] b43-phy0: Broadcom 4322 WLAN found (core revision 16)
[    5.120182] b43-phy0 debug: Found PHY: Analog 8, Type 4, Revision 4
[    5.120211] b43-phy0 debug: Found Radio: Manuf 0x17F, Version
0x2056, Revision 3
[    5.153525] Registered led device: b43-phy0::tx
[    5.153598] Registered led device: b43-phy0::rx
[    5.153660] Registered led device: b43-phy0::radio
[    7.170069] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[    7.300260] b43-phy0 debug: Chip initialized
[    7.300426] b43-phy0 debug: 64-bit DMA initialized
[    7.300514] b43-phy0 debug: QoS enabled
[    7.317592] b43-phy0 debug: Wireless interface started
[    7.317611] b43-phy0 debug: Adding Interface type 2
[   13.439529] b43-phy0 debug: Using hardware based encryption for
keyidx: 0, mac: 5c:33:8e:ea:24:f3
[   13.439619] b43-phy0 debug: Using hardware based encryption for
keyidx: 1, mac: ff:ff:ff:ff:ff:ff
