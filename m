From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Fri, 6 May 2011 23:56:27 +0200
Subject: Interesting 14e4:4321
In-Reply-To: <4DC469E1.2040101@hauke-m.de>
References: <BANLkTim0usjWr8DqJQk+GQiBHmfgTjey7g@mail.gmail.com>
	<4DC469E1.2040101@hauke-m.de>
Message-ID: <BANLkTikoDzeujFhBYOeH4_1_d7X0B4pjBw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/5/6 Hauke Mehrtens <hauke@hauke-m.de>:
> On 05/06/2011 10:40 PM, Rafa? Mi?ecki wrote:
>> Swen has found 14e4:4321 in his WRT160N version 1.1. This is quite
>> rare and interesting so I wanted to post all info about it :)

I didn't know BCM4321s identifying as 14e4:4321 are that seldom - the
mini-PCI card in my D-Link DSL-2741B (which is a BCM6358) also does
that.

>> Unfortunately this is one another BCM4321 with DMA not working. I
>> really need to focus on this after fixing LP-PHY and adding BCMA.

Same here, dma is a no go (I have to use pio).

> The SPROM is not stored on the pci card but in the nvram on the flash
> chip of the device. This is now correctly read out in OpenWrt and we
> will send some patches to mainline soon. [1] [2]

Same for the one in my BCM6358 - perhaps SPROM-less devices default to
their chip-id as the PCI device id (just wildly guessing)? I also have
a second BCM6358 with a BCM4322; same there (no SPROM, DMA doesn't
work, and it identifies as 14e4:4322).

Regards
Jonas

P.S: I also get these 0x0F90 clear failures ;)
