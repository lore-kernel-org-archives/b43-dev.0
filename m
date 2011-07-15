From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 16 Jul 2011 01:51:36 +0200
Subject: Enabling PLL timeout on BCMA bus
In-Reply-To: <CACna6rwX55Vrj2RdxsPKrCZhS=m9ZjnN10Rom1g6sU7Y4uypyA@mail.gmail.com>
References: <CACna6rwX55Vrj2RdxsPKrCZhS=m9ZjnN10Rom1g6sU7Y4uypyA@mail.gmail.com>
Message-ID: <CACna6rxHbAM-q85sGePr29y4ccPaUidL+N0XEjkLt5HhbtXuAw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 16 lipca 2011 00:34 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> While performing core init on BCMA bus we need to enable PLL. This is
> performed by wl, but fails with bcma & b43 with timeout.
>
> I've compare MMIO dumps of both and ugly-hacked bcma to do everything
> in exactly the same order. The problem is is didn't help.
>
>
> ***** wl *****
> First enable HT (0x2):
> ?read32 0xfaafc1e0 -> 0x00010000
> write32 0xfaafc1e0 <- 0x00010002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x030b0002 <- 0x300 already enabled
>
> Now enable PLL for 0x3 (0x300)
> ?read32 0xfaafc1e0 -> 0x030b0002
> write32 0xfaafc1e0 <- 0x030b0302
> ?read32 0xfaafc1e0 -> 0x030b0302
> ?read32 0xfaafc1e0 -> 0x030b0302
>
>
> ***** bcma & b43 *****
> First enable HT (0x2):
> ?read32 0xfaafc1e0 -> 0x00050000 <- 0x00040000 == BP_ON_ALP
> write32 0xfaafc1e0 <- 0x00050002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x000b0002 <- 0x300 not enabled by def
>
> Now enable PLL for 0x3 (0x300)
> ?read32 0xfaafc1e0 -> 0x000b0002
> write32 0xfaafc1e0 <- 0x000b0302
> ?read32 0xfaafc1e0 -> 0x000b0002 <- 0x300 ignored?
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> (and so on...)
>
>
> The only difference seems be be initial state of 0x1e0. Of course both
> situations are from cold boot.
> wl: 0x00010000
> bcma: 0x00050000
> HAVEALP 0x00010000 /* ALP available */
> BP_ON_ALP ? ? ? 0x00040000 /* RO: running on ALP clock */
>
> In attached dumps you can see init path is exactly the same for wl and bcma&b43.
>
> Does anyone have any idea, why bcma&b43 can not enable PLL (0x300
> bits)? Why is it enabled by default when wl does use the bus?

I've started tracking 0x1e0 register during bcma init and noticed that
at the very beginning it is equal to 0x10000, just like in case of wl
when it starts it's ops on 0x1e0.

When using bcma 0x1e0 changes from default 0x10000 after
1) Reading SPROM
2) Resetting core

So I've temporarily disabled both. This resulted in 0x10000 value at
the beginning of enabling PLL, but didn't really help:
 read32 0xfaafc1e0 -> 0x00010000
write32 0xfaafc1e0 <- 0x00010002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x000b0002

 read32 0xfaafc1e0 -> 0x000b0002
write32 0xfaafc1e0 <- 0x000b0302
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
(... and so on)

-- 
Rafa?
