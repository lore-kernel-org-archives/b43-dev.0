From: Michael Buesch <mb@bu3sch.de>
Date: Fri, 2 Apr 2010 08:28:03 +0100
Subject: [PATCH] b43: N-PHY: fix copy&paste typo
In-Reply-To: <m2y2e59e6971004011605oc44de860q87948992252fbac2@mail.gmail.com>
References: <1270156270-7550-2-git-send-email-zajec5@gmail.com>
	<m2y2e59e6971004011605oc44de860q87948992252fbac2@mail.gmail.com>
Message-ID: <201004020928.03438.mb@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "richardvoigt@gmail.com" <richardvoigt@gmail.com>
Cc: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, Myhailo Danylenko <isbear@ukrpost.net>

On Friday 02 April 2010 01:05:22 richardvoigt at gmail.com wrote:
> Does anybody else think all the magic numbers make this code hard to understand?

Not at all. These are perfectly valid decimal numbers.
In my country you learn them in first class at school.

Seriously. What should we do?
#define NTAB_OFFSET_THAT_IS_FIFTEEN	15
No!

And btw, I'm pretty sure that broadcom also opencodes lots of these offsets
and values in their code. And that often is a sane thing to do. Creating
hundred thousands of defines that nobody understands is not a sane solution, either.

> 2010/4/1 Rafa? Mi?ecki <zajec5@gmail.com>:
> > Reported-by: Myhailo Danylenko <isbear@ukrpost.net>
> > Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> > ---
> >  drivers/net/wireless/b43/phy_n.c |    2 +-
> >  1 files changed, 1 insertions(+), 1 deletions(-)
> >
> > diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
> > index 6fd140a..2ae2445 100644
> > --- a/drivers/net/wireless/b43/phy_n.c
> > +++ b/drivers/net/wireless/b43/phy_n.c
> > @@ -2790,7 +2790,7 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
> >                        }
> >                        b43_ntab_write_bulk(dev, B43_NTAB16(15, 88), 4,
> >                                                buffer);
> > -                       b43_ntab_write_bulk(dev, B43_NTAB16(15, 101), 2,
> > +                       b43_ntab_read_bulk(dev, B43_NTAB16(15, 101), 2,
> >                                                buffer);
> >                        b43_ntab_write_bulk(dev, B43_NTAB16(15, 85), 2,
> >                                                buffer);
> > --
> > 1.6.4.2
> >
> >
> > _______________________________________________
> > b43-dev mailing list
> > b43-dev at lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/b43-dev
> >
> 

-- 
Greetings, Michael.
