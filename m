From: David Woodhouse <dwmw2@infradead.org>
Date: Sat, 13 Aug 2011 23:56:51 +0100
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144109.27274.71.camel@i7.infradead.org>
	<CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
Message-ID: <1313276212.30099.0.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 2011-08-14 at 00:13 +0200, Rafa? Mi?ecki wrote:
> Interesting... below is the dump from ndiswrapper on BCM4331:
> 
> R 4 1431.714843 2 0xb0600230 0x10000fb0 0x0 0
> R 4 1431.740035 2 0xb0600230 0x10000fc0 0x0 0
> R 4 1431.740050 2 0xb0600230 0x10000fc0 0x0 0
> R 4 1431.850216 2 0xb0600230 0x10000fd0 0x0 0
> R 4 1431.850229 2 0xb0600230 0x10000fd0 0x0 0
> R 4 1431.882151 2 0xb0600230 0x10000fe0 0x0 0
> R 4 1431.882164 2 0xb0600230 0x10000fe0 0x0 0
> R 4 1431.885822 2 0xb0600230 0x10000ff0 0x0 0
> R 4 1431.885835 2 0xb0600230 0x10000ff0 0x0 0
> R 4 1431.896775 2 0xb0600230 0x10000000 0x0 0
> R 4 1431.896790 2 0xb0600230 0x10000000 0x0 0
> R 4 1431.915842 2 0xb0600230 0x10000010 0x0 0
> R 4 1431.915857 2 0xb0600230 0x10000010 0x0 0
> R 4 1431.917399 2 0xb0600230 0x10000020 0x0 0
> R 4 1431.917413 2 0xb0600230 0x10000020 0x0 0
> 
> Broadcom uses bigger ring and they don't suffer from 0x1000 being ever
> set. I've filled the ring few times, 0x1000 was never set on going
> back to slot 0. 

What was the physical address of the ring for this test run?

-- 
dwmw2
