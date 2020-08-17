From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Date: Mon, 17 Aug 2020 12:15:39 +0200
Subject: [PATCH 07/16] wireless: brcm80211: convert tasklets to use new
 tasklet_setup() API
In-Reply-To: <20200817090637.26887-8-allen.cryptic@gmail.com>
References: <20200817090637.26887-1-allen.cryptic@gmail.com>
 <20200817090637.26887-8-allen.cryptic@gmail.com>
Message-ID: <5080db28-3112-7d0a-ec7c-f437f670cfa3@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Allen Pais <allen.cryptic@gmail.com>, kvalo@codeaurora.org, kuba@kernel.org, jirislaby@kernel.org, mickflemm@gmail.com, mcgrof@kernel.org, chunkeey@googlemail.com, Larry.Finger@lwfinger.net, stas.yakovlev@gmail.com, helmut.schaa@googlemail.com, pkshih@realtek.com, yhchuang@realtek.com, dsd@gentoo.org, kune@deine-taler.de
Cc: brcm80211-dev-list.pdl@broadcom.com, keescook@chromium.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, brcm80211-dev-list@cypress.com, b43-dev@lists.infradead.org, Allen Pais <allen.lkml@gmail.com>, Romain Perier <romain.perier@gmail.com>, ath11k@lists.infradead.org

On 8/17/2020 11:06 AM, Allen Pais wrote:
> From: Allen Pais <allen.lkml@gmail.com>
> 
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.

Acked-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>   .../net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c  | 6 +++---
>   .../net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.h  | 2 +-
>   2 files changed, 4 insertions(+), 4 deletions(-)
