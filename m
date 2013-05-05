From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 5 May 2013 19:24:05 +0200
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <CACna6ry+F45PhCXahPpJtzu-w+vLE29ksHo9njXfTcfY3Av6LA@mail.gmail.com>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
 <CACna6rwk0akD0x+sWTmjDDoaQqF0Y=NQ58rzqgZH92GCug6CeQ@mail.gmail.com>
 <CACna6ry+F45PhCXahPpJtzu-w+vLE29ksHo9njXfTcfY3Av6LA@mail.gmail.com>
Message-ID: <20130505192405.0cf4350e@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Thommy Jakobsson <thommyj@gmail.com>, linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, piotras@gmail.com, Larry.Finger@lwfinger.net

On Sun, 5 May 2013 18:31:20 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> Still worth considering is my previous e-mail. Why writing (for
> example) 1 to RXSTOPINDEX doesn't stop firmware from using slot 1?

What makes you think this register does not work?

Do you write a 1 to the register, or do you mean "the offset that
corresponds to slot 1"?

> Can it be because it's "too late"? For example:
> 1) Firmware writes to slot 0, changes "curr descr" to 1
> 2) Firmware grabs slot 1
> 3) Firmware generates IRQ
> 4) Driver reads slot 0
> 5) Driver writes RX stop index 1

The stop index is the index that the firmware does _not_ write to.
If you set it _after_ it already wrote, you clearly are too late (for
this ring wrapping).

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130505/847ac76c/attachment.sig>
