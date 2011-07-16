From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 16 Jul 2011 03:14:30 +0200
Subject: Enabling PLL timeout on BCMA bus
In-Reply-To: <CACna6rxHbAM-q85sGePr29y4ccPaUidL+N0XEjkLt5HhbtXuAw@mail.gmail.com>
References: <CACna6rwX55Vrj2RdxsPKrCZhS=m9ZjnN10Rom1g6sU7Y4uypyA@mail.gmail.com>
	<CACna6rxHbAM-q85sGePr29y4ccPaUidL+N0XEjkLt5HhbtXuAw@mail.gmail.com>
Message-ID: <CACna6rxrwLTrph6gh8HAPziTWCQ2yX7zNpr-dunAWKAhHw-VSA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 16 lipca 2011 01:51 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> W dniu 16 lipca 2011 00:34 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
>> While performing core init on BCMA bus we need to enable PLL. This is
>> performed by wl, but fails with bcma & b43 with timeout.
>>
>> I've compare MMIO dumps of both and ugly-hacked bcma to do everything
>> in exactly the same order. The problem is is didn't help.
>>
>>
>> ***** wl *****
>> First enable HT (0x2):
>> ?read32 0xfaafc1e0 -> 0x00010000
>> write32 0xfaafc1e0 <- 0x00010002
>> ?read32 0xfaafc1e0 -> 0x00050002
>> ?read32 0xfaafc1e0 -> 0x00050002
>> ?read32 0xfaafc1e0 -> 0x030b0002 <- 0x300 already enabled
>>
>> Now enable PLL for 0x3 (0x300)
>> ?read32 0xfaafc1e0 -> 0x030b0002
>> write32 0xfaafc1e0 <- 0x030b0302
>> ?read32 0xfaafc1e0 -> 0x030b0302
>> ?read32 0xfaafc1e0 -> 0x030b0302
>>
>>
>> ***** bcma & b43 *****
>> First enable HT (0x2):
>> ?read32 0xfaafc1e0 -> 0x00050000 <- 0x00040000 == BP_ON_ALP
>> write32 0xfaafc1e0 <- 0x00050002
>> ?read32 0xfaafc1e0 -> 0x00050002
>> ?read32 0xfaafc1e0 -> 0x00050002
>> ?read32 0xfaafc1e0 -> 0x00050002
>> ?read32 0xfaafc1e0 -> 0x00050002
>> ?read32 0xfaafc1e0 -> 0x000b0002 <- 0x300 not enabled by def
>>
>> Now enable PLL for 0x3 (0x300)
>> ?read32 0xfaafc1e0 -> 0x000b0002
>> write32 0xfaafc1e0 <- 0x000b0302
>> ?read32 0xfaafc1e0 -> 0x000b0002 <- 0x300 ignored?
>> ?read32 0xfaafc1e0 -> 0x000b0002
>> ?read32 0xfaafc1e0 -> 0x000b0002
>> ?read32 0xfaafc1e0 -> 0x000b0002
>> ?read32 0xfaafc1e0 -> 0x000b0002
>> ?read32 0xfaafc1e0 -> 0x000b0002
>> ?read32 0xfaafc1e0 -> 0x000b0002
>> ?read32 0xfaafc1e0 -> 0x000b0002
>> ?read32 0xfaafc1e0 -> 0x000b0002
>> (and so on...)
>>
>>
>> The only difference seems be be initial state of 0x1e0. Of course both
>> situations are from cold boot.
>> wl: 0x00010000
>> bcma: 0x00050000
>> HAVEALP 0x00010000 /* ALP available */
>> BP_ON_ALP ? ? ? 0x00040000 /* RO: running on ALP clock */
>>
>> In attached dumps you can see init path is exactly the same for wl and bcma&b43.
>>
>> Does anyone have any idea, why bcma&b43 can not enable PLL (0x300
>> bits)? Why is it enabled by default when wl does use the bus?
>
> I've started tracking 0x1e0 register during bcma init and noticed that
> at the very beginning it is equal to 0x10000, just like in case of wl
> when it starts it's ops on 0x1e0.
>
> When using bcma 0x1e0 changes from default 0x10000 after
> 1) Reading SPROM
> 2) Resetting core
>
> So I've temporarily disabled both. This resulted in 0x10000 value at
> the beginning of enabling PLL, but didn't really help:
> ?read32 0xfaafc1e0 -> 0x00010000
> write32 0xfaafc1e0 <- 0x00010002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x00050002
> ?read32 0xfaafc1e0 -> 0x000b0002
>
> ?read32 0xfaafc1e0 -> 0x000b0002
> write32 0xfaafc1e0 <- 0x000b0302
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> ?read32 0xfaafc1e0 -> 0x000b0002
> (... and so on)

To be 100% we are identical to wl, I've implemented usage of
additional windows. I've also hacked this support to enable/disable it
for being 100% wl compatible.

There are no more differences other than slightly different EPROM
reading. We have some easier EPROM scanning in bcma which causes more
reads. That are reads only, I can not imagine it affecting anything.

My last hope is to find some magic in PCI config space.

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: dump-b43.txt.b43
Type: application/octet-stream
Size: 9972 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110716/f04d40b9/attachment-0003.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: dump-wl.txt.b43
Type: application/octet-stream
Size: 9741 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110716/f04d40b9/attachment-0004.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: diff.patch
Type: application/octet-stream
Size: 1296 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110716/f04d40b9/attachment-0005.obj>
