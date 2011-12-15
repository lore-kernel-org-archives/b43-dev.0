From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Thu, 15 Dec 2011 16:54:14 +0100
Subject: [PATCH] b43: avoid packet losses in the dma worker code.
In-Reply-To: <CACna6rxc9HPWg7VekDr7LFSZp7wMCinsvao-LxEEHnrD95HCig@mail.gmail.com>
References: <4ee9d496.ZmxUcTz7IvcMM2Tq%francesco.gringoli@ing.unibs.it>
 <CACna6rxc9HPWg7VekDr7LFSZp7wMCinsvao-LxEEHnrD95HCig@mail.gmail.com>
Message-ID: <8765D965-0435-4ACA-B562-A0CAD768A3FF@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: m@bues.ch, linville@tuxdriver.com, linux-wireless@vger.kernel.org, michele.orru@hotmail.it, b43-dev@lists.infradead.org, riccardo.paolillo@gmail.com

On Dec 15, 2011, at 12:29 PM, Rafa? Mi?ecki wrote:

> 2011/12/15  <francesco.gringoli@ing.unibs.it>:
>> This patch addresses a bug in the dma worker code that keeps draining
>> packets even when the hardware queues are full. In such cases packets
>> can not be passed down to the device and are erroneusly dropped by the
>> code.
>> 
>> This problem was already discussed here
>> 
>> http://www.mail-archive.com/b43-dev at lists.infradead.org/msg01413.html
>> 
>> and acknowledged by Michael.
>> 
>> The patch also introduces separate workers for each hardware queues
>> and dedicated buffers where storing packets from mac80211 before sending
>> them down to the hardware.
> 
> Have you considered just a one worked iterating over queues?
> 
> I'm not sure if it's efficient to have so many workers, each can be
> stopped&resumed, each is taking wl mutex...
We were thinking about this issue and at the end we decided to implement this way because of fairness issues among the queues. We tried some dequeuing algorithms (i.e., round robin and priority) but they were all benefitting one of the queues. With four workers instead the tests we made with iperf-udp showed to perfectly share the bandwidth among the queues obeying to the contention window parameters at the air interface.

Thanks for the comments about the previous patch: I changed it a bit and I'm going to post V2.

-Francesco

> 
> -- 
> Rafa?
