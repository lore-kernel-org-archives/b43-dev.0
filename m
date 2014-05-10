From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 10 May 2014 19:05:33 +0200
Subject: [RFC][PATCH] b43: drop SSB dependency
In-Reply-To: <20140510183645.04c801f2@wiggum>
References: <1399733088-26607-1-git-send-email-zajec5@gmail.com>
 <20140510171721.54b21a63@wiggum>
 <CACna6rwdXiGwLW=vuo2MMaQHYAWjDwc_W2zufmVbkmpBsMMp-Q@mail.gmail.com>
 <20140510183645.04c801f2@wiggum>
Message-ID: <CACna6rzS8_VCtJhktiX1B+MoM714_j_LRzHK0SzcGNnr1JzBNg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On 10 May 2014 18:36, Michael B?sch <m@bues.ch> wrote:
> On Sat, 10 May 2014 18:12:15 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> On 10 May 2014 17:17, Michael B?sch <m@bues.ch> wrote:
>> > On Sat, 10 May 2014 16:44:48 +0200
>> > Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> >> +config B43_BUSES_BCMA_AND_SSB
>> >> +     bool "BCMA and SSB"
>> >> +     depends on BCMA_POSSIBLE && SSB_POSSIBLE
>> >
>> > I think this needs to be:
>> >
>> >         depends on (BCMA_POSSIBLE && (BCMA = y || BCMA = B43)) && (SSB_POSSIBLE && (SSB = y || SSB = B43))
>> >
>> > to avoid the case where b43 is y and ssb or bcma is m.
>> > Or did I miss something and this is caught elsewhere?
>>
>> Oh, wait, I think I meant B43_BUSES_BCMA_AND_SSB to select BCMA and
>> SSB (so user doesn't have to enable BCMA and SSB on his own). It it
>> the way it's handled without my patch (B43 select-s SSB).
>>
>> I'd like to add
>> select BCMA
>> select SSB
>> , but this won't guarantee BCMA (or SSB) being "y" after choosing B43
>> to "y". Or will it?
>
> I'm currently unsure.
> You probably want to add select SSB to config B43_SSB and the same for B43_BCMA.

I've just tried this, however this will force SSB to be "y" (even if
B43 is "m"). We have to select BCMA/SSB from non-bool configs.
This lead me to the idea of select-ing SSB and BCMA in "B43" depending
on the B43_BCMA and B43_SSB. That should make the trick. I'll test it
and submit V2.
