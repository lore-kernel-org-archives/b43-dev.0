From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat, 17 Dec 2011 13:57:19 +0100
Subject: [PATCH 0/8] b43: reoder functions in phy_n.c
Message-ID: <1324126647-22425-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

[APPLYING] This patchset is based on top of wireless-next with:
b43: mark some vars __maybe_unused in b43_nphy_pmu_spur_avoid
applied.


As noted on b43-dev, we got really messy in phy_n.c. Functions were
implemented quite randomly, with specs appering during development,
sometimes without knowing real mining of the routies.

That resulted in code hard to read and with some not-so-nice early
declarations.

This patches makes some cleaning with that code. It moves tons of LOCs,
but I think we have to do this finally instead of going deeper and
deeper into that mess.

As Larry suggested, I've made small patches and tried my best to get
them formatted nicely, to have diffs really clean. I've been
compiling b43 after each patch, so there shouldn't be any build
breakage between.

Rafa? Mi?ecki (8):
  b43: N-PHY: reorder functions: put basic ones at beginning
  b43: N-PHY: reorder functions: collect radio ones
  b43: N-PHY: reorder functions: collect samples ones
  b43: N-PHY: reorder functions: collect RSSI selects
  b43: N-PHY: split gain control workarounds
  b43: N-PHY: reorder functions: move RSSI calibration
  b43: N-PHY: reorder functions: move rest of workarounds
  b43: N-PHY: reorder functions: random clenaups

 drivers/net/wireless/b43/phy_n.c | 4575 +++++++++++++++++++-------------------
 1 files changed, 2301 insertions(+), 2274 deletions(-)

-- 
1.7.7
