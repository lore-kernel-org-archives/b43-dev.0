From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sun,  8 May 2011 20:30:33 +0200
Subject: [PATCH V2 3/3] b43legacy: drop ssb-duplicated workaround for dangling
	cores
In-Reply-To: <1304879433-7096-1-git-send-email-zajec5@gmail.com>
References: <1304879433-7096-1-git-send-email-zajec5@gmail.com>
Message-ID: <1304879433-7096-4-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?q?Michael=20B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

Remove the code to detect inactive 802.11 cores, as that function is now done
in ssb.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43legacy/main.c |   18 ------------------
 1 files changed, 0 insertions(+), 18 deletions(-)

diff --git a/drivers/net/wireless/b43legacy/main.c b/drivers/net/wireless/b43legacy/main.c
index 2162663..f6d5446 100644
--- a/drivers/net/wireless/b43legacy/main.c
+++ b/drivers/net/wireless/b43legacy/main.c
@@ -3696,26 +3696,8 @@ static int b43legacy_one_core_attach(struct ssb_device *dev,
 				     struct b43legacy_wl *wl)
 {
 	struct b43legacy_wldev *wldev;
-	struct pci_dev *pdev;
 	int err = -ENOMEM;
 
-	if (!list_empty(&wl->devlist)) {
-		/* We are not the first core on this chip. */
-		pdev = (dev->bus->bustype == SSB_BUSTYPE_PCI) ? dev->bus->host_pci : NULL;
-		/* Only special chips support more than one wireless
-		 * core, although some of the other chips have more than
-		 * one wireless core as well. Check for this and
-		 * bail out early.
-		 */
-		if (!pdev ||
-		    ((pdev->device != 0x4321) &&
-		     (pdev->device != 0x4313) &&
-		     (pdev->device != 0x431A))) {
-			b43legacydbg(wl, "Ignoring unconnected 802.11 core\n");
-			return -ENODEV;
-		}
-	}
-
 	wldev = kzalloc(sizeof(*wldev), GFP_KERNEL);
 	if (!wldev)
 		goto out;
-- 
1.7.3.4
