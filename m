From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 25 Nov 2010 10:22:22 +0100
Subject: Request for bisecting DMA partial fix
In-Reply-To: <AANLkTikLFuFd=155fO-VScNh7XKtZCMcR0DTo1V4-hHu@mail.gmail.com>
References: <AANLkTikLFuFd=155fO-VScNh7XKtZCMcR0DTo1V4-hHu@mail.gmail.com>
Message-ID: <AANLkTintrxtNDKJRPiNXAvr2XX3Fa5ZNBqwca59d9GfV@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 8 listopada 2010 20:42 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> We are quite sure that some patch than gone into mainline between
> 2.6.34 and 2.6.35 partially fixed DMA errors. It was not b43-specific
> fix and it probably wasn't commited via wireless-testing.
>
> The problem is this fix was only partial, under high transfer this is
> still noticeable. I think the shortest way to understand this and fix
> it totally is to find commit that partially fixed DMA errors.
>
> So we need someone with:
> 1) Machine that throws DMA errors on 2.6.34 and works noticeably
> better with 2.6.35
> 2) Time to bisect commit
> 3) Basic kernel building skills (however I believe we can help in case
> of problems)
>
> I believe bisecting has to be done on Linus's tree, between mentioned kernels.
>
> So is there anyone around who could handle this task?

Anyone? Please?

-- 
Rafa?
