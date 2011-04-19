From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 19 Apr 2011 12:18:35 +0200
Subject: [14e4:4315] Fatal DMA errors on Dell Vostro 1310 (Celeron M540)
In-Reply-To: <4BB81CAD.10602@lwfinger.net>
References: <20100402171105.GA10965@tsubasa>
	<r2u69e28c911004030915x38f49291g64dc120a4998045d@mail.gmail.com>
	<y2u69e28c911004030915scb998ccbvb21885215a524740@mail.gmail.com>
	<201004032000.51561.mb@bu3sch.de> <4BB81CAD.10602@lwfinger.net>
Message-ID: <BANLkTindomnkmp+hRhtsd_N1CbdZ_KKRTA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/4/4 Larry Finger <Larry.Finger@lwfinger.net>:
> With the PCI-E core selected, read the contents of MMIO address 0x0800.
> Mask that result with 0xF000 and compare the result with (PCI-E core
> index) << 12. If the two are not equal, maskset 0x800 with mask 0x0FFF
> and set with (PCI-E core index) << 12.

Larry, I think you didn't document this one in specs.


> There is also a new section to be placed near the end of
> ssb_pcicore_dev_irqvecs_enable() in the PCI-E branch of the if statement
> according to the following:
>
> ?If (chip id is 0x4311 AND chip revision is 2) OR chip id is 0x4312
> ? Maskset SSB_IMCFGLO with mask ~(SSB_IMCFGLO_SERTO |
> ? ? SSB_IMCFGLO_REQTO) and set with 3
>
> So far, those are the only differences that I have found.

Same here.

-- 
Rafa?
