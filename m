From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 27 Aug 2020 10:15:40 +0000 (UTC)
Subject: [PATCH 01/16] wireless: ath5k: convert tasklets to use new
 tasklet_setup() API
In-Reply-To: <20200817090637.26887-2-allen.cryptic@gmail.com>
References: <20200817090637.26887-2-allen.cryptic@gmail.com>
Message-ID: <20200827101541.23AA0C433AF@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Allen Pais <allen.cryptic@gmail.com>
Cc: Allen Pais <allen.lkml@gmail.com>, chunkeey@googlemail.com, jirislaby@kernel.org, brcm80211-dev-list@cypress.com, pkshih@realtek.com, b43-dev@lists.infradead.org, dsd@gentoo.org, ath11k@lists.infradead.org, kune@deine-taler.de, mickflemm@gmail.com, keescook@chromium.org, kuba@kernel.org, brcm80211-dev-list.pdl@broadcom.com, yhchuang@realtek.com, netdev@vger.kernel.org, helmut.schaa@googlemail.com, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org, stas.yakovlev@gmail.com, Romain Perier <romain.perier@gmail.com>, Larry.Finger@lwfinger.net

Allen Pais <allen.cryptic@gmail.com> wrote:

> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

c068a9ec3c94 ath5k: convert tasklets to use new tasklet_setup() API

-- 
https://patchwork.kernel.org/patch/11717393/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
