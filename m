From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 31 Jul 2010 08:07:20 +0200
Subject: b43 help,
In-Reply-To: <AANLkTimkV_LjgacMA6tR7Eaj=QpmXYJ2KwWYsuQFY-MV@mail.gmail.com>
References: <AANLkTimkV_LjgacMA6tR7Eaj=QpmXYJ2KwWYsuQFY-MV@mail.gmail.com>
Message-ID: <AANLkTi=cbYrUsNJCdQG+UZ9DZNCo0d-BJ9zqsTW3iv89@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, Jul 31, 2010 at 7:56 AM, Cheng Renquan <crquan@gmail.com> wrote:
> Today I was using this computer with boradcom4312 with b43 (for
> 14e4:4312) driver, in an environment there were 30~40 wifi hotspot,
> some encrypted some not, all other win/mac can connect one unencrypted
> wifi while my ubuntu 10.04 with this b43 driver cannot, all I know to
> try is "modprobe -r b43" and "modprobe b43"; iwconfig/iwlist output
> also seems good,
>
> I post the pci data and dmesg log, in the hope of someone could
> analyze and see how to improve, thanks;
>
> # lspci -D -nn -vv -d 14e4:
> 0000:02:00.0 Network controller [0280]: Broadcom Corporation BCM4312
> 802.11b/g [14e4:4315] (rev 01)
> ? ? ? ?Subsystem: Hewlett-Packard Company Device [103c:1508]
> ? ? ? ?Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
> Stepping- SERR- FastB2B- DisINTx-
> ? ? ? ?Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
> ? ? ? ?Latency: 0
> ? ? ? ?Interrupt: pin A routed to IRQ 18
> ? ? ? ?Region 0: Memory at d8500000 (64-bit, non-prefetchable) [size=16K]
> ? ? ? ?Capabilities: [40] Power Management version 3
> ? ? ? ? ? ? ? ?Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
> ? ? ? ? ? ? ? ?Status: D0 PME-Enable- DSel=0 DScale=2 PME-
> ? ? ? ?Capabilities: [58] Vendor Specific Information <?>
> ? ? ? ?Capabilities: [e8] Message Signalled Interrupts: Mask- 64bit+ Queue=0/0 Enable-
> ? ? ? ? ? ? ? ?Address: 0000000000000000 ?Data: 0000
> ? ? ? ?Capabilities: [d0] Express (v1) Endpoint, MSI 00
> ? ? ? ? ? ? ? ?DevCap: MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 unlimited
> ? ? ? ? ? ? ? ? ? ? ? ?ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
> ? ? ? ? ? ? ? ?DevCtl: Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
> ? ? ? ? ? ? ? ? ? ? ? ?RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
> ? ? ? ? ? ? ? ? ? ? ? ?MaxPayload 128 bytes, MaxReadReq 128 bytes
> ? ? ? ? ? ? ? ?DevSta: CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr- TransPend-
> ? ? ? ? ? ? ? ?LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0
> <4us, L1 <64us
> ? ? ? ? ? ? ? ? ? ? ? ?ClockPM+ Suprise- LLActRep- BwNot-
> ? ? ? ? ? ? ? ?LnkCtl: ASPM L0s L1 Enabled; RCB 64 bytes Disabled- Retrain- CommClk+
> ? ? ? ? ? ? ? ? ? ? ? ?ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
> ? ? ? ? ? ? ? ?LnkSta: Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive-
> BWMgmt- ABWMgmt-
> ? ? ? ?Capabilities: [100] Advanced Error Reporting <?>
> ? ? ? ?Capabilities: [13c] Virtual Channel <?>
> ? ? ? ?Capabilities: [160] Device Serial Number ff-ff-00-ff-ff-00-00-00
> ? ? ? ?Capabilities: [16c] Power Budgeting <?>
> ? ? ? ?Kernel driver in use: b43-pci-bridge
> ? ? ? ?Kernel modules: ssb
>
> --
> Cheng Renquan, Singapore
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>

This is a true BCM4312 (14E4:4315), not a 4311ABG (14E4:4312, commonly
called a "4312"), according to your lspci output. That means, you are
probably experiencing the DMA issue.

Try loading b43 with "modprobe b43 nohwcrypt=1 qos=0 pio=1". If this
doesn't fix it, then chances are, you are hitting a mac80211 bug.

-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
