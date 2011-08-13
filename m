From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 00:02:59 +0200
Subject: [PATCH] Fix alignment issues with DMA TX on BCM4331
In-Reply-To: <4E46F35F.1060900@lwfinger.net>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144864.27274.81.camel@i7.infradead.org>
	<4E46F35F.1060900@lwfinger.net>
Message-ID: <CACna6rxbCnMnxqhKY4ztVdNpxY8p8FzdfShS=8w+mkQ538hiJA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 13 sierpnia 2011 23:57 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 08/12/2011 05:27 AM, David Woodhouse wrote:
>>
>> When the TX descriptor ring is not aligned to 8KiB on BCM4331, we have
>> to write the full address to the TXINDEX register or the DMA engine gets
>> confused after the first time we wrap round to slot zero.
>>
>> [ 7438.538945] Poked TX with address fe0 for slot 254
>> [ 7438.539077] Acking gen reason 20000000
>> [ 7438.539177] irq xmitstat 20fc1001 0000007f
>> [ 7438.607861] Poked TX with address 0 for slot 0
>> [ 7438.608567] Acking gen reason 20000000
>> [ 7438.608668] irq xmitstat 20fe1001 00000080
>> [ 7438.608709] irq xmitstat 20000011 00000080
>> [ 7438.608724] b43-phy2 debug: Out of order TX status report on DMA ring
>> 1. Expected 256, but got 0
>> [ 7438.608739] irq xmitstat 20020011 00000080
>> [ 7438.608750] b43-phy2 debug: Out of order TX status report on DMA ring
>> 1. Expected 256, but got 2
>> [ 7438.608765] irq xmitstat 20040011 00000080
>>
>> We write 0xff0 to the TXADDRLO register to see if the DMA engine is
>> capable of unaligned operation. If it *is*, then it'll have this problem
>> and we have to write the full address to TXINDEX. Comments in brcmsmac
>> indicate that the low 13 bits are required.
>>
>> If we're doing this, we *also* have to write to TXCTL to enable the DMA
>> engine *after* setting up the ring address.
>>
>> Signed-off-by: David Woodhouse<David.Woodhouse@intel.com>
>> --
>> I've made that change to the initialisation order of TXCTL vs.
>> TXADDR{HI,LO} unconditional; is there a reason not to?
>>
>> diff --git a/drivers/net/wireless/b43/dma.c
>> b/drivers/net/wireless/b43/dma.c
>> index 82168f8..92dd6d9 100644
>> --- a/drivers/net/wireless/b43/dma.c
>> +++ b/drivers/net/wireless/b43/dma.c
>> @@ -225,8 +225,10 @@ static void op64_fill_descriptor(struct b43_dmaring
>> *ring,
>>
>> ?static void op64_poke_tx(struct b43_dmaring *ring, int slot)
>> ?{
>> - ? ? ? b43_dma_write(ring, B43_DMA64_TXINDEX,
>> - ? ? ? ? ? ? ? ? ? ? (u32) (slot * sizeof(struct b43_dmadesc64)));
>> + ? ? ? u32 indexval = slot * sizeof(struct b43_dmadesc64);
>> + ? ? ? if (ring->unaligned)
>> + ? ? ? ? ? ? ? indexval |= (u32)ring->dmabase;
>> + ? ? ? b43_dma_write(ring, B43_DMA64_TXINDEX, indexval);
>> ?}
>>
>> ?static void op64_tx_suspend(struct b43_dmaring *ring)
>> @@ -704,9 +710,14 @@ static int dmacontroller_setup(struct b43_dmaring
>> *ring)
>> ? ? ? ? ? ? ? ? ? ? ? ?& ?B43_DMA64_TXADDREXT_MASK;
>> ? ? ? ? ? ? ? ? ? ? ? ?if (!parity)
>> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?value |= B43_DMA64_TXPARITYDISABLE;
>> - ? ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_TXCTL, value);
>> +
>> + ? ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_TXRINGLO, 0xff0);
>
> Should there be a new symbol rather than this magic number?
>
>> + ? ? ? ? ? ? ? ? ? ? ? if (b43_dma_read(ring, B43_DMA64_TXRINGLO))
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ring->unaligned = 1;
>> +
>> ? ? ? ? ? ? ? ? ? ? ? ?b43_dma_write(ring, B43_DMA64_TXRINGLO, addrlo);
>> ? ? ? ? ? ? ? ? ? ? ? ?b43_dma_write(ring, B43_DMA64_TXRINGHI, addrhi);
>> + ? ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_TXCTL, value);
>> ? ? ? ? ? ? ? ?} else {
>> ? ? ? ? ? ? ? ? ? ? ? ?u32 ringbase = (u32) (ring->dmabase);
>> ? ? ? ? ? ? ? ? ? ? ? ?addrext = b43_dma_address(&ring->dev->dma,
>> ringbase, B43_DMA_ADDR_EXT);
>> diff --git a/drivers/net/wireless/b43/dma.h
>> b/drivers/net/wireless/b43/dma.h
>> index 7e20b04f..16dc565 100644
>> --- a/drivers/net/wireless/b43/dma.h
>> +++ b/drivers/net/wireless/b43/dma.h
>> @@ -251,6 +251,8 @@ struct b43_dmaring {
>> ? ? ? ?int index;
>> ? ? ? ?/* Boolean. Is this a TX ring? */
>> ? ? ? ?bool tx;
>> + ? ? ? /* Boolean. Is this ring capable of 16-byte alignment? */
>> + ? ? ? bool unaligned;
>> ? ? ? ?/* The type of DMA engine used. */
>> ? ? ? ?enum b43_dmatype type;
>> ? ? ? ?/* Boolean. Is this ring stopped at ieee80211 level? */
>>
>
> Tested on BCM4318 on 32-bit system.

The question is if your card supports unaligned (and as result, if you
tested it at all)

-- 
Rafa?
