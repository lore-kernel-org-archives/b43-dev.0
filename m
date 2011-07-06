From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 6 Jul 2011 17:58:10 +0200
Subject: [PATCH 2/2] b43: implement BCMA bus ops
In-Reply-To: <CACna6ryHRNLNPrPam2dAWLysqtFLtE8bcu4A26A4xFj2ui2eNg@mail.gmail.com>
References: <1309902848-3141-1-git-send-email-zajec5@gmail.com>
	<1309902848-3141-2-git-send-email-zajec5@gmail.com>
	<20110706174046.0ae24b6d@maggie>
	<CACna6ryHRNLNPrPam2dAWLysqtFLtE8bcu4A26A4xFj2ui2eNg@mail.gmail.com>
Message-ID: <20110706175810.76749948@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Wed, 6 Jul 2011 17:52:40 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> >> +/* BCMA */
> >> +#ifdef CONFIG_B43_BCMA
> >> +static inline int b43_bus_bcma_bus_may_powerdown(struct b43_bus_dev *dev)
> >> +{
> >> + ? ? return 0; /* bcma_bus_may_powerdown(dev->bdev->bus); */
> >> +}
> >
> > Why is this inline?
> > You can't inline and take a pointer of the function at the same time.
> > (The compiler will workaround this by generating multiple versions of
> > the function, of which at least one is not inline).
> > So remove it, please. Same below...
> 
> I didn't know about any such a limitation.

This is not a limitation. It's just the way it is. You can't take
a reference to an object, that doesn't exist as an independent object.

So in this case, if there are no static callers of your function, the
compiler will simply ignore the inline. However, if there were other static
callers (in addition to the indirect callers through pointer), the compiler
would generate (most likely) an inline version for the static callers
and additionally a non-inline version for the indirect callers.

> Just for sure: did you really mean "pointer of the function"? Cause my
> function is taking pointer of the struct, not pointer of function.

You are taking the pointer to the function (C adds the & for you, so you only
need the function name) and put it into the bus struct.
