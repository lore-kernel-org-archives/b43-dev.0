From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 13 Jun 2011 17:57:03 +0200
Subject: Question about hosts drivers split between ssb and b43
Message-ID: <BANLkTin2cmA1RH5uDSmGOm4nAvicqiiQ6A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: b43-dev <b43-dev@lists.infradead.org>

What is the reason of splitting few hosts drivers (sdio and pcmcia)
into two pieces: one in the ssb and second in b43?

Why we didn't put everything in ssb? If sounds more reasonable (just)
*for me* and it looks like less messing since we try to add support
for BCMA in b43.

-- 
Rafa?
