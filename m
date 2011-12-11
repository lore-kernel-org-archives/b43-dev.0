From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 11 Dec 2011 02:55:28 +0100
Subject: [PATCH 0/7] b43: N-PHY fixes, check dependency before applying
Message-ID: <1323568535-2816-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Some N-PHY fixes coming from wl observations and specs changes.

Please note this patchset depends on following patches:
[PATCH 1/2] ssb: extract FEM info from SPROM
[PATCH 2/2] bcma: extract FEM info from SPROM
send 3 days ago.

Rafa? Mi?ecki (7):
  b43: N-PHY: random trivial fixes for typos, missing writes
  b43: N-PHY: update some init values
  b43: N-PHY: workaround BCM43224 hw bug in writing table id 9
  b43: N-PHY: add table for antenna software control
  b43: N-PHY: determine various PHY params
  b43: N-PHY: finish 2.4GHz 0x2056 radio setup
  b43: N-PHY: implement spurious tone avoidance

 drivers/net/wireless/b43/phy_n.c       |  262 +++++++++++++++++++++++++++++---
 drivers/net/wireless/b43/phy_n.h       |    8 +
 drivers/net/wireless/b43/radio_2056.c  |   25 +++-
 drivers/net/wireless/b43/radio_2056.h  |    1 +
 drivers/net/wireless/b43/tables_nphy.c |   59 +++++++-
 drivers/net/wireless/b43/tables_nphy.h |   31 ++--
 6 files changed, 342 insertions(+), 44 deletions(-)

-- 
1.7.3.4
