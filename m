From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun, 17 Jul 2011 10:30:33 +0200
Subject: [PATCH 3/4] b43: HT-PHY: find channel entry with regs data
In-Reply-To: <1310891434-3537-1-git-send-email-zajec5@gmail.com>
References: <1310891434-3537-1-git-send-email-zajec5@gmail.com>
Message-ID: <1310891434-3537-3-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>


Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/radio_2059.c |    9 +++++++++
 1 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/radio_2059.c b/drivers/net/wireless/b43/radio_2059.c
index 23dea4b..f029f6e 100644
--- a/drivers/net/wireless/b43/radio_2059.c
+++ b/drivers/net/wireless/b43/radio_2059.c
@@ -161,5 +161,14 @@ static const struct b43_phy_ht_channeltab_e_radio2059 b43_phy_ht_channeltab_radi
 const struct b43_phy_ht_channeltab_e_radio2059
 *b43_phy_ht_get_channeltab_e_r2059(struct b43_wldev *dev, u16 freq)
 {
+	const struct b43_phy_ht_channeltab_e_radio2059 *e;
+	unsigned int i;
+
+	e = b43_phy_ht_channeltab_radio2059;
+	for (i = 0; i < ARRAY_SIZE(b43_phy_ht_channeltab_radio2059); i++, e++) {
+		if (e->freq == freq)
+			return e;
+	}
+
 	return NULL;
 }
-- 
1.7.3.4
