From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Fri, 26 Aug 2011 20:41:18 +0200
Subject: [wireless-next][PATCH 0/3][ANNOUNCE] b43 the first Linux driver
	supporting HT-PHY (BCM4331)!
Message-ID: <1314384081-3460-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>, Maxime Vincent <maxime.vince@gmail.com>, Darren <dmbtech@gmail.com>, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

After improving DMA (the important patch for BCM4331 is my one) we can finally
enable support for HT-PHY. The whole code has been written from MMIO dumps
grabbed from ndiswrapper+windows driver, but seems to be stable and was tested
by 3 people. Unfortunately there are still some missing conditions that can't
be fixed without RE the closed driver or having Broadcom co-operating. However
it seems we live with that well enough for basic usage :)

BCM4331 doesn't have any Linux driver yet, both: wl and brcm80211 don't support
it. So we can be really proud of it ;) Ah, and I should mention that ndiswrapper
was frequently reported to lock up machines when working with this card (see
Ubuntu's forum about MacBook 8.1).

To use b43 with BCM4331 you will need to grab the newest b43-fwcutter and
extract firmware from some recent closed source driver. See our wiki page in
few hours for nice howto.

Big thanks go to David Woodhouse for providing me access to his MacBook, letting
grab the dumps, test patches and debugging a lot of hard cases with me (and
sometime without ;) ).

Larry Finger (1):
  b43: Relax requirement for descriptors to be in the DMA zone

Rafa? Mi?ecki (2):
  b43: use 8K buffers for 64-bit DMA to workaround hardware bug
  b43: make HT-PHY support experimental

 drivers/net/wireless/b43/Kconfig |    6 +++---
 drivers/net/wireless/b43/dma.c   |   31 ++++++++++++++++---------------
 drivers/net/wireless/b43/dma.h   |    3 ++-
 3 files changed, 21 insertions(+), 19 deletions(-)
