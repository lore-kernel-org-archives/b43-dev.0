From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 25 Jul 2011 20:07:48 -0500
Subject: Problem with understanding DMA on some machines (known solution!),
	specs needed?
In-Reply-To: <CACna6ryccJvwj6daQ=LkXyxDqZLmZCZOHmx-JCGMNwegBaHc=w@mail.gmail.com>
References: <CACna6ryCsYicWCmNj5tWZ=w53K9qA8qoFHmNT4bQSSVG+sB-xQ@mail.gmail.com>
	<CACna6ryccJvwj6daQ=LkXyxDqZLmZCZOHmx-JCGMNwegBaHc=w@mail.gmail.com>
Message-ID: <4E2E1364.6070206@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/25/2011 05:40 PM, Rafa? Mi?ecki wrote:
> W dniu 25 lipca 2011 23:54 u?ytkownik Rafa? Mi?ecki<zajec5@gmail.com>  napisa?:
>> Hey, I've finally came back to my 14e4:4329 with not working DMA. I
>> hoped disabling parity will make my DMA work, but this didn't do the
>> trick.
>>
>> The card is PCI one with following params:
>> SSB 2.4
>> BCM4321
>> SPROM: 4
>> PMU: ?
>> Core rev: 11
>> PHY: N / 1
>> Radio: 0x2055 / 4
>
> Some additional details. This is card taken out from Asus WL-500W and
> sent to me by Patryk, some Polish Asus owner.
>
> I've put this in my extremely old Acer based on x86_64 CPU, however
> running x86 compiled system.

The reference driver does what we do. It reads SSB_TMSHIGH to see if 
SSB_TMSHIGH_DMA64 is set. In addition, I do not see any place for a fallback 
mechanism such as we have in b43_dma_set_mask(). That might be a good place to 
put in the quirk for 14e4:4329.

Larry
