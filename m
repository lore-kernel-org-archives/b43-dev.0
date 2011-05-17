From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Tue, 17 May 2011 18:57:28 +0200
Subject: [PATCH 2/2] b43: separate ssb core reset
In-Reply-To: <1305651448-23947-1-git-send-email-zajec5@gmail.com>
References: <1305651448-23947-1-git-send-email-zajec5@gmail.com>
Message-ID: <1305651448-23947-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index 57fd7dd..9380842 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -1144,10 +1144,9 @@ void b43_power_saving_ctl_bits(struct b43_wldev *dev, unsigned int ps_flags)
 	}
 }
 
-void b43_wireless_core_reset(struct b43_wldev *dev, u32 flags)
+static void b43_ssb_wireless_core_reset(struct b43_wldev *dev, u32 flags)
 {
 	u32 tmslow;
-	u32 macctl;
 
 	flags |= B43_TMSLOW_PHYCLKEN;
 	flags |= B43_TMSLOW_PHYRESET;
@@ -1167,6 +1166,13 @@ void b43_wireless_core_reset(struct b43_wldev *dev, u32 flags)
 	ssb_write32(dev->sdev, SSB_TMSLOW, tmslow);
 	ssb_read32(dev->sdev, SSB_TMSLOW);	/* flush */
 	msleep(1);
+}
+
+void b43_wireless_core_reset(struct b43_wldev *dev, u32 flags)
+{
+	u32 macctl;
+
+	b43_ssb_wireless_core_reset(dev, flags);
 
 	/* Turn Analog ON, but only if we already know the PHY-type.
 	 * This protects against very early setup where we don't know the
-- 
1.7.3.4
