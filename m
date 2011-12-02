From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Fri, 2 Dec 2011 19:14:32 +0100
Subject: low throughputs with 14e4:4353
In-Reply-To: <4ED69FCC.7030200@lwfinger.net>
References: <77990757-D72B-4BF7-BEEB-5EDB9486236B@ing.unibs.it>
 <CACna6rxjpXegcp1uAhUnAZH7UhwjfFGFXO1-D1QTUWL+DxMvDg@mail.gmail.com>
 <CACna6ryZiQnCeOHSDZPA0zJ679erJJNtAwU6qqGdVKnpiai4cg@mail.gmail.com>
 <47FBA4BF-B673-43AE-9271-9976878D130D@ing.unibs.it>
 <4ED69FCC.7030200@lwfinger.net>
Message-ID: <AF649E90-A794-4696-AB44-C9D6F392C459@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Nov 30, 2011, at 10:27 PM, Larry Finger wrote:

> On 11/30/2011 09:05 AM, francesco.gringoli at ing.unibs.it wrote:
>> Larry,
>> 
>> I found your message on linux-wireless (end of July) reporting that the throughput was about 10Mb/s with bcma. You mention kernel "master-2011-07-26-150-g4ea94a9". I gave it a try (it is a 3.0.0 if I'm not wrong) but I'm still having very low throughput.
>> 
>> Rafal: so you observe good/bad throughputs at random? Sometimes after cold boot it works fine, other times bad?
>> 
>> Did you modprobe using some options?
> 
> My netperf results (3 sec samples) are:
> 
> TCP_MAERTS Test:  13.60 14.41 16.05 15.01 14.70 15.36 14.72 15.07 12.37 11.01
> Results: max 16.05, min 11.01. Mean 14.23(1.44)
> 
> TCP_STREAM Test:   3.00  1.89  1.23  2.12  0.91  1.59  1.46  0.71  1.99  2.12
> Results: max  3.00, min  0.71. Mean  1.70(0.64)
> 
> As you can see, RX is OK, but TX is quite low.
> 
> I will run the same test with brcmsmac later. Their damned Kconfig won't let me build both b43 and brcmsmac at the same time.
Larry, Rafal, bad news.

After bisecting it turned out that I was using brcmsmac in 3.0.0-wl and b43 with all the others (unfortunately :-( ).

Bottom line: I'm always experiencing very low power when using b43, with all kernel versions. Switching to 3.2.0 and changing firmware accordingly does not solve the problem. Transmission performance using iperf is really low with b43 from a 43224, the emitted power is too low and the majority of packets are received corrupt. For this reason minstrel selects 1Mb/s... and throughput falls down. I tried to manually force other rates at the firmware level but it's even worse.

Note the as soon as I switch to brcmsmac tx power is correctly set.

Larry: just to double check, I'm using the device below, is like yours? Photograph here: http://www.ing.unibs.it/~gringoli/foto.JPG

Many thanks,
-Francesco

[ 5087.800398] b43-phy8: Broadcom 43224 WLAN found (core revision 23)
[ 5087.800803] b43-phy8 debug: Found PHY: Analog 8, Type 4, Revision 6
[ 5087.800819] b43-phy8 debug: Found Radio: Manuf 0x17F, Version 0x2056, Revision 11

02:00.0 0280: 14e4:4353 (rev 01)
	Subsystem: 103c:1509
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort+ <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@e0100000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: <access denied>
	Kernel driver in use: bcma-pci-bridge
	Kernel modules: bcma



> 
> Larry
> 
> 
> 
