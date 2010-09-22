From: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 22 Sep 2010 12:07:03 +0100
Subject: [PATCH] b43/b43legacy - Credit Broadcom with enabling the
	development of the drivers
In-Reply-To: <AANLkTikMZQ6G0=hLAdehinM1LNo7NzVVEE4xbK6fU0yP@mail.gmail.com>
References: <1284921651.24835.11.camel@i7.infradead.org>
	<AANLkTinoe86gtsMJMJ-jitj3yHo35FBdyiqbPKuUAe_R@mail.gmail.com>
	<AANLkTi=sbh-y73+VuEWQz8ni47zaeBXCBRQGUH=0j_Zr@mail.gmail.com>
	<4C97AFCE.3040806@wetwork.net>
	<AANLkTinEY2XeoA1WN8GRTdAcSebe+LUb-N9u7-zz_bpe@mail.gmail.com>
	<4C97D0B2.9080704@wetwork.net>
	<AANLkTim-69if8MdUtDnE+sDU0hCMUed6WGaPURCAy5W4@mail.gmail.com>
	<4C97D76F.1040601@wetwork.net> <20100921040122.17974.qmail@stuge.se>
	<AANLkTincBvTWQ=7_xHsdmg8E1q7DKstwkOLERm_SRKY0@mail.gmail.com>
	<AANLkTikMZQ6G0=hLAdehinM1LNo7NzVVEE4xbK6fU0yP@mail.gmail.com>
Message-ID: <1285153623.4498.71.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 2010-09-21 at 15:38 -0700, Larry Finger wrote:
> 
> NACK on the patch that started this thread. Broadcom got caught
> violating the GPL and had to provide the binary drivers to compensate
> for that.

Um, that makes *absolutely* no sense. Providing a binary driver doesn't
satisfy any GPL requirements at all, and can *never* do so.

The GPL *never* requires you to distribute binaries. It merely states
(for covered works) that *if* you distribute binaries, you must also
distribute the corresponding source code.

The GPL is not relevant to this particular conversation.

Broadcom provided binary drivers (for Windows, Mac OS *and* Linux)
because without them, they couldn't sell their hardware. Who buys
hardware they can't use?

>  They did not provide anything voluntarily. 

Of course they provided the binary drivers voluntarily. Nobody brings a
product to market without drivers.

I think you may have missed the point.

Broadcom are scared of being seen to 'enable' the open source drivers
which handle regulatory requirements in software. They're *so* scared of
this that they don't even want to make the older firmware available, in
binary form, under a licence which allows it to be freely distributed on
its own... because that *might* be usable under Linux with the open
source driver.

But they seem to have missed the point that by designing the hardware
that way and shipping their binary drivers which show us how it works,
they have *already* enabled those drivers in a much more significant
way.

And the sky *hasn't* fallen on their head.

The point in the patch is to make it abundantly clear that Broadcom were
instrumental, even if unintentionally so, in the development of the open
source driver that they're so scared of. And thus *hopefully* go some
way to reducing their paranoia, and reducing the internal credibility of
their crack-inspired lawyers who think the world will end if they
'enable' the open source driver in any way whatsoever.

-- 
dwmw2
