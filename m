From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 24 May 2010 21:50:22 +0200
Subject: [PATCH 0/2] ssb: updates matching specs, fix for hangs?
Message-ID: <1274730624-22922-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

John, I don't really know w-t policy, so please decide where we should apply
these patches. I'll try to provide some description.

We got reports of some devices hanging with ssb module, it was around SPROM
reading. AFAIK two patches are needed to fix this issue. One was already
posted by Larry: "ssb: Handle alternate SSPROM location" (however I can not
find it in w-t). Second one is attached patch for fast powerup delay.

Not sure about PMU init patch, I think it is needed to get devices working
but not sure if it affects (fixes) handing issue.

Fix of hanging sounds important and thankfully patches are quite trivial. On
the other hand we are at the end of merge window already. So please, help with
taking a decision about this.

CC-ing b43, hope it's OK.

Rafa? Mi?ecki (2):
  ssb: update PMU init to match specs
  ssb: fast powerup delay calculation for PMU capable devices

 drivers/ssb/driver_chipcommon.c     |   24 ++++++++++++++++++++++++
 drivers/ssb/driver_chipcommon_pmu.c |   17 +++++++----------
 2 files changed, 31 insertions(+), 10 deletions(-)
