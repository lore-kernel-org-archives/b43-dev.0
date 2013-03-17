From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 17 Mar 2013 19:00:21 +0100
Subject: [PATCH 4/4] b43: HT-PHY: do some extra TSSI setup after configuring TX
In-Reply-To: <1363543221-10651-1-git-send-email-zajec5@gmail.com>
References: <1363543221-10651-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363543221-10651-5-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

After b43_phy_ht_tx_power_ctl_setup there are some extra radio ops:
 radio_read(0x08bf) -> 0x0001
radio_write(0x08bf) <- 0x0001
radio_write(0x0159) <- 0x0011
On N-PHY we write 0x11 to TSSI regs, so it's probably sth similar.
---
 drivers/net/wireless/b43/phy_ht.c |   13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index 204b9f0..5c0ec14 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -562,6 +562,18 @@ static void b43_phy_ht_tx_power_ctl_idle_tssi(struct b43_wldev *dev)
 	}
 }
 
+static void b43_phy_ht_tssi_setup(struct b43_wldev *dev)
+{
+	static const u16 routing[] = { R2059_C1, R2059_C2, R2059_C3, };
+	u8 i;
+
+	/* 0x159 is probably TX_SSI_MUX or TSSIG (by comparing to N-PHY) */
+	for (i = 0; i < 3; i++) {
+		b43_radio_set(dev, 0x8bf, 0x1);
+		b43_radio_write(dev, routing[i] | 0x0159, 0x0011);
+	}
+}
+
 static void b43_phy_ht_tx_power_ctl_setup(struct b43_wldev *dev)
 {
 	struct b43_phy_ht *phy_ht = dev->phy.ht;
@@ -955,6 +967,7 @@ static int b43_phy_ht_op_init(struct b43_wldev *dev)
 	b43_phy_ht_tx_power_ctl(dev, false);
 	b43_phy_ht_tx_power_ctl_idle_tssi(dev);
 	b43_phy_ht_tx_power_ctl_setup(dev);
+	b43_phy_ht_tssi_setup(dev);
 	b43_phy_ht_tx_power_ctl(dev, saved_tx_pwr_ctl);
 
 	return 0;
-- 
1.7.10.4
