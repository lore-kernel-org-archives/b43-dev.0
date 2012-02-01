From: Felipe Balbi <balbi@ti.com>
Date: Wed, 1 Feb 2012 19:25:39 +0200
Subject: Dell e6410 with b43
In-Reply-To: <4F2963A9.1020100@broadcom.com>
References: <20120201123324.GG20238@legolas.emea.dhcp.ti.com>
 <4F2963A9.1020100@broadcom.com>
Message-ID: <20120201172537.GC8429@legolas.emea.dhcp.ti.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: "balbi@ti.com" <balbi@ti.com>, "stefano.brivio@polimi.it" <stefano.brivio@polimi.it>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

Hi,

On Wed, Feb 01, 2012 at 05:09:13PM +0100, Arend van Spriel wrote:
> On 02/01/2012 01:33 PM, Felipe Balbi wrote:
> > Hi all,
> > 
> > is Dell e6410's b43 wireless card supported by the open source driver ?
> > 
> > Here's lspci dump:
> > 
> > 02:00.0 Network controller [0280]: Broadcom Corporation BCM43224 802.11a/b/g/n [14e4:4353] (rev 01)
> > 	Subsystem: Dell Wireless 1520 Half-size Mini PCIe Card [1028:000e]
> > 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
> > 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
> > 	Latency: 0, Cache Line Size: 64 bytes
> > 	Interrupt: pin A routed to IRQ 10
> > 	Region 0: Memory at f4100000 (64-bit, non-prefetchable) [size=16K]
> > 	Capabilities: [40] Power Management version 3
> > 		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
> > 		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=2 PME-
> > 	Capabilities: [58] Vendor Specific Information: Len=78 <?>
> > 	Capabilities: [48] MSI: Enable- Count=1/1 Maskable- 64bit+
> > 		Address: 0000000000000000  Data: 0000
> > 	Capabilities: [d0] Express (v1) Endpoint, MSI 00
> > 		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <4us, L1 unlimited
> > 			ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset-
> > 		DevCtl:	Report errors: Correctable- Non-Fatal- Fatal- Unsupported-
> > 			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
> > 			MaxPayload 128 bytes, MaxReadReq 128 bytes
> > 		DevSta:	CorrErr+ UncorrErr- FatalErr- UnsuppReq+ AuxPwr+ TransPend-
> > 		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Latency L0 <4us, L1 <64us
> > 			ClockPM+ Surprise- LLActRep+ BwNot-
> > 		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- Retrain- CommClk+
> > 			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
> > 		LnkSta:	Speed 2.5GT/s, Width x1, TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
> > 
> > It's at least not listed under http://linuxwireless.org/en/users/Devices/PCI
> > 
> > If it is supported, which firmware should I use ? (kernel is 3.3-rc2)
> > 
> 
> It is. See http://linuxwireless.org/en/users/Drivers/brcm80211

last time I tried that one (3.1 or 3.0, can't remember) it was causing
all sorts of problems and I got numerous BUG()s. Because this is my work
laptop, I decided to ditch that driver. Is it more stable now ?

-- 
balbi
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: Digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120201/4425a2e2/attachment.sig>
