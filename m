From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 13 Jun 2011 18:27:21 +0200
Subject: Question about hosts drivers split between ssb and b43
In-Reply-To: <BANLkTin2cmA1RH5uDSmGOm4nAvicqiiQ6A@mail.gmail.com>
References: <BANLkTin2cmA1RH5uDSmGOm4nAvicqiiQ6A@mail.gmail.com>
Message-ID: <20110613182721.6cadccaf@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

On Mon, 13 Jun 2011 17:57:03 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> What is the reason of splitting few hosts drivers (sdio and pcmcia)
> into two pieces: one in the ssb and second in b43?

This stuff should actually be a standalone module.
However, because they are so tiny, we put it somewhere else into
and existing module.
Where to put it was decided on dependency.
