From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 21 Sep 2015 18:20:00 +0200
Subject: [PATCH][RFC][RFT] ssb: pick PCMCIA host code support from b43
 driver
In-Reply-To: <1442826259-6270-1-git-send-email-zajec5@gmail.com>
References: <1442826259-6270-1-git-send-email-zajec5@gmail.com>
Message-ID: <20150921182000.6d89445d@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, Larry Finger <larry.finger@lwfinger.net>, Hauke Mehrtens <hauke@hauke-m.de>, b43-dev@lists.infradead.org

On Mon, 21 Sep 2015 11:04:19 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> ssb bus can be found on various "host" devices like PCI/PCMCIA/SDIO.
> Every ssb bus contains cores AKA devices.
> The main idea is to have ssb driver scan/initialize bus and register
> ready-to-use cores. This way ssb drivers can operate on a single core
> mostly ignoring underlaying details.
> 
> For some reason PCMCIA support was split between ssb and b43. We got
> PCMCIA host device probing in b43, then bus scanning in ssb and then
> wireless core probing back in b43. The truth is it's very unlikely we
> will ever see PCMCIA ssb device with no 802.11 core but I still don't
> see any advantage of the current architecture.

The idea basically was that b43 is the only user of that code. So the
code was put there.

> With proposed change we get the same functionality with a simpler
> architecture, less Kconfig symbols, one killed EXPORT and hopefully
> cleaner b43. Since b43 supports both: ssb & bcma I prefer to keep ssb
> specific code in ssb driver.

I agree that this makes the architecture a bit cleaner. So this
basically looks good. I currently can't test it, because I don't have
that device here right now. In two weeks or so I'll probably be able to
test it, though.


> @@ -1464,6 +1463,12 @@ static int __init ssb_modinit(void)
>  		/* don't fail SSB init because of this */
>  		err = 0;
>  	}
> +	err = ssb_host_pcmcia_init();
> +	if (err) {
> +		ssb_err("PCMCIA host initialization failed\n");
> +		/* don't fail SSB init because of this */

Why not? What's the point of not failing here?

> +		err = 0;
> +	}


> +static const struct pcmcia_device_id ssb_host_pcmcia_tbl[] = {
> +	PCMCIA_DEVICE_MANF_CARD(0x2D0, 0x448),
> +	PCMCIA_DEVICE_MANF_CARD(0x2D0, 0x476),
> +	PCMCIA_DEVICE_NULL,
> +};

This doesn't belong into ssb'c pcmcia.c, IMO.
It should be in a new file called b43_pcmcia_bridge.c, just like we have
b43_pci_bridge.c.
The bridge code technically (also for pci) doesn't belong into ssb. But
it makes kconfig simpler.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150921/1cb46e15/attachment.sig>
