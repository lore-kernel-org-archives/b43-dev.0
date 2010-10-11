From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Mon, 11 Oct 2010 03:11:00 +0200
Subject: [PATCH 0/3] b43: N-PHY: Channel info cleaning
Message-ID: <1286759463-32221-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

I didn't get any NACK for my RFC, so there we go...

Two first patches contain changes I proposed in my single RFC plus one-line
change of setting channel in (to-be-dropped) radio_chanspec.

Third patch fixes logic mistake in decision about band change. By the way
it renames one variable to self-explaining.

Rafa? Mi?ecki (3):
  b43: N-PHY: grab more info about new channel
  b43: N-PHY: store info about current channel's type
  b43: N-PHY: fix logic in band switching

 drivers/net/wireless/b43/phy_common.h |    4 +-
 drivers/net/wireless/b43/phy_n.c      |   74 +++++++++++++++++---------------
 drivers/net/wireless/b43/phy_n.h      |    1 -
 3 files changed, 42 insertions(+), 37 deletions(-)
