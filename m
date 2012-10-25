From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Thu, 25 Oct 2012 18:54:01 +0200
Subject: [PATCH 1/2] ssb: add PCI ID 0x4350
In-Reply-To: <CACna6rwYraTcddRHUh-5a_cQ4QkLiUKrLO5FYvnMneTtWpYEwg@mail.gmail.com>
References: <1351183169-13392-1-git-send-email-hauke@hauke-m.de>
 <CACna6rwYraTcddRHUh-5a_cQ4QkLiUKrLO5FYvnMneTtWpYEwg@mail.gmail.com>
Message-ID: <50896EA9.2090607@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, m@bues.ch, Aitor Cuartango <aitor.cuartango@gmail.com>

On 10/25/2012 06:47 PM, Rafa? Mi?ecki wrote:
> 2012/10/25 Hauke Mehrtens <hauke@hauke-m.de>:
>> 14e4:4350 is found on a Broadcom BCM43222.
> 
> Huh, I expected BCM43222 to be BCMA based, interesting. Could you
> provide ssb log for scanning (cores listing) and PHY&RADIO info?
> 

It is not my device, but Aitor found it, here are the details:
http://comments.gmane.org/gmane.comp.embedded.openwrt.user/2031

Here is the log you requested, without the patches:
...
b43-pci-bridge 0000:00:02.0: setting latency timer to 64
ssb: Found chip with id 0xA8D6, rev 0x00 and package 0x08
ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x1E, vendor 0x4243)
ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x10, vendor 0x4243)
ssb: Core 2 found: PCI (cc 0x804, rev 0x0E, vendor 0x4243)
ssb: chipcommon status is 0x40040
ssb: Found rev 2 PMU (capabilities 0x044C3002)
ssb: ERROR: PLL init unknown for device A8D6
ssb: ERROR: PMU resource config unknown for device A8D6
ssb: SPROM offset is 0x1000
ssb: SPROM revision 8 detected.
b43-phy0: Broadcom 43222 WLAN found (core revision 16)
ssb: Sonics Silicon Backplane found on PCI device 0000:00:02.0
ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
...

Hauke
