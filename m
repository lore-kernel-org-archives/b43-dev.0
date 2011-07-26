From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 26 Jul 2011 12:10:02 -0500
Subject: Problem with understanding DMA on some machines (known solution!),
	specs needed?
In-Reply-To: <CACna6rzWzLh8g5XwZTC6FsY2W2_+fxRFQ3jpxQCHT0prUhapzQ@mail.gmail.com>
References: <CACna6ryCsYicWCmNj5tWZ=w53K9qA8qoFHmNT4bQSSVG+sB-xQ@mail.gmail.com>	<CACna6rxk3oZLh+BzXWKq7BZ=8M55-OCRk86-Xw6Eo6PXXaVw0A@mail.gmail.com>	<4E2EDE4A.8000805@lwfinger.net>
	<CACna6rzWzLh8g5XwZTC6FsY2W2_+fxRFQ3jpxQCHT0prUhapzQ@mail.gmail.com>
Message-ID: <4E2EF4EA.6050300@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/26/2011 11:32 AM, Rafa? Mi?ecki wrote:
> W dniu 26 lipca 2011 17:33 u?ytkownik Larry Finger
> <Larry.Finger@lwfinger.net>  napisa?:
>> On 07/26/2011 03:24 AM, Rafa? Mi?ecki wrote:
>>>
>>> W dniu 25 lipca 2011 23:54 u?ytkownik Rafa? Mi?ecki<zajec5@gmail.com>
>>>   napisa?:
>>>>
>>>> Now, the question: when for real we should use such a solution?
>>>>
>>>> Larry, could you check your driver? Can you see anything about this?
>>>> Is this maybe PCI (not PCIe!) specific?
>>>
>>> I've checked thread "Interesting 14e4:4321". It seems both: 14e4:4321
>>> and 14e4:4322 are using PCI slot and both are not working in DMA mode.
>>> I start believing it's PCI specific.
>>>
>>> If you take a look at current ssb code and defines:
>>>>
>>>> if (ssb_read32(dev, SSB_TMSHIGH)&    SSB_TMSHIGH_DMA64)
>>>>         return SSB_PCIE_DMA_H32;
>>>> else
>>>>         return SSB_PCI_DMA;
>>>
>>> You can see 0x80000000 (SSB_PCIE_DMA_H32) has actually "PCIE" in it's
>>> name. This can be true that 0x80000000 is *only* for *64-bit DMA* on
>>> *PCIe*.
>>
>> That is almost correct. This time I found it. The pseudo code is:
>>
>> dma_addr_lo = 0
>> dma_addr_hi = 0
>> if PCI || PCIe
>>         if PCIe&&  64-bit DMA
>>                 dma_addr_hi = 0x80000000
>>         else
>>                 if chipID is 0x4322, 43221, 43231, or 43222
>>                         dma_addr_lo = 0x80000000
>>                 else
>>                         dma_addr_lo = 0x40000000<== your case
>>
>> Thus it is just a little more complicated than a PCI/PCIe split, as it also
>> depends on the chip ID.
>>
>> I'll add this to the specs.
>
> Can you (anyone, not just Larry ;) ) give me some tip, how to
> implement this correctly? From programming POV.
>
> We should return two infos from ssb code now:
> 1) Routing bit
> 2) Address which should be used
>
> Should I add new function for this? Or create struct
> dma_translation_info with 2 fields? Or return array? Or...?

How about more pseudo code? Broadcom sets those dma_addr_hi/lo words in a struct 
when they are setting up the TX/RX rings. Then they do the following when 
actually setting up the 64-bit DMA operation:

dmaaddr_t phys

if !dma_addr_lo || !(phys.loaddr & 0xc0000000)
	ring.address_lo = phys.loaddr + dma_addr_lo
	ring.address_hi = phys.hiaddr + dma_addr_hi
	ring.ctrl1 = ...
else
	u32 addr_ext = phys.loaddr & 0xc0000000
	phys.loaddr &= ~0xc0000000
	ring.address_lo = phys.loaddr + dma_addr_lo
	ring.address_hi = dma_addr_hi
	ring.ctrl1 = ....

On second thought, what I call dma_addr_{lo,hi} might be called 
dma_offset_{lo,hi}, or even dma_mask_{lo,hi}.

As to the programming question, setting up these offsets can easily be done the 
way they do.

Larry

	
