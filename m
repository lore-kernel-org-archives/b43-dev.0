From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 05 May 2013 14:22:46 -0500
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <CACna6rwk0akD0x+sWTmjDDoaQqF0Y=NQ58rzqgZH92GCug6CeQ@mail.gmail.com>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
 <CACna6rwk0akD0x+sWTmjDDoaQqF0Y=NQ58rzqgZH92GCug6CeQ@mail.gmail.com>
Message-ID: <5186B186.7090703@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Thommy Jakobsson <thommyj@gmail.com>, linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, m@bues.ch, piotras@gmail.com

On 05/05/2013 10:43 AM, Rafa? Mi?ecki wrote:
>
> Interesting part is that they write amount of slots + slot index to
> the B43_DMA32_RXINDEX (like 0x120 instead of 0x20). May be worth
> investigating.

Getting that behavior from wl might be useful, but their response to an 
interrupt with bit 13 set will not be of much help. Whenever that occurs, they 
reinitialize the device, and do not try a recovery.

Larry
