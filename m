From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 26 Jan 2016 16:35:09 +0100
Subject: Use of deleted Kconfig option B43_PCMCIA
In-Reply-To: <56A78B69.9050002@fau.de>
References: <56A78B69.9050002@fau.de>
Message-ID: <CACna6rzdCwK7cWNkHUFbeaG2DkOW8bKfxEv=RqhW7RPZsv84hg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andreas Ziegler <andreas.ziegler@fau.de>
Cc: Kalle Valo <kvalo@codeaurora.org>, b43-dev <b43-dev@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>

On 26 January 2016 at 16:06, Andreas Ziegler <andreas.ziegler@fau.de> wrote:
> your commit 399500da18f7 ("ssb: pick PCMCIA host code support from b43
> driver") removed the Kconfig option B43_PCMCIA from Kconfig, but left
> one reference to it in b43/main.c, inside the b43_print_driverinfo()
> function.
>
> Can this #ifdef be removed, should it be replaced with an #ifdef using
> CONFIG_SSB_PCMCIAHOST instead or should we do something entirely different?

We even got patch for this, but it wasn't submitted correctly (didn't
go to linux-wireless):
https://lkml.org/lkml/2015/11/2/154

-- 
Rafa?
