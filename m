From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 17 Mar 2013 19:00:20 +0100
Subject: [PATCH 3/4] b43: HT-PHY: finish calculating values for idle TSSI
In-Reply-To: <1363543221-10651-1-git-send-email-zajec5@gmail.com>
References: <1363543221-10651-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363543221-10651-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

diff --git a/drivers/net/wireless/b43/phy_ht.c b/drivers/net/wireless/b43/phy_ht.c
index afb13f2..204b9f0 100644
--- a/drivers/net/wireless/b43/phy_ht.c
+++ b/drivers/net/wireless/b43/phy_ht.c
@@ -529,9 +529,21 @@ static void b43_phy_ht_tx_power_ctl(struct b43_wldev *dev, bool enable)
 static void b43_phy_ht_tx_power_ctl_idle_tssi(struct b43_wldev *dev)
 {
 	struct b43_phy_ht *phy_ht = dev->phy.ht;
+	static const u16 base[] = { 0x840, 0x860, 0x880 };
+	u16 save_regs[3][3];
 	s32 rssi_buf[6];
+	int i;
 
-	/* TODO */
+	for (i = 0; i < 3; i++) {
+		save_regs[i][1] = b43_phy_read(dev, base[i] + 6);
+		save_regs[i][2] = b43_phy_read(dev, base[i] + 7);
+		save_regs[i][0] = b43_phy_read(dev, base[i] + 0);
+
+		b43_phy_write(dev, base[i] + 6, 0);
+		b43_phy_mask(dev, base[i] + 7, ~0xF); /* 0xF? Or just 0x6? */
+		b43_phy_set(dev, base[i] + 0, 0x0400);
+		b43_phy_set(dev, base[i] + 0, 0x1000);
+	}
 
 	b43_phy_ht_tx_tone(dev);
 	udelay(20);
@@ -543,7 +555,11 @@ static void b43_phy_ht_tx_power_ctl_idle_tssi(struct b43_wldev *dev)
 	phy_ht->idle_tssi[1] = rssi_buf[2] & 0xff;
 	phy_ht->idle_tssi[2] = rssi_buf[4] & 0xff;
 
-	/* TODO */
+	for (i = 0; i < 3; i++) {
+		b43_phy_write(dev, base[i] + 0, save_regs[i][0]);
+		b43_phy_write(dev, base[i] + 6, save_regs[i][1]);
+		b43_phy_write(dev, base[i] + 7, save_regs[i][2]);
+	}
 }
 
 static void b43_phy_ht_tx_power_ctl_setup(struct b43_wldev *dev)
-- 
1.7.10.4
