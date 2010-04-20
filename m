From: Peter Stuge <peter@stuge.se>
Date: Tue, 20 Apr 2010 18:27:51 +0200
Subject: System freezes with 2.6.33
In-Reply-To: <20100420180704.74972858@Mobile-Workstation.localdomain>
References: <20100418071932.GB15229@happy.exit> <4BCB3071.8030500@lwfinger.net>
	<20100420143358.GA1990@happy.exit>
	<20100420155140.14443.qmail@stuge.se>
	<20100420180704.74972858@Mobile-Workstation.localdomain>
Message-ID: <20100420162751.25907.qmail@stuge.se>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Daniel Kuehn wrote:
> > > I have also tried disabling the radio using the switch, and then
> > > there is no freeze. When I enable the radio back, it freezes again.
> > 
> > Could b43 experts please outline what happens w.r.t. the PCIe bus
> > when radio is disabled using the switch as described above?
> 
> Doesnt the switch "just" turn it off hardware wise?

I doubt that. PCIe can do hotplug but it's only used in high-end
systems, not a mini-note.


> As in that the OS doesnt even know it exists then because more or
> less the power is cut to it.

Usually the switch generates an electrical signal which goes through
the system board over to the wifi card, and there it will have
control over the RF part, and yes disable radio communication, but
no, not the entire wifi card. As I have understood the b43 hardware
can also read this electrical signal and report it's status to the
driver, but it is impossible to override the hardwired "kill" switch
from the driver.

This is why I ask for advice from the b43 experts, since maybe my
description above is too simplistic, and the kill signal will
actually cause more things to happen on the wifi card.

Anything related to the host bus is of particular interest.

What happens in the firmware w.r.t. the kill switch?

What does openfwwf do?


//Peter
