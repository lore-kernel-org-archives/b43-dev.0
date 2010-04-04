From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 03 Apr 2010 23:59:25 -0500
Subject: [14e4:4315] Fatal DMA errors on Dell Vostro 1310 (Celeron M540)
In-Reply-To: <201004032000.51561.mb@bu3sch.de>
References: <20100402171105.GA10965@tsubasa>
	<r2u69e28c911004030915x38f49291g64dc120a4998045d@mail.gmail.com>
	<y2u69e28c911004030915scb998ccbvb21885215a524740@mail.gmail.com>
	<201004032000.51561.mb@bu3sch.de>
Message-ID: <4BB81CAD.10602@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/03/2010 01:00 PM, Michael Buesch wrote:
> On Saturday 03 April 2010 18:15:55 G?bor Stefanik wrote:
>>> AFAIK my SSB PMU LDO voltage setting patches landed in 2.6.33. As
>>> Michael said before, the PMU cutting power to the device at
>>> inappropriate times can easily cause DMA errors, so any PMU
>>
>> ...changes can be considered suspicious. (I'm gonna shoot my mailer now.)
> 
> I think the bug is within the PCI-E core driver.

I agree with Michael, and I'm reviewing all the PCI-E initialization
code. So far, I have some differences in the specs as follows:

With the PCI-E core selected, read the contents of MMIO address 0x0800.
Mask that result with 0xF000 and compare the result with (PCI-E core
index) << 12. If the two are not equal, maskset 0x800 with mask 0x0FFF
and set with (PCI-E core index) << 12.

Again with the PCI-E core selected, if the PCI-E core revision is >= 6,
set bit 0x8000 in MMIO register 0x280A.

When running wl on my machine, these changes show up as the contents of
0x0800 going from 0x2801 to 0x3801 and 0x280A going from 0x6FDE to
0xEBDE. On John's Netbook, both values are already at the correct values.

A change that will make a difference is found in ssb_pmu_pll_init(). The
0x4312 case should just do a break. No external routines are called for
this chip.

There is also a new section to be placed near the end of
ssb_pcicore_dev_irqvecs_enable() in the PCI-E branch of the if statement
according to the following:

 If (chip id is 0x4311 AND chip revision is 2) OR chip id is 0x4312
   Maskset SSB_IMCFGLO with mask ~(SSB_IMCFGLO_SERTO |
     SSB_IMCFGLO_REQTO) and set with 3

So far, those are the only differences that I have found.

Larry
