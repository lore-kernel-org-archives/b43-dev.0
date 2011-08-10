From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 10 Aug 2011 18:45:57 +0200
Subject: [PATCH 2/2] b43: fix DMA on some bugged hardware
In-Reply-To: <20110810183339.7259d936@milhouse>
References: <1312992688-6976-1-git-send-email-zajec5@gmail.com>
	<1312992688-6976-2-git-send-email-zajec5@gmail.com>
	<20110810183339.7259d936@milhouse>
Message-ID: <CACna6rxNV-d_YNrCOqFCz8cbmbiXh-OqOYkvYmXacJCHsJ74-g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 10 sierpnia 2011 18:33 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Wed, 10 Aug 2011 18:11:28 +0200
>> diff --git a/drivers/net/wireless/b43/dma.c b/drivers/net/wireless/b43/dma.c
>> index 0953ce1..9a2b678 100644
>> --- a/drivers/net/wireless/b43/dma.c
>> +++ b/drivers/net/wireless/b43/dma.c
>> @@ -174,7 +174,10 @@ static void op64_fill_descriptor(struct b43_dmaring *ring,
>> ? ? ? addrhi = (((u64) dmaaddr >> 32) & ~SSB_DMA_TRANSLATION_MASK);
>> ? ? ? addrext = (((u64) dmaaddr >> 32) & SSB_DMA_TRANSLATION_MASK)
>> ? ? ? ? ? >> SSB_DMA_TRANSLATION_SHIFT;
>> - ? ? addrhi |= ring->dev->dma.translation;
>> + ? ? if (ring->dev->dma.translation_in_low)
>> + ? ? ? ? ? ? addrlo |= ring->dev->dma.translation;
>> + ? ? else
>> + ? ? ? ? ? ? addrhi |= ring->dev->dma.translation;
>> ? ? ? if (slot == ring->nr_slots - 1)
>> ? ? ? ? ? ? ? ctl0 |= B43_DMA64_DCTL0_DTABLEEND;
>> ? ? ? if (start)
>> @@ -656,10 +659,12 @@ static int alloc_initial_descbuffers(struct b43_dmaring *ring)
>> ?static int dmacontroller_setup(struct b43_dmaring *ring)
>> ?{
>> ? ? ? int err = 0;
>> + ? ? int tmp;
>> ? ? ? u32 value;
>> ? ? ? u32 addrext;
>> ? ? ? u32 trans = ring->dev->dma.translation;
>> ? ? ? bool parity = ring->dev->dma.parity;
>> + ? ? u32 addrs[2];
>>
>> ? ? ? if (ring->tx) {
>> ? ? ? ? ? ? ? if (ring->type == B43_DMA_64BIT) {
>> @@ -673,12 +678,14 @@ static int dmacontroller_setup(struct b43_dmaring *ring)
>> ? ? ? ? ? ? ? ? ? ? ? if (!parity)
>> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? value |= B43_DMA64_TXPARITYDISABLE;
>> ? ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_TXCTL, value);
>> - ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_TXRINGLO,
>> - ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? (ringbase & 0xFFFFFFFF));
>> - ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_TXRINGHI,
>> - ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ((ringbase >> 32) &
>> - ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?~SSB_DMA_TRANSLATION_MASK)
>> - ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? | trans);
>> +
>> + ? ? ? ? ? ? ? ? ? ? addrs[0] = ringbase & 0xFFFFFFFF;
>> + ? ? ? ? ? ? ? ? ? ? addrs[1] = ringbase >> 32;
>> + ? ? ? ? ? ? ? ? ? ? tmp = ring->dev->dma.translation_in_low ? 0 : 1;
>> + ? ? ? ? ? ? ? ? ? ? addrs[tmp] &= ~SSB_DMA_TRANSLATION_MASK;
>> + ? ? ? ? ? ? ? ? ? ? addrs[tmp] |= trans;
>> + ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_TXRINGLO, addrs[0]);
>> + ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_TXRINGHI, addrs[1]);
>> ? ? ? ? ? ? ? } else {
>> ? ? ? ? ? ? ? ? ? ? ? u32 ringbase = (u32) (ring->dmabase);
>>
>> @@ -710,12 +717,15 @@ static int dmacontroller_setup(struct b43_dmaring *ring)
>> ? ? ? ? ? ? ? ? ? ? ? if (!parity)
>> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? value |= B43_DMA64_RXPARITYDISABLE;
>> ? ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_RXCTL, value);
>> - ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_RXRINGLO,
>> - ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? (ringbase & 0xFFFFFFFF));
>> - ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_RXRINGHI,
>> - ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ((ringbase >> 32) &
>> - ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?~SSB_DMA_TRANSLATION_MASK)
>> - ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? | trans);
>> +
>> + ? ? ? ? ? ? ? ? ? ? addrs[0] = ringbase & 0xFFFFFFFF;
>> + ? ? ? ? ? ? ? ? ? ? addrs[1] = ringbase >> 32;
>> + ? ? ? ? ? ? ? ? ? ? tmp = ring->dev->dma.translation_in_low ? 0 : 1;
>> + ? ? ? ? ? ? ? ? ? ? addrs[tmp] &= ~SSB_DMA_TRANSLATION_MASK;
>> + ? ? ? ? ? ? ? ? ? ? addrs[tmp] |= trans;
>> + ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_RXRINGLO, addrs[0]);
>> + ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_RXRINGHI, addrs[1]);
>> +
>> ? ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_RXINDEX, ring->nr_slots *
>> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? sizeof(struct b43_dmadesc64));
>> ? ? ? ? ? ? ? } else {
>> @@ -1052,6 +1062,21 @@ static int b43_dma_set_mask(struct b43_wldev *dev, u64 mask)
>> ? ? ? return 0;
>> ?}
>
>
> This doesn't look correct to me for several reasons:
>
> In the fill-op the address is not masked correctly with the translation mask.
> In both the fill-op and both ring setups, the actual address extension bits
> are always taken from the address's high word. I guess the extension should
> be the low word bits for devices where we use the low word. That's the only
> thing that would make sense. But hey, it's not that we have sane hardware here.
> So this has to be checked.

Ouch, yeah, you should be right (according to common sense of design).

Unfortunately, on my machine, kernel provides low addresses for DMA purposes:
0x1f310000
0x1f318000
0x1f31c000

Can I ask/hack kernel to offer b43 addresses starting with 0x4... or
0x8... (or 0xc...)?

-- 
Rafa?
