From: Lars-Peter Clausen <lars@metafoo.de>
Date: Mon,  8 Feb 2016 21:41:13 +0100
Subject: [PATCH 2/2] rtlwifi: Remove unnecessary synchronize_irq() before
 free_irq()
In-Reply-To: <1454964073-25108-1-git-send-email-lars@metafoo.de>
References: <1454964073-25108-1-git-send-email-lars@metafoo.de>
Message-ID: <1454964073-25108-2-git-send-email-lars@metafoo.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>, Chaoming Li <chaoming_li@realsil.com.cn>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Lars-Peter Clausen <lars@metafoo.de>

Calling synchronize_irq() right before free_irq() is quite useless. On one
hand the IRQ can easily fire again before free_irq() is entered, on the
other hand free_irq() itself calls synchronize_irq() internally (in a race
condition free way), before any state associated with the IRQ is freed.

Patch was generated using the following semantic patch:
// <smpl>
@@
expression irq;
@@
-synchronize_irq(irq);
 free_irq(irq, ...);
// </smpl>

Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
---
 drivers/net/wireless/realtek/rtlwifi/pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/pci.c b/drivers/net/wireless/realtek/rtlwifi/pci.c
index 7f471bf..140d254 100644
--- a/drivers/net/wireless/realtek/rtlwifi/pci.c
+++ b/drivers/net/wireless/realtek/rtlwifi/pci.c
@@ -2392,7 +2392,6 @@ void rtl_pci_disconnect(struct pci_dev *pdev)
 	rtlpriv->cfg->ops->deinit_sw_vars(hw);
 
 	if (rtlpci->irq_alloc) {
-		synchronize_irq(rtlpci->pdev->irq);
 		free_irq(rtlpci->pdev->irq, hw);
 		rtlpci->irq_alloc = 0;
 	}
-- 
2.1.4
