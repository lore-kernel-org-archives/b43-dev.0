From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Tue, 26 Apr 2011 12:11:06 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <4DB09CE6.9020405@lwfinger.net>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<4DB09CE6.9020405@lwfinger.net>
Message-ID: <3B553863-8A0A-4B8D-8F51-02FFF4B7A95C@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Apr 21, 2011, at 11:08 PM, Larry Finger wrote:

> On 04/21/2011 01:31 PM, francesco.gringoli at ing.unibs.it wrote:
>> Hello Michael,
>> 
>> I'm doing experiments sending greedy udp traffic from a b43 station to a b43 access point. I have noticed that switching from 2.6.34-rc7 to 2.6.35 the sendmsg call becomes "almost" non blocking when sending from a Broadcom nic while it is still as usual with other nics.
>> 
>> If I load the channel with a 54Mb/s iperf stream (iperf -b54M ...) on<  2.6.35 I see that the application is blocked times to times when calling sendmsg() so that it is slowed down to the channel capabilities and packets are not internally dropped. Clearly they can still be lost on the air :-)
>> 
>> With>= 2.6.35 the application is never blocked and all the packets exceeding the channel capabilities are internally lost by the kernel: in particular it is the asynchronous tx worker (b43_tx_work) that drops them, since it calls b43_dma_tx even if the interface has been stopped because the dma FIFO queue was full. Apart from packets being lost, the CPU load increases since packets cross all the kernel code, from udp_sendmsg down to b43_dma_tx even if they will be dropped.
>> 
>> I don't think this is the expected behavior on Linux: I did some testing to check what happens with other devices and I can experience only the first behavior on Intel and Atheros WiFi nics as well as on Fast Ethernet nics (in this case I run iperf -b100M :-) independently of the kernel version.
>> 
>> Strangely the b43 sources in 2.6.35 are really similar to those in 2.6.34-rc7 and the differences do not seem to justify the different behavior. There are also other weird observations (like qdisc never used in<  2.6.34-rc7) but I would like to have a first opinion from your side.
>> 
>> Many thanks,
>> -Francesco
>> 
>> P.S. what reported does not depend on the firmware version. I also tried a few cards (4306, 4311 and 4318) and nothing changed.
> 
> Francesco,
> 
> I agree that there are no changes in b43 between 2.6.34-rc7 and 2.6.35 that would cause this problem. All but one of the changes are for N PHYs, and that one only removes some braces that are not needed. In addition, there are no changes in ssb that would affect anything other than SPROM loading.
> 
> Have you tried your test with a 2.6.38 kernel? Perhaps the problem has already been fixed. The other thing to do would be to try to bisect between .35 and .34-rc7. If you do that, consider the entire kernel, not just b43. If it is impossible for you to do either of the tests, please send me any command files that you are using, and I'll try it here.
> 
> Larry
Hi Larry,

I tested SMP kernel and it is affected too. Do you think we should report this as a bug to the kernel bug list? Or could this depend on b43?

Unfortunately skb_orphan_try is called before the skb is sent down to the mac80211/driver: it is hence useless setting the "avoid orphan flag" in the skb within the b43 driver as suggested by Thomas. The next packet will have a different flag (I suppose) and it will be orphaned again.

Many thanks,
-Francesco
