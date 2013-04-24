From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 24 Apr 2013 09:00:59 +0200
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
Message-ID: <CACna6rx1zeBDBC-wq+LMWcB1tupe6bs8Z4_JGdnd6vQNomzFnQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thommy Jakobsson <thommyj@gmail.com>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, m@bues.ch, piotras@gmail.com, Larry.Finger@lwfinger.net

2013/4/23 Thommy Jakobsson <thommyj@gmail.com>:
> From: Thommy Jakobsson <thommyj@gmail.com>
>
> Add handling of rx descriptor underflow. This fixes a fault that could
> happen on slow machines, where data is received faster than the CPU can
> handle. In such a case the device will use up all rx descriptors and
> refuse to send any more data before confirming that it is ok. This
> patch enables necessary interrupt to discover such a situation and will
> handle them by dropping everything in the ring buffer.

Thanks for working on this, I didn't really got enough time to follow
your active discussion actively.

I'll try to test this patch on my devices over the next weekend.

-- 
Rafa?
