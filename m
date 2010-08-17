From: Chris Vine <chris@cvine.freeserve.co.uk>
Date: Tue, 17 Aug 2010 01:09:23 +0100
Subject: [RFT] BCM4312 users with DMA errors, please test!
In-Reply-To: <4C69CF85.2020809@lwfinger.net>
References: <AANLkTimMhW7OX3DT7A3EDNaOnr577KmTv5w9C_mz19TG@mail.gmail.com>
	<20100816204154.5100b604@boulder.homenet>
	<20100816233544.40f0e1d4@boulder.homenet>
	<4C69CF85.2020809@lwfinger.net>
Message-ID: <20100817010923.589d8063@boulder.homenet>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: =?UTF-8?B?R8OhYm9y?= Stefanik <netrolller.3d@gmail.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Mon, 16 Aug 2010 18:53:41 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:
> I tried to duplicate your boot problems without anything unexpected
> happening.
> 
> I don't know what happened, but I doubt that this ssb patch was
> responsible.

I have reproduced it twice.  It is definitely the patch, in the sense
that it happens with the patch included (on two separate tests that I
have conducted) and never without.

I do not doubt that you do not experience this effect.  However, you
don't experience the DMA bug either.

Chris
