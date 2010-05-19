From: Roberto <naddaro@yahoo.it>
Date: Wed, 19 May 2010 10:29:59 +0000 (GMT)
Subject: No probe response from AP ... after 500ms, disconnecting
Message-ID: <725470.56582.qm@web23707.mail.ird.yahoo.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

I have an HP Pavilion DV6 1350-sl with this broadcom card and I can't make it works

With 2.6.32 kernel it was impossible also to have some response with iwlist scan command now I have a vanilla kernel 2.6.34 and iwlist scan work but I can't connect with any AP

I'm trying with my ap without any encryption. (only to test)

OS is Debian Sid



-----
uname -a

Linux debnote 2.6.34-wok #1 SMP Tue May 18 11:48:41 CEST 2010 i686 GNU/Linux
-----

lspci -vvn|grep 43 -A7

02:00.0 0280: 14e4:4315 (rev 01)
	Subsystem: 103c:1508
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 16
	Region 0: Memory@d9000000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3
--
	Kernel driver in use: b43-pci-bridge

03:00.0 0200: 10ec:8168 (rev 02)
	Subsystem: 103c:3628
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 30
------

dmesg (last part)
[   40.460087] eth0: no IPv6 routers present
[  104.944771] b43 ssb0:0: firmware: requesting b43/ucode15.fw
[  105.012577] b43 ssb0:0: firmware: requesting b43/lp0initvals15.fw
[  105.016876] b43 ssb0:0: firmware: requesting b43/lp0bsinitvals15.fw
[  105.164338] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  110.705386] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  132.677992] b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[  132.678002] b43-phy0 ERROR: This device does not support DMA on your system. Please use PIO instead.
[  132.678007] b43-phy0: Controller RESET (DMA error) ...
[  132.904313] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  138.425176] b43-phy0: Controller restarted
[  203.424284] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  208.968889] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  232.964869] wlan0: authenticate with 00:e0:98:50:5f:f8 (try 1)
[  232.966611] wlan0: authenticated
[  232.992305] wlan0: associate with 00:e0:98:50:5f:f8 (try 1)
[  232.994396] wlan0: RX AssocResp from 00:e0:98:50:5f:f8 (capab=0x5 status=0 aid=9)
[  232.994400] wlan0: associated
[  232.995633] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  238.316105] No probe response from AP 00:e0:98:50:5f:f8 after 500ms, disconnecting.
[  238.332303] cfg80211: Calling CRDA to update world regulatory domain
[  243.908097] wlan0: no IPv6 routers present
[  378.670412] wlan0: authenticate with 00:e0:98:50:5f:f8 (try 1)
[  378.672518] wlan0: authenticated
[  378.672756] wlan0: associate with 00:e0:98:50:5f:f8 (try 1)
[  378.674644] wlan0: RX AssocResp from 00:e0:98:50:5f:f8 (capab=0x5 status=0 aid=10)
[  378.674648] wlan0: associated
[  383.500120] No probe response from AP 00:e0:98:50:5f:f8 after 500ms, disconnecting.
[  383.512276] cfg80211: Calling CRDA to update world regulatory domain

--------

thanks in advance

rob





      
