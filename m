From: Jarl Friis <jarl@softace.dk>
Date: Thu, 20 Sep 2012 08:32:42 +0200
Subject: [PATCH 2/2] Using LP firmware for taking advantage of the
 low-power capabilities.
In-Reply-To: <CACna6ryRXB6GjymaP-RM8HTEeWRHnE8B=5tdH3J4JGyeHBEE6Q@mail.gmail.com>
References: <1348053493-22955-1-git-send-email-jarl@softace.dk>
 <1348053493-22955-2-git-send-email-jarl@softace.dk>
 <CAOjsGA2uvCxnX1PH85w2vO894kZT+af-Tgj7bV-3kw3ScxN10g@mail.gmail.com>
 <CACna6ryRXB6GjymaP-RM8HTEeWRHnE8B=5tdH3J4JGyeHBEE6Q@mail.gmail.com>
Message-ID: <CAOjsGA3cmuGHY1WAJ92RwbUf1iNpFHaSvePxvzSYxkY1FJzjkw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Stefano Brivio <stefano.brivio@polimi.it>, =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>

2012/9/20 Rafa? Mi?ecki <zajec5@gmail.com>:
> Well, your BCM4322 is not LP-PHY card... does it really work better
> after that change, and wakes up faster? ;)

That was my un-scientific impression, yes (probably biased by
expectations, right? :-) ). But it could also be that I was using a
more upstream kernel than the stock ubuntu kernel. I don't know :-)

> BCM4313 is LCN-PHY, so your change won't affect it, not to mention it
> is not supported by b43.
>
> 14e4:4315 is really BCM4312 (LP-PHY) and maybe could be affected by
> this patch... but just in case of core 16. AFAIK our 14e4:4315 are
> usually devices with core rev 15.

Thanks for clearing that out...

Jarl
