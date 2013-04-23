From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 23 Apr 2013 15:49:51 +0200
Subject: pull request: b43-next 2013-04-23
Message-ID: <CACna6rxOfr7jWKHfrGWC09Sw6XKShdexpkRKLeVhfuON5d7Bgw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John Linville <linville@tuxdriver.com>, linux-wireless@vger.kernel.org
Cc: b43-dev <b43-dev@lists.infradead.org>

Hi John,

Let me ask you once again for pulling my b43-next tree. I didn't add any new
patches since the last pull request, I just dropped ssb patch you already
pushed into your tree.

Let me remind the changes for b43:
> Changes include:
> 1) Minor improvements for HT-PHY code (BCM4331)
> 2) Code cleaning for HT-PHY and N-PHY

Sorry for the problem with the previous pull request. Your wireless-next was
slighlty too old for me (nouveau regression in 3.9-rc1) so I've based my tree
on wireless-testing. That wasn't too bright idea.

To rebase the tree I've simply used:
git rebase --onto wireless-next/master master~21 master


The following changes since commit c43933e61ea9b630521bf0d5cf06c155478308a7:

  mwifiex: remove redundant initialization for bss_descriptor
(2013-04-22 15:38:36 -0400)

are available in the git repository at:

  git://git.infradead.org/users/rafal/b43-next.git master

for you to fetch changes up to 0c201cfbfd47c40ee0cedbcd96e4fbaa85c5fc50:

  b43: N-PHY: don't use deprecated b43_radio_foo16 (2013-04-23 12:27:58 +0200)

----------------------------------------------------------------
Rafa? Mi?ecki (21):
      b43: HT-PHY: rename defines addressing cores on the 2059 radio
      b43: HT-PHY: tables: don't duplicate core-generic regs
      b43: HT-PHY: finish calculating values for idle TSSI
      b43: HT-PHY: do some extra TSSI setup after configuring TX
      b43: HT-PHY: define regs for power estimation
      b43: HT-PHY: store TX power state before disabling it
      b43: HT-PHY: use enum for RSSI types
      b43: N-PHY: use enum for RAIL type
      b43: N-PHY: simplify conditions in RSSI offset scale function
      b43: N-PHY: use more friendly variables names in RSSI code
      b43: N-PHY: rename RSSI types to be shorter and more accurate
      b43: N-PHY: use enum for RSSI type everywhere we use it
      b43: N-PHY: fix "NB" RSSI calibration on PHYs rev2-
      b43: use defines for board_type
      b43: N-PHY: define missing registers
      b43: N-PHY: use enum for INTC override function argument
      b43: N-PHY: use shortcut "ctl" in functions names
      b43: N-PHY: use defines for (re)storing VCM config
      b43: N-PHY: move tables init function to tables file
      b43: N-PHY: clean init tables
      b43: N-PHY: don't use deprecated b43_radio_foo16

 drivers/net/wireless/b43/phy_ht.c      |  119 +++---
 drivers/net/wireless/b43/phy_ht.h      |    6 +
 drivers/net/wireless/b43/phy_lp.c      |    4 +-
 drivers/net/wireless/b43/phy_n.c       |  649 +++++++++++++++++---------------
 drivers/net/wireless/b43/phy_n.h       |  146 +++++++
 drivers/net/wireless/b43/radio_2059.c  |   39 +-
 drivers/net/wireless/b43/radio_2059.h  |   14 +-
 drivers/net/wireless/b43/tables_nphy.c |   97 ++---
 drivers/net/wireless/b43/tables_nphy.h |   29 +-
 9 files changed, 661 insertions(+), 442 deletions(-)
