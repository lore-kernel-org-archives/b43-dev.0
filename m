From: yhager at yhager.com <yhager@yhager.com>
Date: Thu, 22 Apr 2010 11:59:52 -0700
Subject: System freezes with 2.6.33
In-Reply-To: <4BD0858D.7080903@lwfinger.net>
References: <20100418071932.GB15229@happy.exit> <4BCB3071.8030500@lwfinger.net>
	<20100420143358.GA1990@happy.exit>
	<20100420155140.14443.qmail@stuge.se>
	<20100420180704.74972858@Mobile-Workstation.localdomain>
	<20100420162751.25907.qmail@stuge.se>
	<4BCDDF5C.2040901@lwfinger.net> <20100422161231.GA1941@happy.exit>
	<4BD0858D.7080903@lwfinger.net>
Message-ID: <20100422185951.GA14078@happy.sfsu.edu>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 12:21 Thu 22 Apr     , Larry Finger wrote:
> On 04/22/2010 11:12 AM, yhager at yhager.com wrote:
> > I have tested the same kernel, with CONFIG_B43_FORCE_PIO=y. The
> > results are mostly the same. Full system freeze. Turning the radio off
> > avoids the freeze. Turning the radio on would not immediately freeze -
> > only when I tried to connect to a wireless network it did. 
> > I also enabled CONFIG_B43_DEBUG, but no messages on the console that
> > would testify a problem.
> 
> Is it possible for you to test with another mac80211-based wireless
> device? I cannot think of any possibility for the system to lock up when
> b43 is using PIO.

No, sorry, I don't have another device.

> 
> When the freeze occurs, how long do you leave it? There are some CPU
> lockups that take as many as 2 minutes to be recognized by the kernel.
> 

I haven't waited that long. I will test again when I have the chance.

> In Archlinux, how difficult is it to incorporate source from an external
> tree and build the kernel?
> 

Not difficult at all.

--y
