From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun,  8 May 2011 20:30:30 +0200
Subject: [PATCH V2 0/3] ssb/b43(legacy): clean dangling cores workarounds
Message-ID: <1304879433-7096-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

There is no perfect place for this workarounds, but keeping it in ssb sounds
more reasonable.
1) We already have in ssb similar workarounds for different cores
2) We do not register inactive devices in system
3) We do not duplicate code in b43 and b43legacy

V2: Updated commit messages. Larry, should we add yours Acked-by or
Reviewed-by?

I just changed "Many" to "Some" in Larry's message.

Rafa? Mi?ecki (3):
  ssb: update list of devices supporting multiple 80211 cores
  b43: drop ssb-duplicated workaround for dangling cores
  b43legacy: drop ssb-duplicated workaround for dangling cores

 drivers/net/wireless/b43/main.c       |   17 -----------------
 drivers/net/wireless/b43legacy/main.c |   18 ------------------
 drivers/ssb/scan.c                    |    5 ++++-
 3 files changed, 4 insertions(+), 36 deletions(-)

-- 
1.7.3.4
