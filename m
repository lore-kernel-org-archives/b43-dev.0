From: Mark Huijgen <mark.sf.net@huijgen.tk>
Date: Thu, 06 May 2010 10:45:34 +0200
Subject: [RFC/RFT] ssb: resolve alternate SPROM offset for 14e4:4315
In-Reply-To: <4be24cdd.Yg6pH2Z4OwSotB+K%Larry.Finger@lwfinger.net>
References: <4be24cdd.Yg6pH2Z4OwSotB+K%Larry.Finger@lwfinger.net>
Message-ID: <4BE281AE.7070901@huijgen.tk>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/06/2010 07:00 AM, Larry Finger wrote:
> This patch and the patch by Gabor entitled "[PATCH] ssb: Implement
> fast powerup delay calculation" are enough to allow the netbook from
> John to work with ssb/b43. As this patch tampers with the SPROM offset for
> 14e4:4315 devices, it should be tested by anyone with an LP PHY that works
> to ensure that it is not killed.
>   

LP PHY device 14e4:4315 in my HP530 notebook still works after applying
the patch.

Messages from ssb after applying the patch:

[  342.152271] b43-pci-bridge 0000:10:00.0: PCI INT A -> GSI 17 (level,
low) -> IRQ 17
[  342.152286] b43-pci-bridge 0000:10:00.0: setting latency timer to 64
[  342.172079] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor
0x4243)
[  342.172090] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F,
vendor 0x4243)
[  342.172100] ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor 0x4243)
[  342.172110] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor 0x4243)
[  342.192028] ssb: Found rev 1 PMU (capabilities 0x02A62F01)
[  342.192034] ssb: SPROM offset is 0x1000
[  342.208620] ssb: SPROM revision 8 detected.
[  342.228069] ssb: Sonics Silicon Backplane found on PCI device
0000:10:00.0

Mark
