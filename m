From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 17 Mar 2013 19:00:17 +0100
Subject: [PATCH 0/4] more HT-PHY improvements
Message-ID: <1363543221-10651-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

That are patches from my git repo [0] [1], just sending them to see if
you have any comments. I'll send them to John later, in a bigger pack,
or maybe will ask him to pull the tree.

[0] git://git.infradead.org/users/rafal/b43-next.git
[1] http://git.infradead.org/users/rafal/b43-next.git

Rafa? Mi?ecki (4):
  b43: HT-PHY: rename defines addressing cores on the 2059 radio
  b43: HT-PHY: tables: don't duplicate core-generic regs
  b43: HT-PHY: finish calculating values for idle TSSI
  b43: HT-PHY: do some extra TSSI setup after configuring TX

 drivers/net/wireless/b43/phy_ht.c     |   86 +++++++++++++++++++++------------
 drivers/net/wireless/b43/radio_2059.c |   39 ++++-----------
 drivers/net/wireless/b43/radio_2059.h |   14 ++----
 3 files changed, 66 insertions(+), 73 deletions(-)

-- 
1.7.10.4
