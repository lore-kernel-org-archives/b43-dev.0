From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 14 Apr 2011 16:07:50 -0500
Subject: Request for bisecting DMA partial fix
In-Reply-To: <BANLkTimgw9ufDLrEemqX71yYPeuz5dJF=g@mail.gmail.com>
References: <AANLkTikLFuFd=155fO-VScNh7XKtZCMcR0DTo1V4-hHu@mail.gmail.com>	<AANLkTintrxtNDKJRPiNXAvr2XX3Fa5ZNBqwca59d9GfV@mail.gmail.com>	<20101126173952.GC2370@markov>	<AANLkTi=g3bXnGiqC3zH6gFVi8tLhoiHYbDnhWOXptRk7@mail.gmail.com>	<20101211085104.GB22346@markov>	<AANLkTi=zLV_BrJ2XqGNc9YVBmnWRDW3KYKFx2DhFeRiw@mail.gmail.com>	<20101214042351.GE6480@hilbert.ericgar.com>	<BANLkTik9wATNqSodCVCKhUumi=Qxyz80Hg@mail.gmail.com>	<BANLkTinBVUmeGe1-Qw47AKCUxhX533Lkcw@mail.gmail.com>	<BANLkTin-zkbPL98FE9=Qey4LRxERAFtgTw@mail.gmail.com>
	<BANLkTimgw9ufDLrEemqX71yYPeuz5dJF=g@mail.gmail.com>
Message-ID: <4DA76226.3010701@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/14/2011 03:47 PM, Juan Carlos Romero wrote:
> I have experienced DMA errors always. I have used all kernels from 2.6.32 to
> 2.6.38 (Debian official kernels)
>
> I see DMA errors always if I boot with b43 module. I always boot with wl module,
> rmmod it and moprobe b43. Then I  get no errors.
>
> Can we chat in #bcm-users channel ?

That is the BCM4312 (14e4:4315) PCI initialization problem, not a heavy traffic 
problem.

Larry
