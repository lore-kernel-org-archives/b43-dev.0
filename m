From: Cyrille <cyrille@cbiot.fr>
Date: Sat, 21 Aug 2010 19:31:50 +0200
Subject: Problem with BCM4312 802.11b/g [14e4:4315]
Message-ID: <20100821193150.fbd36368.cyrille@cbiot.fr>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi I'm a BLAG user with BCM4312 802.11b/g [14e4:4315] (rev 01). But don't seem work.


I tested to compile myself the driver like explain here
http://wireless.kernel.org/en/users/Drivers/b43#device_firmware_installation
with the source file : broadcom-wl-4.150.10.5.tar.bz2 and too this source file
broadcom-wl-4.178.10.4.tar.bz2 but always the same error notification. 


- - -  - dmesg | tail
 b43 ssb0:0: firmware: requesting b43-open/lp0initvals15.fw
 b43 ssb0:0: firmware: requesting b43-open/lp0bsinitvals15.fw
 b43-phy0 ERROR: Rejected non-Free firmware
- - - 

The dir is b43-open --> specific to BLAG.


lspci -vnn
0b:00.0 0280: 14e4:4315 (rev 01)
	Subsystem: 1028:000b
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@fe7fc000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: <access denied>
	Kernel driver in use: wl            ---> I write with another driver
	Kernel modules: wl, ssb           ---> *****


uname : 2.6.32.11-libre.99.fc12.x86_64



Finally, I have installed broadcom-wl from rpmfusion nonfree. It works great but it's non free :-( 


So I report the situation to you if ever you want the debug it!
 
More info here  : http://forums.blagblagblag.org/viewtopic.php?p=27627

Thanx a lot ! Cheers !

Cyrille




----
[ cyrille at cbiot.fr | http://cbiot.fr ]

"Ils ne me comprennent point,
je ne suis pas la bouche qui convient ??ces oreilles"
 - - - Ainsi parlait Zarathoustra - - -
 - - - - - - - - - - -  NIETZSCHE - - -

Blag'em up! http://zenblagger.org
