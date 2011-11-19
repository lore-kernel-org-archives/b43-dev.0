From: acrux <acrux_it@libero.it>
Date: Sat, 19 Nov 2011 18:45:43 +0100
Subject: b43 success report: Linksys WMP54GS v1.1 PCI
Message-ID: <20111119184543.04c02706.acrux_it@libero.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

hi,
just to report a success with this card: Linksys WMP54GS v1.1 PCI
http://homesupport.cisco.com/en-us/wireless/lbc/WMP54GS
Maybe someone could add this info to Supported Devices:
http://linuxwireless.org/en/users/Drivers/b43/devices




0000:00:06.0 Network controller: Broadcom Corporation BCM4318 [AirForce One 54g] 802.11g Wireless LAN Controller (rev 02)
	Subsystem: Linksys WMP54GS v1.1 802.11g Wireless-G PCI Adapter with SpeedBooster
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 9
	Region 0: Memory at 80002000 (32-bit, non-prefetchable) [size=8K]
	Kernel driver in use: b43-pci-bridge
	Kernel modules: ssb



root at pegasos2:~# crux    
CRUX PPC (32 bit) version 2.7
root at pegasos2:~# uname -a
Linux pegasos2 3.1.1 #1 PREEMPT Fri Nov 18 21:43:16 CET 2011 ppc 7447/7457, altivec supported CHRP Pegasos2 GNU/Linux
root at pegasos2:~# lsmod |grep b43
b43                   160368  0 
mac80211              170782  1 b43
cfg80211              143001  2 b43,mac80211
ssb                    37916  1 b43
root at pegasos2:~# lspci -vnn | grep 14e4
0000:00:06.0 Network controller [0280]: Broadcom Corporation BCM4318 [AirForce One 54g] 802.11g Wireless LAN Controller [14e4:4318] (rev 02)
root@pegasos2:~# dmesg |grep b43
b43-pci-bridge 0000:00:06.0: enabling device (0000 -> 0002)
b43-phy0: Broadcom 4318 WLAN found (core revision 9)
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)


-- 
acrux <acrux_it@libero.it>
