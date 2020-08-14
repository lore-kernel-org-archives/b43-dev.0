From: Lee Jones <lee.jones@linaro.org>
Date: Fri, 14 Aug 2020 12:39:20 +0100
Subject: [PATCH 17/30] net: wireless: broadcom: b43legacy: main: Provide
 braces around empty 'if' body
In-Reply-To: <20200814113933.1903438-1-lee.jones@linaro.org>
References: <20200814113933.1903438-1-lee.jones@linaro.org>
Message-ID: <20200814113933.1903438-18-lee.jones@linaro.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: davem@davemloft.net, kuba@kernel.org
Cc: linux-kernel@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@codeaurora.org>, Martin Langer <martin-langer@gmx.de>, Stefano Brivio <stefano.brivio@polimi.it>, Michael Buesch <m@bues.ch>, van Dyk <kugelfang@gentoo.org>, Andreas Jaggi <andreas.jaggi@waterwave.ch>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/net/wireless/broadcom/b43legacy/main.c: In function ?b43legacy_interrupt_tasklet?:
 drivers/net/wireless/broadcom/b43legacy/main.c:1344:3: warning: suggest braces around empty body in an ?if? statement [-Wempty-body]

Cc: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Martin Langer <martin-langer@gmx.de>
Cc: Stefano Brivio <stefano.brivio@polimi.it>
Cc: Michael Buesch <m@bues.ch>
Cc: van Dyk <kugelfang@gentoo.org>
Cc: Andreas Jaggi <andreas.jaggi@waterwave.ch>
Cc: linux-wireless at vger.kernel.org
Cc: b43-dev at lists.infradead.org
Cc: netdev at vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/net/wireless/broadcom/b43legacy/main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index 2eaf481f03f1d..044a5fa66ae79 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -1340,8 +1340,9 @@ static void b43legacy_interrupt_tasklet(unsigned long data)
 		handle_irq_beacon(dev);
 	if (reason & B43legacy_IRQ_PMQ)
 		handle_irq_pmq(dev);
-	if (reason & B43legacy_IRQ_TXFIFO_FLUSH_OK)
+	if (reason & B43legacy_IRQ_TXFIFO_FLUSH_OK) {
 		;/*TODO*/
+	}
 	if (reason & B43legacy_IRQ_NOISESAMPLE_OK)
 		handle_irq_noise(dev);
 
-- 
2.25.1
