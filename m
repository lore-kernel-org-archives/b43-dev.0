From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 10 Oct 2010 08:39:04 -0700
Subject: Issues with 14e4:4315 on "lenovo ideapad s9" - works only after wl
In-Reply-To: <20101010072158.GV1593@home.pavel.comp>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
Message-ID: <AANLkTinYvvk0mYTgKu2gJziLSEoZnMm491wUbZ4BO_Sf@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/10/10 Paul Fertser <fercerpav@gmail.com>

> On Sat, Oct 09, 2010 at 11:37:37PM +0200, G?bor Stefanik wrote:
> > 2010/10/9 Paul Fertser <fercerpav@gmail.com>:
> > > Indeed there's a fatal dma error there in the non-working case (and
> switching
> > > to PIO doesn't help). But it doesn't happen after wl. Both dmesgs
> attached.
> > >
> >
> > The PhoenixBIOS DMA problem is known not to appear if wl has been
> > loaded beforehand. Be patient, we are working on this. (But good to
> > know the S9 also reproduces it - it's probably less expensive than the
> > S10 for the team to buy.)
>
> Even simply loading wl (without bringing the interface up etc) helps.
> Attached is a parsed mmiotrace of that (hail to nouveau). Alas simply
> replaying it (even with a 5ms delay inbetween writes) doesn't improve
> anything.
>
> And yes, i know remote debugging is usually a pain but i think i can not
> only provide ssh access but also some means to physically power-cycle the
> device (though it'd take some time to find necessary parts).


Before devoting too much effort to debugging, please try a recent
compat-wireless version. There were some changes in b43 that are implemented
there that might not be in your kernel. On my HP Mini 110 netbook, those
fixes got rid of the DMA errors. Will they allow your S9 to cold boot b43?

Larry
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101010/cadc11a1/attachment.html>
