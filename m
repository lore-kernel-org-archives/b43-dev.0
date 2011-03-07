From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 7 Mar 2011 13:35:19 +0100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTikvha=e+LH60SZ2cy6WBpZCoXXW0sg=NgJnpaYx@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTikcvuBdOi=LM5Bx9cxO2yY=0BzSTn18r938KjSr@mail.gmail.com>
	<AANLkTi=gjvA5=UxHENZ1ALcxomPEdL7NGeb7oFtdZ+t3@mail.gmail.com>
	<4D6EBDE0.8020005@lwfinger.net>
	<AANLkTimz2_tReWABmqH5HsNjzYRW0fkidS1qmQbSAoqr@mail.gmail.com>
	<AANLkTin1SKsQSsMMUq-+0K_j=8GUxWQmP0HyyaxtD3z3@mail.gmail.com>
	<AANLkTimwByPJQe-LK+qYx8r+mjjqrku5ios8Lzn2N84W@mail.gmail.com>
	<AANLkTikvha=e+LH60SZ2cy6WBpZCoXXW0sg=NgJnpaYx@mail.gmail.com>
Message-ID: <AANLkTi=yBnrCRGzx+PSVYK2_93ktUsn0oaaaCk-k4QT6@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 4 marca 2011 00:49 u?ytkownik chris at martin.cc <chris@martin.cc> napisa?:
> 2011/3/3 Rafa? Mi?ecki <zajec5@gmail.com>:
>> W dniu 3 marca 2011 08:58 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
>>> 2011/3/3 chris at martin.cc <chris@martin.cc>:
>>>> root at OpenWrt:/etc/config# wifi up
>>>> Error for wireless request "Set Power Management" (8B2C) :
>>>> ? ?SET failed on device wlan0 ; Operation not supported.
>>>> compat-wireless-2011-02-25/drivers/net/wireless/b43/main.c:2262
>>>> kzalloc 332 bytes
>>>> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
>>>> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
>>>> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
>>>> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
>>>> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
>>>> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
>>>> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:824 kzalloc 96 bytes
>>>> b43-phy0 ERROR: PHY transmission error
>>>> b43-phy0 ERROR: PHY transmission error
>>>> b43-phy0 ERROR: PHY transmission error
>>>> b43-phy0 ERROR: PHY transmission error
>>>> b43-phy0 ERROR: PHY transmission error
>>>
>>> This gave me some hint, may be very important. I would like you to
>>> test two patches (together, both at same time), TX header related.
>>> Unfortunately second one doesn't exist yet and I'm leaving for my
>>> studies class soon. I'll send you patches later today.
>>
>> Please, apply that two patches. First one:
>> http://git.kernel.org/?p=linux/kernel/git/linville/wireless-testing.git;a=commit;h=3311abbbbff1719bbbc8208761e4a75f095f383c
>> Second one is the one I attached.
>>
>> You can revert your switching to PIO and debugging messages if you
>> wish. That doesn't matter.
>>
>>
>> My idea of what is happening:
>> 1) We try to use newer firmware which does not forgive us broken TX
>> header anymore
>> 2) Radio does not transmit, or transmits rubbishes
>> 3) mac80211 detects failure of transmitting and hits some allocation
>> loop, memory leak
>>
>> If that patches help, it means we satisfied newer firmware and TX
>> transmission goes fine. However there still probably is some alloc bug
>> in mac80211 that was exposed by b43.
>
> Rafa?
>
> Thanks for taking the time to make the patches.
>
> Unfortunatly, while fixing the TX error, it didn't solve the OoM problem
>
> The first patch was already included in the OpenWrt compat-wireless package
> I applied the second, and the results are below
> I also print the kcalloc() and other *alloc*() I can find.
> I also tested in STA mode, as this was the mode that showed the TX errors
>
> The is a large number of allocated skb's, but this may be caused by
> the traffic in the air here.
> It repeats about 500 times, before running out of memory,
> This would account for 1-2M of memory - depending on allocation. And I
> have > 12M of free memory
>
> root at OpenWrt:/etc/config# wifi up
> Error for wireless request "Set Power Management" (8B2C) :
> ? ?SET failed on device wlan0 ; Operation not supported.
> compat-wireless-2011-02-25/drivers/net/wireless/b43/main.c:2262
> kzalloc 332 bytes
> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:827 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:836 kcalloc
> 256 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:870 kcalloc
> 128 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:404 dma_alloc_coherent
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:827 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:836 kcalloc
> 256 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:870 kcalloc
> 128 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:404 dma_alloc_coherent
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:827 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:836 kcalloc
> 256 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:870 kcalloc
> 128 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:404 dma_alloc_coherent
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:827 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:836 kcalloc
> 256 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:870 kcalloc
> 128 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:404 dma_alloc_coherent
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:827 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:836 kcalloc
> 256 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:870 kcalloc
> 128 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:404 dma_alloc_coherent
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:827 kzalloc 60 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:836 kcalloc
> 64 * 12 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:404 dma_alloc_coherent
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:586
> __dev_alloc_skb 2352 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:586
> __dev_alloc_skb 2352 bytes
>
> ?** Repeate 500 times **
>
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:586
> __dev_alloc_skb 2352 bytes
> compat-wireless-2011-02-25/drivers/net/wireless/b43/dma.c:586
> __dev_alloc_skb 2352 bytes
> uci: page allocation failure. order:0, mode:0x20
> Call Trace:
> [<80009120>] dump_stack+0x8/0x34
> [<8006412c>] __alloc_pages_nodemask+0x514/0x570
> [<8008d214>] cache_alloc_refill+0x280/0x740
> [<8008d880>] kmem_cache_alloc+0x84/0xf4
> [<81a22220>] 0x81a22220

Is this sane to assume that skb allocated in dma.c:586 (:585
unmodified) is leaking?

I checked code path, it is following:
dma_rx
  setup_rx_descbuffer
  b43_rx

Our b43_rx seems to be safe: we check info from rxhdr and use "goto
drop;" in case of failure (which nicely frees skb) OR we call
ieee80211_rx_ni and return. Hoping mac80211 will handle that packet
and free skb.

So my only idea is that mac80211 does not free skb in ieee80211_rx_ni.
That functions is just a simple inline:
static inline void ieee80211_rx_ni(struct ieee80211_hw *hw,
				   struct sk_buff *skb)
{
	local_bh_disable();
	ieee80211_rx(hw, skb);
	local_bh_enable();
}

Is that correct path I follow? Should we investigate ieee80211_rx?

-- 
Rafa?
