From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 10 Aug 2011 18:42:59 +0200
Subject: [PATCH 1/2] ssb: fix DMA translation for some specific boards
In-Reply-To: <20110810184028.3cb9c532@milhouse>
References: <1312992688-6976-1-git-send-email-zajec5@gmail.com>
	<20110810184028.3cb9c532@milhouse>
Message-ID: <CACna6rxBof9T+vaZ=wHZJcXY12XVrYvFbHEdXk1+=_LAwjmtig@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 10 sierpnia 2011 18:40 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Wed, 10 Aug 2011 18:11:27 +0200
>> +/* Some chipsets need routing known for PCIe and 64-bit DMA */
>> +static bool ssb_dma_translation_special_bit(struct ssb_device *dev)
>> +{
>> + ? ? u16 chip_id = dev->bus->chip_id;
>> +
>> + ? ? if (dev->id.coreid == SSB_DEV_80211)
>> + ? ? ? ? ? ? return (chip_id == 0x4322 || chip_id == 43221 ||
>> + ? ? ? ? ? ? ? ? ? ? chip_id == 43231 || chip_id == 43222);
>> + ? ? return 0;
>> +}
>
> ACK, apart from this coding style violation (missing curly braces).
