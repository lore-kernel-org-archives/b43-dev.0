From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 15 Dec 2011 12:29:10 +0100
Subject: [PATCH] b43: avoid packet losses in the dma worker code.
In-Reply-To: <4ee9d496.ZmxUcTz7IvcMM2Tq%francesco.gringoli@ing.unibs.it>
References: <4ee9d496.ZmxUcTz7IvcMM2Tq%francesco.gringoli@ing.unibs.it>
Message-ID: <CACna6rxc9HPWg7VekDr7LFSZp7wMCinsvao-LxEEHnrD95HCig@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: francesco.gringoli@ing.unibs.it
Cc: m@bues.ch, linville@tuxdriver.com, linux-wireless@vger.kernel.org, michele.orru@hotmail.it, b43-dev@lists.infradead.org, riccardo.paolillo@gmail.com

2011/12/15  <francesco.gringoli@ing.unibs.it>:
> This patch addresses a bug in the dma worker code that keeps draining
> packets even when the hardware queues are full. In such cases packets
> can not be passed down to the device and are erroneusly dropped by the
> code.
>
> This problem was already discussed here
>
> http://www.mail-archive.com/b43-dev at lists.infradead.org/msg01413.html
>
> and acknowledged by Michael.
>
> The patch also introduces separate workers for each hardware queues
> and dedicated buffers where storing packets from mac80211 before sending
> them down to the hardware.

Have you considered just a one worked iterating over queues?

I'm not sure if it's efficient to have so many workers, each can be
stopped&resumed, each is taking wl mutex...

-- 
Rafa?
