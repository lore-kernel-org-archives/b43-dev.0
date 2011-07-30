From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 31 Jul 2011 01:48:06 +0200
Subject: Problem with understanding DMA on some machines (known
	solution!), specs needed?
In-Reply-To: <20110730184415.5c5b2eb6@maggie>
References: <CACna6ryCsYicWCmNj5tWZ=w53K9qA8qoFHmNT4bQSSVG+sB-xQ@mail.gmail.com>
	<CACna6rxk3oZLh+BzXWKq7BZ=8M55-OCRk86-Xw6Eo6PXXaVw0A@mail.gmail.com>
	<4E2EDE4A.8000805@lwfinger.net>
	<CACna6rzWzLh8g5XwZTC6FsY2W2_+fxRFQ3jpxQCHT0prUhapzQ@mail.gmail.com>
	<20110726205531.214c715d@maggie> <20110730184415.5c5b2eb6@maggie>
Message-ID: <CACna6rz7YZ4Ub4P5NttEVFFAunpZanG0uM2TiFpRu0krnAeuQw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 30 lipca 2011 18:44 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Tue, 26 Jul 2011 20:55:31 +0200
> Michael B?sch <m@bues.ch> wrote:
>
>> On Tue, 26 Jul 2011 18:32:15 +0200
>> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>>
>> > W dniu 26 lipca 2011 17:33 u?ytkownik Larry Finger
>> > <Larry.Finger@lwfinger.net> napisa?:
>> > > On 07/26/2011 03:24 AM, Rafa? Mi?ecki wrote:
>> > >>
>> > >> W dniu 25 lipca 2011 23:54 u?ytkownik Rafa? Mi?ecki<zajec5@gmail.com>
>> > >> ?napisa?:
>> > >>>
>> > >>> Now, the question: when for real we should use such a solution?
>> > >>>
>> > >>> Larry, could you check your driver? Can you see anything about this?
>> > >>> Is this maybe PCI (not PCIe!) specific?
>> > >>
>> > >> I've checked thread "Interesting 14e4:4321". It seems both: 14e4:4321
>> > >> and 14e4:4322 are using PCI slot and both are not working in DMA mode.
>> > >> I start believing it's PCI specific.
>> > >>
>> > >> If you take a look at current ssb code and defines:
>> > >>>
>> > >>> if (ssb_read32(dev, SSB_TMSHIGH)& ?SSB_TMSHIGH_DMA64)
>> > >>> ? ? ? ?return SSB_PCIE_DMA_H32;
>> > >>> else
>> > >>> ? ? ? ?return SSB_PCI_DMA;
>> > >>
>> > >> You can see 0x80000000 (SSB_PCIE_DMA_H32) has actually "PCIE" in it's
>> > >> name. This can be true that 0x80000000 is *only* for *64-bit DMA* on
>> > >> *PCIe*.
>> > >
>> > > That is almost correct. This time I found it. The pseudo code is:
>> > >
>> > > dma_addr_lo = 0
>> > > dma_addr_hi = 0
>> > > if PCI || PCIe
>> > > ? ? ? ?if PCIe && 64-bit DMA
>> > > ? ? ? ? ? ? ? ?dma_addr_hi = 0x80000000
>> > > ? ? ? ?else
>> > > ? ? ? ? ? ? ? ?if chipID is 0x4322, 43221, 43231, or 43222
>> > > ? ? ? ? ? ? ? ? ? ? ? ?dma_addr_lo = 0x80000000
>> > > ? ? ? ? ? ? ? ?else
>> > > ? ? ? ? ? ? ? ? ? ? ? ?dma_addr_lo = 0x40000000 ? ?<== your case
>> > >
>> > > Thus it is just a little more complicated than a PCI/PCIe split, as it also
>> > > depends on the chip ID.
>> > >
>> > > I'll add this to the specs.
>> >
>> > Can you (anyone, not just Larry ;) ) give me some tip, how to
>> > implement this correctly? From programming POV.
>> >
>> > We should return two infos from ssb code now:
>> > 1) Routing bit
>> > 2) Address which should be used
>> >
>> > Should I add new function for this? Or create struct
>> > dma_translation_info with 2 fields? Or return array? Or...?
>>
>> I would do it something like this (completely untested. Not even compiled):
>>
>>
>> Index: wireless-testing/drivers/ssb/main.c
>> ===================================================================
>> --- wireless-testing.orig/drivers/ssb/main.c ?2011-07-21 23:20:56.000000000 +0200
>> +++ wireless-testing/drivers/ssb/main.c ? ? ? 2011-07-26 20:50:31.920182657 +0200
>> @@ -1260,16 +1260,32 @@ void ssb_device_disable(struct ssb_devic
>> ?}
>> ?EXPORT_SYMBOL(ssb_device_disable);
>>
>> +static bool let_the_software_guys_fix_it(struct ssb_device *dev)
>> +{
>> + ? ? u16 chip_id = dev->bus->chip_id;
>> +
>> + ? ? if (dev->id.coreid == SSB_DEV_80211) {
>> + ? ? ? ? ? ? return (chip_id == 0x4322 || chip_id == 43221 ||
>> + ? ? ? ? ? ? ? ? ? ? chip_id == 43231 || chip_id == 43222)
>> + ? ? }
>> + ? ? return 0;
>> +}
>> +
>> ?u32 ssb_dma_translation(struct ssb_device *dev)
>> ?{
>> ? ? ? switch (dev->bus->bustype) {
>> ? ? ? case SSB_BUSTYPE_SSB:
>> ? ? ? ? ? ? ? return 0;
>> ? ? ? case SSB_BUSTYPE_PCI:
>> - ? ? ? ? ? ? if (ssb_read32(dev, SSB_TMSHIGH) & SSB_TMSHIGH_DMA64)
>> + ? ? ? ? ? ? if (dev->bus->host_pci->is_pcie &&
>> + ? ? ? ? ? ? ? ? (ssb_read32(dev, SSB_TMSHIGH) & SSB_TMSHIGH_DMA64)) {
>> ? ? ? ? ? ? ? ? ? ? ? return SSB_PCIE_DMA_H32;
>> - ? ? ? ? ? ? else
>> - ? ? ? ? ? ? ? ? ? ? return SSB_PCI_DMA;
>> + ? ? ? ? ? ? } else {
>> + ? ? ? ? ? ? ? ? ? ? if (let_the_software_guys_fix_it(dev))
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? return SSB_PCIE_DMA_H32;
>> + ? ? ? ? ? ? ? ? ? ? else
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? return SSB_PCI_DMA;
>> + ? ? ? ? ? ? }
>> ? ? ? default:
>> ? ? ? ? ? ? ? __ssb_dma_not_implemented(dev);
>> ? ? ? }
>> Index: wireless-testing/drivers/net/wireless/b43/dma.c
>> ===================================================================
>> --- wireless-testing.orig/drivers/net/wireless/b43/dma.c ? ? ?2011-07-21 23:20:55.000000000 +0200
>> +++ wireless-testing/drivers/net/wireless/b43/dma.c ? 2011-07-26 20:53:40.688974405 +0200
>> @@ -1052,6 +1052,21 @@ static int b43_dma_set_mask(struct b43_w
>> ? ? ? return 0;
>> ?}
>>
>> +static bool dma_translation_in_low_word(struct b43_wldev *dev)
>> +{
>> +#ifdef CONFIG_B43_SSB
>> + ? ? if (dev->dev->bus_type != B43_BUS_SSB)
>> + ? ? ? ? ? ? return 0;
>> + ? ? if (dev->dev->sdev->bus->bustype == SSB_BUSTYPE_PCI) {
>> + ? ? ? ? ? ? if (dev->dev->sdev->bus->host_pci->is_pcie &&
>> + ? ? ? ? ? ? ? ? (ssb_read32(dev->dev->sdev, SSB_TMSHIGH) & SSB_TMSHIGH_DMA64))
>> + ? ? ? ? ? ? ? ? ? ? return 0;
>> + ? ? ? ? ? ? return 1;
>> + ? ? }
>> +#endif
>> + ? ? return 0;
>> +}
>> +
>> ?int b43_dma_init(struct b43_wldev *dev)
>> ?{
>> ? ? ? struct b43_dma *dma = &dev->dma;
>> @@ -1074,6 +1089,7 @@ int b43_dma_init(struct b43_wldev *dev)
>> ?#ifdef CONFIG_B43_SSB
>> ? ? ? case B43_BUS_SSB:
>> ? ? ? ? ? ? ? dma->translation = ssb_dma_translation(dev->dev->sdev);
>> + ? ? ? ? ? ? //Hurr durr use dma_translation_in_low_word()
>> ? ? ? ? ? ? ? break;
>> ?#endif
>> ? ? ? }
>>
>
> Does that sound sane? Any comments on this?

Sorry, I'm on half-vacations now, being on-line from time to time only.

Michael: I'm OK with your idea of additional function
(dma_translation_in_low_word), but I wonder if it should go to ssb.
What do you think about this? In theory this sounds like something bus
specific to me and in theory could be used by other drivers as well.
Routing seems to be bus (ssb) specific.

-- 
Rafa?
