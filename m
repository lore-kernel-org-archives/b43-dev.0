From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Sun, 12 Jun 2011 00:48:24 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <BANLkTim920vWQJyLX1uvekjoP8UEs0u+ew@mail.gmail.com>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<BANLkTikBEK=+7HuU_AxYLfq+xvDBpP5b5w@mail.gmail.com>
	<20110611223415.2f39adde@maggie>
	<BANLkTinMbZGO_JNabgZAnqATA2g7i8mbMA@mail.gmail.com>
	<BANLkTim920vWQJyLX1uvekjoP8UEs0u+ew@mail.gmail.com>
Message-ID: <F83A7A28-F088-438F-8751-132CA63A6240@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Jun 11, 2011, at 11:17 PM, Rafa? Mi?ecki wrote:

> 2011/6/11 Rafa? Mi?ecki <zajec5@gmail.com>:
>> 2011/6/11 Michael B?sch <m@bues.ch>:
>>> On Sat, 11 Jun 2011 22:28:00 +0200
>>> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>>> 
>>>> 2011/4/21  <francesco.gringoli@ing.unibs.it>:
>>>>> Hello Michael,
>>>>> 
>>>>> I'm doing experiments sending greedy udp traffic from a b43 station to a b43 access point. I have noticed that switching from 2.6.34-rc7 to 2.6.35 the sendmsg call becomes "almost" non blocking when sending from a Broadcom nic while it is still as usual with other nics.
>>>>> 
>>>>> If I load the channel with a 54Mb/s iperf stream (iperf -b54M ...) on < 2.6.35 I see that the application is blocked times to times when calling sendmsg() so that it is slowed down to the channel capabilities and packets are not internally dropped. Clearly they can still be lost on the air :-)
>>>>> 
>>>>> With >= 2.6.35 the application is never blocked and all the packets exceeding the channel capabilities are internally lost by the kernel: in particular it is the asynchronous tx worker (b43_tx_work) that drops them, since it calls b43_dma_tx even if the interface has been stopped because the dma FIFO queue was full. Apart from packets being lost, the CPU load increases since packets cross all the kernel code, from udp_sendmsg down to b43_dma_tx even if they will be dropped.
>>>>> 
>>>>> I don't think this is the expected behavior on Linux: I did some testing to check what happens with other devices and I can experience only the first behavior on Intel and Atheros WiFi nics as well as on Fast Ethernet nics (in this case I run iperf -b100M :-) independently of the kernel version.
>>>>> 
>>>>> Strangely the b43 sources in 2.6.35 are really similar to those in 2.6.34-rc7 and the differences do not seem to justify the different behavior. There are also other weird observations (like qdisc never used in < 2.6.34-rc7) but I would like to have a first opinion from your side.
>>>>> 
>>>>> Many thanks,
>>>>> -Francesco
>>>>> 
>>>>> P.S. what reported does not depend on the firmware version. I also tried a few cards (4306, 4311 and 4318) and nothing changed.
>>>> 
>>>> I have (finally) found some time to dig into it. First of all, I
>>>> reproduced this on wireless-testing (3.0-rc2) on my BCM4312. I
>>>> "achieved" 34 Gb/s of UDP traffic.
>>>> 
>>>> The problem is that we do not stop any queue. I've been transferring
>>>> UDP stream for 10 seconds, and queued was not stopped even once.
>>>> 
>>>> We stop queue when the ring is full, so I've added debugging message
>>>> every time "used_slots" changes for TX ring. Over that 10 seconds the
>>>> maximal value of "used_slots" was 14.
>>>> 
>>>> Does it mean firmware lies us about transmitted packages? Any hints anyone?
>> 
>>> I'd rather say that we are dropping packets somewhere before they even reach DMA.
>> 
>> Weird, every problem should be reported, especially with DMAVERBOSE.
>> I'll try to trace packets starting with b43_op_tx anyway.
> 
> I've added some simple
> "Queuing skb prot:0x%X len:%d data:%d\n", skb->proto, skb->len, skb->data_len
> to b43_op_tx.
> 
> iperf says to send UDP stream with speed 34.4 Gb/s.
> dmesg | grep "4225" | grep Queuing | wc -l
> gives me 90 lines (4225 is a timestamp).
> 
> So it seems something before b43 eats our packets. What any why? :|
Hi Rafa?,

first issue is with skb_orphan_try() called by dev_hard_start_xmit() (skb_orphan_try appeared with 2.6.35). It seems that orphaning the skb before actual transmission has problems with b43. Though it works well with a lot of other devices I tested, with b43 the memory allocated to a given socket seems to never reach the threshold to set that socket as blocked. So the application will never stops sending packets. If you comment that call, you should see iperf behaving correctly.

Second issue is in b43. You can trigger the problem, even with skb_orphan_try() commented, in two ways

1) running multiple instances of iperf;
2) forwarding packets from another interface.

The problem is that with 2.6.32, the transmission chain of b43 was broken in two: packets coming from upper layers are queued by b43_ot_tx into mac80211 queues. Then b43_tx_work asynchronously pops packets from the queues and sends them to b43_dma_tx. Unfortunately the worker never checks if the queues are stopped because the dma ring full: it simply continues popping packets until the queues are empty. But if we have 100 packets in the queue, and the dma stops on the first, then we will drop 99% of the packets.

BR,
-Francesco

> 
> -- 
> Rafa?
