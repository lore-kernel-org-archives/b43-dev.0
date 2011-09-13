From: Benjamin Lee <ben@b1c1l1.com>
Date: Tue, 13 Sep 2011 13:48:36 -0700
Subject: BCM4331 patch against linux-3.1-rc5
Message-ID: <4E6FC1A4.4000601@b1c1l1.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

Thank you for implementing BCM4331 support!

I am not interested in running the wireless-testing kernel, so I hacked
together a patch to enable BCM4331 support on linux-3.1-rc5.  Since
others may be interested in this as well, I am posting it to this list.

The patch consists of the following patches posted to this list:

[PATCH 1/3] b43: rename TX header formats
[PATCH 2/3] b43: use enum for firmware header format
[PATCH 3/3] b43: support new TX header, noticed to be used by 598.314+ fw
[PATCH 4/3 V2] b43: support new RX header, noticed to be used in 598.314+ fw
[PATCH V2] bcma: implement BCM4331 workaround for external PA lines
[PATCH 1/2] b43: include HT-PHY in some common code
[PATCH 2/2] b43: make forcing clock common (HT-PHY also uses that)
[RFC][PATCH] b43: HT-PHY: allow writing longer tables with a single call
[PATCH 1/4] b43: HT-PHY: init: zero EXTG registers
[PATCH 2/4] b43: HT-PHY: init: implement few simple PHY writes
[PATCH 3/4] b43: HT-PHY: init: copy tables and reset CCA
[PATCH V2 4/4] b43: HT-PHY: init: init BPHY and upload 0x1a table
[PATCH 1/2] b43: HT-PHY: init: add missing PHY mask/set ops
[PATCH 2/2] b43: HT-PHY: init: add some AFE (Analog Frontend) operation
[PATCH] b43: HT-PHY: init: add missing small-tables writes
[PATCH 1/2] b43: HT-PHY: use separated function for forcing RF sequence
[PATCH 2/2] b43: HT-PHY: read clip state
[wireless-next][PATCH 1/3] b43: Relax requirement for descriptors to be
in the DMA zone
[wireless-next][PATCH 2/3] b43: use 8K buffers for 64-bit DMA to
workaround hardware bug
[wireless-next][PATCH 3/3] b43: make HT-PHY support experimental

The combined patch is attached.  I can confirm that wireless now works
on my MacBookPro8,2.  Please let me know if I missed anything important.

Also, I would be interested in testing any patches that make the driver
work with BCM4331 after being suspended to RAM.

Regards,


-- 
Benjamin Lee
http://www.b1c1l1.com/
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43-bcm4331-3.1-rc5.patch
Type: text/x-patch
Size: 38757 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110913/31210639/attachment-0001.bin>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 900 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110913/31210639/attachment-0001.sig>
