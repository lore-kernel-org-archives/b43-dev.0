From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 00:12:01 +0200
Subject: [PATCH] Fix alignment issues with DMA TX on BCM4331
In-Reply-To: <1313273267.16730.3.camel@i7.infradead.org>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144864.27274.81.camel@i7.infradead.org>
	<4E46F35F.1060900@lwfinger.net>
	<CACna6rxbCnMnxqhKY4ztVdNpxY8p8FzdfShS=8w+mkQ538hiJA@mail.gmail.com>
	<1313273267.16730.3.camel@i7.infradead.org>
Message-ID: <CACna6rzmG2QerzFkqyG_pbM5qRvFA0aNrp0cHnx1NHoZ+6q_FQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 00:07 u?ytkownik David Woodhouse
<dwmw2@infradead.org> napisa?:
> On Sun, 2011-08-14 at 00:02 +0200, Rafa? Mi?ecki wrote:
>> W dniu 13 sierpnia 2011 23:57 u?ytkownik Larry Finger
>> <Larry.Finger@lwfinger.net> napisa?:
>> >> +
>> >> + ? ? ? ? ? ? ? ? ? ? ? b43_dma_write(ring, B43_DMA64_TXRINGLO, 0xff0);
>> >
>> > Should there be a new symbol rather than this magic number?
>
> Probably not. We're testing whether it stores certain bits of the
> address, or if the low 12 bits of the register are just hard-coded to
> zero. The raw value 0xff0 conveys that as well as any macro name that I
> could think of.
>
>> > Tested on BCM4318 on 32-bit system.
>>
>> The question is if your card supports unaligned (and as result, if you
>> tested it at all)
>
> Either way, he confirmed that writing TXCTL last works.

I've just checked wl and they don't do that anyway. The keep order
depending on the alignment bool.

-- 
Rafa?
