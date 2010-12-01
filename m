From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 1 Dec 2010 20:55:52 +0100
Subject: Request for bisecting DMA partial fix
In-Reply-To: <20101126173952.GC2370@markov>
References: <AANLkTikLFuFd=155fO-VScNh7XKtZCMcR0DTo1V4-hHu@mail.gmail.com>
	<AANLkTintrxtNDKJRPiNXAvr2XX3Fa5ZNBqwca59d9GfV@mail.gmail.com>
	<20101126173952.GC2370@markov>
Message-ID: <AANLkTi=g3bXnGiqC3zH6gFVi8tLhoiHYbDnhWOXptRk7@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 26 listopada 2010 18:39 u?ytkownik Eric Garrido
<eric@ericgar.com> napisa?:
> On 2010-11-25 10:22am, Rafa? Mi?ecki wrote:
>> W dniu 8 listopada 2010 20:42 u?ytkownik Rafa? Mi?ecki
>> <zajec5@gmail.com> napisa?:
>> > We are quite sure that some patch than gone into mainline between
>> > 2.6.34 and 2.6.35 partially fixed DMA errors. It was not b43-specific
>> > fix and it probably wasn't commited via wireless-testing.
>> >
>> > The problem is this fix was only partial, under high transfer this is
>> > still noticeable. I think the shortest way to understand this and fix
>> > it totally is to find commit that partially fixed DMA errors.
>> >
>> > So we need someone with:
>> > 1) Machine that throws DMA errors on 2.6.34 and works noticeably
>> > better with 2.6.35
>> > 2) Time to bisect commit
>> > 3) Basic kernel building skills (however I believe we can help in case
>> > of problems)
>> >
>> > I believe bisecting has to be done on Linus's tree, between mentioned kernels.
>> >
>> > So is there anyone around who could handle this task?
>>
>> Anyone? Please?
>
> I have 2) and 3), plus have a Lenovo S10 that I haven't used in months
> that appears (based on a GP and some research) to be susceptible to
> this issue. In fact, I think I hit this issue and started using wl
> oh so long ago (sorry!).
>
> I'm away for the NA holiday, but I can try to verify I have 1) and
> then poke at this on Sunday. I'll let you know.

Ping? :)

-- 
Rafa?
