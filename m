From: Jim Haynes <jhhaynes@earthlink.net>
Date: Tue, 30 Mar 2010 14:13:14 -0500 (CDT)
Subject: A maddening problem
Message-ID: <alpine.LFD.2.00.1003301356440.5421@localhost>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I have this Dell i1545 laptop with Broadcom wireless, details to follow.
I do all the networking configuration by hand, not using NetworkManager.

Lately it is that when I fire it up at home and ifconfig wlan0 up and
do iwlist wlan0 scan it works.  The only access point it finds is one
that I am not allowed to use, but at least the scan works.  Then I take
it to a location where there is an open access point and do the same
ritual and it won't scan.  I've made two back-and-forth trips so far
with the same results.

The machine is running Fedora 12, kernel 2.6.32.9-70.fc12.x86_64
Then I also updated things as of today which brings in a new kernel
2.6.32.10-90.fc12.x86_64 and tested here at home where it works
but haven't yet tried at the site where it breaks.

I've attached 3 files.  The first is a collection of output from
things when it is broken and the next two are when it is working,
the last one being with the new kernel

(If the attachments don't make it through let me know and I can send
the raw ASCII files)
-------------- next part --------------

Output from lspci -vv

00:00.0 Host bridge: Intel Corporation Mobile 4 Series Chipset Memory Controller Hub (rev 07)
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort+ >SERR- <PERR- INTx-
	Latency: 0
	Capabilities: [e0] Vendor Specific Information: Len=0a <?>
	Kernel driver in use: agpgart-intel

00:02.0 VGA compatible controller: Intel Corporation Mobile 4 Series Chipset Integrated Graphics Controller (rev 07) (prog-if 00 [VGA controller])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 29
	Region 0: Memory at f6c00000 (64-bit, non-prefetchable) [size=4M]
	Region 2: Memory at e0000000 (64-bit, prefetchable) [size=256M]
	Region 4: I/O ports at efe8 [size=8]
	Expansion ROM@<unassigned> [disabled]
	Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0200c  Data: 41a1
	Capabilities: [d0] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Kernel driver in use: i915
	Kernel modules: i915

00:02.1 Display controller: Intel Corporation Mobile 4 Series Chipset Integrated Graphics Controller (rev 07)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Region 0: Memory@f6b00000 (64-bit, non-prefetchable) [size=1M]
	Capabilities: [d0] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-

00:1a.0 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #4 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 20
	Region 4: I/O ports@6f60 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1a.1 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #5 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin B routed to IRQ 21
	Region 4: I/O ports@6f80 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1a.2 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #6 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 22
	Region 4: I/O ports@6fa0 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1a.7 USB Controller: Intel Corporation 82801I (ICH9 Family) USB2 EHCI Controller #2 (rev 03) (prog-if 20 [EHCI])
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 22
	Region 0: Memory@fed1c400 (32-bit, non-prefetchable) [size=1K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Debug port: BAR=1 offset=00a0
	Capabilities: [98] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: ehci_hcd

00:1b.0 Audio device: Intel Corporation 82801I (ICH9 Family) HD Audio Controller (rev 03)
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 21
	Region 0: Memory@f6afc000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=55mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [60] MSI: Enable- Count=1/1 Maskable- 64bit+
		Address: 0000000000000000  Data: 0000
	Capabilities: [70] Express (v1) Root Complex Integrated Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE- FLReset+
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed unknown, Width x0, ASPM unknown, Latency L0 <64ns, L1 <1us
			ClockPM- Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed unknown, Width x0, TrErr- Train- SlotClk- DLActive- BWMgmt- ABWMgmt-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed- WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
			Status:	NegoPending- InProgress-
		VC1:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable- ID=0 ArbSelect=Fixed TC/VC=00
			Status:	NegoPending- InProgress-
	Capabilities: [130 v1] Root Complex Link
		Desc:	PortNumber=0f ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: HDA Intel
	Kernel modules: snd-hda-intel

00:1c.0 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 1 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=0b, subordinate=0b, sec-latency=0
	I/O behind bridge: 00002000-00002fff
	Memory behind bridge: f0200000-f03fffff
	Prefetchable memory behind bridge: 00000000f0400000-00000000f05fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #1, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x0, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  0, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet- Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4161
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=01 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.1 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 2 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=0c, subordinate=0c, sec-latency=0
	I/O behind bridge: 00003000-00003fff
	Memory behind bridge: f6900000-f69fffff
	Prefetchable memory behind bridge: 00000000f0600000-00000000f07fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #2, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <256ns, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  1, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4169
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=02 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.2 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 3 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=09, subordinate=09, sec-latency=0
	I/O behind bridge: 0000d000-0000dfff
	Memory behind bridge: f6800000-f68fffff
	Prefetchable memory behind bridge: 00000000f0800000-00000000f09fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr+ UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #3, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <256ns, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  2, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4171
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=03 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.4 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 5 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=0d, subordinate=0e, sec-latency=0
	I/O behind bridge: 0000c000-0000cfff
	Memory behind bridge: f6600000-f67fffff
	Prefetchable memory behind bridge: 00000000f0000000-00000000f01fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #5, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x0, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  4, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet- Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4179
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=05 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1d.0 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #1 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 20
	Region 4: I/O ports@6f00 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1d.1 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #2 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin B routed to IRQ 21
	Region 4: I/O ports@6f20 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1d.2 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #3 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 22
	Region 4: I/O ports@6f40 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1d.7 USB Controller: Intel Corporation 82801I (ICH9 Family) USB2 EHCI Controller #1 (rev 03) (prog-if 20 [EHCI])
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 20
	Region 0: Memory@fed1c000 (32-bit, non-prefetchable) [size=1K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Debug port: BAR=1 offset=00a0
	Capabilities: [98] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: ehci_hcd

00:1e.0 PCI bridge: Intel Corporation 82801 Mobile PCI Bridge (rev 93) (prog-if 01 [Subtractive decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Bus: primary=00, secondary=03, subordinate=03, sec-latency=32
	Secondary status: 66MHz- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort+ <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [50] Subsystem: Dell Device 02aa

00:1f.0 ISA bridge: Intel Corporation ICH9M LPC Interface Controller (rev 03)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Capabilities: [e0] Vendor Specific Information: Len=0c <?>
	Kernel modules: iTCO_wdt

00:1f.2 SATA controller: Intel Corporation ICH9M/M-E SATA AHCI Controller (rev 03) (prog-if 01 [AHCI 1.0])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 28
	Region 0: I/O ports at 6e70 [size=8]
	Region 1: I/O ports at 6e78 [size=4]
	Region 2: I/O ports at 6e80 [size=8]
	Region 3: I/O ports at 6e88 [size=4]
	Region 4: I/O ports at 6ea0 [size=32]
	Region 5: Memory@fed1c800 (32-bit, non-prefetchable) [size=2K]
	Capabilities: [80] MSI: Enable+ Count=1/16 Maskable- 64bit-
		Address: fee0200c  Data: 4181
	Capabilities: [70] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot+,D3cold-)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [a8] SATA HBA v1.0 BAR4 Offset=00000004
	Capabilities: [b0] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: ahci

00:1f.3 SMBus: Intel Corporation 82801I (ICH9 Family) SMBus Controller (rev 03)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Interrupt: pin B routed to IRQ 18
	Region 0: Memory at f6afbf00 (64-bit, non-prefetchable) [size=256]
	Region 4: I/O ports@1100 [size=32]
	Kernel driver in use: i801_smbus
	Kernel modules: i2c-i801

09:00.0 Ethernet controller: Marvell Technology Group Ltd. 88E8040 PCI-E Fast Ethernet Controller (rev 13)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 30
	Region 0: Memory at f68fc000 (64-bit, non-prefetchable) [size=16K]
	Region 2: I/O ports@de00 [size=256]
	Capabilities: [48] Power Management version 3
		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=1 PME-
	Capabilities: [5c] MSI: Enable+ Count=1/1 Maskable- 64bit+
		Address: 00000000fee0300c  Data: 41a9
	Capabilities: [c0] Express (v2) Legacy Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s unlimited, L1 unlimited
			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <256ns, L1 unlimited
			ClockPM+ Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 128 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Not Supported, TimeoutDis+
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -6dB
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr+ BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		AERCap:	First Error Pointer: 1f, GenCap- CGenEn- ChkCap- ChkEn-
	Capabilities: [130 v1] Device Serial Number 02-b0-26-ff-ff-ae-23-00
	Kernel driver in use: sky2
	Kernel modules: sky2

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

Output from dmesg

Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 2.6.32.9-70.fc12.x86_64 (mockbuild at x86-04.phx2.fedoraproject.org) (gcc version 4.4.3 20100127 (Red Hat 4.4.3-4) (GCC) ) #1 SMP Wed Mar 3 04:40:41 UTC 2010
Command line: ro root=UUID=94fbb537-7795-4525-af30-4fc0f0bd138e  LANG=en_US.UTF-8 SYSFONT=latarcyrheb-sun16 KEYBOARDTYPE=pc KEYTABLE=us rhgb quiet
KERNEL supported cpus:
  Intel GenuineIntel
  AMD AuthenticAMD
  Centaur CentaurHauls
BIOS-provided physical RAM map:
 BIOS-e820: 0000000000000000 - 000000000009f000 (usable)
 BIOS-e820: 000000000009f000 - 00000000000a0000 (reserved)
 BIOS-e820: 0000000000100000 - 00000000ddabf400 (usable)
 BIOS-e820: 00000000ddabf400 - 00000000ddac1400 (ACPI NVS)
 BIOS-e820: 00000000ddac1400 - 00000000e0000000 (reserved)
 BIOS-e820: 00000000f8000000 - 00000000fc000000 (reserved)
 BIOS-e820: 00000000fec00000 - 00000000fec10000 (reserved)
 BIOS-e820: 00000000fed18000 - 00000000fed1c000 (reserved)
 BIOS-e820: 00000000fed20000 - 00000000fed90000 (reserved)
 BIOS-e820: 00000000feda0000 - 00000000feda6000 (reserved)
 BIOS-e820: 00000000fee00000 - 00000000fee10000 (reserved)
 BIOS-e820: 00000000ffe00000 - 0000000100000000 (reserved)
 BIOS-e820: 0000000100000000 - 0000000120000000 (usable)
DMI 2.4 present.
last_pfn = 0x120000 max_arch_pfn = 0x400000000
MTRR default type: uncachable
MTRR fixed ranges enabled:
  00000-9FFFF write-back
  A0000-BFFFF uncachable
  C0000-CFFFF write-protect
  D0000-EFFFF uncachable
  F0000-FFFFF write-protect
MTRR variable ranges enabled:
  0 base 000000000 mask 800000000 write-back
  1 base 0E0000000 mask FE0000000 uncachable
  2 base 0DDC00000 mask FFFC00000 uncachable
  3 base 0DE000000 mask FFE000000 uncachable
  4 base 0DDB00000 mask FFFF00000 uncachable
  5 disabled
  6 disabled
  7 disabled
x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
original variable MTRRs
reg 0, base: 0GB, range: 32GB, type WB
reg 1, base: 3584MB, range: 512MB, type UC
reg 2, base: 3548MB, range: 4MB, type UC
reg 3, base: 3552MB, range: 32MB, type UC
reg 4, base: 3547MB, range: 1MB, type UC
total RAM covered: 32219M
 gran_size: 64K 	chunk_size: 64K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 128K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 256K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 64K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 64K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 64K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 64K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 64K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 64K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 128K 	chunk_size: 128K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 256K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 128K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 128K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 128K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 128K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 128K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 128K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 256K 	chunk_size: 256K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 256K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 256K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 256K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 256K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 256K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 256K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 256K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 256K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 256K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 512K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 512K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 512K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 512K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 512K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 512K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 512K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 512K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 512K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 1M 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 1M 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 1M 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 1M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 1M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 1M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 1M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 1M 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 2M 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 2M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 1M
 gran_size: 2M 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 1M
 gran_size: 4M 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 1G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 2G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 8M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 8M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 8M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 1G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 2G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 16M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 16395M
 gran_size: 16M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 24587M
 gran_size: 16M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 1G 	num_reg: 7  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 2G 	num_reg: 7  	lose cover RAM: 11M
 gran_size: 32M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 128M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 256M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 128M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 256M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 128M 	chunk_size: 128M 	num_reg: 7  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 256M 	num_reg: 7  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 91M
 gran_size: 256M 	chunk_size: 256M 	num_reg: 6  	lose cover RAM: 219M
 gran_size: 256M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 219M
 gran_size: 256M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 219M
 gran_size: 256M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 219M
 gran_size: 512M 	chunk_size: 512M 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 512M 	chunk_size: 1G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 512M 	chunk_size: 2G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 1G 	chunk_size: 1G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 1G 	chunk_size: 2G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 2G 	chunk_size: 2G 	num_reg: 4  	lose cover RAM: 1499M
mtrr_cleanup: can not find optimal value
please specify mtrr_gran_size/mtrr_chunk_size
e820 update range: 00000000ddb00000 - 0000000100000000 (usable) ==> (reserved)
last_pfn = 0xddabf max_arch_pfn = 0x400000000
initial memory mapped : 0 - 20000000
init_memory_mapping: 0000000000000000-00000000ddabf000
 0000000000 - 00dda00000 page 2M
 00dda00000 - 00ddabf000 page 4k
kernel direct mapping tables up to ddabf000 @ 8000-e000
init_memory_mapping: 0000000100000000-0000000120000000
 0100000000 - 0120000000 page 2M
kernel direct mapping tables up to 120000000 @ c000-12000
RAMDISK: 373b3000 - 37fef54c
ACPI: RSDP 00000000000fbdd0 00024 (v02 DELL  )
ACPI: XSDT 00000000ddac3e00 00054 (v01 DELL    M09     27D90219 ASL  00000061)
ACPI: FACP 00000000ddac3c9c 000F4 (v04 DELL    M09     27D90219 ASL  00000061)
ACPI: DSDT 00000000ddac4400 05170 (v02 INT430 SYSFexxx 00001001 INTL 20050624)
ACPI: FACS 00000000ddad2c00 00040
ACPI: HPET 00000000ddac3f00 00038 (v01 DELL    M09     00000001 ASL  00000061)
ACPI: APIC 00000000ddac4000 00068 (v01 DELL    M09     27D90219 ASL  00000047)
ACPI: MCFG 00000000ddac3fc0 0003E (v16 DELL    M09     27D90219 ASL  00000061)
ACPI: SLIC 00000000ddac409c 00176 (v01 DELL    M09     27D90219 ASL  00000061)
ACPI: SSDT 00000000ddac2321 0066C (v01  PmRef    CpuPm 00003000 INTL 20050624)
ACPI: Local APIC address 0xfee00000
No NUMA configuration found
Faking a node at 0000000000000000-0000000120000000
Bootmem setup node 0 0000000000000000-0000000120000000
  NODE_DATA [000000000000d000 - 0000000000022fff]
  bootmap [0000000000023000 -  0000000000046fff] pages 24
(8 early reservations) ==> bootmem [0000000000 - 0120000000]
  #0 [0000000000 - 0000001000]   BIOS data page ==> [0000000000 - 0000001000]
  #1 [0000006000 - 0000008000]       TRAMPOLINE ==> [0000006000 - 0000008000]
  #2 [0001000000 - 0001a53ee8]    TEXT DATA BSS ==> [0001000000 - 0001a53ee8]
  #3 [00373b3000 - 0037fef54c]          RAMDISK ==> [00373b3000 - 0037fef54c]
  #4 [000009f000 - 0000100000]    BIOS reserved ==> [000009f000 - 0000100000]
  #5 [0001a54000 - 0001a541e8]              BRK ==> [0001a54000 - 0001a541e8]
  #6 [0000008000 - 000000c000]          PGTABLE ==> [0000008000 - 000000c000]
  #7 [000000c000 - 000000d000]          PGTABLE ==> [000000c000 - 000000d000]
 [ffffea0000000000-ffffea0003ffffff] PMD -> [ffff880001c00000-ffff8800055fffff] on node 0
Zone PFN ranges:
  DMA      0x00000000 -> 0x00001000
  DMA32    0x00001000 -> 0x00100000
  Normal   0x00100000 -> 0x00120000
Movable zone start PFN for each node
early_node_map[3] active PFN ranges
    0: 0x00000000 -> 0x0000009f
    0: 0x00000100 -> 0x000ddabf
    0: 0x00100000 -> 0x00120000
On node 0 totalpages: 1038942
  DMA zone: 56 pages used for memmap
  DMA zone: 105 pages reserved
  DMA zone: 3838 pages, LIFO batch:0
  DMA32 zone: 14280 pages used for memmap
  DMA32 zone: 889591 pages, LIFO batch:31
  Normal zone: 1792 pages used for memmap
  Normal zone: 129280 pages, LIFO batch:31
ACPI: PM-Timer IO Port: 0x1008
ACPI: Local APIC address 0xfee00000
ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
ACPI: IRQ0 used by override.
ACPI: IRQ2 used by override.
ACPI: IRQ9 used by override.
Using ACPI (MADT) for SMP configuration information
ACPI: HPET id: 0x8086a201 base: 0xfed00000
SMP: Allowing 2 CPUs, 0 hotplug CPUs
nr_irqs_gsi: 24
PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
PM: Registered nosave memory: 00000000000a0000 - 0000000000100000
PM: Registered nosave memory: 00000000ddabf000 - 00000000ddac0000
PM: Registered nosave memory: 00000000ddac0000 - 00000000ddac1000
PM: Registered nosave memory: 00000000ddac1000 - 00000000ddac2000
PM: Registered nosave memory: 00000000ddac2000 - 00000000e0000000
PM: Registered nosave memory: 00000000e0000000 - 00000000f8000000
PM: Registered nosave memory: 00000000f8000000 - 00000000fc000000
PM: Registered nosave memory: 00000000fc000000 - 00000000fec00000
PM: Registered nosave memory: 00000000fec00000 - 00000000fec10000
PM: Registered nosave memory: 00000000fec10000 - 00000000fed18000
PM: Registered nosave memory: 00000000fed18000 - 00000000fed1c000
PM: Registered nosave memory: 00000000fed1c000 - 00000000fed20000
PM: Registered nosave memory: 00000000fed20000 - 00000000fed90000
PM: Registered nosave memory: 00000000fed90000 - 00000000feda0000
PM: Registered nosave memory: 00000000feda0000 - 00000000feda6000
PM: Registered nosave memory: 00000000feda6000 - 00000000fee00000
PM: Registered nosave memory: 00000000fee00000 - 00000000fee10000
PM: Registered nosave memory: 00000000fee10000 - 00000000ffe00000
PM: Registered nosave memory: 00000000ffe00000 - 0000000100000000
Allocating PCI resources starting at e0000000 (gap: e0000000:18000000)
Booting paravirtualized kernel on bare hardware
NR_CPUS:256 nr_cpumask_bits:256 nr_cpu_ids:2 nr_node_ids:1
PERCPU: Embedded 30 pages/cpu @ffff880005800000 s90392 r8192 d24296 u1048576
pcpu-alloc: s90392 r8192 d24296 u1048576 alloc=1*2097152
pcpu-alloc: [0] 0 1 
Built 1 zonelists in Node order, mobility grouping on.  Total pages: 1022709
Policy zone: Normal
Kernel command line: ro root=UUID=94fbb537-7795-4525-af30-4fc0f0bd138e  LANG=en_US.UTF-8 SYSFONT=latarcyrheb-sun16 KEYBOARDTYPE=pc KEYTABLE=us rhgb quiet
PID hash table entries: 4096 (order: 3, 32768 bytes)
Initializing CPU#0
Checking aperture...
No AGP bridge found
Calgary: detecting Calgary via BIOS EBDA area
Calgary: Unable to locate Rio Grande table in EBDA - bailing!
PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
Placing 64MB software IO TLB between ffff88000591e000 - ffff88000991e000
software IO TLB at phys 0x591e000 - 0x991e000
Memory: 4006576k/4718592k available (4464k kernel code, 562824k absent, 149192k reserved, 3722k data, 936k init)
SLUB: Genslabs=14, HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
Hierarchical RCU implementation.
NR_IRQS:4352 nr_irqs:424
Extended CMOS year: 2000
Console: colour VGA+ 80x25
console [tty0] enabled
allocated 41943040 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
hpet clockevent registered
HPET: 4 timers in total, 0 timers will be used for per-cpu timer
Fast TSC calibration using PIT
Detected 2161.111 MHz processor.
Calibrating delay loop (skipped), value calculated using timer frequency.. 4322.22 BogoMIPS (lpj=2161111)
Security Framework initialized
SELinux:  Initializing.
SELinux:  Starting in permissive mode
Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes)
Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes)
Mount-cache hash table entries: 256
Initializing cgroup subsys ns
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
CPU: L1 I cache: 32K, L1 D cache: 32K
CPU: L2 cache: 1024K
CPU 0/0x0 -> Node 0
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 0
mce: CPU supports 6 MCE banks
CPU0: Thermal monitoring enabled (TM2)
using mwait in idle threads.
Performance Events: Core2 events, Intel PMU driver.
... version:                2
... bit width:              40
... generic registers:      2
... value mask:             000000ffffffffff
... max period:             000000007fffffff
... fixed-purpose events:   3
... event mask:             0000000700000003
ACPI: Core revision 20090903
ftrace: converting mcount calls to 0f 1f 44 00 00
ftrace: allocating 23774 entries in 94 pages
Setting APIC routing to flat
..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
CPU0: Intel(R) Pentium(R) Dual  CPU  T3400  @ 2.16GHz stepping 0d
Booting processor 1 APIC 0x1 ip 0x6000
Initializing CPU#1
CPU: L1 I cache: 32K, L1 D cache: 32K
CPU: L2 cache: 1024K
CPU 1/0x1 -> Node 0
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 1
CPU1: Thermal monitoring enabled (TM2)
CPU1: Intel(R) Pentium(R) Dual  CPU  T3400  @ 2.16GHz stepping 0d
checking TSC synchronization [CPU#0 -> CPU#1]: passed.
Brought up 2 CPUs
Total of 2 processors activated (8688.18 BogoMIPS).
sizeof(vma)=176 bytes
sizeof(page)=56 bytes
sizeof(inode)=584 bytes
sizeof(dentry)=192 bytes
sizeof(ext3inode)=784 bytes
sizeof(buffer_head)=104 bytes
sizeof(skbuff)=232 bytes
sizeof(task_struct)=5984 bytes
CPU0 attaching sched-domain:
 domain 0: span 0-1 level MC
  groups: 0 1
CPU1 attaching sched-domain:
 domain 0: span 0-1 level MC
  groups: 1 0
devtmpfs: initialized
regulator: core version 0.5
Time: 21:07:45  Date: 03/29/10
NET: Registered protocol family 16
ACPI: bus type pci registered
PCI: MCFG configuration 0: base f8000000 segment 0 buses 0 - 63
PCI: MCFG area at f8000000 reserved in E820
PCI: Using MMCONFIG at f8000000 - fbffffff
PCI: Using configuration type 1 for base access
bio: create slab <bio-0> at 0
ACPI: EC: Look up EC in DSDT
ACPI: BIOS _OSI(Linux) query ignored
ACPI: Interpreter enabled
ACPI: (supports S0 S3 S4 S5)
ACPI: Using IOAPIC for interrupt routing
ACPI: No dock devices found.
ACPI: PCI Root Bridge [PCI0] (0000:00)
DMAR: Forcing write-buffer flush capability
DMAR: Disabling IOMMU for graphics on this chipset
pci 0000:00:02.0: reg 10 64bit mmio: [0xf6c00000-0xf6ffffff]
pci 0000:00:02.0: reg 18 64bit mmio pref: [0xe0000000-0xefffffff]
pci 0000:00:02.0: reg 20 io port: [0xefe8-0xefef]
pci 0000:00:02.1: reg 10 64bit mmio: [0xf6b00000-0xf6bfffff]
pci 0000:00:1a.0: reg 20 io port: [0x6f60-0x6f7f]
pci 0000:00:1a.1: reg 20 io port: [0x6f80-0x6f9f]
pci 0000:00:1a.2: reg 20 io port: [0x6fa0-0x6fbf]
pci 0000:00:1a.7: reg 10 32bit mmio: [0xfed1c400-0xfed1c7ff]
pci 0000:00:1a.7: PME# supported from D0 D3hot D3cold
pci 0000:00:1a.7: PME# disabled
pci 0000:00:1b.0: reg 10 64bit mmio: [0xf6afc000-0xf6afffff]
pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1b.0: PME# disabled
pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.0: PME# disabled
pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.1: PME# disabled
pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.2: PME# disabled
pci 0000:00:1c.4: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.4: PME# disabled
pci 0000:00:1d.0: reg 20 io port: [0x6f00-0x6f1f]
pci 0000:00:1d.1: reg 20 io port: [0x6f20-0x6f3f]
pci 0000:00:1d.2: reg 20 io port: [0x6f40-0x6f5f]
pci 0000:00:1d.7: reg 10 32bit mmio: [0xfed1c000-0xfed1c3ff]
pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
pci 0000:00:1d.7: PME# disabled
pci 0000:00:1f.2: reg 10 io port: [0x6e70-0x6e77]
pci 0000:00:1f.2: reg 14 io port: [0x6e78-0x6e7b]
pci 0000:00:1f.2: reg 18 io port: [0x6e80-0x6e87]
pci 0000:00:1f.2: reg 1c io port: [0x6e88-0x6e8b]
pci 0000:00:1f.2: reg 20 io port: [0x6ea0-0x6ebf]
pci 0000:00:1f.2: reg 24 32bit mmio: [0xfed1c800-0xfed1cfff]
pci 0000:00:1f.2: PME# supported from D3hot
pci 0000:00:1f.2: PME# disabled
pci 0000:00:1f.3: reg 10 64bit mmio: [0xf6afbf00-0xf6afbfff]
pci 0000:00:1f.3: reg 20 io port: [0x1100-0x111f]
pci 0000:0c:00.0: reg 10 64bit mmio: [0xf69fc000-0xf69fffff]
pci 0000:0c:00.0: supports D1 D2
pci 0000:0c:00.0: PME# supported from D0 D3hot D3cold
pci 0000:0c:00.0: PME# disabled
pci 0000:00:1c.1: bridge 32bit mmio: [0xf6900000-0xf69fffff]
pci 0000:09:00.0: reg 10 64bit mmio: [0xf68fc000-0xf68fffff]
pci 0000:09:00.0: reg 18 io port: [0xde00-0xdeff]
pci 0000:09:00.0: supports D1 D2
pci 0000:09:00.0: PME# supported from D0 D1 D2 D3hot D3cold
pci 0000:09:00.0: PME# disabled
pci 0000:00:1c.2: bridge io port: [0xd000-0xdfff]
pci 0000:00:1c.2: bridge 32bit mmio: [0xf6800000-0xf68fffff]
pci 0000:00:1c.4: bridge io port: [0xc000-0xcfff]
pci 0000:00:1c.4: bridge 32bit mmio: [0xf6600000-0xf67fffff]
pci 0000:00:1c.4: bridge 64bit mmio pref: [0xf0000000-0xf01fffff]
pci 0000:00:1e.0: transparent bridge
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PCIE._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP05._PRT]
ACPI: PCI Interrupt Link [LNKA] (IRQs *10 11)
ACPI: PCI Interrupt Link [LNKB] (IRQs 5 7) *4
ACPI: PCI Interrupt Link [LNKC] (IRQs *10 11)
ACPI: PCI Interrupt Link [LNKD] (IRQs 5 7 10 11) *0, disabled.
ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 6 7 10 *11 12 14 15)
ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 *7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 *5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 7 10 11 12 14 15) *0, disabled.
vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
vgaarb: loaded
SCSI subsystem initialized
libata version 3.00 loaded.
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
PCI: Using ACPI for IRQ routing
PCI: old code would have set cacheline size to 32 bytes, but clflush_size = 64
PCI: pci_cache_line_size set to 64 bytes
NetLabel: Initializing
NetLabel:  domain hash size = 128
NetLabel:  protocols = UNLABELED CIPSOv4
NetLabel:  unlabeled traffic allowed by default
hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0
hpet0: 4 comparators, 64-bit 14.318180 MHz counter
Switching to clocksource tsc
pnp: PnP ACPI init
ACPI: bus type pnp registered
pnp: PnP ACPI: found 12 devices
ACPI: ACPI bus type pnp unregistered
system 00:08: iomem range 0xfed00000-0xfed003ff has been reserved
system 00:09: ioport range 0x900-0x97f has been reserved
system 00:09: ioport range 0x4d0-0x4d1 has been reserved
system 00:09: ioport range 0x1000-0x1005 has been reserved
system 00:09: ioport range 0x1008-0x100f has been reserved
system 00:0a: ioport range 0xf400-0xf4fe has been reserved
system 00:0a: ioport range 0x1006-0x1007 has been reserved
system 00:0a: ioport range 0x100a-0x1059 could not be reserved
system 00:0a: ioport range 0x1060-0x107f has been reserved
system 00:0a: ioport range 0x1080-0x10bf has been reserved
system 00:0a: ioport range 0x1100-0x111f has been reserved
system 00:0a: ioport range 0x1010-0x102f has been reserved
system 00:0a: ioport range 0x809-0x809 has been reserved
system 00:0b: iomem range 0x0-0x9efff could not be reserved
system 00:0b: iomem range 0x9f000-0x9ffff could not be reserved
system 00:0b: iomem range 0xc0000-0xcffff has been reserved
system 00:0b: iomem range 0xe0000-0xfffff has been reserved
system 00:0b: iomem range 0x100000-0xddabf3ff could not be reserved
system 00:0b: iomem range 0xddabf400-0xddafffff could not be reserved
system 00:0b: iomem range 0xddb00000-0xddbfffff has been reserved
system 00:0b: iomem range 0xffe00000-0xffffffff has been reserved
system 00:0b: iomem range 0xffa00000-0xffbfffff has been reserved
system 00:0b: iomem range 0xfec00000-0xfec0ffff could not be reserved
system 00:0b: iomem range 0xfee00000-0xfee0ffff has been reserved
system 00:0b: iomem range 0xfed20000-0xfed8ffff has been reserved
system 00:0b: iomem range 0xfeda0000-0xfeda3fff has been reserved
system 00:0b: iomem range 0xfeda4000-0xfeda4fff has been reserved
system 00:0b: iomem range 0xfeda5000-0xfeda5fff has been reserved
system 00:0b: iomem range 0xfeda6000-0xfeda6fff has been reserved
system 00:0b: iomem range 0xfed1c800-0xfed1cfff has been reserved
system 00:0b: iomem range 0xfed18000-0xfed1bfff has been reserved
system 00:0b: iomem range 0xf8000000-0xfbffffff has been reserved
pci 0000:00:1c.0: PCI bridge, secondary bus 0000:0b
pci 0000:00:1c.0:   IO window: 0x2000-0x2fff
pci 0000:00:1c.0:   MEM window: 0xf0200000-0xf03fffff
pci 0000:00:1c.0:   PREFETCH window: 0x000000f0400000-0x000000f05fffff
pci 0000:00:1c.1: PCI bridge, secondary bus 0000:0c
pci 0000:00:1c.1:   IO window: 0x3000-0x3fff
pci 0000:00:1c.1:   MEM window: 0xf6900000-0xf69fffff
pci 0000:00:1c.1:   PREFETCH window: 0x000000f0600000-0x000000f07fffff
pci 0000:00:1c.2: PCI bridge, secondary bus 0000:09
pci 0000:00:1c.2:   IO window: 0xd000-0xdfff
pci 0000:00:1c.2:   MEM window: 0xf6800000-0xf68fffff
pci 0000:00:1c.2:   PREFETCH window: 0x000000f0800000-0x000000f09fffff
pci 0000:00:1c.4: PCI bridge, secondary bus 0000:0d
pci 0000:00:1c.4:   IO window: 0xc000-0xcfff
pci 0000:00:1c.4:   MEM window: 0xf6600000-0xf67fffff
pci 0000:00:1c.4:   PREFETCH window: 0x000000f0000000-0x000000f01fffff
pci 0000:00:1e.0: PCI bridge, secondary bus 0000:03
pci 0000:00:1e.0:   IO window: disabled
pci 0000:00:1e.0:   MEM window: disabled
pci 0000:00:1e.0:   PREFETCH window: disabled
  alloc irq_desc for 16 on node -1
  alloc kstat_irqs on node -1
pci 0000:00:1c.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
pci 0000:00:1c.0: setting latency timer to 64
  alloc irq_desc for 17 on node -1
  alloc kstat_irqs on node -1
pci 0000:00:1c.1: PCI INT B -> GSI 17 (level, low) -> IRQ 17
pci 0000:00:1c.1: setting latency timer to 64
  alloc irq_desc for 18 on node -1
  alloc kstat_irqs on node -1
pci 0000:00:1c.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
pci 0000:00:1c.2: setting latency timer to 64
pci 0000:00:1c.4: PCI INT A -> GSI 16 (level, low) -> IRQ 16
pci 0000:00:1c.4: setting latency timer to 64
pci 0000:00:1e.0: setting latency timer to 64
pci_bus 0000:00: resource 0 io:  [0x00-0xffff]
pci_bus 0000:00: resource 1 mem: [0x000000-0xffffffffffffffff]
pci_bus 0000:0b: resource 0 io:  [0x2000-0x2fff]
pci_bus 0000:0b: resource 1 mem: [0xf0200000-0xf03fffff]
pci_bus 0000:0b: resource 2 pref mem [0xf0400000-0xf05fffff]
pci_bus 0000:0c: resource 0 io:  [0x3000-0x3fff]
pci_bus 0000:0c: resource 1 mem: [0xf6900000-0xf69fffff]
pci_bus 0000:0c: resource 2 pref mem [0xf0600000-0xf07fffff]
pci_bus 0000:09: resource 0 io:  [0xd000-0xdfff]
pci_bus 0000:09: resource 1 mem: [0xf6800000-0xf68fffff]
pci_bus 0000:09: resource 2 pref mem [0xf0800000-0xf09fffff]
pci_bus 0000:0d: resource 0 io:  [0xc000-0xcfff]
pci_bus 0000:0d: resource 1 mem: [0xf6600000-0xf67fffff]
pci_bus 0000:0d: resource 2 pref mem [0xf0000000-0xf01fffff]
pci_bus 0000:03: resource 3 io:  [0x00-0xffff]
pci_bus 0000:03: resource 4 mem: [0x000000-0xffffffffffffffff]
NET: Registered protocol family 2
IP route cache hash table entries: 131072 (order: 8, 1048576 bytes)
TCP established hash table entries: 524288 (order: 11, 8388608 bytes)
TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
TCP: Hash tables configured (established 524288 bind 65536)
TCP reno registered
NET: Registered protocol family 1
pci 0000:00:02.0: Boot video device
Trying to unpack rootfs image as initramfs...
Freeing initrd memory: 12529k freed
audit: initializing netlink socket (disabled)
type=2000 audit(1269896865.625:1): initialized
HugeTLB registered 2 MB page size, pre-allocated 0 pages
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
msgmni has been set to 7849
SELinux:  Registering netfilter hooks
alg: No test for stdrng (krng)
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
io scheduler noop registered
io scheduler anticipatory registered
io scheduler deadline registered
io scheduler cfq registered (default)
  alloc irq_desc for 24 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.0: irq 24 for MSI/MSI-X
pcieport 0000:00:1c.0: setting latency timer to 64
  alloc irq_desc for 25 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.1: irq 25 for MSI/MSI-X
pcieport 0000:00:1c.1: setting latency timer to 64
  alloc irq_desc for 26 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.2: irq 26 for MSI/MSI-X
pcieport 0000:00:1c.2: setting latency timer to 64
  alloc irq_desc for 27 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.4: irq 27 for MSI/MSI-X
pcieport 0000:00:1c.4: setting latency timer to 64
pci_hotplug: PCI Hot Plug PCI Core version: 0.5
pciehp: PCI Express Hot Plug Controller Driver version: 0.4
acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
acpiphp: Slot [1] registered
pci-stub: invalid id string ""
ACPI: AC Adapter [AC] (on-line)
input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input0
ACPI: Lid Switch [LID]
input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input1
ACPI: Power Button [PBTN]
input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input2
ACPI: Sleep Button [SBTN]
ACPI: SSDT 00000000ddac298d 00281 (v01  PmRef   BspIst 00003000 INTL 20050624)
ACPI: SSDT 00000000ddac2de5 005C6 (v01  PmRef   BspCst 00003001 INTL 20050624)
Monitor-Mwait will be used to enter C-1 state
Monitor-Mwait will be used to enter C-2 state
Marking TSC unstable due to TSC halts in idle
processor LNXCPU:00: registered as cooling_device0
ACPI: SSDT 00000000ddac2c0e 001D7 (v01  PmRef    ApIst 00003000 INTL 20050624)
ACPI: SSDT 00000000ddac33ab 0008D (v01  PmRef    ApCst 00003000 INTL 20050624)
Switching to clocksource hpet
processor LNXCPU:01: registered as cooling_device1
thermal LNXTHERM:01: registered as thermal_zone0
ACPI: Thermal Zone [THM] (31 C)
Non-volatile memory driver v1.3
Linux agpgart interface v0.103
agpgart-intel 0000:00:00.0: Intel Mobile Intel? GM45 Express Chipset
agpgart-intel 0000:00:00.0: detected 32764K stolen memory
agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xe0000000
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
brd: module loaded
loop: module loaded
input: Macintosh mouse button emulation as /devices/virtual/input/input3
ahci 0000:00:1f.2: version 3.0
ahci 0000:00:1f.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
  alloc irq_desc for 28 on node -1
  alloc kstat_irqs on node -1
ahci 0000:00:1f.2: irq 28 for MSI/MSI-X
ahci: SSS flag set, parallel bus scan disabled
ahci 0000:00:1f.2: AHCI 0001.0200 32 slots 4 ports 3 Gbps 0x33 impl SATA mode
ahci 0000:00:1f.2: flags: 64bit ncq sntf stag pm led clo pio slum part ccc ems 
ahci 0000:00:1f.2: setting latency timer to 64
scsi0 : ahci
scsi1 : ahci
scsi2 : ahci
scsi3 : ahci
scsi4 : ahci
scsi5 : ahci
ACPI: Battery Slot [BAT0] (battery present)
ata1: SATA max UDMA/133 abar m2048 at 0xfed1c800 port 0xfed1c900 irq 28
ata2: SATA max UDMA/133 irq_stat 0x00400040, connection status changed irq 28
ata3: DUMMY
ata4: DUMMY
ata5: SATA max UDMA/133 abar m2048 at 0xfed1c800 port 0xfed1cb00 irq 28
ata6: SATA max UDMA/133 abar m2048 at 0xfed1c800 port 0xfed1cb80 irq 28
Fixed MDIO Bus: probed
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
  alloc irq_desc for 22 on node -1
  alloc kstat_irqs on node -1
ehci_hcd 0000:00:1a.7: PCI INT C -> GSI 22 (level, low) -> IRQ 22
ehci_hcd 0000:00:1a.7: setting latency timer to 64
ehci_hcd 0000:00:1a.7: EHCI Host Controller
ehci_hcd 0000:00:1a.7: new USB bus registered, assigned bus number 1
ehci_hcd 0000:00:1a.7: debug port 1
ehci_hcd 0000:00:1a.7: cache line size of 64 is not supported
ehci_hcd 0000:00:1a.7: irq 22, io mem 0xfed1c400
ehci_hcd 0000:00:1a.7: USB 2.0 started, EHCI 1.00
usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb1: Product: EHCI Host Controller
usb usb1: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 ehci_hcd
usb usb1: SerialNumber: 0000:00:1a.7
usb usb1: configuration #1 chosen from 1 choice
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 6 ports detected
  alloc irq_desc for 20 on node -1
  alloc kstat_irqs on node -1
ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 20 (level, low) -> IRQ 20
ehci_hcd 0000:00:1d.7: setting latency timer to 64
ehci_hcd 0000:00:1d.7: EHCI Host Controller
ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 2
ehci_hcd 0000:00:1d.7: debug port 1
ehci_hcd 0000:00:1d.7: cache line size of 64 is not supported
ehci_hcd 0000:00:1d.7: irq 20, io mem 0xfed1c000
ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
usb usb2: New USB device found, idVendor=1d6b, idProduct=0002
usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb2: Product: EHCI Host Controller
usb usb2: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 ehci_hcd
usb usb2: SerialNumber: 0000:00:1d.7
usb usb2: configuration #1 chosen from 1 choice
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 6 ports detected
ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
uhci_hcd: USB Universal Host Controller Interface driver
uhci_hcd 0000:00:1a.0: PCI INT A -> GSI 20 (level, low) -> IRQ 20
uhci_hcd 0000:00:1a.0: setting latency timer to 64
uhci_hcd 0000:00:1a.0: UHCI Host Controller
uhci_hcd 0000:00:1a.0: new USB bus registered, assigned bus number 3
uhci_hcd 0000:00:1a.0: irq 20, io base 0x00006f60
usb usb3: New USB device found, idVendor=1d6b, idProduct=0001
usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb3: Product: UHCI Host Controller
usb usb3: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb3: SerialNumber: 0000:00:1a.0
usb usb3: configuration #1 chosen from 1 choice
hub 3-0:1.0: USB hub found
hub 3-0:1.0: 2 ports detected
  alloc irq_desc for 21 on node -1
  alloc kstat_irqs on node -1
uhci_hcd 0000:00:1a.1: PCI INT B -> GSI 21 (level, low) -> IRQ 21
uhci_hcd 0000:00:1a.1: setting latency timer to 64
uhci_hcd 0000:00:1a.1: UHCI Host Controller
uhci_hcd 0000:00:1a.1: new USB bus registered, assigned bus number 4
uhci_hcd 0000:00:1a.1: irq 21, io base 0x00006f80
usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb4: Product: UHCI Host Controller
usb usb4: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb4: SerialNumber: 0000:00:1a.1
usb usb4: configuration #1 chosen from 1 choice
hub 4-0:1.0: USB hub found
hub 4-0:1.0: 2 ports detected
uhci_hcd 0000:00:1a.2: PCI INT C -> GSI 22 (level, low) -> IRQ 22
uhci_hcd 0000:00:1a.2: setting latency timer to 64
uhci_hcd 0000:00:1a.2: UHCI Host Controller
uhci_hcd 0000:00:1a.2: new USB bus registered, assigned bus number 5
uhci_hcd 0000:00:1a.2: irq 22, io base 0x00006fa0
usb usb5: New USB device found, idVendor=1d6b, idProduct=0001
usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb5: Product: UHCI Host Controller
usb usb5: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb5: SerialNumber: 0000:00:1a.2
usb usb5: configuration #1 chosen from 1 choice
hub 5-0:1.0: USB hub found
hub 5-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 20 (level, low) -> IRQ 20
uhci_hcd 0000:00:1d.0: setting latency timer to 64
uhci_hcd 0000:00:1d.0: UHCI Host Controller
uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 6
uhci_hcd 0000:00:1d.0: irq 20, io base 0x00006f00
usb usb6: New USB device found, idVendor=1d6b, idProduct=0001
usb usb6: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb6: Product: UHCI Host Controller
usb usb6: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb6: SerialNumber: 0000:00:1d.0
usb usb6: configuration #1 chosen from 1 choice
hub 6-0:1.0: USB hub found
hub 6-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 21 (level, low) -> IRQ 21
uhci_hcd 0000:00:1d.1: setting latency timer to 64
uhci_hcd 0000:00:1d.1: UHCI Host Controller
uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 7
uhci_hcd 0000:00:1d.1: irq 21, io base 0x00006f20
usb usb7: New USB device found, idVendor=1d6b, idProduct=0001
usb usb7: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb7: Product: UHCI Host Controller
usb usb7: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb7: SerialNumber: 0000:00:1d.1
usb usb7: configuration #1 chosen from 1 choice
hub 7-0:1.0: USB hub found
hub 7-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 22 (level, low) -> IRQ 22
uhci_hcd 0000:00:1d.2: setting latency timer to 64
uhci_hcd 0000:00:1d.2: UHCI Host Controller
uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 8
uhci_hcd 0000:00:1d.2: irq 22, io base 0x00006f40
usb usb8: New USB device found, idVendor=1d6b, idProduct=0001
usb usb8: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb8: Product: UHCI Host Controller
usb usb8: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb8: SerialNumber: 0000:00:1d.2
usb usb8: configuration #1 chosen from 1 choice
hub 8-0:1.0: USB hub found
hub 8-0:1.0: 2 ports detected
PNP: PS/2 Controller [PNP0303:KBC,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
i8042.c: Detected active multiplexing controller, rev 1.1.
serio: i8042 KBD port at 0x60,0x64 irq 1
serio: i8042 AUX0 port at 0x60,0x64 irq 12
serio: i8042 AUX1 port at 0x60,0x64 irq 12
serio: i8042 AUX2 port at 0x60,0x64 irq 12
serio: i8042 AUX3 port at 0x60,0x64 irq 12
mice: PS/2 mouse device common for all mice
rtc_cmos 00:03: RTC can wake from S4
rtc_cmos 00:03: rtc core: registered rtc_cmos as rtc0
rtc0: alarms up to one month, y3k, 114 bytes nvram, hpet irqs
device-mapper: uevent: version 1.0.3
device-mapper: ioctl: 4.15.0-ioctl (2009-04-01) initialised: dm-devel at redhat.com
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver hiddev
usbcore: registered new interface driver usbhid
usbhid: v2.6:USB HID core driver
nf_conntrack version 0.5.0 (16384 buckets, 65536 max)
CONFIG_NF_CT_ACCT is deprecated and will be removed soon. Please use
nf_conntrack.acct=1 kernel parameter, acct=1 nf_conntrack module option or
sysctl net.netfilter.nf_conntrack_acct=1 to enable it.
ip_tables: (C) 2000-2006 Netfilter Core Team
TCP cubic registered
Initializing XFRM netlink socket
NET: Registered protocol family 17
PM: Resume from disk failed.
registered taskstats version 1
No TPM chip found, activating TPM-bypass!
  Magic number: 2:454:147
acpi device:18: hash matches
rtc_cmos 00:03: setting system clock to 2010-03-29 21:07:46 UTC (1269896866)
Initalizing network drop monitor service
input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input4
ata1: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
usb 1-5: new high speed USB device using ehci_hcd and address 2
ata1.00: ATA-8: WDC WD3200BEVT-75ZCT2, 11.01A11, max UDMA/133
ata1.00: 625142448 sectors, multi 8: LBA48 NCQ (depth 31/32), AA
ata1.00: configured for UDMA/133
scsi 0:0:0:0: Direct-Access     ATA      WDC WD3200BEVT-7 11.0 PQ: 0 ANSI: 5
sd 0:0:0:0: Attached scsi generic sg0 type 0
sd 0:0:0:0: [sda] 625142448 512-byte logical blocks: (320 GB/298 GiB)
sd 0:0:0:0: [sda] Write Protect is off
sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
 sda: sda1 sda2 sda3 sda4 < sda5 sda6 >
sd 0:0:0:0: [sda] Attached SCSI disk
usb 1-5: New USB device found, idVendor=0bda, idProduct=0158
usb 1-5: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-5: Product: USB2.0-CRW
usb 1-5: Manufacturer: Generic
usb 1-5: SerialNumber: 20071114173400000
usb 1-5: configuration #1 chosen from 1 choice
usb 1-6: new high speed USB device using ehci_hcd and address 3
usb 1-6: New USB device found, idVendor=05ca, idProduct=180a
usb 1-6: New USB device strings: Mfr=9, Product=2, SerialNumber=0
usb 1-6: Product: Integrated Webcam
usb 1-6: Manufacturer: M091R-R01-9307-SB1V1
usb 1-6: configuration #1 chosen from 1 choice
input: PS/2 Mouse as /devices/platform/i8042/serio2/input/input5
input: AlpsPS/2 ALPS GlidePoint as /devices/platform/i8042/serio2/input/input6
ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
ata2.00: ATAPI: PLDS DVD+/-RW DS-8A3S, HD11, max UDMA/100
ata2.00: configured for UDMA/100
scsi 1:0:0:0: CD-ROM            PLDS     DVD+-RW DS-8A3S  HD11 PQ: 0 ANSI: 5
sr0: scsi3-mmc drive: 24x/8x writer dvd-ram cd/rw xa/form2 cdda pop-up
Uniform CD-ROM driver Revision: 3.20
sr 1:0:0:0: Attached scsi CD-ROM sr0
sr 1:0:0:0: Attached scsi generic sg1 type 5
ata5: SATA link down (SStatus 0 SControl 300)
ata6: SATA link down (SStatus 0 SControl 300)
Freeing unused kernel memory: 936k freed
Write protecting the kernel read-only data: 6592k
dracut: dracut-004-4.fc12
udev: starting version 145
[drm] Initialized drm 1.1.0 20060810
i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
i915 0000:00:02.0: setting latency timer to 64
mtrr: type mismatch for e0000000,10000000 old: write-back new: write-combining
[drm] MTRR allocation failed.  Graphics performance may suffer.
  alloc irq_desc for 29 on node -1
  alloc kstat_irqs on node -1
i915 0000:00:02.0: irq 29 for MSI/MSI-X
[drm] set up 31M of stolen space
fbcon: inteldrmfb (fb0) is primary device
Console: switching to colour frame buffer device 170x48
fb0: inteldrmfb frame buffer device
registered panic notifier
input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A03:00/LNXVIDEO:01/input/input7
ACPI: Video Device [VID1] (multi-head: yes  rom: no  post: no)
ACPI Warning for \_SB_.PCI0.VID2._DOD: Return Package has no elements (empty) (20090903/nspredef-433)
input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A03:00/LNXVIDEO:02/input/input8
ACPI: Video Device [VID2] (multi-head: yes  rom: no  post: no)
[drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
dracut: Starting plymouth daemon
Initializing USB Mass Storage driver...
scsi6 : SCSI emulation for USB Mass Storage devices
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
usb-storage: device found at 2
usb-storage: waiting for device to settle before scanning
device-mapper: multipath: version 1.1.0 loaded
EXT4-fs (sda5): mounted filesystem with ordered data mode
dracut: Mounted root filesystem /dev/sda5
dracut: Switching root
udev: starting version 145
dcdbas dcdbas: Dell Systems Management Base Driver (version 5.6.0-3.2)
iTCO_vendor_support: vendor-support=0
iTCO_wdt: Intel TCO WatchDog Timer Driver v1.05
iTCO_wdt: Found a ICH9M TCO device (Version=2, TCOBASE=0x1060)
iTCO_wdt: initialized. heartbeat=30 sec (nowayout=0)
sky2 driver version 1.25
sky2 0000:09:00.0: PCI INT A -> GSI 18 (level, low) -> IRQ 18
sky2 0000:09:00.0: setting latency timer to 64
sky2 0000:09:00.0: Yukon-2 FE+ chip revision 0
  alloc irq_desc for 30 on node -1
  alloc kstat_irqs on node -1
sky2 0000:09:00.0: irq 30 for MSI/MSI-X
sky2 eth0: addr 00:23:ae:26:b0:02
i801_smbus 0000:00:1f.3: PCI INT B -> GSI 18 (level, low) -> IRQ 18
Linux video capture interface: v2.00
b43-pci-bridge 0000:0c:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
b43-pci-bridge 0000:0c:00.0: setting latency timer to 64
ACPI: WMI: Mapper loaded
ssb: Sonics Silicon Backplane found on PCI device 0000:0c:00.0
uvcvideo: Found UVC 1.00 device Integrated Webcam (05ca:180a)
input: Integrated Webcam as /devices/pci0000:00/0000:00:1a.7/usb1/1-6/1-6:1.0/input/input9
usbcore: registered new interface driver uvcvideo
USB Video Class driver (v0.1.0)
input: Dell WMI hotkeys as /devices/virtual/input/input10
usb-storage: device scan complete
scsi 6:0:0:0: Direct-Access     Generic- Multi-Card       1.00 PQ: 0 ANSI: 0 CCS
sd 6:0:0:0: Attached scsi generic sg2 type 0
sd 6:0:0:0: [sdb] Attached SCSI removable disk
cfg80211: Calling CRDA to update world regulatory domain
HDA Intel 0000:00:1b.0: PCI INT A -> GSI 21 (level, low) -> IRQ 21
HDA Intel 0000:00:1b.0: setting latency timer to 64
ALSA sound/pci/hda/hda_codec.c:3881: autoconfig: line_outs=1 (0xd/0x0/0x0/0x0/0x0)
ALSA sound/pci/hda/hda_codec.c:3885:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
ALSA sound/pci/hda/hda_codec.c:3889:    hp_outs=1 (0xa/0x0/0x0/0x0/0x0)
ALSA sound/pci/hda/hda_codec.c:3890:    mono: mono_out=0x0
ALSA sound/pci/hda/hda_codec.c:3893:    dig-out=0x1e/0x1f
ALSA sound/pci/hda/hda_codec.c:3901:    inputs: mic=0xb, fmic=0xc, line=0x0, fline=0x0, cd=0x0, aux=0x0
ALSA sound/pci/hda/patch_sigmatel.c:2974: stac92xx: dac_nids=1 (0x10/0x0/0x0/0x0/0x0)
input: HDA Digital PCBeep as /devices/pci0000:00/0000:00:1b.0/input/input11
input: HDA Intel Mic at Ext Right Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input12
input: HDA Intel HP Out at Ext Right Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input13
name_count maxed, losing inode data: dev=00:05, inode=9349
name_count maxed, losing inode data: dev=00:05, inode=8940
name_count maxed, losing inode data: dev=00:05, inode=8940
b43-phy0: Broadcom 4312 WLAN found (core revision 15)
name_count maxed, losing inode data: dev=00:07, inode=9434
name_count maxed, losing inode data: dev=00:07, inode=9434
name_count maxed, losing inode data: dev=00:07, inode=9434
name_count maxed, losing inode data: dev=00:07, inode=9434
name_count maxed, losing inode data: dev=00:07, inode=9434
name_count maxed, losing inode data: dev=00:07, inode=9434
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
name_count maxed, losing inode data: dev=00:07, inode=9452
cfg80211: World regulatory domain updated:
	(start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
	(2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
	(2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
	(2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
	(5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
	(5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
name_count maxed, losing inode data: dev=00:07, inode=9434
name_count maxed, losing inode data: dev=00:07, inode=9513
phy0: Selected rate control algorithm 'minstrel'
name_count maxed, losing inode data: dev=00:07, inode=9434
name_count maxed, losing inode data: dev=00:07, inode=9515
name_count maxed, losing inode data: dev=00:07, inode=9515
name_count maxed, losing inode data: dev=00:07, inode=9515
name_count maxed, losing inode data: dev=00:07, inode=9515
name_count maxed, losing inode data: dev=00:07, inode=9515
name_count maxed, losing inode data: dev=00:07, inode=9515
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
name_count maxed, losing inode data: dev=00:05, inode=4
name_count maxed, losing inode data: dev=00:05, inode=4
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
Adding 8191988k swap on /dev/sda6.  Priority:-1 extents:1 across:8191988k 
microcode: CPU0 sig=0x6fd, pf=0x80, revision=0xa3
platform microcode: firmware: requesting intel-ucode/06-0f-0d
microcode: CPU1 sig=0x6fd, pf=0x80, revision=0xa3
platform microcode: firmware: requesting intel-ucode/06-0f-0d
Microcode Update Driver: v2.00 <tigran@aivazian.fsnet.co.uk>, Peter Oruba
Microcode Update Driver: v2.00 removed.
NET: Registered protocol family 10
lo: Disabled Privacy Extensions
ip6_tables: (C) 2000-2006 Netfilter Core Team
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
[drm:drm_mode_rmfb] *ERROR* tried to remove a fb that we didn't own
fuse init (API version 7.13)

Output from tail /var/log/messages

Mar 29 21:11:31 localhost kernel: b43-phy0: Controller RESET (DMA error) ...
Mar 29 21:11:31 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Mar 29 21:11:33 localhost kernel: b43-phy0: Controller restarted
Mar 29 21:11:33 localhost kernel: b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
Mar 29 21:11:33 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Mar 29 21:11:34 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Mar 29 21:11:36 localhost kernel: __ratelimit: 6 callbacks suppressed
Mar 29 21:11:36 localhost kernel: b43-phy0: Controller restarted
Mar 29 21:11:36 localhost kernel: b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
Mar 29 21:11:36 localhost kernel: b43-phy0: Controller RESET (DMA error) ...
Mar 29 21:11:36 localhost kernel: b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
Mar 29 21:11:36 localhost kernel: b43-phy0: Controller RESET (DMA error) ...
Mar 29 21:11:36 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Mar 29 21:11:37 localhost kernel: b43-phy0: Controller restarted
Mar 29 21:11:37 localhost kernel: b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
Mar 29 21:11:37 localhost kernel: b43-phy0: Controller RESET (DMA error) ...
Mar 29 21:11:37 localhost kernel: b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
Mar 29 21:11:37 localhost kernel: b43-phy0: Controller RESET (DMA error) ...
Mar 29 21:11:37 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Mar 29 21:11:39 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)

Output from lspci | grep b43

b43                   158688  0 
mac80211              203545  1 b43
cfg80211              117514  2 b43,mac80211
ssb                    48277  1 b43
mmc_core               61853  2 b43,ssb
-------------- next part --------------

Output from lspci -vv

00:00.0 Host bridge: Intel Corporation Mobile 4 Series Chipset Memory Controller Hub (rev 07)
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort+ >SERR- <PERR- INTx-
	Latency: 0
	Capabilities: [e0] Vendor Specific Information: Len=0a <?>
	Kernel driver in use: agpgart-intel

00:02.0 VGA compatible controller: Intel Corporation Mobile 4 Series Chipset Integrated Graphics Controller (rev 07) (prog-if 00 [VGA controller])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 29
	Region 0: Memory at f6c00000 (64-bit, non-prefetchable) [size=4M]
	Region 2: Memory at e0000000 (64-bit, prefetchable) [size=256M]
	Region 4: I/O ports at efe8 [size=8]
	Expansion ROM@<unassigned> [disabled]
	Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0200c  Data: 41a1
	Capabilities: [d0] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Kernel driver in use: i915
	Kernel modules: i915

00:02.1 Display controller: Intel Corporation Mobile 4 Series Chipset Integrated Graphics Controller (rev 07)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Region 0: Memory@f6b00000 (64-bit, non-prefetchable) [size=1M]
	Capabilities: [d0] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-

00:1a.0 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #4 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 20
	Region 4: I/O ports@6f60 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1a.1 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #5 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin B routed to IRQ 21
	Region 4: I/O ports@6f80 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1a.2 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #6 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 22
	Region 4: I/O ports@6fa0 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1a.7 USB Controller: Intel Corporation 82801I (ICH9 Family) USB2 EHCI Controller #2 (rev 03) (prog-if 20 [EHCI])
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 22
	Region 0: Memory@fed1c400 (32-bit, non-prefetchable) [size=1K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Debug port: BAR=1 offset=00a0
	Capabilities: [98] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: ehci_hcd

00:1b.0 Audio device: Intel Corporation 82801I (ICH9 Family) HD Audio Controller (rev 03)
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 21
	Region 0: Memory@f6afc000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=55mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [60] MSI: Enable- Count=1/1 Maskable- 64bit+
		Address: 0000000000000000  Data: 0000
	Capabilities: [70] Express (v1) Root Complex Integrated Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE- FLReset+
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed unknown, Width x0, ASPM unknown, Latency L0 <64ns, L1 <1us
			ClockPM- Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed unknown, Width x0, TrErr- Train- SlotClk- DLActive- BWMgmt- ABWMgmt-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed- WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
			Status:	NegoPending- InProgress-
		VC1:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable- ID=0 ArbSelect=Fixed TC/VC=00
			Status:	NegoPending- InProgress-
	Capabilities: [130 v1] Root Complex Link
		Desc:	PortNumber=0f ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: HDA Intel
	Kernel modules: snd-hda-intel

00:1c.0 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 1 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=0b, subordinate=0b, sec-latency=0
	I/O behind bridge: 00002000-00002fff
	Memory behind bridge: f0200000-f03fffff
	Prefetchable memory behind bridge: 00000000f0400000-00000000f05fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #1, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x0, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  0, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet- Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4161
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=01 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.1 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 2 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=0c, subordinate=0c, sec-latency=0
	I/O behind bridge: 00003000-00003fff
	Memory behind bridge: f6900000-f69fffff
	Prefetchable memory behind bridge: 00000000f0600000-00000000f07fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #2, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <256ns, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  1, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4169
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=02 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.2 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 3 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=09, subordinate=09, sec-latency=0
	I/O behind bridge: 0000d000-0000dfff
	Memory behind bridge: f6800000-f68fffff
	Prefetchable memory behind bridge: 00000000f0800000-00000000f09fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #3, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <256ns, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  2, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4171
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=03 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.4 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 5 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=0d, subordinate=0e, sec-latency=0
	I/O behind bridge: 0000c000-0000cfff
	Memory behind bridge: f6600000-f67fffff
	Prefetchable memory behind bridge: 00000000f0000000-00000000f01fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #5, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x0, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  4, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet- Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4179
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=05 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1d.0 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #1 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 20
	Region 4: I/O ports@6f00 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1d.1 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #2 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin B routed to IRQ 21
	Region 4: I/O ports@6f20 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1d.2 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #3 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 22
	Region 4: I/O ports@6f40 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1d.7 USB Controller: Intel Corporation 82801I (ICH9 Family) USB2 EHCI Controller #1 (rev 03) (prog-if 20 [EHCI])
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 20
	Region 0: Memory@fed1c000 (32-bit, non-prefetchable) [size=1K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Debug port: BAR=1 offset=00a0
	Capabilities: [98] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: ehci_hcd

00:1e.0 PCI bridge: Intel Corporation 82801 Mobile PCI Bridge (rev 93) (prog-if 01 [Subtractive decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Bus: primary=00, secondary=03, subordinate=03, sec-latency=32
	Secondary status: 66MHz- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort+ <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [50] Subsystem: Dell Device 02aa

00:1f.0 ISA bridge: Intel Corporation ICH9M LPC Interface Controller (rev 03)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Capabilities: [e0] Vendor Specific Information: Len=0c <?>
	Kernel modules: iTCO_wdt

00:1f.2 SATA controller: Intel Corporation ICH9M/M-E SATA AHCI Controller (rev 03) (prog-if 01 [AHCI 1.0])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 28
	Region 0: I/O ports at 6e70 [size=8]
	Region 1: I/O ports at 6e78 [size=4]
	Region 2: I/O ports at 6e80 [size=8]
	Region 3: I/O ports at 6e88 [size=4]
	Region 4: I/O ports at 6ea0 [size=32]
	Region 5: Memory@fed1c800 (32-bit, non-prefetchable) [size=2K]
	Capabilities: [80] MSI: Enable+ Count=1/16 Maskable- 64bit-
		Address: fee0200c  Data: 4181
	Capabilities: [70] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot+,D3cold-)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [a8] SATA HBA v1.0 BAR4 Offset=00000004
	Capabilities: [b0] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: ahci

00:1f.3 SMBus: Intel Corporation 82801I (ICH9 Family) SMBus Controller (rev 03)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Interrupt: pin B routed to IRQ 18
	Region 0: Memory at f6afbf00 (64-bit, non-prefetchable) [size=256]
	Region 4: I/O ports@1100 [size=32]
	Kernel driver in use: i801_smbus
	Kernel modules: i2c-i801

09:00.0 Ethernet controller: Marvell Technology Group Ltd. 88E8040 PCI-E Fast Ethernet Controller (rev 13)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 30
	Region 0: Memory at f68fc000 (64-bit, non-prefetchable) [size=16K]
	Region 2: I/O ports@de00 [size=256]
	Capabilities: [48] Power Management version 3
		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=1 PME-
	Capabilities: [5c] MSI: Enable+ Count=1/1 Maskable- 64bit+
		Address: 00000000fee0300c  Data: 41a9
	Capabilities: [c0] Express (v2) Legacy Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s unlimited, L1 unlimited
			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <256ns, L1 unlimited
			ClockPM+ Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 128 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Not Supported, TimeoutDis+
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -6dB
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		AERCap:	First Error Pointer: 1f, GenCap- CGenEn- ChkCap- ChkEn-
	Capabilities: [130 v1] Device Serial Number 02-b0-26-ff-ff-ae-23-00
	Kernel driver in use: sky2
	Kernel modules: sky2

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

Output from dmesg

Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 2.6.32.9-70.fc12.x86_64 (mockbuild at x86-04.phx2.fedoraproject.org) (gcc version 4.4.3 20100127 (Red Hat 4.4.3-4) (GCC) ) #1 SMP Wed Mar 3 04:40:41 UTC 2010
Command line: ro root=UUID=94fbb537-7795-4525-af30-4fc0f0bd138e  LANG=en_US.UTF-8 SYSFONT=latarcyrheb-sun16 KEYBOARDTYPE=pc KEYTABLE=us rhgb quiet
KERNEL supported cpus:
  Intel GenuineIntel
  AMD AuthenticAMD
  Centaur CentaurHauls
BIOS-provided physical RAM map:
 BIOS-e820: 0000000000000000 - 000000000009f000 (usable)
 BIOS-e820: 000000000009f000 - 00000000000a0000 (reserved)
 BIOS-e820: 0000000000100000 - 00000000ddabf400 (usable)
 BIOS-e820: 00000000ddabf400 - 00000000ddac1400 (ACPI NVS)
 BIOS-e820: 00000000ddac1400 - 00000000e0000000 (reserved)
 BIOS-e820: 00000000f8000000 - 00000000fc000000 (reserved)
 BIOS-e820: 00000000fec00000 - 00000000fec10000 (reserved)
 BIOS-e820: 00000000fed18000 - 00000000fed1c000 (reserved)
 BIOS-e820: 00000000fed20000 - 00000000fed90000 (reserved)
 BIOS-e820: 00000000feda0000 - 00000000feda6000 (reserved)
 BIOS-e820: 00000000fee00000 - 00000000fee10000 (reserved)
 BIOS-e820: 00000000ffe00000 - 0000000100000000 (reserved)
 BIOS-e820: 0000000100000000 - 0000000120000000 (usable)
DMI 2.4 present.
last_pfn = 0x120000 max_arch_pfn = 0x400000000
MTRR default type: uncachable
MTRR fixed ranges enabled:
  00000-9FFFF write-back
  A0000-BFFFF uncachable
  C0000-CFFFF write-protect
  D0000-EFFFF uncachable
  F0000-FFFFF write-protect
MTRR variable ranges enabled:
  0 base 000000000 mask 800000000 write-back
  1 base 0E0000000 mask FE0000000 uncachable
  2 base 0DDC00000 mask FFFC00000 uncachable
  3 base 0DE000000 mask FFE000000 uncachable
  4 base 0DDB00000 mask FFFF00000 uncachable
  5 disabled
  6 disabled
  7 disabled
x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
original variable MTRRs
reg 0, base: 0GB, range: 32GB, type WB
reg 1, base: 3584MB, range: 512MB, type UC
reg 2, base: 3548MB, range: 4MB, type UC
reg 3, base: 3552MB, range: 32MB, type UC
reg 4, base: 3547MB, range: 1MB, type UC
total RAM covered: 32219M
 gran_size: 64K 	chunk_size: 64K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 128K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 256K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 64K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 64K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 64K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 64K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 64K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 64K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 128K 	chunk_size: 128K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 256K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 128K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 128K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 128K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 128K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 128K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 128K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 256K 	chunk_size: 256K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 256K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 256K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 256K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 256K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 256K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 256K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 256K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 256K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 256K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 512K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 512K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 512K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 512K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 512K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 512K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 512K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 512K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 512K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 1M 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 1M 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 1M 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 1M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 1M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 1M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 1M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 1M 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 2M 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 2M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 1M
 gran_size: 2M 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 1M
 gran_size: 4M 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 1G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 2G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 8M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 8M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 8M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 1G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 2G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 16M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 16395M
 gran_size: 16M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 24587M
 gran_size: 16M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 1G 	num_reg: 7  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 2G 	num_reg: 7  	lose cover RAM: 11M
 gran_size: 32M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 128M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 256M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 128M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 256M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 128M 	chunk_size: 128M 	num_reg: 7  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 256M 	num_reg: 7  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 91M
 gran_size: 256M 	chunk_size: 256M 	num_reg: 6  	lose cover RAM: 219M
 gran_size: 256M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 219M
 gran_size: 256M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 219M
 gran_size: 256M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 219M
 gran_size: 512M 	chunk_size: 512M 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 512M 	chunk_size: 1G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 512M 	chunk_size: 2G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 1G 	chunk_size: 1G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 1G 	chunk_size: 2G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 2G 	chunk_size: 2G 	num_reg: 4  	lose cover RAM: 1499M
mtrr_cleanup: can not find optimal value
please specify mtrr_gran_size/mtrr_chunk_size
e820 update range: 00000000ddb00000 - 0000000100000000 (usable) ==> (reserved)
last_pfn = 0xddabf max_arch_pfn = 0x400000000
initial memory mapped : 0 - 20000000
init_memory_mapping: 0000000000000000-00000000ddabf000
 0000000000 - 00dda00000 page 2M
 00dda00000 - 00ddabf000 page 4k
kernel direct mapping tables up to ddabf000 @ 8000-e000
init_memory_mapping: 0000000100000000-0000000120000000
 0100000000 - 0120000000 page 2M
kernel direct mapping tables up to 120000000 @ c000-12000
RAMDISK: 373b3000 - 37fef54c
ACPI: RSDP 00000000000fbdd0 00024 (v02 DELL  )
ACPI: XSDT 00000000ddac3e00 00054 (v01 DELL    M09     27D90219 ASL  00000061)
ACPI: FACP 00000000ddac3c9c 000F4 (v04 DELL    M09     27D90219 ASL  00000061)
ACPI: DSDT 00000000ddac4400 05170 (v02 INT430 SYSFexxx 00001001 INTL 20050624)
ACPI: FACS 00000000ddad2c00 00040
ACPI: HPET 00000000ddac3f00 00038 (v01 DELL    M09     00000001 ASL  00000061)
ACPI: APIC 00000000ddac4000 00068 (v01 DELL    M09     27D90219 ASL  00000047)
ACPI: MCFG 00000000ddac3fc0 0003E (v16 DELL    M09     27D90219 ASL  00000061)
ACPI: SLIC 00000000ddac409c 00176 (v01 DELL    M09     27D90219 ASL  00000061)
ACPI: SSDT 00000000ddac2321 0066C (v01  PmRef    CpuPm 00003000 INTL 20050624)
ACPI: Local APIC address 0xfee00000
No NUMA configuration found
Faking a node at 0000000000000000-0000000120000000
Bootmem setup node 0 0000000000000000-0000000120000000
  NODE_DATA [000000000000d000 - 0000000000022fff]
  bootmap [0000000000023000 -  0000000000046fff] pages 24
(8 early reservations) ==> bootmem [0000000000 - 0120000000]
  #0 [0000000000 - 0000001000]   BIOS data page ==> [0000000000 - 0000001000]
  #1 [0000006000 - 0000008000]       TRAMPOLINE ==> [0000006000 - 0000008000]
  #2 [0001000000 - 0001a53ee8]    TEXT DATA BSS ==> [0001000000 - 0001a53ee8]
  #3 [00373b3000 - 0037fef54c]          RAMDISK ==> [00373b3000 - 0037fef54c]
  #4 [000009f000 - 0000100000]    BIOS reserved ==> [000009f000 - 0000100000]
  #5 [0001a54000 - 0001a541e8]              BRK ==> [0001a54000 - 0001a541e8]
  #6 [0000008000 - 000000c000]          PGTABLE ==> [0000008000 - 000000c000]
  #7 [000000c000 - 000000d000]          PGTABLE ==> [000000c000 - 000000d000]
 [ffffea0000000000-ffffea0003ffffff] PMD -> [ffff880001c00000-ffff8800055fffff] on node 0
Zone PFN ranges:
  DMA      0x00000000 -> 0x00001000
  DMA32    0x00001000 -> 0x00100000
  Normal   0x00100000 -> 0x00120000
Movable zone start PFN for each node
early_node_map[3] active PFN ranges
    0: 0x00000000 -> 0x0000009f
    0: 0x00000100 -> 0x000ddabf
    0: 0x00100000 -> 0x00120000
On node 0 totalpages: 1038942
  DMA zone: 56 pages used for memmap
  DMA zone: 105 pages reserved
  DMA zone: 3838 pages, LIFO batch:0
  DMA32 zone: 14280 pages used for memmap
  DMA32 zone: 889591 pages, LIFO batch:31
  Normal zone: 1792 pages used for memmap
  Normal zone: 129280 pages, LIFO batch:31
ACPI: PM-Timer IO Port: 0x1008
ACPI: Local APIC address 0xfee00000
ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
ACPI: IRQ0 used by override.
ACPI: IRQ2 used by override.
ACPI: IRQ9 used by override.
Using ACPI (MADT) for SMP configuration information
ACPI: HPET id: 0x8086a201 base: 0xfed00000
SMP: Allowing 2 CPUs, 0 hotplug CPUs
nr_irqs_gsi: 24
PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
PM: Registered nosave memory: 00000000000a0000 - 0000000000100000
PM: Registered nosave memory: 00000000ddabf000 - 00000000ddac0000
PM: Registered nosave memory: 00000000ddac0000 - 00000000ddac1000
PM: Registered nosave memory: 00000000ddac1000 - 00000000ddac2000
PM: Registered nosave memory: 00000000ddac2000 - 00000000e0000000
PM: Registered nosave memory: 00000000e0000000 - 00000000f8000000
PM: Registered nosave memory: 00000000f8000000 - 00000000fc000000
PM: Registered nosave memory: 00000000fc000000 - 00000000fec00000
PM: Registered nosave memory: 00000000fec00000 - 00000000fec10000
PM: Registered nosave memory: 00000000fec10000 - 00000000fed18000
PM: Registered nosave memory: 00000000fed18000 - 00000000fed1c000
PM: Registered nosave memory: 00000000fed1c000 - 00000000fed20000
PM: Registered nosave memory: 00000000fed20000 - 00000000fed90000
PM: Registered nosave memory: 00000000fed90000 - 00000000feda0000
PM: Registered nosave memory: 00000000feda0000 - 00000000feda6000
PM: Registered nosave memory: 00000000feda6000 - 00000000fee00000
PM: Registered nosave memory: 00000000fee00000 - 00000000fee10000
PM: Registered nosave memory: 00000000fee10000 - 00000000ffe00000
PM: Registered nosave memory: 00000000ffe00000 - 0000000100000000
Allocating PCI resources starting at e0000000 (gap: e0000000:18000000)
Booting paravirtualized kernel on bare hardware
NR_CPUS:256 nr_cpumask_bits:256 nr_cpu_ids:2 nr_node_ids:1
PERCPU: Embedded 30 pages/cpu @ffff880005800000 s90392 r8192 d24296 u1048576
pcpu-alloc: s90392 r8192 d24296 u1048576 alloc=1*2097152
pcpu-alloc: [0] 0 1 
Built 1 zonelists in Node order, mobility grouping on.  Total pages: 1022709
Policy zone: Normal
Kernel command line: ro root=UUID=94fbb537-7795-4525-af30-4fc0f0bd138e  LANG=en_US.UTF-8 SYSFONT=latarcyrheb-sun16 KEYBOARDTYPE=pc KEYTABLE=us rhgb quiet
PID hash table entries: 4096 (order: 3, 32768 bytes)
Initializing CPU#0
Checking aperture...
No AGP bridge found
Calgary: detecting Calgary via BIOS EBDA area
Calgary: Unable to locate Rio Grande table in EBDA - bailing!
PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
Placing 64MB software IO TLB between ffff88000591e000 - ffff88000991e000
software IO TLB at phys 0x591e000 - 0x991e000
Memory: 4006576k/4718592k available (4464k kernel code, 562824k absent, 149192k reserved, 3722k data, 936k init)
SLUB: Genslabs=14, HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
Hierarchical RCU implementation.
NR_IRQS:4352 nr_irqs:424
Extended CMOS year: 2000
Console: colour VGA+ 80x25
console [tty0] enabled
allocated 41943040 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
hpet clockevent registered
HPET: 4 timers in total, 0 timers will be used for per-cpu timer
Fast TSC calibration using PIT
Detected 2161.149 MHz processor.
Calibrating delay loop (skipped), value calculated using timer frequency.. 4322.29 BogoMIPS (lpj=2161149)
Security Framework initialized
SELinux:  Initializing.
SELinux:  Starting in permissive mode
Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes)
Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes)
Mount-cache hash table entries: 256
Initializing cgroup subsys ns
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
CPU: L1 I cache: 32K, L1 D cache: 32K
CPU: L2 cache: 1024K
CPU 0/0x0 -> Node 0
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 0
mce: CPU supports 6 MCE banks
CPU0: Thermal monitoring enabled (TM2)
using mwait in idle threads.
Performance Events: Core2 events, Intel PMU driver.
... version:                2
... bit width:              40
... generic registers:      2
... value mask:             000000ffffffffff
... max period:             000000007fffffff
... fixed-purpose events:   3
... event mask:             0000000700000003
ACPI: Core revision 20090903
ftrace: converting mcount calls to 0f 1f 44 00 00
ftrace: allocating 23774 entries in 94 pages
Setting APIC routing to flat
..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
CPU0: Intel(R) Pentium(R) Dual  CPU  T3400  @ 2.16GHz stepping 0d
Booting processor 1 APIC 0x1 ip 0x6000
Initializing CPU#1
CPU: L1 I cache: 32K, L1 D cache: 32K
CPU: L2 cache: 1024K
CPU 1/0x1 -> Node 0
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 1
CPU1: Thermal monitoring enabled (TM2)
CPU1: Intel(R) Pentium(R) Dual  CPU  T3400  @ 2.16GHz stepping 0d
checking TSC synchronization [CPU#0 -> CPU#1]: passed.
Brought up 2 CPUs
Total of 2 processors activated (8645.01 BogoMIPS).
sizeof(vma)=176 bytes
sizeof(page)=56 bytes
sizeof(inode)=584 bytes
sizeof(dentry)=192 bytes
sizeof(ext3inode)=784 bytes
sizeof(buffer_head)=104 bytes
sizeof(skbuff)=232 bytes
sizeof(task_struct)=5984 bytes
CPU0 attaching sched-domain:
 domain 0: span 0-1 level MC
  groups: 0 1
CPU1 attaching sched-domain:
 domain 0: span 0-1 level MC
  groups: 1 0
devtmpfs: initialized
regulator: core version 0.5
Time: 13:35:01  Date: 03/30/10
NET: Registered protocol family 16
ACPI: bus type pci registered
PCI: MCFG configuration 0: base f8000000 segment 0 buses 0 - 63
PCI: MCFG area at f8000000 reserved in E820
PCI: Using MMCONFIG at f8000000 - fbffffff
PCI: Using configuration type 1 for base access
bio: create slab <bio-0> at 0
ACPI: EC: Look up EC in DSDT
ACPI: BIOS _OSI(Linux) query ignored
ACPI: Interpreter enabled
ACPI: (supports S0 S3 S4 S5)
ACPI: Using IOAPIC for interrupt routing
ACPI: No dock devices found.
ACPI: PCI Root Bridge [PCI0] (0000:00)
DMAR: Forcing write-buffer flush capability
DMAR: Disabling IOMMU for graphics on this chipset
pci 0000:00:02.0: reg 10 64bit mmio: [0xf6c00000-0xf6ffffff]
pci 0000:00:02.0: reg 18 64bit mmio pref: [0xe0000000-0xefffffff]
pci 0000:00:02.0: reg 20 io port: [0xefe8-0xefef]
pci 0000:00:02.1: reg 10 64bit mmio: [0xf6b00000-0xf6bfffff]
pci 0000:00:1a.0: reg 20 io port: [0x6f60-0x6f7f]
pci 0000:00:1a.1: reg 20 io port: [0x6f80-0x6f9f]
pci 0000:00:1a.2: reg 20 io port: [0x6fa0-0x6fbf]
pci 0000:00:1a.7: reg 10 32bit mmio: [0xfed1c400-0xfed1c7ff]
pci 0000:00:1a.7: PME# supported from D0 D3hot D3cold
pci 0000:00:1a.7: PME# disabled
pci 0000:00:1b.0: reg 10 64bit mmio: [0xf6afc000-0xf6afffff]
pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1b.0: PME# disabled
pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.0: PME# disabled
pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.1: PME# disabled
pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.2: PME# disabled
pci 0000:00:1c.4: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.4: PME# disabled
pci 0000:00:1d.0: reg 20 io port: [0x6f00-0x6f1f]
pci 0000:00:1d.1: reg 20 io port: [0x6f20-0x6f3f]
pci 0000:00:1d.2: reg 20 io port: [0x6f40-0x6f5f]
pci 0000:00:1d.7: reg 10 32bit mmio: [0xfed1c000-0xfed1c3ff]
pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
pci 0000:00:1d.7: PME# disabled
pci 0000:00:1f.2: reg 10 io port: [0x6e70-0x6e77]
pci 0000:00:1f.2: reg 14 io port: [0x6e78-0x6e7b]
pci 0000:00:1f.2: reg 18 io port: [0x6e80-0x6e87]
pci 0000:00:1f.2: reg 1c io port: [0x6e88-0x6e8b]
pci 0000:00:1f.2: reg 20 io port: [0x6ea0-0x6ebf]
pci 0000:00:1f.2: reg 24 32bit mmio: [0xfed1c800-0xfed1cfff]
pci 0000:00:1f.2: PME# supported from D3hot
pci 0000:00:1f.2: PME# disabled
pci 0000:00:1f.3: reg 10 64bit mmio: [0xf6afbf00-0xf6afbfff]
pci 0000:00:1f.3: reg 20 io port: [0x1100-0x111f]
pci 0000:0c:00.0: reg 10 64bit mmio: [0xf69fc000-0xf69fffff]
pci 0000:0c:00.0: supports D1 D2
pci 0000:0c:00.0: PME# supported from D0 D3hot D3cold
pci 0000:0c:00.0: PME# disabled
pci 0000:00:1c.1: bridge 32bit mmio: [0xf6900000-0xf69fffff]
pci 0000:09:00.0: reg 10 64bit mmio: [0xf68fc000-0xf68fffff]
pci 0000:09:00.0: reg 18 io port: [0xde00-0xdeff]
pci 0000:09:00.0: supports D1 D2
pci 0000:09:00.0: PME# supported from D0 D1 D2 D3hot D3cold
pci 0000:09:00.0: PME# disabled
pci 0000:00:1c.2: bridge io port: [0xd000-0xdfff]
pci 0000:00:1c.2: bridge 32bit mmio: [0xf6800000-0xf68fffff]
pci 0000:00:1c.4: bridge io port: [0xc000-0xcfff]
pci 0000:00:1c.4: bridge 32bit mmio: [0xf6600000-0xf67fffff]
pci 0000:00:1c.4: bridge 64bit mmio pref: [0xf0000000-0xf01fffff]
pci 0000:00:1e.0: transparent bridge
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PCIE._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP05._PRT]
ACPI: PCI Interrupt Link [LNKA] (IRQs *10 11)
ACPI: PCI Interrupt Link [LNKB] (IRQs 5 7) *4
ACPI: PCI Interrupt Link [LNKC] (IRQs *10 11)
ACPI: PCI Interrupt Link [LNKD] (IRQs 5 7 10 11) *0, disabled.
ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 6 7 10 *11 12 14 15)
ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 *7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 *5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 7 10 11 12 14 15) *0, disabled.
vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
vgaarb: loaded
SCSI subsystem initialized
libata version 3.00 loaded.
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
PCI: Using ACPI for IRQ routing
PCI: old code would have set cacheline size to 32 bytes, but clflush_size = 64
PCI: pci_cache_line_size set to 64 bytes
NetLabel: Initializing
NetLabel:  domain hash size = 128
NetLabel:  protocols = UNLABELED CIPSOv4
NetLabel:  unlabeled traffic allowed by default
hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0
hpet0: 4 comparators, 64-bit 14.318180 MHz counter
Switching to clocksource tsc
pnp: PnP ACPI init
ACPI: bus type pnp registered
pnp: PnP ACPI: found 12 devices
ACPI: ACPI bus type pnp unregistered
system 00:08: iomem range 0xfed00000-0xfed003ff has been reserved
system 00:09: ioport range 0x900-0x97f has been reserved
system 00:09: ioport range 0x4d0-0x4d1 has been reserved
system 00:09: ioport range 0x1000-0x1005 has been reserved
system 00:09: ioport range 0x1008-0x100f has been reserved
system 00:0a: ioport range 0xf400-0xf4fe has been reserved
system 00:0a: ioport range 0x1006-0x1007 has been reserved
system 00:0a: ioport range 0x100a-0x1059 could not be reserved
system 00:0a: ioport range 0x1060-0x107f has been reserved
system 00:0a: ioport range 0x1080-0x10bf has been reserved
system 00:0a: ioport range 0x1100-0x111f has been reserved
system 00:0a: ioport range 0x1010-0x102f has been reserved
system 00:0a: ioport range 0x809-0x809 has been reserved
system 00:0b: iomem range 0x0-0x9efff could not be reserved
system 00:0b: iomem range 0x9f000-0x9ffff could not be reserved
system 00:0b: iomem range 0xc0000-0xcffff has been reserved
system 00:0b: iomem range 0xe0000-0xfffff has been reserved
system 00:0b: iomem range 0x100000-0xddabf3ff could not be reserved
system 00:0b: iomem range 0xddabf400-0xddafffff could not be reserved
system 00:0b: iomem range 0xddb00000-0xddbfffff has been reserved
system 00:0b: iomem range 0xffe00000-0xffffffff has been reserved
system 00:0b: iomem range 0xffa00000-0xffbfffff has been reserved
system 00:0b: iomem range 0xfec00000-0xfec0ffff could not be reserved
system 00:0b: iomem range 0xfee00000-0xfee0ffff has been reserved
system 00:0b: iomem range 0xfed20000-0xfed8ffff has been reserved
system 00:0b: iomem range 0xfeda0000-0xfeda3fff has been reserved
system 00:0b: iomem range 0xfeda4000-0xfeda4fff has been reserved
system 00:0b: iomem range 0xfeda5000-0xfeda5fff has been reserved
system 00:0b: iomem range 0xfeda6000-0xfeda6fff has been reserved
system 00:0b: iomem range 0xfed1c800-0xfed1cfff has been reserved
system 00:0b: iomem range 0xfed18000-0xfed1bfff has been reserved
system 00:0b: iomem range 0xf8000000-0xfbffffff has been reserved
pci 0000:00:1c.0: PCI bridge, secondary bus 0000:0b
pci 0000:00:1c.0:   IO window: 0x2000-0x2fff
pci 0000:00:1c.0:   MEM window: 0xf0200000-0xf03fffff
pci 0000:00:1c.0:   PREFETCH window: 0x000000f0400000-0x000000f05fffff
pci 0000:00:1c.1: PCI bridge, secondary bus 0000:0c
pci 0000:00:1c.1:   IO window: 0x3000-0x3fff
pci 0000:00:1c.1:   MEM window: 0xf6900000-0xf69fffff
pci 0000:00:1c.1:   PREFETCH window: 0x000000f0600000-0x000000f07fffff
pci 0000:00:1c.2: PCI bridge, secondary bus 0000:09
pci 0000:00:1c.2:   IO window: 0xd000-0xdfff
pci 0000:00:1c.2:   MEM window: 0xf6800000-0xf68fffff
pci 0000:00:1c.2:   PREFETCH window: 0x000000f0800000-0x000000f09fffff
pci 0000:00:1c.4: PCI bridge, secondary bus 0000:0d
pci 0000:00:1c.4:   IO window: 0xc000-0xcfff
pci 0000:00:1c.4:   MEM window: 0xf6600000-0xf67fffff
pci 0000:00:1c.4:   PREFETCH window: 0x000000f0000000-0x000000f01fffff
pci 0000:00:1e.0: PCI bridge, secondary bus 0000:03
pci 0000:00:1e.0:   IO window: disabled
pci 0000:00:1e.0:   MEM window: disabled
pci 0000:00:1e.0:   PREFETCH window: disabled
  alloc irq_desc for 16 on node -1
  alloc kstat_irqs on node -1
pci 0000:00:1c.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
pci 0000:00:1c.0: setting latency timer to 64
  alloc irq_desc for 17 on node -1
  alloc kstat_irqs on node -1
pci 0000:00:1c.1: PCI INT B -> GSI 17 (level, low) -> IRQ 17
pci 0000:00:1c.1: setting latency timer to 64
  alloc irq_desc for 18 on node -1
  alloc kstat_irqs on node -1
pci 0000:00:1c.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
pci 0000:00:1c.2: setting latency timer to 64
pci 0000:00:1c.4: PCI INT A -> GSI 16 (level, low) -> IRQ 16
pci 0000:00:1c.4: setting latency timer to 64
pci 0000:00:1e.0: setting latency timer to 64
pci_bus 0000:00: resource 0 io:  [0x00-0xffff]
pci_bus 0000:00: resource 1 mem: [0x000000-0xffffffffffffffff]
pci_bus 0000:0b: resource 0 io:  [0x2000-0x2fff]
pci_bus 0000:0b: resource 1 mem: [0xf0200000-0xf03fffff]
pci_bus 0000:0b: resource 2 pref mem [0xf0400000-0xf05fffff]
pci_bus 0000:0c: resource 0 io:  [0x3000-0x3fff]
pci_bus 0000:0c: resource 1 mem: [0xf6900000-0xf69fffff]
pci_bus 0000:0c: resource 2 pref mem [0xf0600000-0xf07fffff]
pci_bus 0000:09: resource 0 io:  [0xd000-0xdfff]
pci_bus 0000:09: resource 1 mem: [0xf6800000-0xf68fffff]
pci_bus 0000:09: resource 2 pref mem [0xf0800000-0xf09fffff]
pci_bus 0000:0d: resource 0 io:  [0xc000-0xcfff]
pci_bus 0000:0d: resource 1 mem: [0xf6600000-0xf67fffff]
pci_bus 0000:0d: resource 2 pref mem [0xf0000000-0xf01fffff]
pci_bus 0000:03: resource 3 io:  [0x00-0xffff]
pci_bus 0000:03: resource 4 mem: [0x000000-0xffffffffffffffff]
NET: Registered protocol family 2
IP route cache hash table entries: 131072 (order: 8, 1048576 bytes)
TCP established hash table entries: 524288 (order: 11, 8388608 bytes)
TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
TCP: Hash tables configured (established 524288 bind 65536)
TCP reno registered
NET: Registered protocol family 1
pci 0000:00:02.0: Boot video device
Trying to unpack rootfs image as initramfs...
Freeing initrd memory: 12529k freed
audit: initializing netlink socket (disabled)
type=2000 audit(1269956101.627:1): initialized
HugeTLB registered 2 MB page size, pre-allocated 0 pages
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
msgmni has been set to 7849
SELinux:  Registering netfilter hooks
alg: No test for stdrng (krng)
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
io scheduler noop registered
io scheduler anticipatory registered
io scheduler deadline registered
io scheduler cfq registered (default)
  alloc irq_desc for 24 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.0: irq 24 for MSI/MSI-X
pcieport 0000:00:1c.0: setting latency timer to 64
  alloc irq_desc for 25 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.1: irq 25 for MSI/MSI-X
pcieport 0000:00:1c.1: setting latency timer to 64
  alloc irq_desc for 26 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.2: irq 26 for MSI/MSI-X
pcieport 0000:00:1c.2: setting latency timer to 64
  alloc irq_desc for 27 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.4: irq 27 for MSI/MSI-X
pcieport 0000:00:1c.4: setting latency timer to 64
pci_hotplug: PCI Hot Plug PCI Core version: 0.5
pciehp: PCI Express Hot Plug Controller Driver version: 0.4
acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
acpiphp: Slot [1] registered
pci-stub: invalid id string ""
ACPI: AC Adapter [AC] (on-line)
input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input0
ACPI: Lid Switch [LID]
input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input1
ACPI: Power Button [PBTN]
input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input2
ACPI: Sleep Button [SBTN]
ACPI: SSDT 00000000ddac298d 00281 (v01  PmRef   BspIst 00003000 INTL 20050624)
ACPI: SSDT 00000000ddac2de5 005C6 (v01  PmRef   BspCst 00003001 INTL 20050624)
Monitor-Mwait will be used to enter C-1 state
Monitor-Mwait will be used to enter C-2 state
Marking TSC unstable due to TSC halts in idle
processor LNXCPU:00: registered as cooling_device0
ACPI: SSDT 00000000ddac2c0e 001D7 (v01  PmRef    ApIst 00003000 INTL 20050624)
ACPI: SSDT 00000000ddac33ab 0008D (v01  PmRef    ApCst 00003000 INTL 20050624)
Switching to clocksource hpet
processor LNXCPU:01: registered as cooling_device1
thermal LNXTHERM:01: registered as thermal_zone0
ACPI: Thermal Zone [THM] (31 C)
Non-volatile memory driver v1.3
Linux agpgart interface v0.103
agpgart-intel 0000:00:00.0: Intel Mobile Intel? GM45 Express Chipset
agpgart-intel 0000:00:00.0: detected 32764K stolen memory
agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xe0000000
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
brd: module loaded
loop: module loaded
input: Macintosh mouse button emulation as /devices/virtual/input/input3
ahci 0000:00:1f.2: version 3.0
ahci 0000:00:1f.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
  alloc irq_desc for 28 on node -1
  alloc kstat_irqs on node -1
ahci 0000:00:1f.2: irq 28 for MSI/MSI-X
ahci: SSS flag set, parallel bus scan disabled
ahci 0000:00:1f.2: AHCI 0001.0200 32 slots 4 ports 3 Gbps 0x33 impl SATA mode
ahci 0000:00:1f.2: flags: 64bit ncq sntf stag pm led clo pio slum part ccc ems 
ahci 0000:00:1f.2: setting latency timer to 64
scsi0 : ahci
scsi1 : ahci
scsi2 : ahci
scsi3 : ahci
scsi4 : ahci
scsi5 : ahci
ata1: SATA max UDMA/133 abar m2048 at 0xfed1c800 port 0xfed1c900 irq 28
ata2: SATA max UDMA/133 irq_stat 0x00400040, connection status changed irq 28
ata3: DUMMY
ata4: DUMMY
ata5: SATA max UDMA/133 abar m2048 at 0xfed1c800 port 0xfed1cb00 irq 28
ata6: SATA max UDMA/133 abar m2048 at 0xfed1c800 port 0xfed1cb80 irq 28
Fixed MDIO Bus: probed
ACPI: Battery Slot [BAT0] (battery present)
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
  alloc irq_desc for 22 on node -1
  alloc kstat_irqs on node -1
ehci_hcd 0000:00:1a.7: PCI INT C -> GSI 22 (level, low) -> IRQ 22
ehci_hcd 0000:00:1a.7: setting latency timer to 64
ehci_hcd 0000:00:1a.7: EHCI Host Controller
ehci_hcd 0000:00:1a.7: new USB bus registered, assigned bus number 1
ehci_hcd 0000:00:1a.7: debug port 1
ehci_hcd 0000:00:1a.7: cache line size of 64 is not supported
ehci_hcd 0000:00:1a.7: irq 22, io mem 0xfed1c400
ehci_hcd 0000:00:1a.7: USB 2.0 started, EHCI 1.00
usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb1: Product: EHCI Host Controller
usb usb1: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 ehci_hcd
usb usb1: SerialNumber: 0000:00:1a.7
usb usb1: configuration #1 chosen from 1 choice
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 6 ports detected
  alloc irq_desc for 20 on node -1
  alloc kstat_irqs on node -1
ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 20 (level, low) -> IRQ 20
ehci_hcd 0000:00:1d.7: setting latency timer to 64
ehci_hcd 0000:00:1d.7: EHCI Host Controller
ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 2
ehci_hcd 0000:00:1d.7: debug port 1
ehci_hcd 0000:00:1d.7: cache line size of 64 is not supported
ehci_hcd 0000:00:1d.7: irq 20, io mem 0xfed1c000
ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
usb usb2: New USB device found, idVendor=1d6b, idProduct=0002
usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb2: Product: EHCI Host Controller
usb usb2: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 ehci_hcd
usb usb2: SerialNumber: 0000:00:1d.7
usb usb2: configuration #1 chosen from 1 choice
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 6 ports detected
ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
uhci_hcd: USB Universal Host Controller Interface driver
uhci_hcd 0000:00:1a.0: PCI INT A -> GSI 20 (level, low) -> IRQ 20
uhci_hcd 0000:00:1a.0: setting latency timer to 64
uhci_hcd 0000:00:1a.0: UHCI Host Controller
uhci_hcd 0000:00:1a.0: new USB bus registered, assigned bus number 3
uhci_hcd 0000:00:1a.0: irq 20, io base 0x00006f60
usb usb3: New USB device found, idVendor=1d6b, idProduct=0001
usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb3: Product: UHCI Host Controller
usb usb3: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb3: SerialNumber: 0000:00:1a.0
usb usb3: configuration #1 chosen from 1 choice
hub 3-0:1.0: USB hub found
hub 3-0:1.0: 2 ports detected
  alloc irq_desc for 21 on node -1
  alloc kstat_irqs on node -1
uhci_hcd 0000:00:1a.1: PCI INT B -> GSI 21 (level, low) -> IRQ 21
uhci_hcd 0000:00:1a.1: setting latency timer to 64
uhci_hcd 0000:00:1a.1: UHCI Host Controller
uhci_hcd 0000:00:1a.1: new USB bus registered, assigned bus number 4
uhci_hcd 0000:00:1a.1: irq 21, io base 0x00006f80
usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb4: Product: UHCI Host Controller
usb usb4: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb4: SerialNumber: 0000:00:1a.1
usb usb4: configuration #1 chosen from 1 choice
hub 4-0:1.0: USB hub found
hub 4-0:1.0: 2 ports detected
uhci_hcd 0000:00:1a.2: PCI INT C -> GSI 22 (level, low) -> IRQ 22
uhci_hcd 0000:00:1a.2: setting latency timer to 64
uhci_hcd 0000:00:1a.2: UHCI Host Controller
uhci_hcd 0000:00:1a.2: new USB bus registered, assigned bus number 5
uhci_hcd 0000:00:1a.2: irq 22, io base 0x00006fa0
usb usb5: New USB device found, idVendor=1d6b, idProduct=0001
usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb5: Product: UHCI Host Controller
usb usb5: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb5: SerialNumber: 0000:00:1a.2
usb usb5: configuration #1 chosen from 1 choice
hub 5-0:1.0: USB hub found
hub 5-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 20 (level, low) -> IRQ 20
uhci_hcd 0000:00:1d.0: setting latency timer to 64
uhci_hcd 0000:00:1d.0: UHCI Host Controller
uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 6
uhci_hcd 0000:00:1d.0: irq 20, io base 0x00006f00
usb usb6: New USB device found, idVendor=1d6b, idProduct=0001
usb usb6: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb6: Product: UHCI Host Controller
usb usb6: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb6: SerialNumber: 0000:00:1d.0
usb usb6: configuration #1 chosen from 1 choice
hub 6-0:1.0: USB hub found
hub 6-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 21 (level, low) -> IRQ 21
uhci_hcd 0000:00:1d.1: setting latency timer to 64
uhci_hcd 0000:00:1d.1: UHCI Host Controller
uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 7
uhci_hcd 0000:00:1d.1: irq 21, io base 0x00006f20
usb usb7: New USB device found, idVendor=1d6b, idProduct=0001
usb usb7: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb7: Product: UHCI Host Controller
usb usb7: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb7: SerialNumber: 0000:00:1d.1
usb usb7: configuration #1 chosen from 1 choice
hub 7-0:1.0: USB hub found
hub 7-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 22 (level, low) -> IRQ 22
uhci_hcd 0000:00:1d.2: setting latency timer to 64
uhci_hcd 0000:00:1d.2: UHCI Host Controller
uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 8
uhci_hcd 0000:00:1d.2: irq 22, io base 0x00006f40
usb usb8: New USB device found, idVendor=1d6b, idProduct=0001
usb usb8: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb8: Product: UHCI Host Controller
usb usb8: Manufacturer: Linux 2.6.32.9-70.fc12.x86_64 uhci_hcd
usb usb8: SerialNumber: 0000:00:1d.2
usb usb8: configuration #1 chosen from 1 choice
hub 8-0:1.0: USB hub found
hub 8-0:1.0: 2 ports detected
PNP: PS/2 Controller [PNP0303:KBC,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
i8042.c: Detected active multiplexing controller, rev 1.1.
serio: i8042 KBD port at 0x60,0x64 irq 1
serio: i8042 AUX0 port at 0x60,0x64 irq 12
serio: i8042 AUX1 port at 0x60,0x64 irq 12
serio: i8042 AUX2 port at 0x60,0x64 irq 12
serio: i8042 AUX3 port at 0x60,0x64 irq 12
mice: PS/2 mouse device common for all mice
rtc_cmos 00:03: RTC can wake from S4
rtc_cmos 00:03: rtc core: registered rtc_cmos as rtc0
rtc0: alarms up to one month, y3k, 114 bytes nvram, hpet irqs
device-mapper: uevent: version 1.0.3
device-mapper: ioctl: 4.15.0-ioctl (2009-04-01) initialised: dm-devel at redhat.com
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver hiddev
usbcore: registered new interface driver usbhid
usbhid: v2.6:USB HID core driver
nf_conntrack version 0.5.0 (16384 buckets, 65536 max)
CONFIG_NF_CT_ACCT is deprecated and will be removed soon. Please use
nf_conntrack.acct=1 kernel parameter, acct=1 nf_conntrack module option or
sysctl net.netfilter.nf_conntrack_acct=1 to enable it.
ip_tables: (C) 2000-2006 Netfilter Core Team
TCP cubic registered
Initializing XFRM netlink socket
NET: Registered protocol family 17
PM: Resume from disk failed.
registered taskstats version 1
No TPM chip found, activating TPM-bypass!
  Magic number: 2:643:585
rtc_cmos 00:03: setting system clock to 2010-03-30 13:35:02 UTC (1269956102)
Initalizing network drop monitor service
input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input4
ata1: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
usb 1-5: new high speed USB device using ehci_hcd and address 2
ata1.00: ATA-8: WDC WD3200BEVT-75ZCT2, 11.01A11, max UDMA/133
ata1.00: 625142448 sectors, multi 8: LBA48 NCQ (depth 31/32), AA
ata1.00: configured for UDMA/133
scsi 0:0:0:0: Direct-Access     ATA      WDC WD3200BEVT-7 11.0 PQ: 0 ANSI: 5
sd 0:0:0:0: Attached scsi generic sg0 type 0
sd 0:0:0:0: [sda] 625142448 512-byte logical blocks: (320 GB/298 GiB)
sd 0:0:0:0: [sda] Write Protect is off
sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
 sda: sda1 sda2 sda3 sda4 < sda5 sda6 >
sd 0:0:0:0: [sda] Attached SCSI disk
usb 1-5: New USB device found, idVendor=0bda, idProduct=0158
usb 1-5: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-5: Product: USB2.0-CRW
usb 1-5: Manufacturer: Generic
usb 1-5: SerialNumber: 20071114173400000
usb 1-5: configuration #1 chosen from 1 choice
usb 1-6: new high speed USB device using ehci_hcd and address 3
usb 1-6: New USB device found, idVendor=05ca, idProduct=180a
usb 1-6: New USB device strings: Mfr=9, Product=2, SerialNumber=0
usb 1-6: Product: Integrated Webcam
usb 1-6: Manufacturer: M091R-R01-9307-SB1V1
usb 1-6: configuration #1 chosen from 1 choice
input: PS/2 Mouse as /devices/platform/i8042/serio2/input/input5
input: AlpsPS/2 ALPS GlidePoint as /devices/platform/i8042/serio2/input/input6
ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
ata2.00: ATAPI: PLDS DVD+/-RW DS-8A3S, HD11, max UDMA/100
ata2.00: configured for UDMA/100
scsi 1:0:0:0: CD-ROM            PLDS     DVD+-RW DS-8A3S  HD11 PQ: 0 ANSI: 5
sr0: scsi3-mmc drive: 24x/8x writer dvd-ram cd/rw xa/form2 cdda pop-up
Uniform CD-ROM driver Revision: 3.20
sr 1:0:0:0: Attached scsi CD-ROM sr0
sr 1:0:0:0: Attached scsi generic sg1 type 5
ata5: SATA link down (SStatus 0 SControl 300)
ata6: SATA link down (SStatus 0 SControl 300)
Freeing unused kernel memory: 936k freed
Write protecting the kernel read-only data: 6592k
dracut: dracut-004-4.fc12
udev: starting version 145
[drm] Initialized drm 1.1.0 20060810
i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
i915 0000:00:02.0: setting latency timer to 64
mtrr: type mismatch for e0000000,10000000 old: write-back new: write-combining
[drm] MTRR allocation failed.  Graphics performance may suffer.
  alloc irq_desc for 29 on node -1
  alloc kstat_irqs on node -1
i915 0000:00:02.0: irq 29 for MSI/MSI-X
[drm] set up 31M of stolen space
fbcon: inteldrmfb (fb0) is primary device
Console: switching to colour frame buffer device 170x48
fb0: inteldrmfb frame buffer device
registered panic notifier
input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A03:00/LNXVIDEO:01/input/input7
ACPI: Video Device [VID1] (multi-head: yes  rom: no  post: no)
ACPI Warning for \_SB_.PCI0.VID2._DOD: Return Package has no elements (empty) (20090903/nspredef-433)
input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A03:00/LNXVIDEO:02/input/input8
ACPI: Video Device [VID2] (multi-head: yes  rom: no  post: no)
[drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
dracut: Starting plymouth daemon
Initializing USB Mass Storage driver...
scsi6 : SCSI emulation for USB Mass Storage devices
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
usb-storage: device found at 2
usb-storage: waiting for device to settle before scanning
device-mapper: multipath: version 1.1.0 loaded
EXT4-fs (sda5): mounted filesystem with ordered data mode
dracut: Mounted root filesystem /dev/sda5
dracut: Switching root
udev: starting version 145
dcdbas dcdbas: Dell Systems Management Base Driver (version 5.6.0-3.2)
ACPI: WMI: Mapper loaded
iTCO_vendor_support: vendor-support=0
sky2 driver version 1.25
sky2 0000:09:00.0: PCI INT A -> GSI 18 (level, low) -> IRQ 18
sky2 0000:09:00.0: setting latency timer to 64
sky2 0000:09:00.0: Yukon-2 FE+ chip revision 0
  alloc irq_desc for 30 on node -1
  alloc kstat_irqs on node -1
sky2 0000:09:00.0: irq 30 for MSI/MSI-X
sky2 eth0: addr 00:23:ae:26:b0:02
input: Dell WMI hotkeys as /devices/virtual/input/input9
iTCO_wdt: Intel TCO WatchDog Timer Driver v1.05
iTCO_wdt: Found a ICH9M TCO device (Version=2, TCOBASE=0x1060)
iTCO_wdt: initialized. heartbeat=30 sec (nowayout=0)
i801_smbus 0000:00:1f.3: PCI INT B -> GSI 18 (level, low) -> IRQ 18
usb-storage: device scan complete
scsi 6:0:0:0: Direct-Access     Generic- Multi-Card       1.00 PQ: 0 ANSI: 0 CCS
sd 6:0:0:0: Attached scsi generic sg2 type 0
sd 6:0:0:0: [sdb] Attached SCSI removable disk
Linux video capture interface: v2.00
b43-pci-bridge 0000:0c:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
b43-pci-bridge 0000:0c:00.0: setting latency timer to 64
uvcvideo: Found UVC 1.00 device Integrated Webcam (05ca:180a)
input: Integrated Webcam as /devices/pci0000:00/0000:00:1a.7/usb1/1-6/1-6:1.0/input/input10
usbcore: registered new interface driver uvcvideo
USB Video Class driver (v0.1.0)
ssb: Sonics Silicon Backplane found on PCI device 0000:0c:00.0
cfg80211: Calling CRDA to update world regulatory domain
b43-phy0: Broadcom 4312 WLAN found (core revision 15)
HDA Intel 0000:00:1b.0: PCI INT A -> GSI 21 (level, low) -> IRQ 21
HDA Intel 0000:00:1b.0: setting latency timer to 64
ALSA sound/pci/hda/hda_codec.c:3881: autoconfig: line_outs=1 (0xd/0x0/0x0/0x0/0x0)
ALSA sound/pci/hda/hda_codec.c:3885:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
ALSA sound/pci/hda/hda_codec.c:3889:    hp_outs=1 (0xa/0x0/0x0/0x0/0x0)
ALSA sound/pci/hda/hda_codec.c:3890:    mono: mono_out=0x0
ALSA sound/pci/hda/hda_codec.c:3893:    dig-out=0x1e/0x1f
ALSA sound/pci/hda/hda_codec.c:3901:    inputs: mic=0xb, fmic=0xc, line=0x0, fline=0x0, cd=0x0, aux=0x0
ALSA sound/pci/hda/patch_sigmatel.c:2974: stac92xx: dac_nids=1 (0x10/0x0/0x0/0x0/0x0)
input: HDA Digital PCBeep as /devices/pci0000:00/0000:00:1b.0/input/input11
input: HDA Intel Mic at Ext Right Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input12
input: HDA Intel HP Out at Ext Right Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input13
phy0: Selected rate control algorithm 'minstrel'
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
Broadcom 43xx driver loaded [ Features: PMLS, Firmware-ID: FW13 ]
cfg80211: World regulatory domain updated:
	(start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
	(2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
	(2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
	(2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
	(5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
	(5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
cfg80211: Calling CRDA for country: US
cfg80211: Regulatory domain changed to country: US
	(start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
	(2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2700 mBm)
	(5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 1700 mBm)
	(5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
	(5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
	(5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
	(5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 3000 mBm)
Adding 8191988k swap on /dev/sda6.  Priority:-1 extents:1 across:8191988k 
microcode: CPU0 sig=0x6fd, pf=0x80, revision=0xa3
platform microcode: firmware: requesting intel-ucode/06-0f-0d
microcode: CPU1 sig=0x6fd, pf=0x80, revision=0xa3
platform microcode: firmware: requesting intel-ucode/06-0f-0d
Microcode Update Driver: v2.00 <tigran@aivazian.fsnet.co.uk>, Peter Oruba
Microcode Update Driver: v2.00 removed.
NET: Registered protocol family 10
lo: Disabled Privacy Extensions
ip6_tables: (C) 2000-2006 Netfilter Core Team
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
[drm:drm_mode_rmfb] *ERROR* tried to remove a fb that we didn't own
fuse init (API version 7.13)

Output from tail /var/adm/messages

Mar 30 13:35:34 localhost rtkit-daemon[1537]: Sucessfully made thread 1683 of process 1683 (/usr/bin/pulseaudio) owned by '500' high priority at nice level -11.
Mar 30 13:35:34 localhost rtkit-daemon[1537]: Sucessfully made thread 1685 of process 1683 (/usr/bin/pulseaudio) owned by '500' RT at priority 5.
Mar 30 13:35:35 localhost rtkit-daemon[1537]: Sucessfully made thread 1689 of process 1683 (/usr/bin/pulseaudio) owned by '500' RT at priority 5.
Mar 30 13:35:36 localhost rtkit-daemon[1537]: Sucessfully made thread 1720 of process 1720 (/usr/bin/pulseaudio) owned by '500' high priority at nice level -11.
Mar 30 13:35:36 localhost pulseaudio[1720]: pid.c: Daemon already running.
Mar 30 13:36:06 localhost kernel: b43 ssb0:0: firmware: requesting b43/ucode15.fw
Mar 30 13:36:07 localhost kernel: b43 ssb0:0: firmware: requesting b43/lp0initvals15.fw
Mar 30 13:36:07 localhost kernel: b43 ssb0:0: firmware: requesting b43/lp0bsinitvals15.fw
Mar 30 13:36:07 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Mar 30 13:36:08 localhost kernel: ADDRCONF(NETDEV_UP): wlan0: link is not ready
-------------- next part --------------

Output from lspci -vv

00:00.0 Host bridge: Intel Corporation Mobile 4 Series Chipset Memory Controller Hub (rev 07)
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort+ >SERR- <PERR- INTx-
	Latency: 0
	Capabilities: [e0] Vendor Specific Information: Len=0a <?>
	Kernel driver in use: agpgart-intel

00:02.0 VGA compatible controller: Intel Corporation Mobile 4 Series Chipset Integrated Graphics Controller (rev 07) (prog-if 00 [VGA controller])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 29
	Region 0: Memory at f6c00000 (64-bit, non-prefetchable) [size=4M]
	Region 2: Memory at e0000000 (64-bit, prefetchable) [size=256M]
	Region 4: I/O ports at efe8 [size=8]
	Expansion ROM@<unassigned> [disabled]
	Capabilities: [90] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0200c  Data: 41a1
	Capabilities: [d0] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Kernel driver in use: i915
	Kernel modules: i915

00:02.1 Display controller: Intel Corporation Mobile 4 Series Chipset Integrated Graphics Controller (rev 07)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Region 0: Memory@f6b00000 (64-bit, non-prefetchable) [size=1M]
	Capabilities: [d0] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-

00:1a.0 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #4 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 20
	Region 4: I/O ports@6f60 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1a.1 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #5 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin B routed to IRQ 21
	Region 4: I/O ports@6f80 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1a.2 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #6 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 22
	Region 4: I/O ports@6fa0 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1a.7 USB Controller: Intel Corporation 82801I (ICH9 Family) USB2 EHCI Controller #2 (rev 03) (prog-if 20 [EHCI])
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 22
	Region 0: Memory@fed1c400 (32-bit, non-prefetchable) [size=1K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Debug port: BAR=1 offset=00a0
	Capabilities: [98] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: ehci_hcd

00:1b.0 Audio device: Intel Corporation 82801I (ICH9 Family) HD Audio Controller (rev 03)
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 21
	Region 0: Memory@f6afc000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=55mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [60] MSI: Enable- Count=1/1 Maskable- 64bit+
		Address: 0000000000000000  Data: 0000
	Capabilities: [70] Express (v1) Root Complex Integrated Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE- FLReset+
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop+
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed unknown, Width x0, ASPM unknown, Latency L0 <64ns, L1 <1us
			ClockPM- Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM Disabled; Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed unknown, Width x0, TrErr- Train- SlotClk- DLActive- BWMgmt- ABWMgmt-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed- WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
			Status:	NegoPending- InProgress-
		VC1:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable- ID=0 ArbSelect=Fixed TC/VC=00
			Status:	NegoPending- InProgress-
	Capabilities: [130 v1] Root Complex Link
		Desc:	PortNumber=0f ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: HDA Intel
	Kernel modules: snd-hda-intel

00:1c.0 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 1 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=0b, subordinate=0b, sec-latency=0
	I/O behind bridge: 00002000-00002fff
	Memory behind bridge: f0200000-f03fffff
	Prefetchable memory behind bridge: 00000000f0400000-00000000f05fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #1, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x0, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  0, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet- Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4161
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=01 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.1 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 2 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=0c, subordinate=0c, sec-latency=0
	I/O behind bridge: 00003000-00003fff
	Memory behind bridge: f6900000-f69fffff
	Prefetchable memory behind bridge: 00000000f0600000-00000000f07fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #2, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <256ns, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  1, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4169
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=02 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.2 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 3 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=09, subordinate=09, sec-latency=0
	I/O behind bridge: 0000d000-0000dfff
	Memory behind bridge: f6800000-f68fffff
	Prefetchable memory behind bridge: 00000000f0800000-00000000f09fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #3, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <256ns, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  2, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4171
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=03 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1c.4 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 5 (rev 03) (prog-if 00 [Normal decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Bus: primary=00, secondary=0d, subordinate=0e, sec-latency=0
	I/O behind bridge: 0000c000-0000cfff
	Memory behind bridge: f6600000-f67fffff
	Prefetchable memory behind bridge: 00000000f0000000-00000000f01fffff
	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [40] Express (v1) Root Port (Slot+), MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <64ns, L1 <1us
			ExtTag- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 128 bytes
		DevSta:	CorrErr- UncorrErr- FatalErr- UnsuppReq- AuxPwr+ TransPend-
		LnkCap:	Port #5, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <1us, L1 <4us
			ClockPM- Surprise- LLActRep+ BwNot-
		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x0, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+
			Slot #  4, PowerLimit 6.500000; Interlock- NoCompl-
		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet+ CmdCplt- HPIrq- LinkChg-
			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet- Interlock-
			Changed: MRL- PresDet- LinkState-
		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna- CRSVisible-
		RootCap: CRSVisible-
		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
		Address: fee0300c  Data: 4179
	Capabilities: [90] Subsystem: Dell Device 02aa
	Capabilities: [a0] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [100 v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntrySize=0
		Arb:	Fixed+ WRR32- WRR64- WRR128- 100ns- - - onfig- TableOffset=0
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed+ WRR32- WRR64- WRR128- TWRR128- WRR256- Fixed- RR32-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [180 v1] Root Complex Link
		Desc:	PortNumber=05 ComponentID=02 EltType=Config
		Link0:	Desc:	TargetPort=00 TargetComponent=02 AssocRCRB- LinkType=MemMapped LinkValid+
			Addr:	00000000fed18000
	Kernel driver in use: pcieport
	Kernel modules: shpchp

00:1d.0 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #1 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 20
	Region 4: I/O ports@6f00 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1d.1 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #2 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin B routed to IRQ 21
	Region 4: I/O ports@6f20 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1d.2 USB Controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #3 (rev 03) (prog-if 00 [UHCI])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 22
	Region 4: I/O ports@6f40 [size=32]
	Capabilities: [50] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: uhci_hcd

00:1d.7 USB Controller: Intel Corporation 82801I (ICH9 Family) USB2 EHCI Controller #1 (rev 03) (prog-if 20 [EHCI])
	Subsystem: Dell Device 02aa
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 20
	Region 0: Memory@fed1c000 (32-bit, non-prefetchable) [size=1K]
	Capabilities: [50] Power Management version 2
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [58] Debug port: BAR=1 offset=00a0
	Capabilities: [98] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: ehci_hcd

00:1e.0 PCI bridge: Intel Corporation 82801 Mobile PCI Bridge (rev 93) (prog-if 01 [Subtractive decode])
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Bus: primary=00, secondary=03, subordinate=03, sec-latency=32
	Secondary status: 66MHz- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort+ <SERR- <PERR-
	BridgeCtl: Parity- SERR+ NoISA- VGA- MAbort- >Reset- FastB2B-
		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
	Capabilities: [50] Subsystem: Dell Device 02aa

00:1f.0 ISA bridge: Intel Corporation ICH9M LPC Interface Controller (rev 03)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Capabilities: [e0] Vendor Specific Information: Len=0c <?>
	Kernel modules: iTCO_wdt

00:1f.2 SATA controller: Intel Corporation ICH9M/M-E SATA AHCI Controller (rev 03) (prog-if 01 [AHCI 1.0])
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin C routed to IRQ 28
	Region 0: I/O ports at 6e70 [size=8]
	Region 1: I/O ports at 6e78 [size=4]
	Region 2: I/O ports at 6e80 [size=8]
	Region 3: I/O ports at 6e88 [size=4]
	Region 4: I/O ports at 6ea0 [size=32]
	Region 5: Memory@fed1c800 (32-bit, non-prefetchable) [size=2K]
	Capabilities: [80] MSI: Enable+ Count=1/16 Maskable- 64bit-
		Address: fee0200c  Data: 4181
	Capabilities: [70] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot+,D3cold-)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [a8] SATA HBA v1.0 BAR4 Offset=00000004
	Capabilities: [b0] PCI Advanced Features
		AFCap: TP+ FLR+
		AFCtrl: FLR-
		AFStatus: TP-
	Kernel driver in use: ahci

00:1f.3 SMBus: Intel Corporation 82801I (ICH9 Family) SMBus Controller (rev 03)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Interrupt: pin B routed to IRQ 18
	Region 0: Memory at f6afbf00 (64-bit, non-prefetchable) [size=256]
	Region 4: I/O ports@1100 [size=32]
	Kernel driver in use: i801_smbus
	Kernel modules: i2c-i801

09:00.0 Ethernet controller: Marvell Technology Group Ltd. 88E8040 PCI-E Fast Ethernet Controller (rev 13)
	Subsystem: Dell Device 02aa
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 30
	Region 0: Memory at f68fc000 (64-bit, non-prefetchable) [size=16K]
	Region 2: I/O ports@de00 [size=256]
	Capabilities: [48] Power Management version 3
		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold+)
		Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=1 PME-
	Capabilities: [5c] MSI: Enable+ Count=1/1 Maskable- 64bit+
		Address: 00000000fee0300c  Data: 41a9
	Capabilities: [c0] Express (v2) Legacy Endpoint, MSI 00
		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s unlimited, L1 unlimited
			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
			MaxPayload 128 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <256ns, L1 unlimited
			ClockPM+ Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 128 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Not Supported, TimeoutDis+
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-, Selectable De-emphasis: -6dB
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -6dB
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		AERCap:	First Error Pointer: 1f, GenCap- CGenEn- ChkCap- ChkEn-
	Capabilities: [130 v1] Device Serial Number 02-b0-26-ff-ff-ae-23-00
	Kernel driver in use: sky2
	Kernel modules: sky2

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

Output from dmesg

Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 2.6.32.10-90.fc12.x86_64 (mockbuild at x86-04.phx2.fedoraproject.org) (gcc version 4.4.3 20100127 (Red Hat 4.4.3-4) (GCC) ) #1 SMP Tue Mar 23 09:47:08 UTC 2010
Command line: ro root=UUID=94fbb537-7795-4525-af30-4fc0f0bd138e  LANG=en_US.UTF-8 SYSFONT=latarcyrheb-sun16 KEYBOARDTYPE=pc KEYTABLE=us rhgb quiet
KERNEL supported cpus:
  Intel GenuineIntel
  AMD AuthenticAMD
  Centaur CentaurHauls
BIOS-provided physical RAM map:
 BIOS-e820: 0000000000000000 - 000000000009f000 (usable)
 BIOS-e820: 000000000009f000 - 00000000000a0000 (reserved)
 BIOS-e820: 0000000000100000 - 00000000ddabf400 (usable)
 BIOS-e820: 00000000ddabf400 - 00000000ddac1400 (ACPI NVS)
 BIOS-e820: 00000000ddac1400 - 00000000e0000000 (reserved)
 BIOS-e820: 00000000f8000000 - 00000000fc000000 (reserved)
 BIOS-e820: 00000000fec00000 - 00000000fec10000 (reserved)
 BIOS-e820: 00000000fed18000 - 00000000fed1c000 (reserved)
 BIOS-e820: 00000000fed20000 - 00000000fed90000 (reserved)
 BIOS-e820: 00000000feda0000 - 00000000feda6000 (reserved)
 BIOS-e820: 00000000fee00000 - 00000000fee10000 (reserved)
 BIOS-e820: 00000000ffe00000 - 0000000100000000 (reserved)
 BIOS-e820: 0000000100000000 - 0000000120000000 (usable)
DMI 2.4 present.
last_pfn = 0x120000 max_arch_pfn = 0x400000000
MTRR default type: uncachable
MTRR fixed ranges enabled:
  00000-9FFFF write-back
  A0000-BFFFF uncachable
  C0000-CFFFF write-protect
  D0000-EFFFF uncachable
  F0000-FFFFF write-protect
MTRR variable ranges enabled:
  0 base 000000000 mask 800000000 write-back
  1 base 0E0000000 mask FE0000000 uncachable
  2 base 0DDC00000 mask FFFC00000 uncachable
  3 base 0DE000000 mask FFE000000 uncachable
  4 base 0DDB00000 mask FFFF00000 uncachable
  5 disabled
  6 disabled
  7 disabled
x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
original variable MTRRs
reg 0, base: 0GB, range: 32GB, type WB
reg 1, base: 3584MB, range: 512MB, type UC
reg 2, base: 3548MB, range: 4MB, type UC
reg 3, base: 3552MB, range: 32MB, type UC
reg 4, base: 3547MB, range: 1MB, type UC
total RAM covered: 32219M
 gran_size: 64K 	chunk_size: 64K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 128K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 256K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 64K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 64K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 64K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 64K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 64K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 64K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 64K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 64K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 128K 	chunk_size: 128K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 256K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 128K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 128K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 128K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 128K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 128K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 128K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 128K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 128K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 256K 	chunk_size: 256K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 256K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 256K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 256K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 256K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 256K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 256K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 256K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 256K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 256K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 256K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 512K 	chunk_size: 512K 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 512K 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 512K 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 512K 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 512K 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 512K 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 512K 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 512K 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 512K 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 512K 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 1M 	chunk_size: 1M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 1M 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 1M 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 1M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 1M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 1M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28G
 gran_size: 1M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16G
 gran_size: 1M 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 1M 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 0G
 gran_size: 2M 	chunk_size: 2M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 28671M
 gran_size: 2M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 28673M
 gran_size: 2M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 16385M
 gran_size: 2M 	chunk_size: 1G 	num_reg: 8  	lose cover RAM: 1M
 gran_size: 2M 	chunk_size: 2G 	num_reg: 8  	lose cover RAM: 1M
 gran_size: 4M 	chunk_size: 4M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 4M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 1G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 4M 	chunk_size: 2G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 8M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 8M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 8M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 24579M
 gran_size: 8M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 1G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 8M 	chunk_size: 2G 	num_reg: 7  	lose cover RAM: 3M
 gran_size: 16M 	chunk_size: 16M 	num_reg: 8  	lose cover RAM: 16395M
 gran_size: 16M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 24587M
 gran_size: 16M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 128M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 256M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 512M 	num_reg: 8  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 1G 	num_reg: 7  	lose cover RAM: 11M
 gran_size: 16M 	chunk_size: 2G 	num_reg: 7  	lose cover RAM: 11M
 gran_size: 32M 	chunk_size: 32M 	num_reg: 8  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 128M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 256M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 32M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 64M 	num_reg: 8  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 128M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 256M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 64M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 27M
 gran_size: 128M 	chunk_size: 128M 	num_reg: 7  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 256M 	num_reg: 7  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 91M
 gran_size: 128M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 91M
 gran_size: 256M 	chunk_size: 256M 	num_reg: 6  	lose cover RAM: 219M
 gran_size: 256M 	chunk_size: 512M 	num_reg: 7  	lose cover RAM: 219M
 gran_size: 256M 	chunk_size: 1G 	num_reg: 6  	lose cover RAM: 219M
 gran_size: 256M 	chunk_size: 2G 	num_reg: 6  	lose cover RAM: 219M
 gran_size: 512M 	chunk_size: 512M 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 512M 	chunk_size: 1G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 512M 	chunk_size: 2G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 1G 	chunk_size: 1G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 1G 	chunk_size: 2G 	num_reg: 5  	lose cover RAM: 475M
 gran_size: 2G 	chunk_size: 2G 	num_reg: 4  	lose cover RAM: 1499M
mtrr_cleanup: can not find optimal value
please specify mtrr_gran_size/mtrr_chunk_size
e820 update range: 00000000ddb00000 - 0000000100000000 (usable) ==> (reserved)
last_pfn = 0xddabf max_arch_pfn = 0x400000000
initial memory mapped : 0 - 20000000
init_memory_mapping: 0000000000000000-00000000ddabf000
 0000000000 - 00dda00000 page 2M
 00dda00000 - 00ddabf000 page 4k
kernel direct mapping tables up to ddabf000 @ 8000-e000
init_memory_mapping: 0000000100000000-0000000120000000
 0100000000 - 0120000000 page 2M
kernel direct mapping tables up to 120000000 @ c000-12000
RAMDISK: 373ab000 - 37fefb07
ACPI: RSDP 00000000000fbdd0 00024 (v02 DELL  )
ACPI: XSDT 00000000ddac3e00 00054 (v01 DELL    M09     27D90219 ASL  00000061)
ACPI: FACP 00000000ddac3c9c 000F4 (v04 DELL    M09     27D90219 ASL  00000061)
ACPI: DSDT 00000000ddac4400 05170 (v02 INT430 SYSFexxx 00001001 INTL 20050624)
ACPI: FACS 00000000ddad2c00 00040
ACPI: HPET 00000000ddac3f00 00038 (v01 DELL    M09     00000001 ASL  00000061)
ACPI: APIC 00000000ddac4000 00068 (v01 DELL    M09     27D90219 ASL  00000047)
ACPI: MCFG 00000000ddac3fc0 0003E (v16 DELL    M09     27D90219 ASL  00000061)
ACPI: SLIC 00000000ddac409c 00176 (v01 DELL    M09     27D90219 ASL  00000061)
ACPI: SSDT 00000000ddac2321 0066C (v01  PmRef    CpuPm 00003000 INTL 20050624)
ACPI: Local APIC address 0xfee00000
No NUMA configuration found
Faking a node at 0000000000000000-0000000120000000
Bootmem setup node 0 0000000000000000-0000000120000000
  NODE_DATA [000000000000d000 - 0000000000022fff]
  bootmap [0000000000023000 -  0000000000046fff] pages 24
(8 early reservations) ==> bootmem [0000000000 - 0120000000]
  #0 [0000000000 - 0000001000]   BIOS data page ==> [0000000000 - 0000001000]
  #1 [0000006000 - 0000008000]       TRAMPOLINE ==> [0000006000 - 0000008000]
  #2 [0001000000 - 0001a53ee8]    TEXT DATA BSS ==> [0001000000 - 0001a53ee8]
  #3 [00373ab000 - 0037fefb07]          RAMDISK ==> [00373ab000 - 0037fefb07]
  #4 [000009f000 - 0000100000]    BIOS reserved ==> [000009f000 - 0000100000]
  #5 [0001a54000 - 0001a541e8]              BRK ==> [0001a54000 - 0001a541e8]
  #6 [0000008000 - 000000c000]          PGTABLE ==> [0000008000 - 000000c000]
  #7 [000000c000 - 000000d000]          PGTABLE ==> [000000c000 - 000000d000]
 [ffffea0000000000-ffffea0003ffffff] PMD -> [ffff880001c00000-ffff8800055fffff] on node 0
Zone PFN ranges:
  DMA      0x00000000 -> 0x00001000
  DMA32    0x00001000 -> 0x00100000
  Normal   0x00100000 -> 0x00120000
Movable zone start PFN for each node
early_node_map[3] active PFN ranges
    0: 0x00000000 -> 0x0000009f
    0: 0x00000100 -> 0x000ddabf
    0: 0x00100000 -> 0x00120000
On node 0 totalpages: 1038942
  DMA zone: 56 pages used for memmap
  DMA zone: 105 pages reserved
  DMA zone: 3838 pages, LIFO batch:0
  DMA32 zone: 14280 pages used for memmap
  DMA32 zone: 889591 pages, LIFO batch:31
  Normal zone: 1792 pages used for memmap
  Normal zone: 129280 pages, LIFO batch:31
ACPI: PM-Timer IO Port: 0x1008
ACPI: Local APIC address 0xfee00000
ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
ACPI: IRQ0 used by override.
ACPI: IRQ2 used by override.
ACPI: IRQ9 used by override.
Using ACPI (MADT) for SMP configuration information
ACPI: HPET id: 0x8086a201 base: 0xfed00000
SMP: Allowing 2 CPUs, 0 hotplug CPUs
nr_irqs_gsi: 24
PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
PM: Registered nosave memory: 00000000000a0000 - 0000000000100000
PM: Registered nosave memory: 00000000ddabf000 - 00000000ddac0000
PM: Registered nosave memory: 00000000ddac0000 - 00000000ddac1000
PM: Registered nosave memory: 00000000ddac1000 - 00000000ddac2000
PM: Registered nosave memory: 00000000ddac2000 - 00000000e0000000
PM: Registered nosave memory: 00000000e0000000 - 00000000f8000000
PM: Registered nosave memory: 00000000f8000000 - 00000000fc000000
PM: Registered nosave memory: 00000000fc000000 - 00000000fec00000
PM: Registered nosave memory: 00000000fec00000 - 00000000fec10000
PM: Registered nosave memory: 00000000fec10000 - 00000000fed18000
PM: Registered nosave memory: 00000000fed18000 - 00000000fed1c000
PM: Registered nosave memory: 00000000fed1c000 - 00000000fed20000
PM: Registered nosave memory: 00000000fed20000 - 00000000fed90000
PM: Registered nosave memory: 00000000fed90000 - 00000000feda0000
PM: Registered nosave memory: 00000000feda0000 - 00000000feda6000
PM: Registered nosave memory: 00000000feda6000 - 00000000fee00000
PM: Registered nosave memory: 00000000fee00000 - 00000000fee10000
PM: Registered nosave memory: 00000000fee10000 - 00000000ffe00000
PM: Registered nosave memory: 00000000ffe00000 - 0000000100000000
Allocating PCI resources starting at e0000000 (gap: e0000000:18000000)
Booting paravirtualized kernel on bare hardware
NR_CPUS:256 nr_cpumask_bits:256 nr_cpu_ids:2 nr_node_ids:1
PERCPU: Embedded 30 pages/cpu @ffff880005800000 s90392 r8192 d24296 u1048576
pcpu-alloc: s90392 r8192 d24296 u1048576 alloc=1*2097152
pcpu-alloc: [0] 0 1 
Built 1 zonelists in Node order, mobility grouping on.  Total pages: 1022709
Policy zone: Normal
Kernel command line: ro root=UUID=94fbb537-7795-4525-af30-4fc0f0bd138e  LANG=en_US.UTF-8 SYSFONT=latarcyrheb-sun16 KEYBOARDTYPE=pc KEYTABLE=us rhgb quiet
PID hash table entries: 4096 (order: 3, 32768 bytes)
Initializing CPU#0
Checking aperture...
No AGP bridge found
Calgary: detecting Calgary via BIOS EBDA area
Calgary: Unable to locate Rio Grande table in EBDA - bailing!
PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
Placing 64MB software IO TLB between ffff88000591e000 - ffff88000991e000
software IO TLB at phys 0x591e000 - 0x991e000
Memory: 4006544k/4718592k available (4464k kernel code, 562824k absent, 149224k reserved, 3721k data, 936k init)
SLUB: Genslabs=14, HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
Hierarchical RCU implementation.
NR_IRQS:4352 nr_irqs:424
Extended CMOS year: 2000
Console: colour VGA+ 80x25
console [tty0] enabled
allocated 41943040 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
hpet clockevent registered
HPET: 4 timers in total, 0 timers will be used for per-cpu timer
Fast TSC calibration using PIT
Detected 2161.430 MHz processor.
Calibrating delay loop (skipped), value calculated using timer frequency.. 4322.86 BogoMIPS (lpj=2161430)
Security Framework initialized
SELinux:  Initializing.
SELinux:  Starting in permissive mode
Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes)
Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes)
Mount-cache hash table entries: 256
Initializing cgroup subsys ns
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
CPU: L1 I cache: 32K, L1 D cache: 32K
CPU: L2 cache: 1024K
CPU 0/0x0 -> Node 0
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 0
mce: CPU supports 6 MCE banks
CPU0: Thermal monitoring enabled (TM2)
using mwait in idle threads.
Performance Events: Core2 events, Intel PMU driver.
... version:                2
... bit width:              40
... generic registers:      2
... value mask:             000000ffffffffff
... max period:             000000007fffffff
... fixed-purpose events:   3
... event mask:             0000000700000003
ACPI: Core revision 20090903
ftrace: converting mcount calls to 0f 1f 44 00 00
ftrace: allocating 23782 entries in 94 pages
Setting APIC routing to flat
..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
CPU0: Intel(R) Pentium(R) Dual  CPU  T3400  @ 2.16GHz stepping 0d
Booting processor 1 APIC 0x1 ip 0x6000
Initializing CPU#1
CPU: L1 I cache: 32K, L1 D cache: 32K
CPU: L2 cache: 1024K
CPU 1/0x1 -> Node 0
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 1
CPU1: Thermal monitoring enabled (TM2)
CPU1: Intel(R) Pentium(R) Dual  CPU  T3400  @ 2.16GHz stepping 0d
checking TSC synchronization [CPU#0 -> CPU#1]: passed.
Brought up 2 CPUs
Total of 2 processors activated (8688.82 BogoMIPS).
sizeof(vma)=176 bytes
sizeof(page)=56 bytes
sizeof(inode)=584 bytes
sizeof(dentry)=192 bytes
sizeof(ext3inode)=784 bytes
sizeof(buffer_head)=104 bytes
sizeof(skbuff)=232 bytes
sizeof(task_struct)=5984 bytes
CPU0 attaching sched-domain:
 domain 0: span 0-1 level MC
  groups: 0 1
CPU1 attaching sched-domain:
 domain 0: span 0-1 level MC
  groups: 1 0
devtmpfs: initialized
regulator: core version 0.5
Time: 13:50:34  Date: 03/30/10
NET: Registered protocol family 16
ACPI: bus type pci registered
PCI: MCFG configuration 0: base f8000000 segment 0 buses 0 - 63
PCI: MCFG area at f8000000 reserved in E820
PCI: Using MMCONFIG at f8000000 - fbffffff
PCI: Using configuration type 1 for base access
bio: create slab <bio-0> at 0
ACPI: EC: Look up EC in DSDT
ACPI: BIOS _OSI(Linux) query ignored
ACPI: Interpreter enabled
ACPI: (supports S0 S3 S4 S5)
ACPI: Using IOAPIC for interrupt routing
ACPI: No dock devices found.
ACPI: PCI Root Bridge [PCI0] (0000:00)
DMAR: Forcing write-buffer flush capability
DMAR: Disabling IOMMU for graphics on this chipset
pci 0000:00:02.0: reg 10 64bit mmio: [0xf6c00000-0xf6ffffff]
pci 0000:00:02.0: reg 18 64bit mmio pref: [0xe0000000-0xefffffff]
pci 0000:00:02.0: reg 20 io port: [0xefe8-0xefef]
pci 0000:00:02.1: reg 10 64bit mmio: [0xf6b00000-0xf6bfffff]
pci 0000:00:1a.0: reg 20 io port: [0x6f60-0x6f7f]
pci 0000:00:1a.1: reg 20 io port: [0x6f80-0x6f9f]
pci 0000:00:1a.2: reg 20 io port: [0x6fa0-0x6fbf]
pci 0000:00:1a.7: reg 10 32bit mmio: [0xfed1c400-0xfed1c7ff]
pci 0000:00:1a.7: PME# supported from D0 D3hot D3cold
pci 0000:00:1a.7: PME# disabled
pci 0000:00:1b.0: reg 10 64bit mmio: [0xf6afc000-0xf6afffff]
pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1b.0: PME# disabled
pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.0: PME# disabled
pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.1: PME# disabled
pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.2: PME# disabled
pci 0000:00:1c.4: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.4: PME# disabled
pci 0000:00:1d.0: reg 20 io port: [0x6f00-0x6f1f]
pci 0000:00:1d.1: reg 20 io port: [0x6f20-0x6f3f]
pci 0000:00:1d.2: reg 20 io port: [0x6f40-0x6f5f]
pci 0000:00:1d.7: reg 10 32bit mmio: [0xfed1c000-0xfed1c3ff]
pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
pci 0000:00:1d.7: PME# disabled
pci 0000:00:1f.2: reg 10 io port: [0x6e70-0x6e77]
pci 0000:00:1f.2: reg 14 io port: [0x6e78-0x6e7b]
pci 0000:00:1f.2: reg 18 io port: [0x6e80-0x6e87]
pci 0000:00:1f.2: reg 1c io port: [0x6e88-0x6e8b]
pci 0000:00:1f.2: reg 20 io port: [0x6ea0-0x6ebf]
pci 0000:00:1f.2: reg 24 32bit mmio: [0xfed1c800-0xfed1cfff]
pci 0000:00:1f.2: PME# supported from D3hot
pci 0000:00:1f.2: PME# disabled
pci 0000:00:1f.3: reg 10 64bit mmio: [0xf6afbf00-0xf6afbfff]
pci 0000:00:1f.3: reg 20 io port: [0x1100-0x111f]
pci 0000:0c:00.0: reg 10 64bit mmio: [0xf69fc000-0xf69fffff]
pci 0000:0c:00.0: supports D1 D2
pci 0000:0c:00.0: PME# supported from D0 D3hot D3cold
pci 0000:0c:00.0: PME# disabled
pci 0000:00:1c.1: bridge 32bit mmio: [0xf6900000-0xf69fffff]
pci 0000:09:00.0: reg 10 64bit mmio: [0xf68fc000-0xf68fffff]
pci 0000:09:00.0: reg 18 io port: [0xde00-0xdeff]
pci 0000:09:00.0: supports D1 D2
pci 0000:09:00.0: PME# supported from D0 D1 D2 D3hot D3cold
pci 0000:09:00.0: PME# disabled
pci 0000:00:1c.2: bridge io port: [0xd000-0xdfff]
pci 0000:00:1c.2: bridge 32bit mmio: [0xf6800000-0xf68fffff]
pci 0000:00:1c.4: bridge io port: [0xc000-0xcfff]
pci 0000:00:1c.4: bridge 32bit mmio: [0xf6600000-0xf67fffff]
pci 0000:00:1c.4: bridge 64bit mmio pref: [0xf0000000-0xf01fffff]
pci 0000:00:1e.0: transparent bridge
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PCIE._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP05._PRT]
ACPI: PCI Interrupt Link [LNKA] (IRQs *10 11)
ACPI: PCI Interrupt Link [LNKB] (IRQs 5 7) *4
ACPI: PCI Interrupt Link [LNKC] (IRQs *10 11)
ACPI: PCI Interrupt Link [LNKD] (IRQs 5 7 10 11) *0, disabled.
ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 6 7 10 *11 12 14 15)
ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 *7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 *5 6 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 7 10 11 12 14 15) *0, disabled.
vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
vgaarb: loaded
SCSI subsystem initialized
libata version 3.00 loaded.
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
PCI: Using ACPI for IRQ routing
PCI: old code would have set cacheline size to 32 bytes, but clflush_size = 64
PCI: pci_cache_line_size set to 64 bytes
NetLabel: Initializing
NetLabel:  domain hash size = 128
NetLabel:  protocols = UNLABELED CIPSOv4
NetLabel:  unlabeled traffic allowed by default
hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0
hpet0: 4 comparators, 64-bit 14.318180 MHz counter
Switching to clocksource tsc
pnp: PnP ACPI init
ACPI: bus type pnp registered
pnp: PnP ACPI: found 12 devices
ACPI: ACPI bus type pnp unregistered
system 00:08: iomem range 0xfed00000-0xfed003ff has been reserved
system 00:09: ioport range 0x900-0x97f has been reserved
system 00:09: ioport range 0x4d0-0x4d1 has been reserved
system 00:09: ioport range 0x1000-0x1005 has been reserved
system 00:09: ioport range 0x1008-0x100f has been reserved
system 00:0a: ioport range 0xf400-0xf4fe has been reserved
system 00:0a: ioport range 0x1006-0x1007 has been reserved
system 00:0a: ioport range 0x100a-0x1059 could not be reserved
system 00:0a: ioport range 0x1060-0x107f has been reserved
system 00:0a: ioport range 0x1080-0x10bf has been reserved
system 00:0a: ioport range 0x1100-0x111f has been reserved
system 00:0a: ioport range 0x1010-0x102f has been reserved
system 00:0a: ioport range 0x809-0x809 has been reserved
system 00:0b: iomem range 0x0-0x9efff could not be reserved
system 00:0b: iomem range 0x9f000-0x9ffff could not be reserved
system 00:0b: iomem range 0xc0000-0xcffff has been reserved
system 00:0b: iomem range 0xe0000-0xfffff has been reserved
system 00:0b: iomem range 0x100000-0xddabf3ff could not be reserved
system 00:0b: iomem range 0xddabf400-0xddafffff could not be reserved
system 00:0b: iomem range 0xddb00000-0xddbfffff has been reserved
system 00:0b: iomem range 0xffe00000-0xffffffff has been reserved
system 00:0b: iomem range 0xffa00000-0xffbfffff has been reserved
system 00:0b: iomem range 0xfec00000-0xfec0ffff could not be reserved
system 00:0b: iomem range 0xfee00000-0xfee0ffff has been reserved
system 00:0b: iomem range 0xfed20000-0xfed8ffff has been reserved
system 00:0b: iomem range 0xfeda0000-0xfeda3fff has been reserved
system 00:0b: iomem range 0xfeda4000-0xfeda4fff has been reserved
system 00:0b: iomem range 0xfeda5000-0xfeda5fff has been reserved
system 00:0b: iomem range 0xfeda6000-0xfeda6fff has been reserved
system 00:0b: iomem range 0xfed1c800-0xfed1cfff has been reserved
system 00:0b: iomem range 0xfed18000-0xfed1bfff has been reserved
system 00:0b: iomem range 0xf8000000-0xfbffffff has been reserved
pci 0000:00:1c.0: PCI bridge, secondary bus 0000:0b
pci 0000:00:1c.0:   IO window: 0x2000-0x2fff
pci 0000:00:1c.0:   MEM window: 0xf0200000-0xf03fffff
pci 0000:00:1c.0:   PREFETCH window: 0x000000f0400000-0x000000f05fffff
pci 0000:00:1c.1: PCI bridge, secondary bus 0000:0c
pci 0000:00:1c.1:   IO window: 0x3000-0x3fff
pci 0000:00:1c.1:   MEM window: 0xf6900000-0xf69fffff
pci 0000:00:1c.1:   PREFETCH window: 0x000000f0600000-0x000000f07fffff
pci 0000:00:1c.2: PCI bridge, secondary bus 0000:09
pci 0000:00:1c.2:   IO window: 0xd000-0xdfff
pci 0000:00:1c.2:   MEM window: 0xf6800000-0xf68fffff
pci 0000:00:1c.2:   PREFETCH window: 0x000000f0800000-0x000000f09fffff
pci 0000:00:1c.4: PCI bridge, secondary bus 0000:0d
pci 0000:00:1c.4:   IO window: 0xc000-0xcfff
pci 0000:00:1c.4:   MEM window: 0xf6600000-0xf67fffff
pci 0000:00:1c.4:   PREFETCH window: 0x000000f0000000-0x000000f01fffff
pci 0000:00:1e.0: PCI bridge, secondary bus 0000:03
pci 0000:00:1e.0:   IO window: disabled
pci 0000:00:1e.0:   MEM window: disabled
pci 0000:00:1e.0:   PREFETCH window: disabled
  alloc irq_desc for 16 on node -1
  alloc kstat_irqs on node -1
pci 0000:00:1c.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
pci 0000:00:1c.0: setting latency timer to 64
  alloc irq_desc for 17 on node -1
  alloc kstat_irqs on node -1
pci 0000:00:1c.1: PCI INT B -> GSI 17 (level, low) -> IRQ 17
pci 0000:00:1c.1: setting latency timer to 64
  alloc irq_desc for 18 on node -1
  alloc kstat_irqs on node -1
pci 0000:00:1c.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
pci 0000:00:1c.2: setting latency timer to 64
pci 0000:00:1c.4: PCI INT A -> GSI 16 (level, low) -> IRQ 16
pci 0000:00:1c.4: setting latency timer to 64
pci 0000:00:1e.0: setting latency timer to 64
pci_bus 0000:00: resource 0 io:  [0x00-0xffff]
pci_bus 0000:00: resource 1 mem: [0x000000-0xffffffffffffffff]
pci_bus 0000:0b: resource 0 io:  [0x2000-0x2fff]
pci_bus 0000:0b: resource 1 mem: [0xf0200000-0xf03fffff]
pci_bus 0000:0b: resource 2 pref mem [0xf0400000-0xf05fffff]
pci_bus 0000:0c: resource 0 io:  [0x3000-0x3fff]
pci_bus 0000:0c: resource 1 mem: [0xf6900000-0xf69fffff]
pci_bus 0000:0c: resource 2 pref mem [0xf0600000-0xf07fffff]
pci_bus 0000:09: resource 0 io:  [0xd000-0xdfff]
pci_bus 0000:09: resource 1 mem: [0xf6800000-0xf68fffff]
pci_bus 0000:09: resource 2 pref mem [0xf0800000-0xf09fffff]
pci_bus 0000:0d: resource 0 io:  [0xc000-0xcfff]
pci_bus 0000:0d: resource 1 mem: [0xf6600000-0xf67fffff]
pci_bus 0000:0d: resource 2 pref mem [0xf0000000-0xf01fffff]
pci_bus 0000:03: resource 3 io:  [0x00-0xffff]
pci_bus 0000:03: resource 4 mem: [0x000000-0xffffffffffffffff]
NET: Registered protocol family 2
IP route cache hash table entries: 131072 (order: 8, 1048576 bytes)
TCP established hash table entries: 524288 (order: 11, 8388608 bytes)
TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
TCP: Hash tables configured (established 524288 bind 65536)
TCP reno registered
NET: Registered protocol family 1
pci 0000:00:02.0: Boot video device
Trying to unpack rootfs image as initramfs...
Freeing initrd memory: 12562k freed
audit: initializing netlink socket (disabled)
type=2000 audit(1269957034.616:1): initialized
HugeTLB registered 2 MB page size, pre-allocated 0 pages
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
msgmni has been set to 7849
SELinux:  Registering netfilter hooks
alg: No test for stdrng (krng)
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
io scheduler noop registered
io scheduler anticipatory registered
io scheduler deadline registered
io scheduler cfq registered (default)
  alloc irq_desc for 24 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.0: irq 24 for MSI/MSI-X
pcieport 0000:00:1c.0: setting latency timer to 64
  alloc irq_desc for 25 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.1: irq 25 for MSI/MSI-X
pcieport 0000:00:1c.1: setting latency timer to 64
  alloc irq_desc for 26 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.2: irq 26 for MSI/MSI-X
pcieport 0000:00:1c.2: setting latency timer to 64
  alloc irq_desc for 27 on node -1
  alloc kstat_irqs on node -1
pcieport 0000:00:1c.4: irq 27 for MSI/MSI-X
pcieport 0000:00:1c.4: setting latency timer to 64
pci_hotplug: PCI Hot Plug PCI Core version: 0.5
pciehp: PCI Express Hot Plug Controller Driver version: 0.4
acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
acpiphp: Slot [1] registered
pci-stub: invalid id string ""
ACPI: AC Adapter [AC] (on-line)
input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input0
ACPI: Lid Switch [LID]
input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input1
ACPI: Power Button [PBTN]
input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input2
ACPI: Sleep Button [SBTN]
ACPI: SSDT 00000000ddac298d 00281 (v01  PmRef   BspIst 00003000 INTL 20050624)
ACPI: SSDT 00000000ddac2de5 005C6 (v01  PmRef   BspCst 00003001 INTL 20050624)
Monitor-Mwait will be used to enter C-1 state
Monitor-Mwait will be used to enter C-2 state
Marking TSC unstable due to TSC halts in idle
processor LNXCPU:00: registered as cooling_device0
ACPI: SSDT 00000000ddac2c0e 001D7 (v01  PmRef    ApIst 00003000 INTL 20050624)
ACPI: SSDT 00000000ddac33ab 0008D (v01  PmRef    ApCst 00003000 INTL 20050624)
Switching to clocksource hpet
processor LNXCPU:01: registered as cooling_device1
thermal LNXTHERM:01: registered as thermal_zone0
ACPI: Thermal Zone [THM] (57 C)
Non-volatile memory driver v1.3
Linux agpgart interface v0.103
agpgart-intel 0000:00:00.0: Intel Mobile Intel? GM45 Express Chipset
agpgart-intel 0000:00:00.0: detected 32764K stolen memory
agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xe0000000
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
brd: module loaded
loop: module loaded
input: Macintosh mouse button emulation as /devices/virtual/input/input3
ahci 0000:00:1f.2: version 3.0
ahci 0000:00:1f.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
  alloc irq_desc for 28 on node -1
  alloc kstat_irqs on node -1
ahci 0000:00:1f.2: irq 28 for MSI/MSI-X
ahci: SSS flag set, parallel bus scan disabled
ahci 0000:00:1f.2: AHCI 0001.0200 32 slots 4 ports 3 Gbps 0x33 impl SATA mode
ahci 0000:00:1f.2: flags: 64bit ncq sntf stag pm led clo pio slum part ccc ems 
ahci 0000:00:1f.2: setting latency timer to 64
scsi0 : ahci
scsi1 : ahci
scsi2 : ahci
scsi3 : ahci
scsi4 : ahci
scsi5 : ahci
ata1: SATA max UDMA/133 abar m2048 at 0xfed1c800 port 0xfed1c900 irq 28
ata2: SATA max UDMA/133 irq_stat 0x00400040, connection status changed irq 28
ata3: DUMMY
ata4: DUMMY
ata5: SATA max UDMA/133 abar m2048 at 0xfed1c800 port 0xfed1cb00 irq 28
ata6: SATA max UDMA/133 abar m2048 at 0xfed1c800 port 0xfed1cb80 irq 28
Fixed MDIO Bus: probed
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
  alloc irq_desc for 22 on node -1
  alloc kstat_irqs on node -1
ehci_hcd 0000:00:1a.7: PCI INT C -> GSI 22 (level, low) -> IRQ 22
ehci_hcd 0000:00:1a.7: setting latency timer to 64
ehci_hcd 0000:00:1a.7: EHCI Host Controller
ehci_hcd 0000:00:1a.7: new USB bus registered, assigned bus number 1
ehci_hcd 0000:00:1a.7: debug port 1
ehci_hcd 0000:00:1a.7: cache line size of 64 is not supported
ehci_hcd 0000:00:1a.7: irq 22, io mem 0xfed1c400
ACPI: Battery Slot [BAT0] (battery present)
ehci_hcd 0000:00:1a.7: USB 2.0 started, EHCI 1.00
usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb1: Product: EHCI Host Controller
usb usb1: Manufacturer: Linux 2.6.32.10-90.fc12.x86_64 ehci_hcd
usb usb1: SerialNumber: 0000:00:1a.7
usb usb1: configuration #1 chosen from 1 choice
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 6 ports detected
  alloc irq_desc for 20 on node -1
  alloc kstat_irqs on node -1
ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 20 (level, low) -> IRQ 20
ehci_hcd 0000:00:1d.7: setting latency timer to 64
ehci_hcd 0000:00:1d.7: EHCI Host Controller
ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 2
ehci_hcd 0000:00:1d.7: debug port 1
ehci_hcd 0000:00:1d.7: cache line size of 64 is not supported
ehci_hcd 0000:00:1d.7: irq 20, io mem 0xfed1c000
ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
usb usb2: New USB device found, idVendor=1d6b, idProduct=0002
usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb2: Product: EHCI Host Controller
usb usb2: Manufacturer: Linux 2.6.32.10-90.fc12.x86_64 ehci_hcd
usb usb2: SerialNumber: 0000:00:1d.7
usb usb2: configuration #1 chosen from 1 choice
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 6 ports detected
ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
uhci_hcd: USB Universal Host Controller Interface driver
uhci_hcd 0000:00:1a.0: PCI INT A -> GSI 20 (level, low) -> IRQ 20
uhci_hcd 0000:00:1a.0: setting latency timer to 64
uhci_hcd 0000:00:1a.0: UHCI Host Controller
uhci_hcd 0000:00:1a.0: new USB bus registered, assigned bus number 3
uhci_hcd 0000:00:1a.0: irq 20, io base 0x00006f60
usb usb3: New USB device found, idVendor=1d6b, idProduct=0001
usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb3: Product: UHCI Host Controller
usb usb3: Manufacturer: Linux 2.6.32.10-90.fc12.x86_64 uhci_hcd
usb usb3: SerialNumber: 0000:00:1a.0
usb usb3: configuration #1 chosen from 1 choice
hub 3-0:1.0: USB hub found
hub 3-0:1.0: 2 ports detected
  alloc irq_desc for 21 on node -1
  alloc kstat_irqs on node -1
uhci_hcd 0000:00:1a.1: PCI INT B -> GSI 21 (level, low) -> IRQ 21
uhci_hcd 0000:00:1a.1: setting latency timer to 64
uhci_hcd 0000:00:1a.1: UHCI Host Controller
uhci_hcd 0000:00:1a.1: new USB bus registered, assigned bus number 4
uhci_hcd 0000:00:1a.1: irq 21, io base 0x00006f80
usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb4: Product: UHCI Host Controller
usb usb4: Manufacturer: Linux 2.6.32.10-90.fc12.x86_64 uhci_hcd
usb usb4: SerialNumber: 0000:00:1a.1
usb usb4: configuration #1 chosen from 1 choice
hub 4-0:1.0: USB hub found
hub 4-0:1.0: 2 ports detected
uhci_hcd 0000:00:1a.2: PCI INT C -> GSI 22 (level, low) -> IRQ 22
uhci_hcd 0000:00:1a.2: setting latency timer to 64
uhci_hcd 0000:00:1a.2: UHCI Host Controller
uhci_hcd 0000:00:1a.2: new USB bus registered, assigned bus number 5
uhci_hcd 0000:00:1a.2: irq 22, io base 0x00006fa0
usb usb5: New USB device found, idVendor=1d6b, idProduct=0001
usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb5: Product: UHCI Host Controller
usb usb5: Manufacturer: Linux 2.6.32.10-90.fc12.x86_64 uhci_hcd
usb usb5: SerialNumber: 0000:00:1a.2
usb usb5: configuration #1 chosen from 1 choice
hub 5-0:1.0: USB hub found
hub 5-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 20 (level, low) -> IRQ 20
uhci_hcd 0000:00:1d.0: setting latency timer to 64
uhci_hcd 0000:00:1d.0: UHCI Host Controller
uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 6
uhci_hcd 0000:00:1d.0: irq 20, io base 0x00006f00
usb usb6: New USB device found, idVendor=1d6b, idProduct=0001
usb usb6: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb6: Product: UHCI Host Controller
usb usb6: Manufacturer: Linux 2.6.32.10-90.fc12.x86_64 uhci_hcd
usb usb6: SerialNumber: 0000:00:1d.0
usb usb6: configuration #1 chosen from 1 choice
hub 6-0:1.0: USB hub found
hub 6-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 21 (level, low) -> IRQ 21
uhci_hcd 0000:00:1d.1: setting latency timer to 64
uhci_hcd 0000:00:1d.1: UHCI Host Controller
uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 7
uhci_hcd 0000:00:1d.1: irq 21, io base 0x00006f20
usb usb7: New USB device found, idVendor=1d6b, idProduct=0001
usb usb7: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb7: Product: UHCI Host Controller
usb usb7: Manufacturer: Linux 2.6.32.10-90.fc12.x86_64 uhci_hcd
usb usb7: SerialNumber: 0000:00:1d.1
usb usb7: configuration #1 chosen from 1 choice
hub 7-0:1.0: USB hub found
hub 7-0:1.0: 2 ports detected
uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 22 (level, low) -> IRQ 22
uhci_hcd 0000:00:1d.2: setting latency timer to 64
uhci_hcd 0000:00:1d.2: UHCI Host Controller
uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 8
uhci_hcd 0000:00:1d.2: irq 22, io base 0x00006f40
usb usb8: New USB device found, idVendor=1d6b, idProduct=0001
usb usb8: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb8: Product: UHCI Host Controller
usb usb8: Manufacturer: Linux 2.6.32.10-90.fc12.x86_64 uhci_hcd
usb usb8: SerialNumber: 0000:00:1d.2
usb usb8: configuration #1 chosen from 1 choice
hub 8-0:1.0: USB hub found
hub 8-0:1.0: 2 ports detected
PNP: PS/2 Controller [PNP0303:KBC,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
i8042.c: Detected active multiplexing controller, rev 1.1.
serio: i8042 KBD port at 0x60,0x64 irq 1
serio: i8042 AUX0 port at 0x60,0x64 irq 12
serio: i8042 AUX1 port at 0x60,0x64 irq 12
serio: i8042 AUX2 port at 0x60,0x64 irq 12
serio: i8042 AUX3 port at 0x60,0x64 irq 12
mice: PS/2 mouse device common for all mice
rtc_cmos 00:03: RTC can wake from S4
rtc_cmos 00:03: rtc core: registered rtc_cmos as rtc0
rtc0: alarms up to one month, y3k, 114 bytes nvram, hpet irqs
device-mapper: uevent: version 1.0.3
device-mapper: ioctl: 4.15.0-ioctl (2009-04-01) initialised: dm-devel at redhat.com
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver hiddev
usbcore: registered new interface driver usbhid
usbhid: v2.6:USB HID core driver
nf_conntrack version 0.5.0 (16384 buckets, 65536 max)
CONFIG_NF_CT_ACCT is deprecated and will be removed soon. Please use
nf_conntrack.acct=1 kernel parameter, acct=1 nf_conntrack module option or
sysctl net.netfilter.nf_conntrack_acct=1 to enable it.
ip_tables: (C) 2000-2006 Netfilter Core Team
TCP cubic registered
Initializing XFRM netlink socket
NET: Registered protocol family 17
PM: Resume from disk failed.
registered taskstats version 1
No TPM chip found, activating TPM-bypass!
  Magic number: 2:402:838
rtc_cmos 00:03: setting system clock to 2010-03-30 13:50:35 UTC (1269957035)
Initalizing network drop monitor service
input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input4
ata1: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
usb 1-5: new high speed USB device using ehci_hcd and address 2
ata1.00: ATA-8: WDC WD3200BEVT-75ZCT2, 11.01A11, max UDMA/133
ata1.00: 625142448 sectors, multi 8: LBA48 NCQ (depth 31/32), AA
ata1.00: configured for UDMA/133
scsi 0:0:0:0: Direct-Access     ATA      WDC WD3200BEVT-7 11.0 PQ: 0 ANSI: 5
sd 0:0:0:0: [sda] 625142448 512-byte logical blocks: (320 GB/298 GiB)
sd 0:0:0:0: Attached scsi generic sg0 type 0
sd 0:0:0:0: [sda] Write Protect is off
sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
 sda: sda1 sda2 sda3 sda4 < sda5 sda6 >
sd 0:0:0:0: [sda] Attached SCSI disk
usb 1-5: New USB device found, idVendor=0bda, idProduct=0158
usb 1-5: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-5: Product: USB2.0-CRW
usb 1-5: Manufacturer: Generic
usb 1-5: SerialNumber: 20071114173400000
usb 1-5: configuration #1 chosen from 1 choice
usb 1-6: new high speed USB device using ehci_hcd and address 3
usb 1-6: New USB device found, idVendor=05ca, idProduct=180a
usb 1-6: New USB device strings: Mfr=9, Product=2, SerialNumber=0
usb 1-6: Product: Integrated Webcam
usb 1-6: Manufacturer: M091R-R01-9307-SB1V1
usb 1-6: configuration #1 chosen from 1 choice
input: PS/2 Mouse as /devices/platform/i8042/serio2/input/input5
input: AlpsPS/2 ALPS GlidePoint as /devices/platform/i8042/serio2/input/input6
ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
ata2.00: ATAPI: PLDS DVD+/-RW DS-8A3S, HD11, max UDMA/100
ata2.00: configured for UDMA/100
scsi 1:0:0:0: CD-ROM            PLDS     DVD+-RW DS-8A3S  HD11 PQ: 0 ANSI: 5
sr0: scsi3-mmc drive: 24x/8x writer dvd-ram cd/rw xa/form2 cdda pop-up
Uniform CD-ROM driver Revision: 3.20
sr 1:0:0:0: Attached scsi CD-ROM sr0
sr 1:0:0:0: Attached scsi generic sg1 type 5
ata5: SATA link down (SStatus 0 SControl 300)
ata6: SATA link down (SStatus 0 SControl 300)
Freeing unused kernel memory: 936k freed
Write protecting the kernel read-only data: 6592k
dracut: dracut-004-4.fc12
udev: starting version 145
[drm] Initialized drm 1.1.0 20060810
i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
i915 0000:00:02.0: setting latency timer to 64
mtrr: type mismatch for e0000000,10000000 old: write-back new: write-combining
[drm] MTRR allocation failed.  Graphics performance may suffer.
  alloc irq_desc for 29 on node -1
  alloc kstat_irqs on node -1
i915 0000:00:02.0: irq 29 for MSI/MSI-X
[drm] set up 31M of stolen space
fbcon: inteldrmfb (fb0) is primary device
Console: switching to colour frame buffer device 170x48
fb0: inteldrmfb frame buffer device
registered panic notifier
input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A03:00/LNXVIDEO:01/input/input7
ACPI: Video Device [VID1] (multi-head: yes  rom: no  post: no)
ACPI Warning for \_SB_.PCI0.VID2._DOD: Return Package has no elements (empty) (20090903/nspredef-433)
input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A03:00/LNXVIDEO:02/input/input8
ACPI: Video Device [VID2] (multi-head: yes  rom: no  post: no)
[drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
dracut: Starting plymouth daemon
Initializing USB Mass Storage driver...
scsi6 : SCSI emulation for USB Mass Storage devices
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
usb-storage: device found at 2
usb-storage: waiting for device to settle before scanning
device-mapper: multipath: version 1.1.0 loaded
EXT4-fs (sda5): mounted filesystem with ordered data mode
dracut: Mounted root filesystem /dev/sda5
dracut: Switching root
udev: starting version 145
iTCO_vendor_support: vendor-support=0
dcdbas dcdbas: Dell Systems Management Base Driver (version 5.6.0-3.2)
iTCO_wdt: Intel TCO WatchDog Timer Driver v1.05
iTCO_wdt: Found a ICH9M TCO device (Version=2, TCOBASE=0x1060)
iTCO_wdt: initialized. heartbeat=30 sec (nowayout=0)
sky2 driver version 1.25
sky2 0000:09:00.0: PCI INT A -> GSI 18 (level, low) -> IRQ 18
sky2 0000:09:00.0: setting latency timer to 64
sky2 0000:09:00.0: Yukon-2 FE+ chip revision 0
  alloc irq_desc for 30 on node -1
  alloc kstat_irqs on node -1
sky2 0000:09:00.0: irq 30 for MSI/MSI-X
sky2 eth0: addr 00:23:ae:26:b0:02
i801_smbus 0000:00:1f.3: PCI INT B -> GSI 18 (level, low) -> IRQ 18
b43-pci-bridge 0000:0c:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
b43-pci-bridge 0000:0c:00.0: setting latency timer to 64
ACPI: WMI: Mapper loaded
ssb: Sonics Silicon Backplane found on PCI device 0000:0c:00.0
input: Dell WMI hotkeys as /devices/virtual/input/input9
Linux video capture interface: v2.00
cfg80211: Calling CRDA to update world regulatory domain
uvcvideo: Found UVC 1.00 device Integrated Webcam (05ca:180a)
input: Integrated Webcam as /devices/pci0000:00/0000:00:1a.7/usb1/1-6/1-6:1.0/input/input10
usbcore: registered new interface driver uvcvideo
USB Video Class driver (v0.1.0)
usb-storage: device scan complete
scsi 6:0:0:0: Direct-Access     Generic- Multi-Card       1.00 PQ: 0 ANSI: 0 CCS
sd 6:0:0:0: Attached scsi generic sg2 type 0
sd 6:0:0:0: [sdb] Attached SCSI removable disk
HDA Intel 0000:00:1b.0: PCI INT A -> GSI 21 (level, low) -> IRQ 21
HDA Intel 0000:00:1b.0: setting latency timer to 64
ALSA sound/pci/hda/hda_codec.c:3881: autoconfig: line_outs=1 (0xd/0x0/0x0/0x0/0x0)
ALSA sound/pci/hda/hda_codec.c:3885:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
ALSA sound/pci/hda/hda_codec.c:3889:    hp_outs=1 (0xa/0x0/0x0/0x0/0x0)
ALSA sound/pci/hda/hda_codec.c:3890:    mono: mono_out=0x0
ALSA sound/pci/hda/hda_codec.c:3893:    dig-out=0x1e/0x1f
ALSA sound/pci/hda/hda_codec.c:3901:    inputs: mic=0xb, fmic=0xc, line=0x0, fline=0x0, cd=0x0, aux=0x0
ALSA sound/pci/hda/patch_sigmatel.c:2974: stac92xx: dac_nids=1 (0x10/0x0/0x0/0x0/0x0)
input: HDA Digital PCBeep as /devices/pci0000:00/0000:00:1b.0/input/input11
b43-phy0: Broadcom 4312 WLAN found (core revision 15)
input: HDA Intel Mic at Ext Right Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input12
input: HDA Intel HP Out at Ext Right Jack as /devices/pci0000:00/0000:00:1b.0/sound/card0/input13
name_count maxed, losing inode data: dev=00:05, inode=9299
name_count maxed, losing inode data: dev=00:05, inode=9064
name_count maxed, losing inode data: dev=00:05, inode=9064
name_count maxed, losing inode data: dev=00:07, inode=9365
name_count maxed, losing inode data: dev=00:07, inode=9365
name_count maxed, losing inode data: dev=00:07, inode=9365
name_count maxed, losing inode data: dev=00:07, inode=9365
name_count maxed, losing inode data: dev=00:07, inode=9365
name_count maxed, losing inode data: dev=00:07, inode=9365
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
name_count maxed, losing inode data: dev=00:07, inode=9381
cfg80211: World regulatory domain updated:
	(start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
	(2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
	(2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
	(2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
	(5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
	(5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
name_count maxed, losing inode data: dev=00:07, inode=9365
name_count maxed, losing inode data: dev=00:07, inode=9441
phy0: Selected rate control algorithm 'minstrel'
name_count maxed, losing inode data: dev=00:07, inode=9365
name_count maxed, losing inode data: dev=00:07, inode=9443
name_count maxed, losing inode data: dev=00:07, inode=9443
name_count maxed, losing inode data: dev=00:07, inode=9443
name_count maxed, losing inode data: dev=00:07, inode=9443
name_count maxed, losing inode data: dev=00:07, inode=9443
name_count maxed, losing inode data: dev=00:07, inode=9443
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
name_count maxed, losing inode data: dev=00:05, inode=4
name_count maxed, losing inode data: dev=00:05, inode=4
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
Adding 8191988k swap on /dev/sda6.  Priority:-1 extents:1 across:8191988k 
microcode: CPU0 sig=0x6fd, pf=0x80, revision=0xa3
platform microcode: firmware: requesting intel-ucode/06-0f-0d
microcode: CPU1 sig=0x6fd, pf=0x80, revision=0xa3
platform microcode: firmware: requesting intel-ucode/06-0f-0d
Microcode Update Driver: v2.00 <tigran@aivazian.fsnet.co.uk>, Peter Oruba
Microcode Update Driver: v2.00 removed.
NET: Registered protocol family 10
lo: Disabled Privacy Extensions
ip6_tables: (C) 2000-2006 Netfilter Core Team
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
[drm:drm_mode_rmfb] *ERROR* tried to remove a fb that we didn't own
type=1305 audit(1269975063.604:22660): audit_enabled=0 old=1 auid=4294967295 ses=4294967295 subj=kernel res=1
fuse init (API version 7.13)

Output from tail /var/log/messages

Mar 30 13:51:14 localhost rtkit-daemon[1527]: Sucessfully made thread 1703 of process 1703 (/usr/bin/pulseaudio) owned by '500' high priority at nice level -11.
Mar 30 13:51:14 localhost rtkit-daemon[1527]: Sucessfully made thread 1709 of process 1703 (/usr/bin/pulseaudio) owned by '500' RT at priority 5.
Mar 30 13:51:14 localhost rtkit-daemon[1527]: Sucessfully made thread 1710 of process 1703 (/usr/bin/pulseaudio) owned by '500' RT at priority 5.
Mar 30 13:51:16 localhost rtkit-daemon[1527]: Sucessfully made thread 1744 of process 1744 (/usr/bin/pulseaudio) owned by '500' high priority at nice level -11.
Mar 30 13:51:16 localhost pulseaudio[1744]: pid.c: Daemon already running.
Mar 30 13:51:52 localhost kernel: b43 ssb0:0: firmware: requesting b43/ucode15.fw
Mar 30 13:51:52 localhost kernel: b43 ssb0:0: firmware: requesting b43/lp0initvals15.fw
Mar 30 13:51:52 localhost kernel: b43 ssb0:0: firmware: requesting b43/lp0bsinitvals15.fw
Mar 30 13:51:52 localhost kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Mar 30 13:51:53 localhost kernel: ADDRCONF(NETDEV_UP): wlan0: link is not ready
