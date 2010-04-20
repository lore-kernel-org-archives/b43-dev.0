From: Daniel Kuehn <enhaisa@gmail.com>
Date: Tue, 20 Apr 2010 18:07:04 +0200
Subject: System freezes with 2.6.33
In-Reply-To: <20100420155140.14443.qmail@stuge.se>
References: <20100418071932.GB15229@happy.exit> <4BCB3071.8030500@lwfinger.net>
	<20100420143358.GA1990@happy.exit>
	<20100420155140.14443.qmail@stuge.se>
Message-ID: <20100420180704.74972858@Mobile-Workstation.localdomain>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 20 Apr 2010 17:51:40 +0200
Peter Stuge <peter@stuge.se> wrote:

> yhager at yhager.com wrote:
> > I have also tried disabling the radio using the switch, and then
> > there is no freeze. When I enable the radio back, it freezes again.
> 
> Could b43 experts please outline what happens w.r.t. the PCIe bus
> when radio is disabled using the switch as described above?
> 
> 
> //Peter
> 
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev

Doesnt the switch "just" turn it off hardware wise? As in that the OS doesnt
even know it exists then because more or less the power is cut to it.

-- 
Mvh
Daniel
