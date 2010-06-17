From: neubauten84 <neubauten84@yahoo.it>
Date: Thu, 17 Jun 2010 07:52:33 +0000 (GMT)
Subject: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
In-Reply-To: <AANLkTilk9hbGBYZtUX_4xfv7qykPeoW_aiOMX0aWjQCc@mail.gmail.com>
Message-ID: <28176.8708.qm@web27907.mail.ukl.yahoo.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

That was with 2.6.35-3-generic on Ubuntu Maverick. I tried to upgrade to developing version because of the kernel...I created a b43.conf file to force PIO and this is dmesg:[ ? ?1.936893] b43-pci-bridge 0000:01:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16[ ? ?1.936925] b43-pci-bridge 0000:01:00.0: setting latency timer to 64[ ? 17.433087] b43-phy0: Broadcom 4312 WLAN found (core revision 15)[ ? 17.826326] Registered led device: b43-phy0::tx[ ? 17.826382] Registered led device: b43-phy0::rx[ ? 17.826436] Registered led device: b43-phy0::radio[ ? 19.868920] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)[ ?107.780028] b43-phy1: Broadcom 4312 WLAN found (core revision 15)[ ?107.860102] Registered led device: b43-phy1::tx[ ?107.860732] Registered led device: b43-phy1::rx[ ?107.864373] Registered led device: b43-phy1::radio[ ?108.100332] b43-phy1: Loading firmware version 478.104 (2008-07-01 00:50:23)
The net fell down as always and as always it didn't reconnect anymore..but no more DMA messages..I had to restart module..as always..Tks!
--- Mer 16/6/10, G?bor Stefanik <netrolller.3d@gmail.com> ha scritto:

Da: G?bor Stefanik <netrolller.3d@gmail.com>
Oggetto: Re: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
A: "neubauten84" <neubauten84@yahoo.it>
Cc: b43-dev at lists.infradead.org
Data: Mercoled? 16 giugno 2010, 22:45

AFAIK 2.6.35 should auto-switch to PIO if this happens. Could you post
a log with 2.6.35-rc?

2010/6/16 neubauten84 <neubauten84@yahoo.it>
>
> This is the error:
> [ 2058.872642] b43-phy0 ERROR: Fatal DMA error: 0x00000000, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000
> [ 2058.872671] b43-phy0 ERROR: This device does not support DMA on your system. Please use PIO instead.
> [ 2058.872688] b43-phy0: Controller RESET (DMA error) ...
> [ 2059.100343] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> [ 2064.629197] b43-phy0: Controller restarted
> The machine is a HP Compaq Mini 700EL.
> Tks!
>
> --- Mer 16/6/10, G?bor Stefanik <netrolller.3d@gmail.com> ha scritto:
>
> Da: G?bor Stefanik <netrolller.3d@gmail.com>
> Oggetto: Re: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
> A: "neubauten84" <neubauten84@yahoo.it>
> Cc: b43-dev at lists.infradead.org
> Data: Mercoled? 16 giugno 2010, 16:59
>
> Well, what problems are you having? Do you get DMA errors? Please post
> dmesg output of the failure.
>
> Also, what machine is this card in?
>
> Thanks,
> G?bor
>
> On Wed, Jun 16, 2010 at 12:36 PM, neubauten84 <neubauten84@yahoo.it> wrote:
> >
> > Hi everybody!!
> > I have many problems on running my card with b43 driver...
> > Searching on the net I understood?Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01) were supported, but I never successed on keep it working!!
> > I used older or newer firmware with no changes..I charged b43 with a b43.conf with pio=1 option but nothing..I had problems with any kernel (from2.6.32 to 2.6.35rc2) and with any dists (ubuntu and archlinux).
> > I also found on gentoo wiki a more complete list of supported card: my card seems to be really supported also considering subsystem:?Subsystem: Hewlett-Packard Company Device [103c:1508]
> > Please help me to understend if the problem is on my card or on my config...
> > Tks!!
> > neubauten84
> >
> > _______________________________________________
> > b43-dev mailing list
> > b43-dev at lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/b43-dev
> >
>
>
>
> --
> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>



--
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)



      
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100617/425729bc/attachment.html>
