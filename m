From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 16 Jun 2016 15:15:05 +0000 (UTC)
Subject: b43: only hardcode LED behavior if SPROM doesn't encode any
In-Reply-To: <1464987843-6928-1-git-send-email-dev@lynxeye.de>
Message-ID: <20160616151505.BDED76141E@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Lucas Stach <dev@lynxeye.de> wrote:
> Only hardcode the LED behavior if the SROM doesn't provide any for all
> LEDs of the card. This avoids instantiating LED triggers for unconnected
> LEDs, while (hopefully) keeping things working for old cards with a
> blank SROM.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Thanks, 1 patch applied to wireless-drivers-next.git:

508f1222ba4e b43: only hardcode LED behavior if SPROM doesn't encode any

-- 
Sent by pwcli
https://patchwork.kernel.org/patch/9154077/
