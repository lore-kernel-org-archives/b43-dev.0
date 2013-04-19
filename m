From: Thommy Jakobsson <thommyj@gmail.com>
Date: Fri, 19 Apr 2013 22:37:28 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <20130419205710.73230d79@milhouse>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <51718A1F.9070301@lwfinger.net> <20130419205710.73230d79@milhouse>
Message-ID: <CAOTQ16LgteSkmbF2_C9CZ+zF-8tRVtX-L4ZPbS79YT8FASYzJw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

As I mentioned in the original post I lowered it to 16 on my system
without any problem (and I'm still running like that). I think that
was perhaps a bit too low though, didn't do any real measurements but
it felt like it cut off every other burst coming in. But I guess that
also depends on the target system.

//Thommy

On Fri, Apr 19, 2013 at 8:57 PM, Michael B?sch <m@bues.ch> wrote:
> On Fri, 19 Apr 2013 13:17:03 -0500
> Larry Finger <Larry.Finger@lwfinger.net> wrote:
>
>> With this patch, can the number of RX descriptors be reduced back to 64 on your
>> system? I realize it will be be hard to apply with the white space errors and
>> line wraps, but perhaps we will get a clean version soon.
>
> It would be good to lower the number of RX descriptors as low as possible.
> Maybe even lower than 64. We should do more tests on that.
> That certainly could improve performance on low-end devices.
>
> --
> Michael
