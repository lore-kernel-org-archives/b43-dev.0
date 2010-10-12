From: Paul Fertser <fercerpav@gmail.com>
Date: Wed, 13 Oct 2010 03:05:44 +0400
Subject: Issues with 14e4:4315 on "lenovo ideapad s9" - works only after wl
In-Reply-To: <20101012221229.GE1593@home.pavel.comp>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
	<AANLkTim63Nh2zABjrRSHy5Dn_rcXG++TaUqLv7EytbcC@mail.gmail.com>
	<20101012221229.GE1593@home.pavel.comp>
Message-ID: <20101012230543.GF1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Oct 13, 2010 at 02:12:29AM +0400, Paul Fertser wrote:
> On Sun, Oct 10, 2010 at 06:50:55PM +0200, G?bor Stefanik wrote:
> > 2010/10/10 Paul Fertser <fercerpav@gmail.com>:
> > > Even simply loading wl (without bringing the interface up etc) helps.
> > > Attached is a parsed mmiotrace of that (hail to nouveau). Alas simply
> > > replaying it (even with a 5ms delay inbetween writes) doesn't improve
> > > anything.
> > 
> > That definitely won't help - if you just brainlessly replay an
> > mmiotrace, the writes will end up on the wrong SSB cores. You also
> > need to replay PCI config space writes. AFAIK there has been a patch
> > earlier on the list to show PCI config space accesses in mmiotrace.
> 
> Before i was using the bleeding edge compat-wireless and now i compiled
> wireless-testing 4b8f8abb4f. With compat-wireless b43 reliably didn't work at
> all after cold booting, producing Fatal DMA error immediately with no used
> slots. With w-t (even unmodified!) b43 does work after cold boot :-O Once i've
> seen it produce Fatal DMA error again while transferring a file over scp (can't
> reproduce anymore, dmesg attached)

In fact, i can reliably reproduce Fatal DMA error on b43 cold boot with w-t
by ssh'ing zeroes to a host (connected via ethernet to AP) in about 3
minutes. And this doesn't seem to happen if i modprobe and rmmod wl beforehand
(without even bringing the interface up).

Any other tests i can do for you? :)

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
