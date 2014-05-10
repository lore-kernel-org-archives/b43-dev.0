From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 10 May 2014 19:27:26 +0200
Subject: [RFC][PATCH] b43: drop SSB dependency
In-Reply-To: <CACna6rzS8_VCtJhktiX1B+MoM714_j_LRzHK0SzcGNnr1JzBNg@mail.gmail.com>
References: <1399733088-26607-1-git-send-email-zajec5@gmail.com>
 <20140510171721.54b21a63@wiggum>
 <CACna6rwdXiGwLW=vuo2MMaQHYAWjDwc_W2zufmVbkmpBsMMp-Q@mail.gmail.com>
 <20140510183645.04c801f2@wiggum>
 <CACna6rzS8_VCtJhktiX1B+MoM714_j_LRzHK0SzcGNnr1JzBNg@mail.gmail.com>
Message-ID: <20140510192726.5e0301df@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On Sat, 10 May 2014 19:05:33 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> > I'm currently unsure.
> > You probably want to add select SSB to config B43_SSB and the same for B43_BCMA.
> 
> I've just tried this, however this will force SSB to be "y" (even if
> B43 is "m"). We have to select BCMA/SSB from non-bool configs.

Hm, OK makes sense.

> This lead me to the idea of select-ing SSB and BCMA in "B43" depending
> on the B43_BCMA and B43_SSB. That should make the trick. I'll test it
> and submit V2.

Could work, if you drop the unnecessary B43 dependency in those options.


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
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140510/15f5ed7d/attachment.sig>
