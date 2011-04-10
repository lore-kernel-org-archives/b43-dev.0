From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 10 Apr 2011 22:12:52 +0200
Subject: Out of memory problem with newer firmware
Message-ID: <BANLkTin0-MWxJV=7cNnOhiSKbieuo7OAfQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Summary:
1) Chris has ASUS WL500pv2 with OpenWRT
2) This is router with Broadcom 5354 SoC and LP-PHY card
3) Firmware 410.2160 (broadcom-wl-4.150.10.5.tar.bz2) works OK
4) Firmware 478.104 (broadcom-wl-4.178.10.4.tar.bz2) causes OOM

Larry was testing his LP-PHY with kmemleak but didn't find anything.

Chris traced a lot of skbs being allocated before OOM (500+).

I suspect that with new firmware we provide slightly different RX
packets to mac80211 and there is sth wrong with mac80211 causing SKBs
not being freed. I don't have any other idea how changing firmware
could cause out of memory problems.

The alloc code is question is dma.c::~585
skb = __dev_alloc_skb(ring->rx_buffersize, gfp_flags);

I've written patch to dump data we provide mac80211. My hope is to
notice differences in that data between older vs. newer firmware.

Chris: could you try attached patch and provide dmesg from older and
newer firmware with this patch applied?

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: xmit.rx_count2.patch
Type: application/octet-stream
Size: 1676 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110410/d2f241a2/attachment.obj>
