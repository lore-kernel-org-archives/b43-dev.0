From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 13 Oct 2011 06:38:12 +0200
Subject: [PATCH 3.2 1/2] Revert "b43: trivial: do not report any link
	quality instead of invalid one"
In-Reply-To: <CA+icZUXzPSm8FdqMbAm34GEDVM-BADOwY==aYiUegd0uhEnACQ@mail.gmail.com>
References: <1318454295-20573-1-git-send-email-zajec5@gmail.com>
	<CA+icZUXzPSm8FdqMbAm34GEDVM-BADOwY==aYiUegd0uhEnACQ@mail.gmail.com>
Message-ID: <CACna6rxSAr+Totf6gJ5P5kGnyNsbbXwhf-rpEmnRBQJ__2ivGg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: sedat.dilek@gmail.com
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 13 pa?dziernika 2011 00:22 u?ytkownik Sedat Dilek
<sedat.dilek@googlemail.com> napisa?:
> 2011/10/12 Rafa? Mi?ecki <zajec5@gmail.com>:
>> This reverts commit 55ad5962e97430c83d51df36fc18865ee4f78c48.
>>
>> I assumed N is newer than LP, which isn't true. This regressed LP case.
>>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>> It seems that wasn't so "trivial", sorry for this regression :|
>> ---
>> ?drivers/net/wireless/b43/xmit.c | ? 12 +++++-------
>> ?1 files changed, 5 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/net/wireless/b43/xmit.c b/drivers/net/wireless/b43/xmit.c
>> index 5f812d1..b8de62c 100644
>> --- a/drivers/net/wireless/b43/xmit.c
>> +++ b/drivers/net/wireless/b43/xmit.c
>> @@ -735,13 +735,11 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
>> ? ? ? ?}
>>
>> ? ? ? ?/* Link quality statistics */
>> - ? ? ? if ((chanstat & B43_RX_CHAN_PHYTYPE) >= B43_PHYTYPE_N) {
>> - ? ? ? ? ? ? ? /*
>> - ? ? ? ? ? ? ? s8 rssi = max(rxhdr->power0, rxhdr->power1);
>> - ? ? ? ? ? ? ? TODO: Find out what the rssi value is (dBm or percentage?)
>> - ? ? ? ? ? ? ? ? ? ? and also find out what the maximum possible value is.
>> - ? ? ? ? ? ? ? ? ? ? Fill status.ssi and status.signal fields.
>> - ? ? ? ? ? ? ? */
>> + ? ? ? if ((chanstat & B43_RX_CHAN_PHYTYPE) == B43_PHYTYPE_N) {
>> +// ? ? ? ? ? ? s8 rssi = max(rxhdr->power0, rxhdr->power1);
>> + ? ? ? ? ? ? ? //TODO: Find out what the rssi value is (dBm or percentage?)
>> + ? ? ? ? ? ? ? // ? ? ?and also find out what the maximum possible value is.
>> + ? ? ? ? ? ? ? // ? ? ?Fill status.ssi and status.signal fields.
>> ? ? ? ?} else {
>> ? ? ? ? ? ? ? ?status.signal = b43_rssi_postprocess(dev, rxhdr->jssi,
>> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?(phystat0 & B43_RX_PHYST0_OFDM),
>> --
>> 1.7.3.4
>>
>
> Commenting style?
> Isn't C99-like commenting not well seen?

This is simple revert, the code was like that before my patch.

My 2/2 patch remove that ugly commenting style.

-- 
Rafa?
