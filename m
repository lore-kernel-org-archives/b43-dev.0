From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 16 Jul 2011 00:34:59 +0200
Subject: Enabling PLL timeout on BCMA bus
Message-ID: <CACna6rwX55Vrj2RdxsPKrCZhS=m9ZjnN10Rom1g6sU7Y4uypyA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

While performing core init on BCMA bus we need to enable PLL. This is
performed by wl, but fails with bcma & b43 with timeout.

I've compare MMIO dumps of both and ugly-hacked bcma to do everything
in exactly the same order. The problem is is didn't help.


***** wl *****
First enable HT (0x2):
 read32 0xfaafc1e0 -> 0x00010000
write32 0xfaafc1e0 <- 0x00010002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x030b0002 <- 0x300 already enabled

Now enable PLL for 0x3 (0x300)
 read32 0xfaafc1e0 -> 0x030b0002
write32 0xfaafc1e0 <- 0x030b0302
 read32 0xfaafc1e0 -> 0x030b0302
 read32 0xfaafc1e0 -> 0x030b0302


***** bcma & b43 *****
First enable HT (0x2):
 read32 0xfaafc1e0 -> 0x00050000 <- 0x00040000 == BP_ON_ALP
write32 0xfaafc1e0 <- 0x00050002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x00050002
 read32 0xfaafc1e0 -> 0x000b0002 <- 0x300 not enabled by def

Now enable PLL for 0x3 (0x300)
 read32 0xfaafc1e0 -> 0x000b0002
write32 0xfaafc1e0 <- 0x000b0302
 read32 0xfaafc1e0 -> 0x000b0002 <- 0x300 ignored?
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
 read32 0xfaafc1e0 -> 0x000b0002
(and so on...)


The only difference seems be be initial state of 0x1e0. Of course both
situations are from cold boot.
wl: 0x00010000
bcma: 0x00050000
HAVEALP	0x00010000 /* ALP available */
BP_ON_ALP	0x00040000 /* RO: running on ALP clock */

In attached dumps you can see init path is exactly the same for wl and bcma&b43.

Does anyone have any idea, why bcma&b43 can not enable PLL (0x300
bits)? Why is it enabled by default when wl does use the bus?

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: dump-wl.txt.b43
Type: application/octet-stream
Size: 2969 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110716/510eacf9/attachment.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: dump-b43.txt.b43
Type: application/octet-stream
Size: 3464 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110716/510eacf9/attachment-0001.obj>
