From: Thommy Jakobsson <thommyj@gmail.com>
Date: Fri, 3 May 2013 21:40:32 +0200 (CEST)
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <20130503173537.GK2069@tuxdriver.com>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <CACna6rx1zeBDBC-wq+LMWcB1tupe6bs8Z4_JGdnd6vQNomzFnQ@mail.gmail.com>
 <20130503173537.GK2069@tuxdriver.com>
Message-ID: <alpine.DEB.2.02.1305032138330.1312@kelly.ryd.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, m@bues.ch, piotras@gmail.com, Larry.Finger@lwfinger.net



On Fri, 3 May 2013, John W. Linville wrote:

> On Wed, Apr 24, 2013 at 09:00:59AM +0200, Rafa? Mi?ecki wrote:
> > 2013/4/23 Thommy Jakobsson <thommyj@gmail.com>:
> > > From: Thommy Jakobsson <thommyj@gmail.com>
> > >
> > > Add handling of rx descriptor underflow. This fixes a fault that could
> > > happen on slow machines, where data is received faster than the CPU can
> > > handle. In such a case the device will use up all rx descriptors and
> > > refuse to send any more data before confirming that it is ok. This
> > > patch enables necessary interrupt to discover such a situation and will
> > > handle them by dropping everything in the ring buffer.
> > 
> > Thanks for working on this, I didn't really got enough time to follow
> > your active discussion actively.
> > 
> > I'll try to test this patch on my devices over the next weekend.
> 
> Any word on this testing?  Should this go to 3.10?
It still runs on my device without any problem. Don't know anything about 
Rafael's testing though

BR,
Thommy Jakobsson
