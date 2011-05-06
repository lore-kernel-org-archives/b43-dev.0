From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Fri, 06 May 2011 23:36:33 +0200
Subject: Interesting 14e4:4321
In-Reply-To: <BANLkTim0usjWr8DqJQk+GQiBHmfgTjey7g@mail.gmail.com>
References: <BANLkTim0usjWr8DqJQk+GQiBHmfgTjey7g@mail.gmail.com>
Message-ID: <4DC469E1.2040101@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/06/2011 10:40 PM, Rafa? Mi?ecki wrote:
> Swen has found 14e4:4321 in his WRT160N version 1.1. This is quite
> rare and interesting so I wanted to post all info about it :)
> 
> I'm attaching lspci and dmesg.
> 
> I find it interesting because it seems to be SSB SOC with standard
> cores: CC, FastEthernet, USB, MIPS, etc. Plus there is PCI bridge with
> 14e4:4321 card connected, which is SSB-based one with (the most
> interesting) 80211.
> 
> Unfortunately this is one another BCM4321 with DMA not working. I
> really need to focus on this after fixing LP-PHY and adding BCMA.
> 
Hi Rafa?,

RealOpty reported the same DMA error in the OpenWrt channel and it is
nice that you are working on this. He was using a Netgear WNR834B V2.
Here is his dmesg output: http://paste.ubuntu.com/599979/

We already fixed some of the problems with these devices but have not
investigated into the DMA errors.

The cardbus attribute in the nvram seams to be set wrong for some
devices we added a workaround for it for the Netgear WNR834B V2. [0] It
would be nice to get the nvram content ( nvram show ) to also detect
this device and activate the workaround for it.

The SPROM is not stored on the pci card but in the nvram on the flash
chip of the device. This is now correctly read out in OpenWrt and we
will send some patches to mainline soon. [1] [2]

Hauke

[0]:
https://dev.openwrt.org/browser/trunk/target/linux/brcm47xx/patches-2.6.37/980-wnr834b_no_cardbus_invariant.patch
[1]:
https://dev.openwrt.org/browser/trunk/target/linux/brcm47xx/patches-2.6.37/031-ssb-add-callback-for-sprom.patch
[2]:
https://dev.openwrt.org/browser/trunk/target/linux/brcm47xx/patches-2.6.37/033-bcm47xx-register-fallback-callback.patch
