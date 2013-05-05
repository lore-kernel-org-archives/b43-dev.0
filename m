From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 5 May 2013 17:34:18 +0200
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
Message-ID: <CACna6rwc-XPXJcbk=oEJh=+nTaQrV3-UPwfsNODQpB9gtkktkg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thommy Jakobsson <thommyj@gmail.com>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, m@bues.ch, piotras@gmail.com, Larry.Finger@lwfinger.net

2013/5/5 Rafa? Mi?ecki <zajec5@gmail.com>:
> 2013/4/23 Thommy Jakobsson <thommyj@gmail.com>:
>> Add handling of rx descriptor underflow. This fixes a fault that could
>> happen on slow machines, where data is received faster than the CPU can
>> handle. In such a case the device will use up all rx descriptors and
>> refuse to send any more data before confirming that it is ok. This
>> patch enables necessary interrupt to discover such a situation and will
>> handle them by dropping everything in the ring buffer.
>
> Thommy: does it mean firmware actually ignores what we write to the
> B43_DMA64_RXINDEX (recently renamed to the B43_DMA64_RXSTOPINDEX)? Is
> our set_current_rxslot and op64_set_current_rxslot (same for 32bit
> version) useless in this situation?

I've done some tests with this register. First I've added simple debugging:

[  326.496207] [DBG] old current:0      new current:1
[  326.496215] [DBG] reading slot 0
[  326.496237] [DBG] writing stop slot 1

[  326.921657] [DBG] old current:1      new current:2
[  326.921665] [DBG] reading slot 1
[  326.921691] [DBG] writing stop slot 2

[  326.931333] [DBG] old current:2      new current:3
[  326.931339] [DBG] reading slot 2
[  326.931357] [DBG] writing stop slot 3

[  327.152025] [DBG] old current:3      new current:4
[  327.152034] [DBG] reading slot 3
[  327.152052] [DBG] writing stop slot 4

[  327.217176] [DBG] old current:4      new current:5
[  327.217182] [DBG] reading slot 4
[  327.217206] [DBG] writing stop slot 5

[  327.224976] [DBG] old current:5      new current:6
[  327.224982] [DBG] reading slot 5
[  327.224997] [DBG] writing stop slot 6

[  327.319582] [DBG] old current:6      new current:7
[  327.319590] [DBG] reading slot 6
[  327.319619] [DBG] writing stop slot 7

[  330.450532] [DBG] old current:7      new current:0
[  330.450540] [DBG] reading slot 7
[  330.450559] [DBG] writing stop slot 0

[  330.889299] [DBG] old current:0      new current:1
[  330.889306] [DBG] reading slot 0
[  330.889329] [DBG] writing stop slot 1

I'm not sure how does it work. If we write 1 to RXSTOPINDEX it means
firmware should not use slot "1", right? But then it'll IRQ and
"current" will be 2 meaning there is a packet on slot 1.
So I'm not sure anymore meaning of that index register.

I've also done some extra experiment in b43_dma_rx and changed
set_current call to the one with hardcoded 4:
ops->set_current_rxslot(ring, 4);
There goes a log from that experiment:

[  659.557475] [DBG] old current:0      new current:1
[  659.557483] [DBG] reading slot 0
[  659.557503] [DBG] writing stop slot 4

[  659.929288] [DBG] old current:1      new current:2
[  659.929295] [DBG] reading slot 1
[  659.929319] [DBG] writing stop slot 4

[  659.994291] [DBG] old current:2      new current:3
[  659.994296] [DBG] reading slot 2
[  659.994311] [DBG] writing stop slot 4

[  660.125386] [DBG] old current:3      new current:4
[  660.125394] [DBG] reading slot 3
[  660.125421] [DBG] writing stop slot 4

And then RX stalled. It seems this time index register worked as
expected. We wrote "4" to it, so firmware didn't try to use slot 4,
probably waiting for b43 driver dumping that value.

So why that stop index register doesn't work that way in normal
situation? Any ideas?

-- 
Rafa?
