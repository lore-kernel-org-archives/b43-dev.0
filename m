From: Kalle Valo <kvalo@codeaurora.org>
Date: Mon, 31 Aug 2020 15:14:24 +0000 (UTC)
Subject: [PATCH 04/16] wireless: ath11k: convert tasklets to use new
 tasklet_setup() API
In-Reply-To: <20200817090637.26887-5-allen.cryptic@gmail.com>
References: <20200817090637.26887-5-allen.cryptic@gmail.com>
Message-ID: <20200831151424.95D2DC433B1@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Allen Pais <allen.cryptic@gmail.com>
Cc: brcm80211-dev-list.pdl@broadcom.com, pkshih@realtek.com, yhchuang@realtek.com, keescook@chromium.org, linux-kernel@vger.kernel.org, Allen Pais <allen.lkml@gmail.com>, linux-wireless@vger.kernel.org, helmut.schaa@googlemail.com, b43-dev@lists.infradead.org, ath11k@lists.infradead.org, brcm80211-dev-list@cypress.com, mcgrof@kernel.org, netdev@vger.kernel.org, mickflemm@gmail.com, dsd@gentoo.org, chunkeey@googlemail.com, kuba@kernel.org, jirislaby@kernel.org, kune@deine-taler.de, stas.yakovlev@gmail.com, Larry.Finger@lwfinger.net

Allen Pais <allen.cryptic@gmail.com> wrote:

> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

c08279a93191 ath11k: convert tasklets to use new tasklet_setup() API

-- 
https://patchwork.kernel.org/patch/11717399/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
