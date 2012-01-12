From: John W. Linville <linville@tuxdriver.com>
Date: Thu, 12 Jan 2012 11:17:20 -0500
Subject: [PATCH] b43: add default option to avoid duplicating device
 support with brcmsmac
In-Reply-To: <CACna6rxffpPhYVqKNttu79JET=NkBP4NrAayywQHWcj=mw=T9A@mail.gmail.com>
References: <1326315180-29398-1-git-send-email-linville@tuxdriver.com>
 <CACna6rxffpPhYVqKNttu79JET=NkBP4NrAayywQHWcj=mw=T9A@mail.gmail.com>
Message-ID: <20120112161720.GI11093@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

On Thu, Jan 12, 2012 at 05:11:50PM +0100, Rafa? Mi?ecki wrote:
> 2012/1/11 John W. Linville <linville@tuxdriver.com>:
> > +config B43_BCMA_EXTRA
> > + ? ? ? bool "Support for devices also supported by brcmsmac"
> > + ? ? ? depends on B43_BCMA
> > + ? ? ? default n
> > +
> 
> Is this really *the* solution? I wonder if we can do whatever you're
> trying to do in a better way? To let final users try both drivers
> without recompiling kernel?

Saying "y" would let users try both drivers.  That is up to the
distros or other kernel builders to choose.

At present, they have no choice but to let the two drivers race to
see who gets loaded first or whatever.  I imagine that some would
prefer to have an option that prevents that.

> The description also isn't saying too much. I can't imagine anyone
> taking decision advisedly other than "n, as it's the default". On
> other hand, what should we put here? The whole comparison of drivers?
> Can be hard, but I really think there should be more info.

More info could be put in a "---help---" section.  The summary line
could be different as well, if you can think of a better way to
describe the issue.  I am open to suggestions.

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
