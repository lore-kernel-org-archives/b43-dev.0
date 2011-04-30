From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Sat, 30 Apr 2011 18:01:54 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <BANLkTi=xabq-2S_kr2NJjUc8Wk2YzEa-Bg@mail.gmail.com>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<4DB09CE6.9020405@lwfinger.net>
	<3B553863-8A0A-4B8D-8F51-02FFF4B7A95C@ing.unibs.it>
	<BANLkTi=xabq-2S_kr2NJjUc8Wk2YzEa-Bg@mail.gmail.com>
Message-ID: <152E42D1-0C74-4ABD-A170-43456E3E9A35@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Apr 26, 2011, at 4:53 PM, Rafa? Mi?ecki wrote:

> Hi Francesco,
> 
> W dniu 26 kwietnia 2011 12:11 u?ytkownik
> <francesco.gringoli@ing.unibs.it> napisa?:
>> On Apr 21, 2011, at 11:08 PM, Larry Finger wrote:
>> 
>>> On 04/21/2011 01:31 PM, francesco.gringoli at ing.unibs.it wrote:
>>>> Hello Michael,
>>>> 
>>>> I'm doing experiments sending greedy udp traffic from a b43 station to a b43 access point. I have noticed that switching from 2.6.34-rc7 to 2.6.35 the sendmsg call becomes "almost" non blocking when sending from a Broadcom nic while it is still as usual with other nics.
>>>> 
>>>> If I load the channel with a 54Mb/s iperf stream (iperf -b54M ...) on<  2.6.35 I see that the application is blocked times to times when calling sendmsg() so that it is slowed down to the channel capabilities and packets are not internally dropped. Clearly they can still be lost on the air :-)
>>>> 
>>>> With>= 2.6.35 the application is never blocked and all the packets exceeding the channel capabilities are internally lost by the kernel: in particular it is the asynchronous tx worker (b43_tx_work) that drops them, since it calls b43_dma_tx even if the interface has been stopped because the dma FIFO queue was full. Apart from packets being lost, the CPU load increases since packets cross all the kernel code, from udp_sendmsg down to b43_dma_tx even if they will be dropped.
>>>> 
>>>> I don't think this is the expected behavior on Linux: I did some testing to check what happens with other devices and I can experience only the first behavior on Intel and Atheros WiFi nics as well as on Fast Ethernet nics (in this case I run iperf -b100M :-) independently of the kernel version.
>>>> 
>>>> Strangely the b43 sources in 2.6.35 are really similar to those in 2.6.34-rc7 and the differences do not seem to justify the different behavior. There are also other weird observations (like qdisc never used in<  2.6.34-rc7) but I would like to have a first opinion from your side.
>>>> 
>>>> Many thanks,
>>>> -Francesco
>>>> 
>>>> P.S. what reported does not depend on the firmware version. I also tried a few cards (4306, 4311 and 4318) and nothing changed.
>>> 
>>> Francesco,
>>> 
>>> I agree that there are no changes in b43 between 2.6.34-rc7 and 2.6.35 that would cause this problem. All but one of the changes are for N PHYs, and that one only removes some braces that are not needed. In addition, there are no changes in ssb that would affect anything other than SPROM loading.
>>> 
>>> Have you tried your test with a 2.6.38 kernel? Perhaps the problem has already been fixed. The other thing to do would be to try to bisect between .35 and .34-rc7. If you do that, consider the entire kernel, not just b43. If it is impossible for you to do either of the tests, please send me any command files that you are using, and I'll try it here.
>>> 
>>> Larry
>> Hi Larry,
>> 
>> I tested SMP kernel and it is affected too. Do you think we should report this as a bug to the kernel bug list? Or could this depend on b43?
>> 
>> Unfortunately skb_orphan_try is called before the skb is sent down to the mac80211/driver: it is hence useless setting the "avoid orphan flag" in the skb within the b43 driver as suggested by Thomas. The next packet will have a different flag (I suppose) and it will be orphaned again.
> 
> I don't really have big knowledge about net architecture. I believe we
> should try asking patch commiters about this issue. 	Eric Dumazet and
> davem maybe?

I noticed other strange aspects in b43, and I would like to share with you my concerns

1) I still use 2.6.29 for my experiments where I'm used to add qdisc (e.g., htb and others) to the b43 wlan device. For sure with 2.6.29 everything is like expected. With newer kernels instead the qdisc behaves weirdly, like if it were broken. I took a look at the code and I see that a lot of packets are dropped in b43_dma_tx because the interface is stopped but the worker b43_tx_work calls b43_dma_tx independently of the state of the interface, as I explain here below.

2) Up to 2.6.31.14, when upper layers send a packet, the code goes through the driver up to b43_op_tx: then we have a direct call to b43_dma_tx, there is no worker in the middle. Here there is a comment

/* We get here only because of a bug in mac80211.
 * Because of a race, one packet may be queued after
 * the queue is stopped, thus we got called when we shouldn't.
 * For now, just refuse the transmit. */

which is sound. Since 2.6.32, b43_op_tx simply queues packets: it is the worker to fetch them and push to b43_dma_tx. The comment however is still there but it does not make sense since b43_dma_tx is called only by the worker. Unfortunately that is not just a comment left out, since the worker actually calls b43_dma_tx even if the interface is stopped. This causes the driver to drop a lot of packets. I believe that this is the reason of the qdisc not working.

I would like to point out that this does not impact only UDP greedy traffic: TCP streams with big windows show the same issue.

Regards,
-Francesco
> 
> 
> -- 
> Rafa?
