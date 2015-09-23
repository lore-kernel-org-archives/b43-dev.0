From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 23 Sep 2015 17:58:01 +0200
Subject: [PATCH][RFC][RFT] ssb: pick PCMCIA host code support from b43
 driver
In-Reply-To: <CACna6rzSqnJF2uBS-DszR+1PFNwqM8S0WecAE+R4QRJjGYuXYQ@mail.gmail.com>
References: <1442826259-6270-1-git-send-email-zajec5@gmail.com>
 <20150921182000.6d89445d@wiggum>
 <CACna6rzSqnJF2uBS-DszR+1PFNwqM8S0WecAE+R4QRJjGYuXYQ@mail.gmail.com>
Message-ID: <20150923175801.69076f31@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Larry Finger <larry.finger@lwfinger.net>, Hauke Mehrtens <hauke@hauke-m.de>, b43-dev <b43-dev@lists.infradead.org>

On Wed, 23 Sep 2015 12:02:48 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> On 21 September 2015 at 18:20, Michael B?sch <m@bues.ch> wrote:
> > On Mon, 21 Sep 2015 11:04:19 +0200
> > Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> >> @@ -1464,6 +1463,12 @@ static int __init ssb_modinit(void)
> >>               /* don't fail SSB init because of this */
> >>               err = 0;
> >>       }
> >> +     err = ssb_host_pcmcia_init();
> >> +     if (err) {
> >> +             ssb_err("PCMCIA host initialization failed\n");
> >> +             /* don't fail SSB init because of this */
> >
> > Why not? What's the point of not failing here?
> 
> I just copied the logic from few lines above where we handle PCI init.
> I guess the point was to support other host devices even is PCI host
> registration fails.


Ah I misread it. This is at modinit time. That might make sense then.


> >> +static const struct pcmcia_device_id ssb_host_pcmcia_tbl[] = {
> >> +     PCMCIA_DEVICE_MANF_CARD(0x2D0, 0x448),
> >> +     PCMCIA_DEVICE_MANF_CARD(0x2D0, 0x476),
> >> +     PCMCIA_DEVICE_NULL,
> >> +};
> >
> > This doesn't belong into ssb'c pcmcia.c, IMO.
> > It should be in a new file called b43_pcmcia_bridge.c, just like we have
> > b43_pci_bridge.c.
> > The bridge code technically (also for pci) doesn't belong into ssb. But
> > it makes kconfig simpler.
> 
> This is something I don't understand. This PCI bridge was also always
> confusing me.
> Why do we want a separated file for that? What's wrong with having 1
> file for host (PCI/PCMCIA) driver (probe and remove functions) *and*
> ssb initialization?


Because that's not ssb code. These are device IDs for b43 devices.
We just keep it in ssb to make module handling easier.
Ssb also runs non-b43 devices.
Think of it like PCI IDs that belong into the driver and not the PCI
subsystem.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150923/850066a7/attachment.sig>
