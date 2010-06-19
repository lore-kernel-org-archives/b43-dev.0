From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 19 Jun 2010 11:33:39 +0200
Subject: Problems with b43 wirelesss
In-Reply-To: <AANLkTimIkTaIrdXHulE6YVnB3ZwWrMBCNnCK1SKdyctL@mail.gmail.com>
References: <AANLkTimIkTaIrdXHulE6YVnB3ZwWrMBCNnCK1SKdyctL@mail.gmail.com>
Message-ID: <AANLkTimvdtruvFaugHTYcSNhL5pBZXPYtzEF3qolO_qW@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/6/18 Magnus Therning <magnus@therning.org>:
> I've just bought a new laptop, and it has a broadcom wireless device.
> I was, foolishly it seems, hoping that all serious problems with
> broadcom devices had been dealt with already and that there wouldn't
> be any problems to get acceptable connectivity nowadays. ?Alas that
> isn't the case, despite the excellent job the devs on this mailing
> list are doing.
>
> The behaviour I see is that I manage to associate with the wireless
> router, but soon after I start using the connection it dies and all
> attempts to re-connect fails. ?I've seen a few similar reports from
> b43 users but without any really good work-around (some say that
> switching down to 802.11b works (and that would be acceptable) but I
> don't see any way of doing that).
>
> So, the current situation is that this laptop without wireless working
> is nearly useless, so I'll do anything in my power to get this
> working. ?My experience in writing drivers is nearly non-existant, and
> my knowledge of wireless devices is zero, so I'm not sure I'd be very
> good at actually figuring out what changes to the code are necessary.
> However, I'll be happy to help out with testing any and all patches
> that are sent my way. ?Just let me know how I can help!
>
> Here's some info about the system I have:
>
> # uname -a
> Linux ohann 2.6.33-ARCH #1 SMP PREEMPT Thu May 13 11:32:37 CEST 2010
> x86_64 Intel(R) Core(TM) i5 CPU M 430 @ 2.27GHz GenuineIntel GNU/Linux
> # lspci -vnn | grep 14e4
> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4312
> 802.11b/g [14e4:4315] (rev 01)
>
> I'm currently running the b43 driver out of compat-wireless
> (2010-06-17 downloaded from
> http://wireless.kernel.org/download/compat-wireless-2.6/, I understand
> this is the latest daily snapshot of the bleeding edge version).
>
> I've attached the output of 'lspci -vvn|grep 43 -A7' and 'dmesg'
>
> Please let me know what else I can do to help out with getting this fixed.

You can Google for b43 & DMA errors. Simply try "pio" option for b43
module. Or switch to newer kernel, which will pick up pio for you
after first DMA error.

-- 
Rafa?
