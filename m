From: Cheng Renquan <crquan@gmail.com>
Date: Fri, 25 Jun 2010 01:05:36 +0800
Subject: b43 hang the system with "BCM4312 802.11b/g [14e4:4315]" card, on 
	kernel 2.6.34
Message-ID: <AANLkTikcm7zvL1BIs6awPwvtpM5mVMPnMoJfAwOVQYGI@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi, all b43 developers and users,
  I've just today found the b43-dev mailing list,

and through archives saw some problems reported with "BCM4312 802.11b/g",
http://lists.infradead.org/pipermail/b43-dev/2010-June/thread.html

I also have a problem with "BCM4312 802.11b/g [14e4:4315]" on my HP
Compaq CQ40 notebook,
on openSuSE-11.2 distribution, (may be identical with someone, sorry,
I didn't check,)

the default b43 driver just hang the whole system, when loading; so I
must blacklist it,
and use the linux-sta driver (wl.ko) (closed-source code by Broadcom)
worked well on it;

even if I compiled the latest linux-2.6.34 kernel source, the b43
would still hang the system;
my kernel compilation and installation are correct because I have
compiled for many other machines;

Here is the detailed lspci data about this card:

suseuser at linux-orm5:~> sudo /sbin/lspci -D -nn -d 14e4: -vvv
0000:02:00.0 Network controller [0280]: Broadcom Corporation BCM4312
802.11b/g [14e4:4315] (rev 01)
        Subsystem: Hewlett-Packard Company Device [103c:1508]
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
        Interrupt: pin A routed to IRQ 18
        Region 0: Memory@d8500000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: [40] Power Management version 3
                Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA
PME(D0-,D1-,D2-,D3hot-,D3cold-)
                Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=2 PME-
        Capabilities: [58] Vendor Specific Information <?>
        Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
                Address: 0000000000000000  Data: 0000
        Capabilities: [d0] Express (v1) Endpoint, MSI 00
                DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s
<4us, L1 unlimited
                        ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
                DevCtl: Report errors: Correctable- Non-Fatal- Fatal-
Unsupported-
                        RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
                        MaxPayload 128 bytes, MaxReadReq 128 bytes
                DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+
AuxPwr- TransPend-
                LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1,
Latency L0 <4us, L1 <64us
                        ClockPM+ Surprise- LLActRep- BwNot-
                LnkCtl: ASPM L0s L1 Enabled; RCB 64 bytes Disabled-
Retrain- CommClk+
                        ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
                LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train-
SlotClk+ DLActive- BWMgmt- ABWMgmt-
        Capabilities: [100] Advanced Error Reporting
                UESta:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt-
UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
                UEMsk:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt-
UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
                UESvrt: DLP+ SDES- TLP- FCP+ CmpltTO- CmpltAbrt-
UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
                CESta:  RxErr+ BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
                CEMsk:  RxErr- BadTLP- BadDLLP- Rollover- Timeout- NonFatalErr+
                AERCap: First Error Pointer: 14, GenCap+ CGenEn- ChkCap+ ChkEn-
        Capabilities: [13c] Virtual Channel <?>
        Capabilities: [160] Device Serial Number 00-00-00-ff-ff-00-ff-ff
        Capabilities: [16c] Power Budgeting <?>
        Kernel driver in use: wl

And its configuration space:

suseuser at linux-orm5:~> hexdump -C
/sys/devices/pci0000:00/0000:00:1c.2/0000:02:00.0/config
00000000  e4 14 15 43 06 00 10 00  01 00 80 02 00 00 00 00  |...C............|
00000010  04 00 50 d8 00 00 00 00  00 00 00 00 00 00 00 00  |..P.............|
00000020  00 00 00 00 00 00 00 00  00 00 00 00 3c 10 08 15  |............<...|
00000030  00 00 00 00 40 00 00 00  00 00 00 00 0b 01 00 00  |....@...........|
00000040

Hope someone would tell me I misused something and there is a way to
use the open source b43 driver;

Thanks,

-- 
Cheng Renquan (???), from Singapore
