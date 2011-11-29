From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Tue, 29 Nov 2011 20:28:54 +0100
Subject: low throughputs with 14e4:4353
Message-ID: <77990757-D72B-4BF7-BEEB-5EDB9486236B@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Rafal,

I bought some 43224 cards to begin playing with the firmware. Unfortunately I have problems with the throughput that is really low. Kernel is the latest from wireless git and firmware comes from broadcom-wl-5.100.138. I see that the transmitted power is low, I monitored it with a spectrum analyzer and it confirmed. A lot of packets are lost given the low power and minstrel always select 1Mb/s. When receiving with the 43224 in monitor mode, I see that it receives only a few of the frames that are received by a close 4318-based box: the reported power levels are low too. Please find attached all info about kernel/firmware and devices below.

I tried all the four cards I have and they behave the same: find a photo of one of them here

	http://www.ing.unibs.it/gringoli/foto.JPG

I tried the cards on a MacBook White, on an Intel Atom based motherboard, Intel Pentium, and AMD Sempron, and I always got very low throughput. The same cards, with the same antennas (everything untouched) but with brcmsmac work well and the spectrum analyzer reports "normal" emitted power levels.

KR,
-Francesco

Linux version 3.2.0-rc2-wl+ (unibs at costanza.ing.unibs.it) (gcc version 4.1.2 20070626 (Red Hat 4.1.2-13)) #4 SMP Mon Nov 28 19:29:00 CET 2011

[    9.892975] b43-phy0: Broadcom 43224 WLAN found (core revision 23)
[    9.893403] b43-phy0 debug: Found PHY: Analog 8, Type 4, Revision 6
[    9.893415] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2056, Revision 11
[  109.516058] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[  109.568056] b43-phy0 debug: Chip initialized
[  109.568208] b43-phy0 debug: 64-bit DMA initialized
[  109.568272] b43-phy0 debug: QoS enabled
[  109.568765] b43-phy0 debug: Wireless interface started
[  109.569035] b43-phy0 debug: Adding Interface type 2

02:00.0 0280: 14e4:4353 (rev 01)
	Subsystem: 103c:1509
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 256 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@d0100000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: <access denied>
	Kernel driver in use: bcma-pci-bridge
	Kernel modules: bcma
