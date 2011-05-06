From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 7 May 2011 00:32:00 +0200
Subject: Interesting 14e4:4321
In-Reply-To: <BANLkTi=5C5VaJ0rJhJu50PLyP0ssjmozrw@mail.gmail.com>
References: <BANLkTim0usjWr8DqJQk+GQiBHmfgTjey7g@mail.gmail.com>
	<4DC469E1.2040101@hauke-m.de>
	<BANLkTikoDzeujFhBYOeH4_1_d7X0B4pjBw@mail.gmail.com>
	<BANLkTi=5C5VaJ0rJhJu50PLyP0ssjmozrw@mail.gmail.com>
Message-ID: <BANLkTik-fMDUsVHsv7-LYPg2jT2FaXea7g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/5/7 Rafa? Mi?ecki <zajec5@gmail.com>:
> W dniu 6 maja 2011 23:56 u?ytkownik Jonas Gorski
> <jonas.gorski@gmail.com> napisa?:
>> 2011/5/6 Hauke Mehrtens <hauke@hauke-m.de>:
>>> On 05/06/2011 10:40 PM, Rafa? Mi?ecki wrote:
>>>> Swen has found 14e4:4321 in his WRT160N version 1.1. This is quite
>>>> rare and interesting so I wanted to post all info about it :)
>>
>> I didn't know BCM4321s identifying as 14e4:4321 are that seldom - the
>> mini-PCI card in my D-Link DSL-2741B (which is a BCM6358) also does
>> that.
>
> Well, maybe they are well-known in OpeWRT community :) I believe we
> didn't have any reporters here. Unfortunately OpenWRT guys don't
> report their problems, fixes too often.

Well, since this is my only BCM4321, is assumed this is "normal" ;-)

>> Same for the one in my BCM6358 - perhaps SPROM-less devices default to
>> their chip-id as the PCI device id (just wildly guessing)? I also have
>> a second BCM6358 with a BCM4322; same there (no SPROM, DMA doesn't
>> work, and it identifies as 14e4:4322).
>
> Ouch, I didn't know DMA errors also happen for BCM4322. My 14e4:432b
> one was working fine. Maybe this is Mini PCI vs. Mini PCIe? Do you
> know if your cards are PCI or PCIe?

The BCM4322 is directly soldered onto the board, but AFAIK BCM6358
only supports PCI, not PCIe, so it should be a PCI one. The BCM4321
definitely is.

I didn't test whether the BCM4322 actually works with PIO mode, and
the device currently serves as my DSL modem with its stock firmware
(so I can't test it).

Regards
Jonas
