From: Lee Jones <lee.jones@linaro.org>
Date: Wed, 16 Sep 2020 14:44:55 +0100
Subject: [PATCH 10/16] wireless: intersil: convert tasklets to use new
 tasklet_setup() API
In-Reply-To: <20200817090637.26887-11-allen.cryptic@gmail.com>
References: <20200817090637.26887-1-allen.cryptic@gmail.com>
 <20200817090637.26887-11-allen.cryptic@gmail.com>
Message-ID: <20200916134455.GD4678@dell>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Allen Pais <allen.cryptic@gmail.com>
Cc: Allen Pais <allen.lkml@gmail.com>, kune@deine-taler.de, chunkeey@googlemail.com, jirislaby@kernel.org, brcm80211-dev-list@cypress.com, pkshih@realtek.com, b43-dev@lists.infradead.org, dsd@gentoo.org, ath11k@lists.infradead.org, stas.yakovlev@gmail.com, mickflemm@gmail.com, keescook@chromium.org, kuba@kernel.org, kvalo@codeaurora.org, brcm80211-dev-list.pdl@broadcom.com, yhchuang@realtek.com, netdev@vger.kernel.org, helmut.schaa@googlemail.com, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org, Romain Perier <romain.perier@gmail.com>, Larry.Finger@lwfinger.net

On Mon, 17 Aug 2020, Allen Pais wrote:

> From: Allen Pais <allen.lkml@gmail.com>
> 
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly
> and remove .data field.
> 
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  .../net/wireless/intersil/hostap/hostap_hw.c   | 18 +++++++++---------
>  drivers/net/wireless/intersil/orinoco/main.c   |  7 +++----
>  drivers/net/wireless/intersil/p54/p54pci.c     |  8 ++++----
>  3 files changed, 16 insertions(+), 17 deletions(-)

This patch seems to cause several warnings along the lines of:

drivers/net/wireless/intersil/hostap/hostap_hw.c: In function ?prism2_init_local_data?:
drivers/net/wireless/intersil/hostap/hostap_hw.c:3185:48: warning: cast between incompatible function types from ?void (*)(struct tasklet_struct *)? to ?void (*)(long unsigned int)? [-Wcast-function-type]
3185 | do { memset((q), 0, sizeof(*(q))); (q)->func = (void(*)(unsigned long))(f); } | ^
drivers/net/wireless/intersil/hostap/hostap_hw.c:3187:2: note: in expansion of macro ?HOSTAP_TASKLET_INIT?
3187 | HOSTAP_TASKLET_INIT(&local->bap_tasklet, hostap_bap_tasklet,
| ^~~~~~~~~~~~~~~~~~~
drivers/net/wireless/intersil/hostap/hostap_hw.c:3185:48: warning: cast between incompatible function types from ?void (*)(struct tasklet_struct *)? to ?void (*)(long unsigned int)? [-Wcast-function-type]

-- 
Lee Jones [???]
Senior Technical Lead - Developer Services
Linaro.org ? Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
