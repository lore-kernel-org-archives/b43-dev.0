From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 23 Jul 2011 11:10:10 +0200
Subject: [PATCH 0/2] ssb: start cleaning boardflags
Message-ID: <1311412213-3825-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Boardflags are board (SPROM to say exactly) specific, so should be
defined in ssb code. It does not make sense to redefine them over
and over in every driver.

This is the real fix for:
linux-next-20110722/drivers/bcma/driver_pci.c:175: error: 'SSB_PCICORE_BFL_NOPCI' undeclared (first use in this function)

Ideally that patches should replace
[PATCH] bcma: fix 'SSB_PCICORE_BFL_NOPCI' undeclared build breakage

Rafa? Mi?ecki (2):
  ssb: define boardflags
  bcma: use boardflags define from ssb code

 drivers/bcma/driver_pci.c    |    2 +-
 include/linux/ssb/ssb_regs.h |   40 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+), 1 deletions(-)

-- 
1.7.3.4
