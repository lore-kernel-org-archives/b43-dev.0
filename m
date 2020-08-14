From: Kalle Valo <kvalo@codeaurora.org>
Date: Fri, 14 Aug 2020 18:12:27 +0300
Subject: [PATCH 07/30] net: wireless: broadcom: b43: main: Add braces
 around empty statements
In-Reply-To: <20200814113933.1903438-8-lee.jones@linaro.org> (Lee Jones's
 message of "Fri, 14 Aug 2020 12:39:10 +0100")
References: <20200814113933.1903438-1-lee.jones@linaro.org>
 <20200814113933.1903438-8-lee.jones@linaro.org>
Message-ID: <87v9hll0ro.fsf@codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lee Jones <lee.jones@linaro.org>
Cc: davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, Martin Langer <martin-langer@gmx.de>, Stefano Brivio <stefano.brivio@polimi.it>, Michael Buesch <m@bues.ch>, van Dyk <kugelfang@gentoo.org>, Andreas Jaggi <andreas.jaggi@waterwave.ch>, Albert Herranz <albert_herranz@yahoo.es>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org

Lee Jones <lee.jones@linaro.org> writes:

> Fixes the following W=1 kernel build warning(s):
>
>  drivers/net/wireless/broadcom/b43/main.c: In function ?b43_dummy_transmission?:
>  drivers/net/wireless/broadcom/b43/main.c:785:3: warning: suggest braces around empty body in an ?if? statement [-Wempty-body]
>  drivers/net/wireless/broadcom/b43/main.c: In function ?b43_do_interrupt_thread?:
>  drivers/net/wireless/broadcom/b43/main.c:2017:3: warning: suggest braces around empty body in an ?if? statement [-Wempty-body]
>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Martin Langer <martin-langer@gmx.de>
> Cc: Stefano Brivio <stefano.brivio@polimi.it>
> Cc: Michael Buesch <m@bues.ch>
> Cc: van Dyk <kugelfang@gentoo.org>
> Cc: Andreas Jaggi <andreas.jaggi@waterwave.ch>
> Cc: Albert Herranz <albert_herranz@yahoo.es>
> Cc: linux-wireless at vger.kernel.org
> Cc: b43-dev at lists.infradead.org
> Cc: netdev at vger.kernel.org
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/net/wireless/broadcom/b43/main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Please don't copy the full directory structure to the title. I'll change
the title to more simple version:

b43: add braces around empty statements

I'll do similar changes to other wireless-drivers patches.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
