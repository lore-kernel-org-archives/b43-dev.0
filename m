From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Tue, 31 Jan 2012 00:03:30 +0100
Subject: [PATCH 0/7] bcma: add PCIe host controller
Message-ID: <1327964617-7910-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>

These patches are adding support for a PCIe Host controller found on 
some Broadcom SoCs using bcma as the System bus. This was tested with 
one BCM4716 based device, a Netgear WNDR3400 with a BCM43224 connected 
through PCIe.
These patches are based on wireless-testing.

Hauke Mehrtens (7):
  bcma: add the core unit number
  bcma: add constants for PCI and use them
  bcma: export bcma_pcie_read()
  bcma: make some functions __devinit
  bcma: add PCIe host controller
  bcma: add bus num counter
  bcma: add extra sprom check

 arch/mips/pci/pci-bcm47xx.c                 |   49 ++-
 drivers/bcma/bcma_private.h                 |    8 +-
 drivers/bcma/driver_pci.c                   |  168 ++++-----
 drivers/bcma/driver_pci_host.c              |  578 ++++++++++++++++++++++++++-
 drivers/bcma/host_pci.c                     |    4 +-
 drivers/bcma/main.c                         |   14 +-
 drivers/bcma/scan.c                         |   14 +
 drivers/bcma/sprom.c                        |    7 +
 include/linux/bcma/bcma.h                   |    2 +
 include/linux/bcma/bcma_driver_chipcommon.h |   16 +
 include/linux/bcma/bcma_driver_pci.h        |  125 ++++++-
 include/linux/bcma/bcma_regs.h              |   27 ++
 12 files changed, 908 insertions(+), 104 deletions(-)

-- 
1.7.5.4
