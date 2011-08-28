From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 28 Aug 2011 16:43:37 -0500
Subject: BCM4321 support
In-Reply-To: <CAM0=5GsXuz_Fybuw3rpkHxE3oqNwRLMcc+ZjsgfGHHiRP_ER8w@mail.gmail.com>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
	<CAM0=5GvmNd7GPEhuQpHNBZK6FBarAn279tB7LbbJRDy=e4FKAQ@mail.gmail.com>
	<CA+XFjip4Z7Ua9eVwWsR4t4pWrR1rdEkhVtOS8KE2oJHN1EWLLg@mail.gmail.com>
	<CAM0=5GsXuz_Fybuw3rpkHxE3oqNwRLMcc+ZjsgfGHHiRP_ER8w@mail.gmail.com>
Message-ID: <4E5AB689.4010000@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/28/2011 11:59 AM, Octavian Voicu wrote:
>
> Larry, I CC-ed you because I noticed in an earlier message on the lwn
> mailing list that you own (or used to own) the exact model of BCM4321
> as the one I have now:
>
> 0c:00.0 Network controller [0280]: Broadcom Corporation BCM4321
> 802.11a/b/g/n [14e4:4328] (rev 03)
>          Subsystem: Hewlett-Packard Company BCM4321 802.11a/b/g/n
> Wireless LAN Controller [103c:1367]
>
> Can anybody with a BCM4321 send me a full SPROM dump from their card
> (preferably a HP BCM4321, but I guess any would do)? I want to hack
> something up and try fix my card.

Octavian,

I do have a BCM4321 (14e4:4328) that works with the latest b43. I'm using 
508.154 firmware.

Performance is not great, but it is adequate. The TX and RX rates (Mbps) for 3 
common netperf tests are as follows:

TCP_MAERTS TX Test:   7.68  7.75  7.76  8.42  7.12  6.69  6.61  6.65  7.99  7.15
TCP_MAERTS RX Test:   9.50 12.15 10.70  8.78 11.55 11.32 11.97  9.71  6.00  9.17
Results: TX: max  8.42, min  6.61. Mean  7.38(0.60)
          RX: max 12.15, min  6.00. Mean 10.09(1.78)

TCP_STREAM TX Test:   9.72  9.18  6.54  9.49  9.56  9.02  9.31  9.16  9.49 10.55
TCP_STREAM RX Test:   4.39  5.68  2.91  7.76  7.07  7.65  6.92  7.50  7.48  7.59
Results: TX: max 10.55, min  6.54. Mean  9.20(0.98)
          RX: max  7.76, min  2.91. Mean  6.50(1.57)

TCP_SENDFILE TX Test: 13.54 14.21 11.01 6.74 11.55 10.25  9.99  9.87 11.30 12.38
TCP_SENDFILE RX Test:  7.06  7.03  7.03 7.06  6.90  7.10  7.15  6.84  7.07  6.84
Results: TX: max 14.21, min  6.74. Mean 11.08(2.00)
          RX: max  7.15, min  6.84. Mean  7.01(0.10)

The netperf server for TX and transmitter for the RX tests is attached to my 
AP/router/switch via a 100 Mbps wired connection.

Pertinent data from the dmesg output:

finger at larrylap:~/DRAWxtl/source/DRAWxtl56> dmesg | egrep "ssb|b43"
[   11.963272] b43-pci-bridge 0000:06:00.0: PCI INT A -> Link[LK1E] -> GSI 21 
(level, low) -> IRQ 21
[   11.963298] b43-pci-bridge 0000:06:00.0: setting latency timer to 64
[   11.980208] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor 0x4243)
[   11.980218] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0C, vendor 0x4243)
[   11.980226] ssb: Core 2 found: PCI-E (cc 0x820, rev 0x04, vendor 0x4243)
[   11.980234] ssb: Core 3 found: PCI (cc 0x804, rev 0x0D, vendor 0x4243)
[   11.980242] ssb: Core 4 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor 0x4243)
[   12.000412] ssb: chipcommon status is 0x0
[   12.000423] ssb: SPROM offset is 0x1000
[   12.008930] ssb: SPROM revision 5 detected.
[   12.053346] ssb: Sonics Silicon Backplane found on PCI device 0000:06:00.0
[   12.984431] b43-phy0: Broadcom 4321 WLAN found (core revision 12)
[   13.028157] b43-phy0 debug: Found PHY: Analog 5, Type 4, Revision 2
[   13.028183] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2055, Revision 4
[   13.111428] Registered led device: b43-phy0::tx
[   13.111989] Registered led device: b43-phy0::rx
[   13.112585] Registered led device: b43-phy0::radio
[   33.504075] b43-phy0: Loading firmware version 508.154 (2009-08-18 00:58:22)
[   33.580329] b43-phy0 debug: Chip initialized
[   33.587483] b43-phy0 debug: 64-bit DMA initialized
[   33.587531] b43-phy0 debug: QoS enabled
[   33.615158] b43-phy0 debug: Wireless interface started
[   33.615222] b43-phy0 debug: Adding Interface type 2
[   82.275258] b43-phy0 debug: Using hardware based encryption for keyidx: 0, 
mac: c0:3f:0e:be:2b:44
[  137.618259] b43-phy0 ERROR: PHY transmission error
[  138.915048] b43-phy0 ERROR: PHY transmission error
[  141.608912] b43-phy0 ERROR: PHY transmission error
[  141.883784] b43-phy0 ERROR: PHY transmission error
[  143.127781] b43-phy0 ERROR: PHY transmission error
[  143.766625] b43-phy0 ERROR: PHY transmission error

SPROM contents:

0128000066133C100800BE1D0087C42B642A6429642CE73CFF297FC7FFFFFFFF28430080020000000110001800000000FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF72536700535501000000014A0000140000001A006573D0940000FFFF03030202FFFF30285B5B29245B5B2D1C5B5B39365B5B44383838FF83FFFFFFFFFFFFFFFF443E9BFE8A14DFFA00003C3E3C3CABFE201254FB0000ACFE5A1320FB0000B9FEEC1163FB0000FFFFFFFFFFFFFFFF443EA4FEA4130DFB00003C3E3C3CA6FE95123FFB000094FE031252FB0000AAFEFF1228FB0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05A6

My MAC address is 00:1A:73:65:94:D0. You should have the MAC for your device 
written on the label. In any case, do not use the same one as in my device.

Larrt
