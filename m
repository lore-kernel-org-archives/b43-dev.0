From: Myhailo Danylenko <isbear@ukrpost.net>
Date: Fri, 2 Apr 2010 20:11:05 +0300
Subject: [14e4:4315] Fatal DMA errors on Dell Vostro 1310 (Celeron M540)
Message-ID: <20100402171105.GA10965@tsubasa>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

(resending this message, as first one has been lost somewhere)

Hi.

I have a Dell Vostro 1310 notebook with Debian Squeeze on board. It have
a Celeron M540 in it, so, it is definitely not an Atom case, and that's
why I decided to send this message.

My experience with drivers and kernels:
With 2.6.30 and earlier wl worked fine.
With 2.6.32-trunk-? wl worked fine, b43 fired dma errors pretty quickly
after start (working time was from 5 secs to 15-30 mins).
With 2.6.32-3 wl has stopped working. It builds fine and shows no
errors, but does not work. Then I tried b43, and got similar results
to -trunk version.
With 2.6.33-2 from experimental b43 works much better - working period
is usually more than five hours, it happily survives s2ram and s2disk.
Right now I am running 2.6.34-rc2-wl (git snapshot from 28th March), it
works as far as I can tell the same as 2.6.33-2 - at least it already
fired dma errors twice (except that it automatically switches to pio
mode).

PIO mode is unacceptably slow - web-traffic speed is about 300kbps,
and when I'm trying to rsync something from nfs, mounted over wi-fi,
all the system gets slowed down, and 100% of processor time is consumed
by a kernel process irq/19-b43 (as shown by htop).

Can I provide any additional info to help solve this problem?

P.S. I also have access to Lenovo G450 with the same (14e4:4315 rev 01)
wireless card, but that worked fine without any glitches on 2.6.32-3 (to
test I copied 7Gb of traffic - all went fine, and during two days I have
not experienced any errors with it (it is not mine notebook, and it's
owner does not use wi-fi, so, there's no extensive testing for that
matter available).
P.P.S. On 2.6.33 and 2.6.34 I have not tested wl, as there's no debian
infrastructure to build broadcom-sta for that kernel versions yet.

System info:

Bios is A15 (latest version from vendor), IIRC, it is a Phoenix one.

Operating system architecture is 32-bit, although processor, seemingly
should support 64-bit.

Firmware version is 4.178.10.4.

The system have 1Gb of RAM.

tsubasa:~# lspci -nvv -d 14e4:4315
06:00.0 0280: 14e4:4315 (rev 01)
	Subsystem: 1028:000b
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 19
	Region 0: Memory@f4000000 (64-bit, non-prefetchable) [size=16K]
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
		DevSta:	CorrErr+ UncorrErr+ FatalErr- UnsuppReq+ AuxPwr- TransPend-
		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <4us, L1 <64us
			ClockPM+ Surprise- LLActRep- BwNot-
		LnkCtl:	ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
	Capabilities: [100 v1] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq+ ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr+ BadTLP- BadDLLP- Rollover- Timeout+ NonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
		AERCap:	First Error Pointer: 14, GenCap+ CGenEn- ChkCap+ ChkEn-
	Capabilities: [13c v1] Virtual Channel
		Caps:	LPEVC=0 RefClk=100ns PATEntryBits=1
		Arb:	Fixed- WRR32- WRR64- WRR128-
		Ctrl:	ArbSelect=Fixed
		Status:	InProgress-
		VC0:	Caps:	PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
			Ctrl:	Enable+ ID=0 ArbSelect=Fixed TC/VC=01
			Status:	NegoPending- InProgress-
	Capabilities: [160 v1] Device Serial Number 94-cc-44-ff-ff-ea-00-16
	Capabilities: [16c v1] Power Budgeting <?>
	Kernel driver in use: b43-pci-bridge

tsubasa:~# cat /proc/cpuinfo 
processor	: 0
vendor_id	: GenuineIntel
cpu family	: 6
model		: 22
model name	: Intel(R) Celeron(R) CPU          540  @ 1.86GHz
stepping	: 1
cpu MHz		: 1861.818
cache size	: 1024 KB
fdiv_bug	: no
hlt_bug		: no
f00f_bug	: no
coma_bug	: no
fpu		: yes
fpu_exception	: yes
cpuid level	: 10
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss tm pbe nx lm constant_tsc up arch_perfmon pebs bts aperfmperf pni dtes64 monitor ds_cpl tm2 ssse3 cx16 xtpr pdcm lahf_lm
bogomips	: 3723.63
clflush size	: 64
cache_alignment	: 64
address sizes	: 36 bits physical, 48 bits virtual
power management:

tsubasa:~# dmesg | grep -iE 'broad|b43|wlan'
[    1.533694] b43-pci-bridge 0000:06:00.0: PCI INT A -> GSI 19 (level, low) -> IRQ 19
[    1.533710] b43-pci-bridge 0000:06:00.0: setting latency timer to 64
[    8.279586] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[    8.455842] Registered led device: b43-phy0::tx
[    8.455858] Registered led device: b43-phy0::rx
[    8.455873] Registered led device: b43-phy0::radio
[    8.455941] Broadcom 43xx driver loaded [ Features: PMLS, Firmware-ID: FW13 ]
[  439.740248] b43 ssb0:0: firmware: requesting b43/ucode15.fw
[  439.774269] b43 ssb0:0: firmware: requesting b43/lp0initvals15.fw
[  439.780248] b43 ssb0:0: firmware: requesting b43/lp0bsinitvals15.fw
[  439.928250] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  445.449079] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  446.744295] wlan0: authenticate with 00:1d:0f:f5:de:3f (try 1)
[  446.747587] wlan0: authenticated
[  446.747607] wlan0: associate with 00:1d:0f:f5:de:3f (try 1)
[  446.749951] wlan0: RX AssocResp from 00:1d:0f:f5:de:3f (capab=0x421 status=0 aid=8)
[  446.749955] wlan0: associated
[  446.751073] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  457.192023] wlan0: no IPv6 routers present

-- 
??????? ?????????
-------------------------------
jabber:	<isbear@unixzone.org.ua>
icq:    590697790
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 198 bytes
Desc: Digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100402/f4881c24/attachment.sig>
