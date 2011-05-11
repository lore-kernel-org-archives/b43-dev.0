From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Wed, 11 May 2011 02:10:59 +0200
Subject: [PATCH 2/2] b43: implement timeouts workaround
In-Reply-To: <1305072659-4011-1-git-send-email-zajec5@gmail.com>
References: <1305072659-4011-1-git-send-email-zajec5@gmail.com>
Message-ID: <1305072659-4011-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Documented in: <4BB81CAD.10602@lwfinger.net>

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index fd8bd98..88bfd29 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -4213,7 +4213,18 @@ static void b43_bluetooth_coext_disable(struct b43_wldev *dev)
 
 static void b43_imcfglo_timeouts_workaround(struct b43_wldev *dev)
 {
-	/* TODO: implement 80211 core workaround here */
+	struct ssb_bus *bus = dev->dev->bus;
+	u32 tmp;
+
+	if ((bus->chip_id == 0x4311 && bus->chip_rev == 2) ||
+	    (bus->chip_id == 0x4312)) {
+		tmp = ssb_read32(dev->dev, SSB_IMCFGLO);
+		tmp &= ~SSB_IMCFGLO_REQTO;
+		tmp &= ~SSB_IMCFGLO_SERTO;
+		tmp |= 0x3;
+		ssb_write32(dev->dev, SSB_IMCFGLO, tmp);
+		ssb_commit_settings(bus);
+	}
 }
 
 static void b43_set_synth_pu_delay(struct b43_wldev *dev, bool idle)
-- 
1.7.3.4
