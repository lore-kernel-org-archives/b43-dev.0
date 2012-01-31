From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Wed,  1 Feb 2012 00:13:52 +0100
Subject: [PATCH 0/4] ssb/bcma: misc fixes
Message-ID: <1328051636-15449-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: zajec5@gmail.com, m@bues.ch, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>

This contains a fix which makes cardbus work with the PCI host 
controller found on some ssb based SoCs. It also add a log entry for 
informations about the bcma/ssb chip used. The last patch adds support 
for the BCM5354 SoC.

Hauke Mehrtens (4):
  ssb: fix cardbus slot in hostmode
  bcma: log the id, rev and pkg of the chip found
  ssb: log the id, rev and pkg of the chip found
  ssb: add support for bcm5354

 drivers/bcma/scan.c                 |   10 +++++--
 drivers/ssb/driver_chipcommon_pmu.c |   48 +++++++++++++++++++++++++++++++---
 drivers/ssb/driver_mipscore.c       |    3 ++
 drivers/ssb/driver_pcicore.c        |    2 +-
 drivers/ssb/main.c                  |    3 ++
 drivers/ssb/scan.c                  |    3 ++
 drivers/ssb/ssb_private.h           |    4 +++
 7 files changed, 64 insertions(+), 9 deletions(-)

-- 
1.7.5.4
