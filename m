From: =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue,  7 Dec 2010 21:55:56 +0100
Subject: [PATCH 0/4] Make N-PHY support experimental
Message-ID: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Finally, thanks for Larry and Francesco I got b43 working with BCM4328 chipset!

It's not perfectly stable yet, but scanning and associating to open network
works! It has to be tested, improved, there are some PHY errors from time to
time, but generally it works :)

Rafa?? Mi??ecki (4):
  b43: N-PHY: silence warnings
  b43: set TMS to work with current band width for N-PHY
  b43: fix split of N-PHY devices into supported and not (based on PHY
    rev)
  b43: rename config option for N-PHY, drop BROKEN

 drivers/net/wireless/b43/Kconfig      |   13 +++++++------
 drivers/net/wireless/b43/Makefile     |    8 ++++----
 drivers/net/wireless/b43/main.c       |   12 +++++++++---
 drivers/net/wireless/b43/phy_common.c |    9 ++++++++-
 drivers/net/wireless/b43/phy_common.h |    2 ++
 drivers/net/wireless/b43/phy_n.c      |   16 ++++++----------
 6 files changed, 36 insertions(+), 24 deletions(-)
