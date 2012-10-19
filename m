From: Chris Murphy <lists@colorremedies.com>
Date: Thu, 18 Oct 2012 21:29:07 -0600
Subject: BCM4321, kernel 3.6.2, unable to connect to N, WPA2P-AES
Message-ID: <29463F1E-C655-491C-BA23-781DA360F7DE@colorremedies.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Summary:

The BCM4321 I have, 14e4:4328, should be capable of b/g/n, but when I try to connect to wireless N, I'm re-prompted for the password. With the same hardware (router and computer) booted OS X of various versions, a connection is possible.


Router:
Linksys WRT600N v1.1
DD-WRT v24-sp2 (06/08/12) mini-usb-ftp - build 19342
ssid: color2n
mode: N-Only
Channel: 2 - 2.417 Ghz
Security: WPA2 Personal, AES


Kernels tried:

Linux f17s 3.6.2-4.fc17.x86_64 #1 SMP Wed Oct 17 02:43:21 UTC 2012 x86_64 x86_64 x86_64 GNU/Linux
Linux f17s 3.6.1-1.fc17.x86_64 #1 SMP Wed Oct 10 12:13:05 UTC 2012 x86_64 x86_64 x86_64 GNU/Linux
Linux f17s 3.5.6-1.fc17.x86_64 #1 SMP Sun Oct 7 19:31:14 UTC 2012 x86_64 x86_64 x86_64 GNU/Linux

Versions:
b43-fwcutter-015-2.fc17.x86_64
broadcom-wl-5.100.138.tar.bz2



[root at f17s chris]# lspci -vvn | grep 43 -A7
0b:00.0 0280: 14e4:4328 (rev 05)
	Subsystem: 106b:008c
	Physical Slot: 4
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 256 bytes
	Interrupt: pin A routed to IRQ 16
	Region 0: Memory at d7300000 (64-bit, non-prefetchable) [size=16K]
--
	Kernel driver in use: b43-pci-bridge
[root at f17s chris]# lspci -vnn -d 14e4:
0b:00.0 Network controller [0280]: Broadcom Corporation BCM4321 802.11a/b/g/n [14e4:4328] (rev 05)
	Subsystem: Apple Computer Inc. Device [106b:008c]
	Physical Slot: 4
	Flags: bus master, fast devsel, latency 0, IRQ 16
	Memory@d7300000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3
	Capabilities: [58] Vendor Specific Information: Len=78 <?>
	Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
	Capabilities: [d0] Express Endpoint, MSI 00
	Capabilities: [100] Advanced Error Reporting
	Capabilities: [13c] Virtual Channel
	Capabilities: [160] Device Serial Number 8b-73-c2-ff-ff-b9-00-1e
	Capabilities: [16c] Power Budgeting <?>
	Kernel driver in use: b43-pci-bridge

========

dmesg repeats this hundreds of times:

[   46.176606] wlan0: authenticate with 00:21:29:6c:23:73
[   46.184511] wlan0: send auth to 00:21:29:6c:23:73 (try 1/3)
[   46.194564] wlan0: authenticated
[   46.194726] b43 ssb0:0: wlan0: disabling HT as WMM/QoS is not supported
[   46.195068] wlan0: associate with 00:21:29:6c:23:73 (try 1/3)
[   46.197408] wlan0: RX AssocResp from 00:21:29:6c:23:73 (capab=0x411 status=18 aid=0)
[   46.197412] wlan0: 00:21:29:6c:23:73 denied association (code=18)
[   46.201514] wlan0: deauthenticating from 00:21:29:6c:23:73 by local choice (reason=3)



I have had success with broadcom-wl, however with kernel 3.6 I've started getting oops. I've erased broadcom-wl and use b43-fwcutter to enable the kernel built-in support with the proprietary firmware, but I've run into this problem.


Chris Murphy
