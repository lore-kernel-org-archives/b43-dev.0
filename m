From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 12 Jun 2011 14:53:03 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <20110612101944.4b6b55c5@maggie>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<BANLkTikBEK=+7HuU_AxYLfq+xvDBpP5b5w@mail.gmail.com>
	<20110611223415.2f39adde@maggie>
	<BANLkTinMbZGO_JNabgZAnqATA2g7i8mbMA@mail.gmail.com>
	<BANLkTim920vWQJyLX1uvekjoP8UEs0u+ew@mail.gmail.com>
	<20110611234655.1825fe51@maggie>
	<4167DD4F-0350-4EA1-98A6-CAC427989FED@ing.unibs.it>
	<20110612011935.486868ff@maggie>
	<5E9810AB-73AC-4A86-99BC-93771C7DE655@ing.unibs.it>
	<20110612101944.4b6b55c5@maggie>
Message-ID: <BANLkTim_yV7KodkbfgOVnZjMw9OSc+X+SA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/6/12 Michael B?sch <m@bues.ch>:
> On Sun, 12 Jun 2011 07:28:10 +0200
> francesco.gringoli at ing.unibs.it wrote:
>
>> On Jun 12, 2011, at 1:19 AM, Michael B?sch wrote:
>>
>> > On Sun, 12 Jun 2011 00:55:58 +0200
>> > francesco.gringoli at ing.unibs.it wrote:
>> >
>> >> Anyway if you put some printk in b43_tx_work you will see that some TCP segments are discarded by it trying to send packets to the dma even if the rings are full. This prevents packets to queue up correctly in the qdisc, so shaping traffic through a b43 interface becomes really difficult.
>> >
>> > So this doesn't sound like a b43 problem to me.
>> > The driver disables the software queues, if the hardware queue is full.
>> > If the stack continues to push packets to the driver while queues are stopped,
>> > the only thing the driver can do is discard them.
>> I agree with you, and this was perfectly implemented up to 2.6.31. After the introduction of the asynchronous worker, the behavior you are talking about has been almost broken: if b43_dma_tx stops the queue, the stack does not send any more packet to the driver. It is b43_tx_work that keeps sending packets to the hardware (b43_dma_tx). Rather weird :-)
>>
>> Try to explain better: imagine the worker finished its previous run and gave up because the mac queue was empty. No problem up to now, but suppose the dma ring has only one more descriptor free and that hundreds of stations are competing for the channel so that the firmware is not dequeuing packets for a long time. Now a bunch of packets is injected by the stack: b43_op_tx pushes them to the mac queue and finally it add works to the work queue.
>>
>> Now b43_tx_work is run again by the kernel, it pops the first packet, send it to the hardware (b43_dma_tx) that ultimately stops the queues because, as I said before, only one more position was free in the queue. From here on the stack stops sending packets to b43_op_tx (maybe one more packet can pass?), it is b43_tx_work that continues to send all the remaining packets in the mac queue to the hardware that can only drop them.
>>
>> Take a look at b43_dma_tx, and focus on the comment
>>
>> /* We get here only because of a bug in mac80211.
>> ?* Because of a race, one packet may be queued after
>> ?* the queue is stopped, thus we got called when we shouldn't.
>> ?* For now, just refuse the transmit. */
>>
>> It's not true anymore after 2.6.32 but the code has been left as if it were. It is not "one packet may be queued" because of the mac80211, several instead can be passed here, but only by b43_tx_work, not the mac.
>
> Ok, thanks. I see the bug now.
> This should be pretty easy to fix, though. Just don't unqueue the packet
> from the b43_tx_work queue, if b43_dma_tx failed to transmit it, due to full ring.
> And then poke the TX work again, if the queues are unblocked.

That's not so easy. We have only 1 TX queue (wl->tx_queue). It may
contain packets for different qos (rings).

We should not stop dequeuing all pending packets, just because on ring
is full. There may be packets for more important ring (qos) which can
still be send to hardware, even if one of the rings is full.

-- 
Rafa?
