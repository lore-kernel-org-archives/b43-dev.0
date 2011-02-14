From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 14 Feb 2011 13:28:00 +0100
Subject: Interesting note on "Unsupported SPROM revision"
Message-ID: <AANLkTinJDQDjhnzMBPubNkowxrXFDfOEz83HA1fHgEDU@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I wanted to be lazy and have 2 cards in my PC at the same time. So I
tried putting my mini PCIe adapter to PCIe x8 slot instead of PCIe x1
slot.

That resulted in:
[    6.681088] ssb: PCI-ID not in fallback list
[    6.681251] ssb: CHIPID not in nrcores fallback list
[    6.681433] ssb: Core 0 found: UNKNOWN (cc 0x8FF, rev 0x7F, vendor 0xFFFF)
[    6.689462] ssb: WARNING: Invalid SPROM CRC (corrupt SPROM)
[    6.689467] ssb: Unsupported SPROM  revision 255 detected. Will extract v1
[    6.697123] ssb: Sonics Silicon Backplane found on PCI device 0000:02:00.0
[  277.718506] wl: module license 'unspecified' taints kernel.
[  277.718513] Disabling lock debugging due to kernel taint
[  277.744813] wl 0000:02:00.0: PCI INT A -> GSI 24 (level, low) -> IRQ 24
[  277.744832] wl 0000:02:00.0: setting latency timer to 64
[  277.745126] eth%d: 5.100.82.38 driver failed with code 11

Instead of:
[    6.615095] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x17, vendor 0x4243)
[    6.615109] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x10,
vendor 0x4243)
[    6.615120] ssb: Core 2 found: PCI-E (cc 0x820, rev 0x0B, vendor 0x4243)
[    6.615132] ssb: Core 3 found: PCI (cc 0x804, rev 0x0E, vendor 0x4243)
[    6.615144] ssb: Core 4 found: USB 2.0 Device (cc 0x81A, rev 0x05,
vendor 0x4243)
[    6.615156] ssb: Core 5 found: UNKNOWN (cc 0x8FF, rev 0x00, vendor 0x4243)
[    6.615167] ssb: Core 6 found: Internal Memory (cc 0x80E, rev 0x03,
vendor 0x4243)
[    6.639312] ssb: Sonics Silicon Backplane found on PCI device 0000:03:00.0

Just wanted to put it on ML in case someone will ever hit that issue.

-- 
Rafa?
