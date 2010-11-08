From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Mon, 8 Nov 2010 22:49:40 +0100
Subject: Request for bisecting DMA partial fix
In-Reply-To: <AANLkTikLFuFd=155fO-VScNh7XKtZCMcR0DTo1V4-hHu@mail.gmail.com>
References: <AANLkTikLFuFd=155fO-VScNh7XKtZCMcR0DTo1V4-hHu@mail.gmail.com>
Message-ID: <AANLkTikTuzwHDfT4K5MP3sTBkVSJQpR+EOu07V6kgu7W@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/11/8 Rafa? Mi?ecki <zajec5@gmail.com>:
> HI,
>
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

Well, my functional programming teacher at the university is
experiencing this bug (& resorted to using wl in the meantime -
machine is a Lenovo S10e), but I don't know how well he understands
the Linux kernel (given that it's not written in Haskell). But I'll
write back if I find out anything. In the meantime, keep on searching.

>
> --
> Rafa?
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
