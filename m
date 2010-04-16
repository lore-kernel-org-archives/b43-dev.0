From: Rodd Clarkson <rodd@clarkson.id.au>
Date: Fri, 16 Apr 2010 15:15:00 +1000
Subject: BCM43224 802.11a/b/g/
Message-ID: <1271394900.2705.10.camel@localhost.localdomain>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi All,

New to this list, but noticed that my card (a BCM43224) wasn't listed on
the http://wireless.kernel.org/en/users/Drivers/b43 page (even though
I'm sure it's going to be listed as supported)

Just thought this chip should be included under
http://wireless.kernel.org/en/users/Drivers/b43#Known_PCI_devices

PCI-ID: 14e4:4353
State: not supported (I assume this is the case)
Chip: BCM43224 (Or is it just BCM4322?)
Modes: a/b/g/n
PHY version: N
Driver: presume this will be b43


Rodd


Here's the details:

$ uname -a
Linux moose.localdomain 2.6.33.2-41.fc13.x86_64 #1 SMP Mon Apr 12
14:09:42 UTC 2010 x86_64 x86_64 x86_64 GNU/Linux

$ sudo lspci -vvn|grep 43 -A7
[sudo] password for rodd: 
04:00.0 0280: 14e4:4353 (rev 01)
	Subsystem: 1028:000e
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR+ FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@f0500000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3


I'm not sure if dmesg is needed for this and it's quite a bit of text.
Ask if you want it.
