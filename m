From: Adrian Chadd <adrian@freebsd.org>
Date: Mon, 16 May 2016 20:25:33 -0700
Subject: [PATCH] b43: don't fall back to CCK rates on 5GHz OFDM for RTS frames
Message-ID: <1463455534-22512-1-git-send-email-adrian@freebsd.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org
Cc: Adrian Chadd <adrian@freebsd.org>, Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org

This fixes a small issue with selecting fallback rates for
RTS frames.  For OFDM PHY rates in 5GHz mode we shouldn't
fall back to CCK.

Adrian Chadd (1):
  [b43] don't unconditionally fall back to CCK if the rate is 6MB OFDM.

 drivers/net/wireless/broadcom/b43/xmit.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

-- 
2.6.3
