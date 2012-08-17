From: Jack <x6719620@gmail.com>
Date: Sat, 18 Aug 2012 01:53:18 +0800
Subject: b43 fails to work with broadcom 43227
Message-ID: <CAMXjOaXZ+4L_DZ5c=6-FykOnYxGQW3mRPvwAVHY1zE6CTZiVUg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Dear developers,

Hello. I have a Broadcom 43227, with ID 14e4:4358. According to
previous threads, I patched and recompiled the module 'bcma' by adding
PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4358) to host_pci.c. However, it
does not work as well.

I am using 3.4.9-1-ARCH kernel, and I got the following dmesg after
inserting the module b43. No new interfaces showed up.

[  386.153119] bcma: Found chip with id 0xA8DB, rev 0x00 and package 0x08
[  386.153164] bcma: Core 0 found: ChipCommon (manuf 0x4BF, id 0x800,
rev 0x25, class 0x0)
[  386.153201] bcma: Core 1 found: IEEE 802.11 (manuf 0x4BF, id 0x812,
rev 0x1E, class 0x0)
[  386.153278] bcma: Core 2 found: PCIe (manuf 0x4BF, id 0x820, rev
0x12, class 0x0)

[  386.153313] bcma: Core 3 found: SDIO Device (manuf 0x4BF, id 0x829,
rev 0x07, class 0x0)
[  386.153484] bcma: PLL init unknown for device 0xA8DB
[  386.192637] bcma: PMU resource config unknown for device 0xA8DB
[  386.204612] bcma: PMU switch/regulators init unknown for device 0xA8DB
[  386.216631] bcma: Workarounds unknown for device 0xA8DB
[  386.253679] bcma: Using fallback SPROM failed (err -2)
[  386.253686] bcma: No SPROM available
[  386.293112] bcma: Bus registered
[  428.245922] Broadcom 43xx driver loaded [ Features: PMNLS ]

I have no ideas about what is going wrong, whether the SPROM or the
b43 driver. I would like to test new patches and give feedback as far
as possible.

Thank you and best regards.
Jack
