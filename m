From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 02 Apr 2010 13:04:03 -0500
Subject: [14e4:4315] Fatal DMA errors on Dell Vostro 1310 (Celeron M540)
In-Reply-To: <20100402171105.GA10965@tsubasa>
References: <20100402171105.GA10965@tsubasa>
Message-ID: <4BB63193.5050804@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/02/2010 12:11 PM, Myhailo Danylenko wrote:
> (resending this message, as first one has been lost somewhere)
> 
> Hi.
> 
> I have a Dell Vostro 1310 notebook with Debian Squeeze on board. It have
> a Celeron M540 in it, so, it is definitely not an Atom case, and that's
> why I decided to send this message.
> 
> My experience with drivers and kernels:
> With 2.6.30 and earlier wl worked fine.
> With 2.6.32-trunk-? wl worked fine, b43 fired dma errors pretty quickly
> after start (working time was from 5 secs to 15-30 mins).
> With 2.6.32-3 wl has stopped working. It builds fine and shows no
> errors, but does not work. Then I tried b43, and got similar results
> to -trunk version.

Any difficulties with wl are not our problem. Complain to Broadcom.

> With 2.6.33-2 from experimental b43 works much better - working period
> is usually more than five hours, it happily survives s2ram and s2disk.

Is that with DMA? If so, the margin of error is better on your machine
than on most that have this problem, but you don't have an Atom.

> Right now I am running 2.6.34-rc2-wl (git snapshot from 28th March), it
> works as far as I can tell the same as 2.6.33-2 - at least it already
> fired dma errors twice (except that it automatically switches to pio
> mode).
> 
> PIO mode is unacceptably slow - web-traffic speed is about 300kbps,
> and when I'm trying to rsync something from nfs, mounted over wi-fi,
> all the system gets slowed down, and 100% of processor time is consumed
> by a kernel process irq/19-b43 (as shown by htop).

That is the nature of PIO.

> Can I provide any additional info to help solve this problem?
> 
> P.S. I also have access to Lenovo G450 with the same (14e4:4315 rev 01)
> wireless card, but that worked fine without any glitches on 2.6.32-3 (to
> test I copied 7Gb of traffic - all went fine, and during two days I have
> not experienced any errors with it (it is not mine notebook, and it's
> owner does not use wi-fi, so, there's no extensive testing for that
> matter available).
> P.P.S. On 2.6.33 and 2.6.34 I have not tested wl, as there's no debian
> infrastructure to build broadcom-sta for that kernel versions yet.

As you have probably read, we are aware of the problem but do not have a
fix. I have AMD processors, thus it never happens to my machines. We are
trying to see what differences there are between wl and b43, but so far
nothing has been found.

You would not likely find success even if your distro allowed you to
build wl with 2.6.34. I have built it and find that it panics the kernel.

Larry
