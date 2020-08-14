From: Lee Jones <lee.jones@linaro.org>
Date: Fri, 14 Aug 2020 17:36:54 +0100
Subject: [PATCH 26/30] net: wireless: broadcom: b43: phy_common: Demote
 non-conformant kerneldoc header
In-Reply-To: <CAJrvBf00yQQ7F1p1utBuq1oWc2RwnqXijBjaJ+FuxG0mS0TvOA@mail.gmail.com>
References: <20200814113933.1903438-1-lee.jones@linaro.org>
 <20200814113933.1903438-27-lee.jones@linaro.org>
 <CAJrvBf00yQQ7F1p1utBuq1oWc2RwnqXijBjaJ+FuxG0mS0TvOA@mail.gmail.com>
Message-ID: <20200814163654.GM4354@dell>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Artur Dubrovsky <dubrovsky.mail@gmail.com>
Cc: davem@davemloft.net, kuba@kernel.org, Michael Buesch <m@bues.ch>, Stefano Brivio <stefano.brivio@polimi.it>, Andreas Jaggi <andreas.jaggi@waterwave.ch>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org, "Alexander A. Klimov" <grandmaster@al2klimov.de>, Martin Langer <martin-langer@gmx.de>, van Dyk <kugelfang@gentoo.org>, Kalle Valo <kvalo@codeaurora.org>

On Fri, 14 Aug 2020, Artur Dubrovsky wrote:

> remove me from mailing list

I guess you have to remove yourself:

http://lists.infradead.org/mailman/listinfo/b43-dev

> ??, 14 ???. 2020 ?. ? 14:43, Lee Jones <lee.jones@linaro.org>:
> 
> > Fixes the following W=1 kernel build warning(s):
> >
> >  drivers/net/wireless/broadcom/b43/phy_common.c:467: warning: Function
> > parameter or member 'work' not described in 'b43_phy_txpower_adjust_work'
> >
> > Cc: Kalle Valo <kvalo@codeaurora.org>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Jakub Kicinski <kuba@kernel.org>
> > Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
> > Cc: Martin Langer <martin-langer@gmx.de>
> > Cc: Stefano Brivio <stefano.brivio@polimi.it>
> > Cc: Michael Buesch <m@bues.ch>
> > Cc: van Dyk <kugelfang@gentoo.org>
> > Cc: Andreas Jaggi <andreas.jaggi@waterwave.ch>
> > Cc: linux-wireless at vger.kernel.org
> > Cc: b43-dev at lists.infradead.org
> > Cc: netdev at vger.kernel.org
> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > ---
> >  drivers/net/wireless/broadcom/b43/phy_common.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)

[...]

-- 
Lee Jones [???]
Senior Technical Lead - Developer Services
Linaro.org ? Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
