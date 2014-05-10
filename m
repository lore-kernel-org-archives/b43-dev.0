From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 10 May 2014 18:36:45 +0200
Subject: [RFC][PATCH] b43: drop SSB dependency
In-Reply-To: <CACna6rwdXiGwLW=vuo2MMaQHYAWjDwc_W2zufmVbkmpBsMMp-Q@mail.gmail.com>
References: <1399733088-26607-1-git-send-email-zajec5@gmail.com>
 <20140510171721.54b21a63@wiggum>
 <CACna6rwdXiGwLW=vuo2MMaQHYAWjDwc_W2zufmVbkmpBsMMp-Q@mail.gmail.com>
Message-ID: <20140510183645.04c801f2@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On Sat, 10 May 2014 18:12:15 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> On 10 May 2014 17:17, Michael B?sch <m@bues.ch> wrote:
> > On Sat, 10 May 2014 16:44:48 +0200
> > Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> >> +config B43_BUSES_BCMA_AND_SSB
> >> +     bool "BCMA and SSB"
> >> +     depends on BCMA_POSSIBLE && SSB_POSSIBLE
> >
> > I think this needs to be:
> >
> >         depends on (BCMA_POSSIBLE && (BCMA = y || BCMA = B43)) && (SSB_POSSIBLE && (SSB = y || SSB = B43))
> >
> > to avoid the case where b43 is y and ssb or bcma is m.
> > Or did I miss something and this is caught elsewhere?
> 
> Oh, wait, I think I meant B43_BUSES_BCMA_AND_SSB to select BCMA and
> SSB (so user doesn't have to enable BCMA and SSB on his own). It it
> the way it's handled without my patch (B43 select-s SSB).
> 
> I'd like to add
> select BCMA
> select SSB
> , but this won't guarantee BCMA (or SSB) being "y" after choosing B43
> to "y". Or will it?

I'm currently unsure.
You probably want to add select SSB to config B43_SSB and the same for B43_BCMA.

> Any idea how to handle that?

The (SSB = y || SSB = B43) dependency is supposed to handle that.
And it was required in the past. But maybe it's not required anymore
due to other changes. I'm not sure.


-- 
Michael.

----
Please use PGP/GPG encryption.
Key-ID: F532BE1D908D8B0E
--------
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140510/bea360a5/attachment-0001.sig>
