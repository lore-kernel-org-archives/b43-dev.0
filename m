From: Peter Stuge <peter@stuge.se>
Date: Thu, 21 Apr 2011 04:33:58 +0200
Subject: One more lspci invisible Broadcom card, HP Compaq 6515b
In-Reply-To: <BANLkTikr+akiow_O-THXkos_eHGPKBm5AQ@mail.gmail.com>
References: <BANLkTikr+akiow_O-THXkos_eHGPKBm5AQ@mail.gmail.com>
Message-ID: <20110421023358.7815.qmail@stuge.se>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Rafa? Mi?ecki wrote:
> unitedriders has HP Compaq 6515b which physically has BCM4311 card.
> The problem is lspci does not show his card:
> 00:00.0 Host bridge: ATI Technologies Inc RS690 Host Bridge
..
> 00:14.4 PCI bridge: ATI Technologies Inc SBx00 PCI to PCI Bridge
..

> Of course this is HP notebook with WiFi blacklist in BIOS, so
> putting another card is not a option.

The whitelist could always be modified.


> I asked unitedriders for putting his BCM4311 in another machine. He
> has access to some Sony VAIO, but card slot is different (I guess
> HP has mini PCI, Sony has mini PCIe).

It's completely possible that the HP has miniPCI, which would then be
behind the SB600. But it's a little stupid not to have miniPCIe when
the RS690 does support it.


> Do you have any ideas other than faulty port or card?

Sure, BIOS can fail at setting up decoding and bridges or the kernel
can fail at following the setup.

The BIOS can of course also do this selectively and/or on purpose,
e.g. I could expect that if a wlan card is not in the whitelist.


> unitedriders mentioned his HP has so called "touch sensive" wlan
> switch, but it's unlikely it totally disables PCI port.

Agree.


This platform (RS690+SB600) is supported by coreboot. It would make a
nice exercise for anyone interested in firmware development to create
a coreboot port for his machine. (It's still a bit of work though.)


//Peter
