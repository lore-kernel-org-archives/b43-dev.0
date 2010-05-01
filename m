From: Yuval Hager <yhager@yhager.com>
Date: Sun, 2 May 2010 02:28:10 +0300
Subject: System freezes with 2.6.33
In-Reply-To: <4BD0858D.7080903@lwfinger.net>
References: <20100418071932.GB15229@happy.exit>
	<20100422161231.GA1941@happy.exit> <4BD0858D.7080903@lwfinger.net>
Message-ID: <201005020228.11985.yhager@yhager.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thursday 22 April 2010 20:21:17 Larry Finger wrote:
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
> 
> When the freeze occurs, how long do you leave it? There are some CPU
> lockups that take as many as 2 minutes to be recognized by the kernel.
> 
> In Archlinux, how difficult is it to incorporate source from an external
> tree and build the kernel?
> 
> Larry

I cannot recreate it with latest 2.6.33.3-1.

--yuval
