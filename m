From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun, 29 Apr 2012 02:04:05 +0200
Subject: [PATCH 0/8] ssb/bcma/bcm47xx: extend boardinfo and sprom
Message-ID: <1335657853-23925-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, arend@broadcom.com, m@bues.ch, ralf@linux-mips.org, Hauke Mehrtens <hauke@hauke-m.de>

This patch series fixes the boardinfo for ssb based devices by removing 
board_rev from the struct, this should be fetched from sprom. In 
addition a boardinfo struct was added to bcma.
The pci sprom parsing code was extended for bcma to provide all 
attributes needed by brcmsmac and that code was also copied to ssb.

This is based on wireless-testing/master.

Hauke Mehrtens (8):
  ssb: remove rev from boardinfo
  MIPS: bcm47xx: refactor fetching board data
  bcma: add boardinfo struct
  MIPS: bcm47xx: read baordrev without prefix from sprom
  ssb/bcma: fill attribute alpha2 from sprom
  ssb: fill board_rev attribute from sprom
  bcma: read out some additional sprom attributes
  bcma/ssb: parse new attributes from sprom

 arch/mips/bcm47xx/setup.c                    |   11 +-
 arch/mips/bcm47xx/sprom.c                    |   26 +++++
 arch/mips/include/asm/mach-bcm47xx/bcm47xx.h |    9 ++
 drivers/bcma/host_pci.c                      |    3 +
 drivers/bcma/sprom.c                         |  149 +++++++++++++++++++++++++-
 drivers/net/wireless/b43/bus.c               |    6 +-
 drivers/net/wireless/b43/main.c              |    4 +-
 drivers/net/wireless/b43legacy/main.c        |    2 +-
 drivers/net/wireless/b43legacy/phy.c         |    4 +-
 drivers/net/wireless/b43legacy/radio.c       |   10 +-
 drivers/ssb/pci.c                            |   88 +++++++++++++--
 include/linux/bcma/bcma.h                    |    7 ++
 include/linux/ssb/ssb.h                      |    1 -
 include/linux/ssb/ssb_regs.h                 |   61 ++++++++++-
 14 files changed, 347 insertions(+), 34 deletions(-)

-- 
1.7.9.5
