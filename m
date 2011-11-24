From: Justin Azoff <JAzoff@albany.edu>
Date: Thu, 24 Nov 2011 10:09:22 -0500
Subject: BCM4312 LP-PHY DMA issues
In-Reply-To: <CACna6rw6SnLo=M=NKPzv_yb665aj6WCoR8VBNA9goS9otQB8Lw@mail.gmail.com>
References: <20111122000059.GB6004@datacomm.albany.edu>
 <20111122161313.GA11018@nautica>
 <20111122174521.GE6004@datacomm.albany.edu>
 <CACna6rw6SnLo=M=NKPzv_yb665aj6WCoR8VBNA9goS9otQB8Lw@mail.gmail.com>
Message-ID: <20111124150922.GJ6004@datacomm.albany.edu>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, Nov 24, 2011 at 07:35:23AM +0100, Rafa? Mi?ecki wrote:
> Huh, that sound interesting. So updating firmware fixed DMA issues for
> you, right? Are you really sure you're using DMA?

Yeah, with the old firmware I had to force pio=1 to get it to work at
all.  With the new firmware I removed the module options and it works
great, and there are no DMA errors in dmesg. The cpu usage also went
from 100% to <10%

> I didn't think Broadcom could fix something about DMA errors
> (timeouts?) of LP-PHY in the recent firmware.

Got me :-)  Maybe it's not really a DMA error in the first place.. maybe
the old firmware just has issues with this hardware that get detected as
a DMA error but are really caused by a general failure somewhere else?

> Is this still working fine for you? After that ~2 days?

Yes!  I built 3 of these laptops to run as wireless probes using
https://github.com/justinazoff/wireless-probes so I have detailed logs..

2011-11-24 08:49:33 check=DL avg_speed=1723 
2011-11-24 08:55:01 check=DL avg_speed=2269 
2011-11-24 09:00:28 check=DL avg_speed=1880 
2011-11-24 09:05:57 check=DL avg_speed=2227 
2011-11-24 09:11:24 check=DL avg_speed=1850 
2011-11-24 09:16:52 check=DL avg_speed=2518 
2011-11-24 09:22:18 check=DL avg_speed=1685 
2011-11-24 09:27:48 check=DL avg_speed=1723 
2011-11-24 09:33:17 check=DL avg_speed=2233 
2011-11-24 09:38:44 check=DL avg_speed=2013 
2011-11-24 09:44:11 check=DL avg_speed=1929 
2011-11-24 09:49:39 check=DL avg_speed=1551 
2011-11-24 09:51:30 check=DL avg_speed=1717 
2011-11-24 09:56:59 check=DL avg_speed=1953 

Before, it looked like this:

2011-11-19 06:19:41 check=DL avg_speed=856 
2011-11-19 06:25:34 check=DL avg_speed=847 
2011-11-19 06:31:30 check=DL avg_speed=858 
2011-11-19 06:37:26 check=DL avg_speed=857 
2011-11-19 06:43:20 check=DL avg_speed=853 
2011-11-19 06:49:12 check=DL avg_speed=864 
2011-11-19 06:55:08 check=DL avg_speed=857 
2011-11-19 07:01:01 check=DL avg_speed=851 
2011-11-19 07:06:54 check=DL avg_speed=854 
2011-11-19 07:12:47 check=DL avg_speed=848 
2011-11-19 07:18:41 check=DL avg_speed=856 
2011-11-19 07:24:37 check=DL avg_speed=846 
2011-11-19 07:30:32 check=DL avg_speed=854 


-- 
-- Justin Azoff
-- Network Security & Performance Analyst
