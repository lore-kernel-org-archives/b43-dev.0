From: Lee Jones <lee.jones@linaro.org>
Date: Mon, 17 Aug 2020 09:50:18 +0100
Subject: [PATCH 07/30] net: wireless: broadcom: b43: main: Add braces
 around empty statements
In-Reply-To: <87eeo9kulw.fsf@codeaurora.org>
References: <20200814113933.1903438-1-lee.jones@linaro.org>
 <20200814113933.1903438-8-lee.jones@linaro.org>
 <87v9hll0ro.fsf@codeaurora.org> <20200814164322.GP4354@dell>
 <87eeo9kulw.fsf@codeaurora.org>
Message-ID: <20200817085018.GT4354@dell>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, Martin Langer <martin-langer@gmx.de>, Stefano Brivio <stefano.brivio@polimi.it>, Michael Buesch <m@bues.ch>, van Dyk <kugelfang@gentoo.org>, Andreas Jaggi <andreas.jaggi@waterwave.ch>, Albert Herranz <albert_herranz@yahoo.es>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org

On Fri, 14 Aug 2020, Kalle Valo wrote:

> Lee Jones <lee.jones@linaro.org> writes:
> 
> > On Fri, 14 Aug 2020, Kalle Valo wrote:
> >
> >> Lee Jones <lee.jones@linaro.org> writes:
> >> 
> >> > Fixes the following W=1 kernel build warning(s):
> >> >
> >> >  drivers/net/wireless/broadcom/b43/main.c: In function ?b43_dummy_transmission?:
> >> >  drivers/net/wireless/broadcom/b43/main.c:785:3: warning: suggest
> >> > braces around empty body in an ?if? statement [-Wempty-body]
> >> >  drivers/net/wireless/broadcom/b43/main.c: In function ?b43_do_interrupt_thread?:
> >> >  drivers/net/wireless/broadcom/b43/main.c:2017:3: warning: suggest
> >> > braces around empty body in an ?if? statement [-Wempty-body]
> >> >
> >> > Cc: Kalle Valo <kvalo@codeaurora.org>
> >> > Cc: "David S. Miller" <davem@davemloft.net>
> >> > Cc: Jakub Kicinski <kuba@kernel.org>
> >> > Cc: Martin Langer <martin-langer@gmx.de>
> >> > Cc: Stefano Brivio <stefano.brivio@polimi.it>
> >> > Cc: Michael Buesch <m@bues.ch>
> >> > Cc: van Dyk <kugelfang@gentoo.org>
> >> > Cc: Andreas Jaggi <andreas.jaggi@waterwave.ch>
> >> > Cc: Albert Herranz <albert_herranz@yahoo.es>
> >> > Cc: linux-wireless at vger.kernel.org
> >> > Cc: b43-dev at lists.infradead.org
> >> > Cc: netdev at vger.kernel.org
> >> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> >> > ---
> >> >  drivers/net/wireless/broadcom/b43/main.c | 6 ++++--
> >> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >> 
> >> Please don't copy the full directory structure to the title. I'll change
> >> the title to more simple version:
> >> 
> >> b43: add braces around empty statements
> >
> > This seems to go the other way.
> >
> > "net: wireless: b43" seems sensible.
> 
> Sorry, not understanding what you mean here.

So I agree that:

  "net: wireless: broadcom: b43: main"

... seems unnecessarily long and verbose.  However, IMHO:

  "b43:"

... is too short and not forthcoming enough.  Obviously this fine when
something like `git log -- net/wireless`, as you already know what the
patch pertains to, however when someone who is not in the know (like I
would be) does `git log` and sees a "b43:" patch, they would have no
idea which subsystem this patch is adapting.  Even:

  "wireless: b43:"

... would be worlds better.

A Git log which omitted all subsystem tags would be of limited use.

> >> I'll do similar changes to other wireless-drivers patches.
> >
> > Thanks.
> >
> > Does that mean it's been applied, or is this future tense?
> 
> It's not applied yet, there will be an automatic "applied" email once I
> have done that.

I see.  Thanks for the clarification.

-- 
Lee Jones [???]
Senior Technical Lead - Developer Services
Linaro.org ? Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
