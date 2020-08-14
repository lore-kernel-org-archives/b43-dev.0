From: Lee Jones <lee.jones@linaro.org>
Date: Fri, 14 Aug 2020 12:39:10 +0100
Subject: [PATCH 07/30] net: wireless: broadcom: b43: main: Add braces around
 empty statements
In-Reply-To: <20200814113933.1903438-1-lee.jones@linaro.org>
References: <20200814113933.1903438-1-lee.jones@linaro.org>
Message-ID: <20200814113933.1903438-8-lee.jones@linaro.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org
Cc: linux-kernel@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, Martin Langer <martin-langer@gmx.de>, Stefano Brivio <stefano.brivio@polimi.it>, Michael Buesch <m@bues.ch>, van Dyk <kugelfang@gentoo.org>, Andreas Jaggi <andreas.jaggi@waterwave.ch>, Albert Herranz <albert_herranz@yahoo.es>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/net/wireless/broadcom/b43/main.c: In function ?b43_dummy_transmission?:
 drivers/net/wireless/broadcom/b43/main.c:785:3: warning: suggest braces around empty body in an ?if? statement [-Wempty-body]
 drivers/net/wireless/broadcom/b43/main.c: In function ?b43_do_interrupt_thread?:
 drivers/net/wireless/broadcom/b43/main.c:2017:3: warning: suggest braces around empty body in an ?if? statement [-Wempty-body]

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Martin Langer <martin-langer@gmx.de>
Cc: Stefano Brivio <stefano.brivio@polimi.it>
Cc: Michael Buesch <m@bues.ch>
Cc: van Dyk <kugelfang@gentoo.org>
Cc: Andreas Jaggi <andreas.jaggi@waterwave.ch>
Cc: Albert Herranz <albert_herranz@yahoo.es>
Cc: linux-wireless at vger.kernel.org
Cc: b43-dev at lists.infradead.org
Cc: netdev at vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/net/wireless/broadcom/b43/main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index a54dd4f7fa54a..2a29fa69f692c 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -781,8 +781,9 @@ void b43_dummy_transmission(struct b43_wldev *dev, bool ofdm, bool pa_on)
 	b43_write16(dev, B43_MMIO_XMTSEL, 0x0826);
 	b43_write16(dev, B43_MMIO_TXE0_CTL, 0x0000);
 
-	if (!pa_on && phy->type == B43_PHYTYPE_N)
+	if (!pa_on && phy->type == B43_PHYTYPE_N) {
 		; /*b43_nphy_pa_override(dev, false) */
+	}
 
 	switch (phy->type) {
 	case B43_PHYTYPE_N:
@@ -2013,8 +2014,9 @@ static void b43_do_interrupt_thread(struct b43_wldev *dev)
 		handle_irq_beacon(dev);
 	if (reason & B43_IRQ_PMQ)
 		handle_irq_pmq(dev);
-	if (reason & B43_IRQ_TXFIFO_FLUSH_OK)
+	if (reason & B43_IRQ_TXFIFO_FLUSH_OK) {
 		;/* TODO */
+	}
 	if (reason & B43_IRQ_NOISESAMPLE_OK)
 		handle_irq_noise(dev);
 
-- 
2.25.1
