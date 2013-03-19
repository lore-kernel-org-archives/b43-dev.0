From: Arend van Spriel <arend@broadcom.com>
Date: Tue, 19 Mar 2013 11:19:30 +0100
Subject: Extracting (boardvendor and) boardtype
In-Reply-To: <CACna6rwPvUW89k81kkARbqkN4BgoTwWkmfU234b9Cj5R1-WVsg@mail.gmail.com>
References: <CACna6rwPvUW89k81kkARbqkN4BgoTwWkmfU234b9Cj5R1-WVsg@mail.gmail.com>
Message-ID: <51483BB2.4050105@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 03/19/2013 10:48 AM, Rafa? Mi?ecki wrote:
> It seems Broadcom does some per-card decisions
> (workarounds/hacks/adjustments) using "boardtype" value. We have few
> values defined:
> #define SSB_BOARD_BCM94306MP	0x0418
> #define SSB_BOARD_BCM4309G	0x0421
> #define SSB_BOARD_BCM4306CB	0x0417
> #define SSB_BOARD_BCM4309MP	0x040C
> #define SSB_BOARD_MP4318	0x044A
> #define SSB_BOARD_BU4306	0x0416
> #define SSB_BOARD_BU4309	0x040A
> but bcmdevs.h actually contains tons of them.
>
> To see how we currently extract it, please see ssb_pci_get_boardinfo:
> bi->vendor = bus->host_pci->subsystem_vendor;
> bi->type = bus->host_pci->subsystem_device;
>
> or bcma_host_pci_probe:
> bus->boardinfo.vendor = bus->host_pci->subsystem_vendor;
> bus->boardinfo.type = bus->host_pci->subsystem_device;
>
> However I suspect maybe we should extract board_type from SPROM [0] offset 0x4.

For PCI if bus->host_pci->subsystem-* is determined by 
pci_read_config_... that is fine.

> I tried to understand how Broadcom handles that but can't follow that.
> First of all they seem to have abstration to the abstration of
> abstration. They keep boardtype in 3 or more structs copying them all
> around. I suspect they extract board_type in si_nvram_process (which
> is called always, not just on SOCs where we actually have NVRAM).

The driver is not very data centric so information is (a bit) 
distributed over the functional parts that use it.

> The easy part is that they preference about source of "boardtype" value is:
> 1) si_getdevpathintvar(..., "boardtype")
> 2) getintvar(..., "boardtype")
> 3) read(PCI_CFG_SVID) >> 16
>
> I don't understand how getdevpathintvar / getintvar works. The
> forwardtrace seems to be:
> si_getdevpathintvar
> getintvar
> PHY_GETVAR
> phy_getvar
>
> The problem is that phy_getvar iterates over pi->vars. I have no idea
> what is this set to. This variable is set in about 20 places in about
> 3 different structs. I don't know... does it have any relation to the
> pci_sromvars?
>
> Does anyone understand this? Better than me hopefully? Should we
> extract board_type from SPROM and use subsystem id only as a fallback?

Not sure what code base you are staring at. Can you give me some pointer 
here.

Regards,
Arend
