From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed,  6 Oct 2010 07:50:05 +0200
Subject: [PATCH 0/3] b43: channel switching little cleaning
Message-ID: <1286344208-32479-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

It defines B43_SHM_SH_CHAN_40MHZ and simplifies channel switching for N-PHY.

Rafa? Mi?ecki (3):
  b43: N-PHY: simplify channel switching
  b43: define B43_SHM_SH_CHAN_40MHZ
  b43: N-PHY: don't duplicate setting channel in shared memory

 drivers/net/wireless/b43/b43.h        |    3 ++-
 drivers/net/wireless/b43/phy_common.c |    6 ++++--
 drivers/net/wireless/b43/phy_n.c      |   32 ++++++++++----------------------
 3 files changed, 16 insertions(+), 25 deletions(-)
