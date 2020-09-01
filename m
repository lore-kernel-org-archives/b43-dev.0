From: Kalle Valo <kvalo@codeaurora.org>
Date: Tue,  1 Sep 2020 09:25:03 +0000 (UTC)
Subject: [PATCH 12/16] wireless: mediatek: convert tasklets to use new
 tasklet_setup() API
In-Reply-To: <20200817090637.26887-13-allen.cryptic@gmail.com>
References: <20200817090637.26887-13-allen.cryptic@gmail.com>
Message-ID: <20200901092503.BF2D4C433CB@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Allen Pais <allen.cryptic@gmail.com>
Cc: Allen Pais <allen.lkml@gmail.com>, chunkeey@googlemail.com, jirislaby@kernel.org, brcm80211-dev-list@cypress.com, pkshih@realtek.com, b43-dev@lists.infradead.org, dsd@gentoo.org, ath11k@lists.infradead.org, kune@deine-taler.de, mickflemm@gmail.com, keescook@chromium.org, kuba@kernel.org, brcm80211-dev-list.pdl@broadcom.com, yhchuang@realtek.com, netdev@vger.kernel.org, helmut.schaa@googlemail.com, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org, stas.yakovlev@gmail.com, Romain Perier <romain.perier@gmail.com>, Larry.Finger@lwfinger.net

Allen Pais <allen.cryptic@gmail.com> wrote:

> From: Allen Pais <allen.lkml@gmail.com>
> 
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>

Please split this patch into two, mt76 and mt7601u patches go into
separate trees.

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/11717429/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
