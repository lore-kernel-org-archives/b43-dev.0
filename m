From: Chris Vine <chris@cvine.freeserve.co.uk>
Date: Tue, 17 Aug 2010 21:28:25 +0100
Subject: [RFT] BCM4312 users with DMA errors, please test!
In-Reply-To: <20100817132337.01392797@boulder.homenet>
References: <AANLkTimMhW7OX3DT7A3EDNaOnr577KmTv5w9C_mz19TG@mail.gmail.com>
	<20100816204154.5100b604@boulder.homenet>
	<20100816233544.40f0e1d4@boulder.homenet>
	<4C69CF85.2020809@lwfinger.net>
	<20100817010923.589d8063@boulder.homenet>
	<20100817011455.4919cfbb@boulder.homenet>
	<4C69DF79.2020900@lwfinger.net>
	<20100817132337.01392797@boulder.homenet>
Message-ID: <20100817212825.6f5ecb66@boulder.homenet>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, linux-wireless <linux-wireless@vger.kernel.org>

On Tue, 17 Aug 2010 13:23:37 +0100
Chris Vine <chris@cvine.freeserve.co.uk> wrote:
> Reverting to 2.6.35.1 solves this.  Probably 2.6.36-rc1 would be OK as
> well.  I might later today try the ssb patch on the 2.6.35.1 kernel,
> but it doesn't look as if it solves the DMA errors.  However,
> yesterday's tests clearly aren't conclusive about anything.

I have applied the patch to 2.6.35.1, and it does not appear to have
any effect on the DMA errors.

Chris
