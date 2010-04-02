From: Jim Haynes <jhhaynes@earthlink.net>
Date: Fri, 2 Apr 2010 17:14:33 -0500 (CDT)
Subject: Please help - what is causing these errors and how do I fix them
Message-ID: <alpine.LFD.2.00.1004021713550.1920@localhost>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


machine is Dell i1545 laptop

tail of /var/log/messages

Apr  2 16:48:18 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Apr  2 16:48:19 localhost kernel: __ratelimit: 4 callbacks suppressed
Apr  2 16:48:19 localhost kernel: b43-phy0: Controller restarted
Apr  2 16:48:19 localhost kernel: b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
Apr  2 16:48:19 localhost kernel: b43-phy0: Controller RESET (DMA error) ...
Apr  2 16:48:19 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Apr  2 16:48:21 localhost kernel: b43-phy0: Controller restarted
Apr  2 16:48:21 localhost kernel: b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
Apr  2 16:48:21 localhost kernel: b43-phy0: Controller RESET (DMA error) ...
Apr  2 16:48:21 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)

info from lspci

0c:00.0 Network controller: Broadcom Corporation BCM4312 802.11b/g (rev 01)
 	Subsystem: Dell Wireless 1397 WLAN Mini-Card
 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
 	Latency: 0, Cache Line Size: 64 bytes
 	Interrupt: pin A routed to IRQ 17
 	Region 0: Memory@f69fc000 (64-bit, non-prefetchable) [size=16K]
 	Capabilities: [40] Power Management version 3
 		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
 		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=2 PME-
 	Capabilities: [58] Vendor Specific Information: Len=78 <?>
 	Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
 		Address: 0000000000000000  Data: 0000
 	Capabilities: [d0] Express (v1) Endpoint, MSI 00
 		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 unlimited
 			ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
 		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
 			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
 			MaxPayload 128 bytes, MaxReadReq 128 bytes
 		DevSta:	CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr- TransPend-
 		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <4us, L1 <64us
 			ClockPM+ Surprise- LLActRep- BwNot-
 		LnkCtl:	ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
 			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
 		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
 	Capabilities: [100 v1] Advanced Error Reporting
 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
 		UESvrt:	DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
 		CESta:	RxErr+ BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
 		AERCap:	First Error Pointer: 14, GenCap+ CGenEn- ChkCap+ ChkEn-
 	Capabilities: [13c v1] Virtual Channel
 		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
 		Arb:	Fixed- WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
 		Ctrl:	ArbSelect=Fixed
 		Status:	InProgress-
 		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
 			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
 			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
 			Status:	NegoPending- InProgress-
 	Capabilities: [160 v1] Device Serial Number 5f-42-5f-ff-ff-7e-00-22
 	Capabilities: [16c v1] Power Budgeting <?>
 	Kernel driver in use: b43-pci-bridge
 	Kernel modules: ssb


Some lines from dmesg

Linux version 2.6.32.10-90.fc12.x86_64 (mockbuild at x86-04.phx2.fedoraproject.org) (gcc version 4.4.3 20100127 (Red Hat 4.4.3-4) (GCC) ) #1 SMP Tue Mar 23 09:47:08 UTC 2010

b43-pci-bridge 0000:0c:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
b43-pci-bridge 0000:0c:00.0: setting latency timer to 64

cfg80211: Calling CRDA to update world regulatory domain
b43-phy0: Broadcom 4312 WLAN found (core revision 15)
cfg80211: World regulatory domain updated:
 	(start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
 	(2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
 	(2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
 	(2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
 	(5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
 	(5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
phy0: Selected rate control algorithm 'minstrel'
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
Broadcom 43xx driver loaded [ Features: PMLS, Firmware-ID: FW13 ]
cfg80211: Calling CRDA for country: US
cfg80211: Regulatory domain changed to country: US
 	(start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
 	(2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2700 mBm)
 	(5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 1700 mBm)
 	(5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
 	(5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
 	(5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
 	(5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 3000 mBm)

[drm:drm_mode_rmfb] *ERROR* tried to remove a fb that we didn't own
fuse init (API version 7.13)
b43 ssb0:0: firmware: requesting b43/ucode15.fw
b43 ssb0:0: firmware: requesting b43/lp0initvals15.fw
b43 ssb0:0: firmware: requesting b43/lp0bsinitvals15.fw
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
ADDRCONF(NETDEV_UP): wlan0: link is not ready
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 3 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 6 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 6 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
CE: hpet increasing min_delta_ns to 15000 nsec
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 2 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
__ratelimit: 4 callbacks suppressed
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy0: Controller restarted
b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
