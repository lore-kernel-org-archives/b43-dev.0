From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sat, 29 Dec 2012 20:15:50 +0100
Subject: [PATCH 1/2] ssb: add PCI ID 0x4350
In-Reply-To: <CAHCALez2m+o3BfOrAy3v4M0V0c9bU+gxxjYRFxLq61m7h-zM=Q@mail.gmail.com>
References: <1351183169-13392-1-git-send-email-hauke@hauke-m.de>
 <CACna6rwYraTcddRHUh-5a_cQ4QkLiUKrLO5FYvnMneTtWpYEwg@mail.gmail.com>
 <50896EA9.2090607@hauke-m.de>
 <CADGCtVSQEthQCkcqChs1FDfoCDrJh7UOj+y6z-N+PXQATr+mkw@mail.gmail.com>
 <CAHCALez2m+o3BfOrAy3v4M0V0c9bU+gxxjYRFxLq61m7h-zM=Q@mail.gmail.com>
Message-ID: <50DF4166.9080000@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: spameden <spameden@gmail.com>
Cc: Aitor Cuartango <aitor.cuartango@gmail.com>, =?UTF-8?B?UmFmYcWCIE1pxYI=?= =?UTF-8?B?ZWNraQ==?= <zajec5@gmail.com>, linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, m@bues.ch

Please stop top posting

A: Because we read from top to bottom, left to right.
Q: Why should I start my reply below the quoted text?

A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?

A: The lost context.
Q: What makes top-posted replies harder to read than bottom-posted?

A: Yes.
Q: Should I trim down the quoted part of an email to which I'm replying?

http://www.idallen.com/topposting.html


On 12/27/2012 07:26 AM, spameden wrote:
> Hi guys I have the same device.
> 
> I'm wondering if it's fully supported or not by b43 driver.
> 
> Here
> http://linuxwireless.org/en/users/Drivers/b43?highlight=%2814e4%29#Supported_devices
> I can see it's listed as supported in N-phy, but as Aitor said on
> OpenWRT only b/g mode supported for some reason..

n-phy is the name of the phy, the hardware supports ieee80211n, but b43
does not support ieee80211n at all.

> I can provide all needed info for this device, I have it in my old ASUS
> WL-500gP v1.
> 
> On the other note there is a leaked broadcom source of wl driver from
> Belkin F7D4401 v1.00.39 (it was posted online), I hope it helps:

We already have a spec for this phy and the n specific stuff should also
be in the phy code b43 uses, someone has just to add support for
ieee80211n to b43 in general.

> http://uploadmirrors.com/download/XLVMMGAJ/Belkin-F7D4401-v1.00.39.tar.7z
> http://www.mirrorcreator.com/files/1DJEOCRJ/Belkin-F7D4401-v1.00.39.tar.7z_links
> http://www.digzip.com/files/1L27MJRC/Belkin-F7D4401-v1.00.39.tar.7z
> http://www.multiupload.nl/P6B0GK9U6R
> 
> hopefully it'd help.
> 
> 2012/10/27 Aitor Cuartango <aitor.cuartango@gmail.com
> <mailto:aitor.cuartango@gmail.com>>
> 
>     If you need more information about the device let me know.
> 
>     With the last openwrt's trunk i can create a wifi network but only
>     in b/g mode.
> 
>     I've test editing manually /etc/config/wireless  and change :
>             option hwmode '11g'
>     with
>             option hwmode '11ng'
> 
>     but it does not starts, perhaps i need to do more changes in this
>     file...
> 
> 
>     Thanks all!
>     aitor
> 
> 
>     2012/10/25 Hauke Mehrtens <hauke at hauke-m.de <mailto:hauke@hauke-m.de>>:
>     > On 10/25/2012 06:47 PM, Rafa? Mi?ecki wrote:
>     >> 2012/10/25 Hauke Mehrtens <hauke@hauke-m.de
>     <mailto:hauke@hauke-m.de>>:
>     >>> 14e4:4350 is found on a Broadcom BCM43222.
>     >>
>     >> Huh, I expected BCM43222 to be BCMA based, interesting. Could you
>     >> provide ssb log for scanning (cores listing) and PHY&RADIO info?
>     >>
>     >
>     > It is not my device, but Aitor found it, here are the details:
>     > http://comments.gmane.org/gmane.comp.embedded.openwrt.user/2031
>     >
>     > Here is the log you requested, without the patches:
>     > ...
>     > b43-pci-bridge 0000:00:02.0: setting latency timer to 64
>     > ssb: Found chip with id 0xA8D6, rev 0x00 and package 0x08
>     > ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x1E, vendor 0x4243)
>     > ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x10, vendor 0x4243)
>     > ssb: Core 2 found: PCI (cc 0x804, rev 0x0E, vendor 0x4243)
>     > ssb: chipcommon status is 0x40040
>     > ssb: Found rev 2 PMU (capabilities 0x044C3002)
>     > ssb: ERROR: PLL init unknown for device A8D6
>     > ssb: ERROR: PMU resource config unknown for device A8D6
>     > ssb: SPROM offset is 0x1000
>     > ssb: SPROM revision 8 detected.
>     > b43-phy0: Broadcom 43222 WLAN found (core revision 16)
>     > ssb: Sonics Silicon Backplane found on PCI device 0000:00:02.0
>     > ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
>     > ...
>     >
>     > Hauke
