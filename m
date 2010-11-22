From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 22 Nov 2010 12:41:45 -0600
Subject: b43 error under heavy load
Message-ID: <4CEAB969.20702@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Buesch <mb@bu3sch.de>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

Michael,

Under heavy load with multiple streams, I'm getting errors from my BCM4312
(14e4:4315) device as follows:

b43-phy0 debug: TX-status contains invalid cookie: 0x0D4D
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 76
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 78
(and continues).

Clearly that cookie is garbage as it has a slot number of 0. Any suggestions on
diagnostic information that I could dump to help debug this?

Thanks,

Larry
