From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 19 Apr 2013 16:05:43 -0500
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <20130419224622.7b78aa6c@milhouse>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <51718A1F.9070301@lwfinger.net> <20130419205710.73230d79@milhouse>
 <CAOTQ16LgteSkmbF2_C9CZ+zF-8tRVtX-L4ZPbS79YT8FASYzJw@mail.gmail.com>
 <20130419224622.7b78aa6c@milhouse>
Message-ID: <5171B1A7.2000206@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/19/2013 03:46 PM, Michael B?sch wrote:
> On Fri, 19 Apr 2013 22:37:28 +0200
> Thommy Jakobsson <thommyj@gmail.com> wrote:
>
>> As I mentioned in the original post I lowered it to 16 on my system
>> without any problem (and I'm still running like that). I think that
>> was perhaps a bit too low though, didn't do any real measurements but
>> it felt like it cut off every other burst coming in. But I guess that
>> also depends on the target system.
>
> Yes 16 sounds a little low, but 32 could be a good idea to test.

I agree.

Larry
