From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Thu,  7 Jul 2011 18:58:24 +0200
Subject: [PATCH 1/2] b43: define firmwares for HT and LCN PHYs
Message-ID: <1310057906-4088-1-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

We were uploading different firmwares to the hardware until finding
responding one.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/main.c |   40 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 40 insertions(+), 0 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index ef64628..52136a4 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -2159,6 +2159,8 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 	u32 tmshigh;
 	int err;
 
+	/* Files for HT and LCN were found by trying one by one */
+
 	/* Get microcode */
 	if ((rev >= 5) && (rev <= 10)) {
 		filename = "ucode5";
@@ -2178,6 +2180,18 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 			else
 				goto err_no_ucode;
 			break;
+		case B43_PHYTYPE_HT:
+			if (rev == 29)
+				filename = "ucode29_mimo";
+			else
+				goto err_no_ucode;
+			break;
+		case B43_PHYTYPE_LCN:
+			if (rev == 24)
+				filename = "ucode24_mimo";
+			else
+				goto err_no_ucode;
+			break;
 		default:
 			goto err_no_ucode;
 		}
@@ -2240,6 +2254,18 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 		else
 			goto err_no_initvals;
 		break;
+	case B43_PHYTYPE_HT:
+		if (rev == 29)
+			filename = "ht0initvals29";
+		else
+			goto err_no_initvals;
+		break;
+	case B43_PHYTYPE_LCN:
+		if (rev == 24)
+			filename = "lcn0initvals24";
+		else
+			goto err_no_initvals;
+		break;
 	default:
 		goto err_no_initvals;
 	}
@@ -2287,6 +2313,18 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 		else
 			goto err_no_initvals;
 		break;
+	case B43_PHYTYPE_HT:
+		if (rev == 29)
+			filename = "ht0bsinitvals29";
+		else
+			goto err_no_initvals;
+		break;
+	case B43_PHYTYPE_LCN:
+		if (rev == 24)
+			filename = "lcn0bsinitvals24";
+		else
+			goto err_no_initvals;
+		break;
 	default:
 		goto err_no_initvals;
 	}
@@ -4976,6 +5014,8 @@ static int b43_wireless_core_attach(struct b43_wldev *dev)
 #endif
 		case B43_PHYTYPE_G:
 		case B43_PHYTYPE_N:
+		case B43_PHYTYPE_HT:
+		case B43_PHYTYPE_LCN:
 			have_2ghz_phy = 1;
 			break;
 		default:
-- 
1.7.3.4
