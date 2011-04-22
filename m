From: Francesco Gringoli <francesco.gringoli@ing.unibs.it>
Date: Fri, 22 Apr 2011 21:58:04 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <97728AB8-E890-4880-9D77-55F5980AF0A9@ing.unibs.it>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<4DB09CE6.9020405@lwfinger.net>
	<97728AB8-E890-4880-9D77-55F5980AF0A9@ing.unibs.it>
Message-ID: <815E2326-5CB8-4ACC-9AFF-B30FFA9E2311@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Apr 22, 2011, at 9:37 PM, francesco.gringoli at ing.unibs.it wrote:

> On Apr 21, 2011, at 11:08 PM, Larry Finger wrote:
> 
>> On 04/21/2011 01:31 PM, francesco.gringoli at ing.unibs.it wrote:
>>> Hello Michael,
>>> 
>>> I'm doing experiments sending greedy udp traffic from a b43 station to a b43 access point. I have noticed that switching from 2.6.34-rc7 to 2.6.35 the sendmsg call becomes "almost" non blocking when sending from a Broadcom nic while it is still as usual with other nics.
>>> 
>>> If I load the channel with a 54Mb/s iperf stream (iperf -b54M ...) on<  2.6.35 I see that the application is blocked times to times when calling sendmsg() so that it is slowed down to the channel capabilities and packets are not internally dropped. Clearly they can still be lost on the air :-)
>>> 
>>> With>= 2.6.35 the application is never blocked and all the packets exceeding the channel capabilities are internally lost by the kernel: in particular it is the asynchronous tx worker (b43_tx_work) that drops them, since it calls b43_dma_tx even if the interface has been stopped because the dma FIFO queue was full. Apart from packets being lost, the CPU load increases since packets cross all the kernel code, from udp_sendmsg down to b43_dma_tx even if they will be dropped.
>>> 
>>> I don't think this is the expected behavior on Linux: I did some testing to check what happens with other devices and I can experience only the first behavior on Intel and Atheros WiFi nics as well as on Fast Ethernet nics (in this case I run iperf -b100M :-) independently of the kernel version.
>>> 
>>> Strangely the b43 sources in 2.6.35 are really similar to those in 2.6.34-rc7 and the differences do not seem to justify the different behavior. There are also other weird observations (like qdisc never used in<  2.6.34-rc7) but I would like to have a first opinion from your side.
>>> 
>>> Many thanks,
>>> -Francesco
>>> 
>>> P.S. what reported does not depend on the firmware version. I also tried a few cards (4306, 4311 and 4318) and nothing changed.
>> 
>> Francesco,
>> 
>> I agree that there are no changes in b43 between 2.6.34-rc7 and 2.6.35 that would cause this problem. All but one of the changes are for N PHYs, and that one only removes some braces that are not needed. In addition, there are no changes in ssb that would affect anything other than SPROM loading.
>> 
>> Have you tried your test with a 2.6.38 kernel? Perhaps the problem has already been fixed. The other thing to do would be to try to bisect between .35 and .34-rc7. If you do that, consider the entire kernel, not just b43. If it is impossible for you to do either of the tests, please send me any command files that you are using, and I'll try it here.
> Hi Larry,
> 
> I just finished bisecting, git tells
> 
> 	fc6055a5ba31e2c14e36e8939f9bf2b6d586a7f5 is first bad commit
> 	commit fc6055a5ba31e2c14e36e8939f9bf2b6d586a7f5
> 	Author: Eric Dumazet <eric.dumazet@gmail.com>
> 	Date:   Fri Apr 16 12:18:22 2010 +0000
> 
> Some info to reproduce what I'm seeing:
> 
> - receiver, can be whatever platform, run iperf like this
> 	$: iperf -s -u -p 20002 -i 1
> 
> - sender, whatever firmware, one of 4306-4318-4311 devices, run iperf like this
> 	$: iperf -c RECEIVER_IP -u -p 20002 -b 1000M -i 1 -n 1
Larry,

I forgot to say that I only tested on a single core single CPU pc. Don't tested with SMP.

-Francesco
