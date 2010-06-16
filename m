From: neubauten84 <neubauten84@yahoo.it>
Date: Wed, 16 Jun 2010 13:05:17 -0700 (PDT)
Subject: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
In-Reply-To: <AANLkTinW0dSKL-6FUX1p-Otm9ywgPO3HAoebrF_-JwOd@mail.gmail.com>
Message-ID: <909205.25725.qm@web27901.mail.ukl.yahoo.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

This is the error:[ 2058.872642] b43-phy0 ERROR: Fatal DMA error: 0x00000000, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000[ 2058.872671] b43-phy0 ERROR: This device does not support DMA on your system. Please use PIO instead.[ 2058.872688] b43-phy0: Controller RESET (DMA error) ...[ 2059.100343] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)[ 2064.629197] b43-phy0: Controller restarted
The machine is a HP Compaq Mini 700EL.Tks!

--- Mer 16/6/10, G?bor Stefanik <netrolller.3d@gmail.com> ha scritto:

Da: G?bor Stefanik <netrolller.3d@gmail.com>
Oggetto: Re: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
A: "neubauten84" <neubauten84@yahoo.it>
Cc: b43-dev at lists.infradead.org
Data: Mercoled? 16 giugno 2010, 16:59

Well, what problems are you having? Do you get DMA errors? Please post
dmesg output of the failure.

Also, what machine is this card in?

Thanks,
G?bor

On Wed, Jun 16, 2010 at 12:36 PM, neubauten84 <neubauten84@yahoo.it> wrote:
>
> Hi everybody!!
> I have many problems on running my card with b43 driver...
> Searching on the net I understood?Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01) were supported, but I never successed on keep it working!!
> I used older or newer firmware with no changes..I charged b43 with a b43.conf with pio=1 option but nothing..I had problems with any kernel (from2.6.32 to 2.6.35rc2) and with any dists (ubuntu and archlinux).
> I also found on gentoo wiki a more complete list of supported card: my card seems to be really supported also considering subsystem:?Subsystem: Hewlett-Packard Company Device [103c:1508]
> Please help me to understend if the problem is on my card or on my config...
> Tks!!
> neubauten84
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



--
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)



      
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100616/6a225c40/attachment.html>
