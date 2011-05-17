From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 17 May 2011 12:40:10 +0200
Subject: ssb: how did we get special reject bit for SSB rev 2.3?
Message-ID: <BANLkTik2Sc9aWi_cHVvLJzGv3esey=wPag@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Michael Buesch <mb@bu3sch.de>, Larry Finger <Larry.Finger@lwfinger.net>

I've just received 14e4:4312 card which is G-PHY BCM4311.

I've checked for SSB rev in MMIO dump:
read32 0xfaafcff8 -> 0x100422c5

0x100422c5 & (SSB_IDLOW_SSBREV == 0xF0000000) = 0x10000000
So this is SSB rev 2.3:
#define  SSB_IDLOW_SSBREV_23	0x10000000 /* 2.3 */

Currently we are using different REJECT bit for SSB rev 2.3:
#define  SSB_TMSLOW_REJECT	0x00000002 /* Reject (Standard Backplane) */
#define  SSB_TMSLOW_REJECT_23	0x00000004 /* Reject (Backplane rev 2.3) */

Does anyone know where did we get this from?

wl does never use this bit:

$ grep "ssb_write32(0xf98)" wl.4312.txt | sort | uniq
ssb_write32(0xf98) <- 0x00000003
ssb_write32(0xf98) <- 0x00010000
ssb_write32(0xf98) <- 0x00010002
ssb_write32(0xf98) <- 0x00030003
ssb_write32(0xf98) <- 0x00040003
ssb_write32(0xf98) <- 0x00070000
ssb_write32(0xf98) <- 0x00070001
ssb_write32(0xf98) <- 0x00070003
ssb_write32(0xf98) <- 0x20010000
ssb_write32(0xf98) <- 0x20010002
ssb_write32(0xf98) <- 0x20040003
ssb_write32(0xf98) <- 0x20070000
ssb_write32(0xf98) <- 0x20070001
ssb_write32(0xf98) <- 0x20070003

-- 
Rafa?
