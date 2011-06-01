From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 1 Jun 2011 11:17:37 +0200
Subject: Request for testing b43 & Broadcom 14e4:4315 cards for DMA ERRORs
	(Linux 3.0)
In-Reply-To: <20110601002941.1ab83b28@boulder.homenet>
References: <BANLkTi=fgGTvjdQ0Ghd15CBoYzd9TLU2CQ@mail.gmail.com>
	<20110601002941.1ab83b28@boulder.homenet>
Message-ID: <BANLkTikMZ-HR73o+d=xge1Hb0izhqPYZKw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 1 czerwca 2011 01:29 u?ytkownik Chris Vine
<chris@cvine.freeserve.co.uk> napisa?:
> On Mon, 30 May 2011 09:22:32 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> Hello everybody,
>>
>> I believe I've grabbed e-mails of all the people reporting DMA errors
>> on b43/bcm43xx mailing list.
>>
>> Short remind of the problem. When using b43 and LP-PHY card on some
>> specific machines you got:
>> b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000,
>> 0x00000000, 0x00000000, 0x00000000
>> b43-phy0: Controller RESET (DMA error) ...
>>
>> The workaround was to use PIO instead of DMA, or "modprobe wl &&
>> rmmod wl".
>>
>> I believe we've fixed that errors in Linux 3.0-rc1. Can you give it a
>> chance and report back?
>
> This deals with the fatal DMA errors on my machine. ?Well done.

Wohoo, that's great, thank you for info!


> However, fixing this bug reveals something else. ?After about 2 hours of
> streaming on MLB.TV I got this, apparently at random (but this is not a
> hard error: by disassociating from the AP and reassociating, the rest of
> the game played fine, and there was no need to load or unload modules):
>
> b43-phy0 debug: TX-status contains invalid cookie: 0x0DCE
> b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 76

This is known to happen when there is some high traffic happening.
Please use "b43 error under heavy load" thread to continue discussion
on this issue.

-- 
Rafa?
