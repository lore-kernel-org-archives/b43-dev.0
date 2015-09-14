From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 14 Sep 2015 18:57:29 -0500
Subject: b43 with Kernel 4.1?
In-Reply-To: <CABC5CqK2A7N5MN8in00953LfTOB=21NW0sJF2bWpG92c+ypXYw@mail.gmail.com>
References: <CABC5CqK2A7N5MN8in00953LfTOB=21NW0sJF2bWpG92c+ypXYw@mail.gmail.com>
Message-ID: <55F75EE9.6070304@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 09/14/2015 10:48 AM, Wifi User wrote:
> Hi,
>
> did someone mange to get b43 running under kernel 4.1?
>
> With an older kernel everything is perfect. After an upgrade to 4.1 my
> wireless card doesn't seem to get recognized. :( - The firmware cutter used
> broadcom-wl-6.30.163.46
>
> I can clearly see the card with lspci but I don't get a wlan0 device.
>
> ---
> 09:00.0 Network controller [0280]: Broadcom Corporation BCM4322
> 802.11a/b/g/n Wireless LAN Controller [14e4:432b] (rev 01)
>      Subsystem: Broadcom Corporation Device [14e4:04a4]
>      Flags: bus master, fast devsel, latency 0, IRQ 18
>      Memory at dfcfc000 (64-bit, non-prefetchable) [size=16K]
>      Capabilities: [40] Power Management version 3
>      Capabilities: [58] Vendor Specific Information: Len=78 <?>
>      Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
>      Capabilities: [d0] Express Endpoint, MSI 00
>      Kernel driver in use: b43-pci-bridge

Driver b43 works with kernel 4.1. Have you checked the output of dmesg to see if 
there are any clues there?

If you built your own kernel, you may have missed a configuration parameter. On 
my system, the command 'grep B43 .config' yields the following:

CONFIG_B43=m
CONFIG_B43_BCMA=y
CONFIG_B43_SSB=y
CONFIG_B43_BUSES_BCMA_AND_SSB=y
# CONFIG_B43_BUSES_BCMA is not set
# CONFIG_B43_BUSES_SSB is not set
CONFIG_B43_PCI_AUTOSELECT=y
CONFIG_B43_PCICORE_AUTOSELECT=y
CONFIG_B43_SDIO=y
CONFIG_B43_BCMA_PIO=y
CONFIG_B43_PIO=y
CONFIG_B43_PHY_G=y
CONFIG_B43_PHY_N=y
CONFIG_B43_PHY_LP=y
CONFIG_B43_PHY_HT=y
CONFIG_B43_LEDS=y
CONFIG_B43_HWRNG=y
# CONFIG_B43_DEBUG is not set
CONFIG_B43LEGACY=m
CONFIG_B43LEGACY_PCI_AUTOSELECT=y
CONFIG_B43LEGACY_PCICORE_AUTOSELECT=y
CONFIG_B43LEGACY_LEDS=y
CONFIG_B43LEGACY_HWRNG=y
# CONFIG_B43LEGACY_DEBUG is not set
CONFIG_B43LEGACY_DMA=y
CONFIG_B43LEGACY_PIO=y
CONFIG_B43LEGACY_DMA_AND_PIO_MODE=y
# CONFIG_B43LEGACY_DMA_MODE is not set
# CONFIG_B43LEGACY_PIO_MODE is not set
CONFIG_SSB_B43_PCI_BRIDGE=y

My guess is that CONFIG_B43_PHY_N was missed.

Larry
