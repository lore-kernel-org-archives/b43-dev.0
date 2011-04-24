From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 24 Apr 2011 21:38:57 +0200
Subject: Status of support for Broadcom 14e4:4329 (Cardbus)
In-Reply-To: <60EDBC04-4433-42CD-8209-66324B8044DE@googlemail.com>
References: <60EDBC04-4433-42CD-8209-66324B8044DE@googlemail.com>
Message-ID: <BANLkTimO=TaEDZ41eHm14y1a8PVbjx4q_g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tobias Netzel <tobias.netzel@googlemail.com>, b43-dev <b43-dev@lists.infradead.org>
Cc: linux-wireless@vger.kernel.org

Hi,

2011/4/24 Tobias Netzel <tobias.netzel@googlemail.com>:
> I've got that Broadcom BCM4321 based CardBus device (14e4:4329) and I'd like
> to use it with a PowerBook (PowerPC) and linux 2.6.38 . So far it doesn't
> seem to work out the box. The card is being recognized and the b43 driver is
> loaded but scanning doesn't give any results (although there should be) and
> connecting doesn't work either.
> Upon ifdown I get a message about DMA errors related to that card. Do I have
> to switch the card to PIO mode? How do I do that?
> Will there be improved support for that card in linux 2.6.39 ? And in the
> future?
> (BTW: Booting that very same linux installation on another PowerBook with a
> Broadcom-based 802.11g Apple AirPort-Card does work without any problems.)

1) Please write to b43 ML for better support (you can use both lists)
2) Read http://wireless.kernel.org/en/users/Drivers/b43
3) From wiki: 2.6.38 has experimental support only, .39 is suggested
4) From wiki: BCM4321 sometimes does not work with DMA
5) To use pio: "rmmod b43; modprobe b43 pio=1"

I'm going to fix DMA errors on BCM4321, but I've some another things
to fix first. Observe b43 ML or wiki page for news.

-- 
Rafa?
