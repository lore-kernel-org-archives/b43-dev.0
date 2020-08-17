From: Lee Jones <lee.jones@linaro.org>
Date: Mon, 17 Aug 2020 10:11:39 +0100
Subject: [PATCH 26/30] net: wireless: broadcom: b43: phy_common: Demote
 non-conformant kerneldoc header
In-Reply-To: <CACna6ryNNyyVftEFNFEwouKc3O21oPaeqie+bjJR4L_Cf8z2BQ@mail.gmail.com>
References: <20200814113933.1903438-1-lee.jones@linaro.org>
 <20200814113933.1903438-27-lee.jones@linaro.org>
 <CACna6ryNNyyVftEFNFEwouKc3O21oPaeqie+bjJR4L_Cf8z2BQ@mail.gmail.com>
Message-ID: <20200817091139.GU4354@dell>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: David Miller <davem@davemloft.net>, kuba@kernel.org, Michael Buesch <m@bues.ch>, Stefano Brivio <stefano.brivio@polimi.it>, Andreas Jaggi <andreas.jaggi@waterwave.ch>, Network Development <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, "Alexander A. Klimov" <grandmaster@al2klimov.de>, Martin Langer <martin-langer@gmx.de>, van Dyk <kugelfang@gentoo.org>, Kalle Valo <kvalo@codeaurora.org>

On Mon, 17 Aug 2020, Rafa? Mi?ecki wrote:

> On Fri, 14 Aug 2020 at 13:41, Lee Jones <lee.jones@linaro.org> wrote:
> > Fixes the following W=1 kernel build warning(s):
> >
> >  drivers/net/wireless/broadcom/b43/phy_common.c:467: warning: Function parameter or member 'work' not described in 'b43_phy_txpower_adjust_work'
> 
> Why you can't document @work instead? Should be quite a better solution.

It some circumstances it would, but not this one.

 1. This 'kernel-doc' function is not referenced from any
    documentation location i.e. it is presently unused and there is no
    reason for it to be kernel-doc in the first place.
 2. This patch stops `scripts/find-unused-docs.sh` complaining about
    phy_common.c
 3. 'b43_phy_txpower_adjust_work' is the only function that has been
     documented as kernel-doc - why is that?  Seems like a mistake.
 
-- 
Lee Jones [???]
Senior Technical Lead - Developer Services
Linaro.org ? Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
