From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 16 Dec 2011 07:31:11 +0100
Subject: [PATCH V2] b43: avoid packet losses in the dma worker code.
In-Reply-To: <4eea214d.h4TAGuC6+eReskdR%francesco.gringoli@ing.unibs.it>
References: <4eea214d.h4TAGuC6+eReskdR%francesco.gringoli@ing.unibs.it>
Message-ID: <CACna6rytRwpmnj8EofBi99-+teWGyEyc27Gv+K1qQPni3BZZLQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: francesco.gringoli@ing.unibs.it
Cc: m@bues.ch, linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, michele.orru@hotmail.it, riccardo.paolillo@gmail.com

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
> The patch also introduces separate workers for each hardware queue
> and dedicated buffers where storing packets from mac80211 before sending
> them down to the hardware. Using different workers let bandwidth be
> perfectly shared among the queues according to contention window parameters
> defined at the air interface (EDCA settings).
>
> Number of hardware queues is now defined in b43.h (B43_QOS_QUEUE_NUM).

Thanks for your changes Francesco. Funny, checkpatch doesn't detect
 braces were used for single-line instructions. Generally it looks fine
 :)

 I still would like to take a look at this solution in comparison to
 single worker. So let me repeat me request: do you still have patch
 implementing 1 worker solution? Could you share it?

-- 
Rafa?
