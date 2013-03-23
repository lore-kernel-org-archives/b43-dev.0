From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 23 Mar 2013 19:01:26 +0100
Subject: [PATCH] b43: A fix for DMA transmission sequence errors
In-Reply-To: <20130323184357.6b4f2037@milhouse>
References: <514a07c7.ZQz6MhmMaq58WJlA%Larry.Finger@lwfinger.net>
 <CACna6rz75ecyy5CdaJfi=dRjrTh_Rg793Ub+-0QdVnCZNyV+Lg@mail.gmail.com>
 <20130323113517.01906b0b@milhouse>
 <20130323155355.0a1752f5@laptop.homenet>
 <CACna6rx+sCrg1fB-6XfYcSWczu6Mtuvz75FOHbbx3YdPe+U5sw@mail.gmail.com>
 <CACna6rwAOgvbd6z2ckZ6uW=8wOw-+YMT_wc4FC+ZgAaAhCgpwQ@mail.gmail.com>
 <20130323184357.6b4f2037@milhouse>
Message-ID: <CACna6rze+5YaU3Ec2iEnP7G_gT-bYVwSiefSSFioK4E9dYZxoQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: Chris Vine <chris@cvine.freeserve.co.uk>, isedev@gmail.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>

2013/3/23 Michael B?sch <m@bues.ch>:
> On Sat, 23 Mar 2013 18:28:33 +0100
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> > Could you try changing
>> > B43_DMA32_RINGMEMSIZE
>> > from 4096 to 8192 in dma.h?
>>
>> Blah, ignore that. You're card has 64b DMA, not 32b :|
>
> You could try playing with the constants anyway. Maybe something
> interesting happens.

Won't hurt.

Chris, isedev: can you try replacing B43_DMA64_RINGMEMSIZE with some
higher values than 8192?

8192 is 0x2000, so please try 0x4000 or even 0x8000

-- 
Rafa?
