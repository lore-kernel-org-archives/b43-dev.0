From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 20 Feb 2011 14:41:42 +0100
Subject: bcm4322 success (WPA2)!
In-Reply-To: <201102201431.45988.christoph.thielecke@gmx.de>
References: <201101032121.10454.christoph.thielecke@gmx.de>
	<201102201340.52880.christoph.thielecke@gmx.de>
	<AANLkTimRE9iAcoODyWmhcp0rOUAwEG_vy3Ozs7c3VM7N@mail.gmail.com>
	<201102201431.45988.christoph.thielecke@gmx.de>
Message-ID: <AANLkTik4xfzORZm03u+pMoezaV+HNUw-n7OqH-oZ_Dt1@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Please, include b43-dev in to/cc.

W dniu 20 lutego 2011 14:31 u?ytkownik Christoph Thielecke
<christoph.thielecke@gmx.de> napisa?:
>> Thanks for your report! Do you need that all options at all?
> I think so. I'll try to remove some and tell which is needed for working. Here
> the results:
>
>> I think
>> hwtkip=0 is default one.
> Yes, works without that.
>
>> Parameter qos should not matter.
> qos=0 is nessary, qos=1 or without doesnt work.

What does happen when it doesn't work? Do you get scan results? Can
you associate? Get IP? Transmit?


>> AFAIK pio is
>> needed for some BCM4321s only.
> pio=1 is needed, pio=0 or without doesnt work.
>
>> I didn't check what bad_frames_preempt
>> does.
> bad_frames_preempt=1 is needed, bad_frames_preempt=0 or without doesnt work.
>
> So the needed options are:
> nohwcrypt=1 qos=0 pio=1 bad_frames_preempt=1

What does happen when it doesn't work? Do you get scan results? Can
you associate? Get IP? Transmit?


One request: please blacklist b43, do cold boot (turn off machine for
few seconds), then boot and load b43 with:
pio=1

I ask you for that, because it's possible that using DMA locks up your
card. In such a case further tests can give you false results.
Do you have scan results when using pio=1 after cold boot? Can you associate?

-- 
Rafa?
