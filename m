From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 21 Apr 2011 00:42:42 +0200
Subject: One more lspci invisible Broadcom card, HP Compaq 6515b
Message-ID: <BANLkTikr+akiow_O-THXkos_eHGPKBm5AQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I'm lucky to meet people with invisible cards.

unitedriders has HP Compaq 6515b which physically has BCM4311 card.
The problem is lspci does not show his card:
00:00.0 Host bridge: ATI Technologies Inc RS690 Host Bridge
00:01.0 PCI bridge: ATI Technologies Inc RS690 PCI to PCI Bridge (Internal gfx)
00:04.0 PCI bridge: ATI Technologies Inc Unknown device 7914
00:05.0 PCI bridge: ATI Technologies Inc RS690 PCI to PCI Bridge (PCI
Express Port 1)
00:06.0 PCI bridge: ATI Technologies Inc RS690 PCI to PCI Bridge (PCI
Express Port 2)
00:12.0 SATA controller: ATI Technologies Inc SB600 Non-Raid-5 SATA
00:13.0 USB Controller: ATI Technologies Inc SB600 USB (OHCI0)
00:13.1 USB Controller: ATI Technologies Inc SB600 USB (OHCI1)
00:13.2 USB Controller: ATI Technologies Inc SB600 USB (OHCI2)
00:13.3 USB Controller: ATI Technologies Inc SB600 USB (OHCI3)
00:13.4 USB Controller: ATI Technologies Inc SB600 USB (OHCI4)
00:13.5 USB Controller: ATI Technologies Inc SB600 USB Controller (EHCI)
00:14.0 SMBus: ATI Technologies Inc SBx00 SMBus Controller (rev 14)
00:14.1 IDE interface: ATI Technologies Inc SB600 IDE
00:14.2 Audio device: ATI Technologies Inc SBx00 Azalia (Intel HDA)
00:14.3 ISA bridge: ATI Technologies Inc SB600 PCI to LPC Bridge
00:14.4 PCI bridge: ATI Technologies Inc SBx00 PCI to PCI Bridge
00:18.0 Host bridge: Advanced Micro Devices [AMD] K8
[Athlon64/Opteron] HyperTransport Technology Configuration
00:18.1 Host bridge: Advanced Micro Devices [AMD] K8
[Athlon64/Opteron] Address Map
00:18.2 Host bridge: Advanced Micro Devices [AMD] K8
[Athlon64/Opteron] DRAM Controller
00:18.3 Host bridge: Advanced Micro Devices [AMD] K8
[Athlon64/Opteron] Miscellaneous Control
01:05.0 VGA compatible controller: ATI Technologies Inc RS690M [Radeon
X1200 Series]
02:04.0 CardBus bridge: Ricoh Co Ltd RL5c476 II (rev b6)
02:04.1 FireWire (IEEE 1394): Ricoh Co Ltd R5C832 IEEE 1394 Controller (rev 02)
10:00.0 Ethernet controller: Broadcom Corporation NetLink BCM5787M
Gigabit Ethernet PCI Express (rev 02)

There is Broadcom lan card, so for a moment I though it make be SSB
bus with two cores: lan and 80211. But this 14e4:1693 card is
supported by tg3 driver, which is not SSB driver. It seems to be
standard PCI card, so nothing else can hide behind it.

Of course this is HP notebook with WiFi blacklist in BIOS, so putting
another card is not a option.
I asked unitedriders for putting his BCM4311 in another machine. He
has access to some Sony VAIO, but card slot is different (I guess HP
has mini PCI, Sony has mini PCIe).

AFAIR last time I reported such a issue noone got any idea what could
be wrong. But it does not hurt to bring this question once again.

Do you have any ideas other than faulty port or card? Unfortunately
there is not other OS on this machine to test card detection with.

unitedriders mentioned his HP has so called "touch sensive" wlan
switch, but it's unlikely it totally disables PCI port.

-- 
Rafa?
