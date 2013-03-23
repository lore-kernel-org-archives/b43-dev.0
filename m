From: ISE Development <isedev@gmail.com>
Date: Sat, 23 Mar 2013 19:20:26 +0100
Subject: [PATCH] b43: A fix for DMA transmission sequence errors
In-Reply-To: <CACna6rze+5YaU3Ec2iEnP7G_gT-bYVwSiefSSFioK4E9dYZxoQ@mail.gmail.com>
References: <514a07c7.ZQz6MhmMaq58WJlA%Larry.Finger@lwfinger.net>
 <20130323184357.6b4f2037@milhouse>
 <CACna6rze+5YaU3Ec2iEnP7G_gT-bYVwSiefSSFioK4E9dYZxoQ@mail.gmail.com>
Message-ID: <3155250.mfr6joo93v@wks001.ise.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Michael =?ISO-8859-1?Q?B=FCsch?= <m@bues.ch>, Chris Vine <chris@cvine.freeserve.co.uk>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>

On Saturday 23 Mar 2013 19:01:26 Rafa? Mi?ecki wrote:
> 2013/3/23 Michael B?sch <m@bues.ch>:
> > On Sat, 23 Mar 2013 18:28:33 +0100
> > 
> > Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> >> > Could you try changing
> >> > B43_DMA32_RINGMEMSIZE
> >> > from 4096 to 8192 in dma.h?
> >> 
> >> Blah, ignore that. You're card has 64b DMA, not 32b :|
> > 
> > You could try playing with the constants anyway. Maybe something
> > interesting happens.
> 
> Won't hurt.
> 
> Chris, isedev: can you try replacing B43_DMA64_RINGMEMSIZE with some
> higher values than 8192?
> 
> 8192 is 0x2000, so please try 0x4000 or even 0x8000

Tried 16384 and 32768. No difference observed (same sequence of errors).

--
-- isedev
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 490 bytes
Desc: This is a digitally signed message part.
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130323/abb17d0b/attachment.sig>
