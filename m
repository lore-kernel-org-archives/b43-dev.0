From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu, 17 Feb 2011 01:50:49 +0100
Subject: [PATCH 0/2] ssb: improve device disabling
Message-ID: <1297903851-5499-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

With that patches we follow specs and (as recently proved by MMIO dumps) wl.

The more important patch is the first one. It detects problem (and warns) with
SSB when it is in some broken state. We can for example hit such an issue when
enabling DMA on 14e4:4329 (N-PHY, rev 1). The real fix is now known yet, but
not we at least get warning. Switching to PIO on that card does not raise
warning anymore (as expected).

We all hate regressions and Michal says than enabling/disabling SSB device can
be tricky. I have tested that patches with few b43 driven devices:
14e4:4318 (BCM4318)
14e4:4315 (BCM4312)
14e4:4329 (BCM4321)
14e4:4328 (BCM4321)
14e4:432b (BCM4322)

With each device I performed cold booting, loading b43, testing, bringing
interface down and up, testing, reloading, testing. Sometime even more.

Unfortunately I do not have aany other SSB devices, like that supported by b44
or gige (OK, I did not even hear about gige earlier).

Rafa? Mi?ecki (2):
  ssb: when needed, reject IM input while disabling device
  ssb: reset device only if it was enabled

 drivers/ssb/main.c           |   36 +++++++++++++++++++++++++++---------
 include/linux/ssb/ssb_regs.h |    2 ++
 2 files changed, 29 insertions(+), 9 deletions(-)

-- 
1.7.3.4
