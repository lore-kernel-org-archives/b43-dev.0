From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 11 Aug 2011 10:05:19 +0200
Subject: [RFC][RFT][PATCH V2 2/2] b43: fix DMA on some bugged hardware
In-Reply-To: <4E435D0E.80702@lwfinger.net>
References: <1313001339-11211-1-git-send-email-zajec5@gmail.com>
	<1313001339-11211-2-git-send-email-zajec5@gmail.com>
	<CACna6rynj+OXL1R6jwgnCzReuO+=piOX3LTC9UujDTg4DNBVUw@mail.gmail.com>
	<4E435D0E.80702@lwfinger.net>
Message-ID: <CACna6rxtkq7QGm52aunVZnqY48uO4+FL18S4kpuvYax55TePZQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 11 sierpnia 2011 06:39 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 08/10/2011 07:14 PM, Rafa? Mi?ecki wrote:
>>
>> W dniu 10 sierpnia 2011 20:35 u?ytkownik Rafa? Mi?ecki
>> <zajec5@gmail.com> ?napisa?:
>>>
>>> Some hardware with 64-bit DMA uses lower address word for setting
>>> routing (translation) bit. Add workaround for such boards.
>>>
>>> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>
>>> ---
>>> This requires testing on at least 1 normal 64-bit DMA card and 1 32-bit
>>> DMA card. So far it was tested only on my 14e4:4329 where it fixed DMA.
>>
>> 14e4:4353 (BCM43224), 64-bit DMA, still works :)
>>
>> The rest will follow tomorrow.
>
> Tested with 14e4:4311 (64-bit) and 14e4:4318 (32-bit). The ssb changes were
> also tested with b43legacy.

Thanks Larry.

I've additionally tested this on 14e4:4312 (BCM4311), 32-bit DMA. Works OK.

John: please take this patchset.

-- 
Rafa?
