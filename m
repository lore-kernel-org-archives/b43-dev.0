From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 11 Jun 2011 22:34:15 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <BANLkTikBEK=+7HuU_AxYLfq+xvDBpP5b5w@mail.gmail.com>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<BANLkTikBEK=+7HuU_AxYLfq+xvDBpP5b5w@mail.gmail.com>
Message-ID: <20110611223415.2f39adde@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 11 Jun 2011 22:28:00 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> 2011/4/21  <francesco.gringoli@ing.unibs.it>:
> > Hello Michael,
> >
> > I'm doing experiments sending greedy udp traffic from a b43 station to a b43 access point. I have noticed that switching from 2.6.34-rc7 to 2.6.35 the sendmsg call becomes "almost" non blocking when sending from a Broadcom nic while it is still as usual with other nics.
> >
> > If I load the channel with a 54Mb/s iperf stream (iperf -b54M ...) on < 2.6.35 I see that the application is blocked times to times when calling sendmsg() so that it is slowed down to the channel capabilities and packets are not internally dropped. Clearly they can still be lost on the air :-)
> >
> > With >= 2.6.35 the application is never blocked and all the packets exceeding the channel capabilities are internally lost by the kernel: in particular it is the asynchronous tx worker (b43_tx_work) that drops them, since it calls b43_dma_tx even if the interface has been stopped because the dma FIFO queue was full. Apart from packets being lost, the CPU load increases since packets cross all the kernel code, from udp_sendmsg down to b43_dma_tx even if they will be dropped.
> >
> > I don't think this is the expected behavior on Linux: I did some testing to check what happens with other devices and I can experience only the first behavior on Intel and Atheros WiFi nics as well as on Fast Ethernet nics (in this case I run iperf -b100M :-) independently of the kernel version.
> >
> > Strangely the b43 sources in 2.6.35 are really similar to those in 2.6.34-rc7 and the differences do not seem to justify the different behavior. There are also other weird observations (like qdisc never used in < 2.6.34-rc7) but I would like to have a first opinion from your side.
> >
> > Many thanks,
> > -Francesco
> >
> > P.S. what reported does not depend on the firmware version. I also tried a few cards (4306, 4311 and 4318) and nothing changed.
> 
> I have (finally) found some time to dig into it. First of all, I
> reproduced this on wireless-testing (3.0-rc2) on my BCM4312. I
> "achieved" 34 Gb/s of UDP traffic.
> 
> The problem is that we do not stop any queue. I've been transferring
> UDP stream for 10 seconds, and queued was not stopped even once.
> 
> We stop queue when the ring is full, so I've added debugging message
> every time "used_slots" changes for TX ring. Over that 10 seconds the
> maximal value of "used_slots" was 14.
> 
> Does it mean firmware lies us about transmitted packages? Any hints anyone?

No that would horribly crash.

I'd rather say that we are dropping packets somewhere before they even reach DMA.
