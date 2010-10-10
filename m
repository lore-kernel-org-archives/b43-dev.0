From: Paul Fertser <fercerpav@gmail.com>
Date: Sun, 10 Oct 2010 21:03:11 +0400
Subject: Issues with 14e4:4315 on "lenovo ideapad s9" - works only after wl
In-Reply-To: <AANLkTinYvvk0mYTgKu2gJziLSEoZnMm491wUbZ4BO_Sf@mail.gmail.com>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
	<AANLkTinYvvk0mYTgKu2gJziLSEoZnMm491wUbZ4BO_Sf@mail.gmail.com>
Message-ID: <20101010170311.GW1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, Oct 10, 2010 at 08:39:04AM -0700, Larry Finger wrote:
> 2010/10/10 Paul Fertser <[1]fercerpav@gmail.com>
>   On Sat, Oct 09, 2010 at 11:37:37PM +0200, Gabor Stefanik wrote:
>   > The PhoenixBIOS DMA problem is known not to appear if wl has been
>   > loaded beforehand. Be patient, we are working on this. (But good to
>   > know the S9 also reproduces it - it's probably less expensive than the
>   > S10 for the team to buy.)
> 
>   And yes, i know remote debugging is usually a pain but i think i can not
>   only provide ssh access but also some means to physically power-cycle the
>   device (though it'd take some time to find necessary parts).
> ?
> Before devoting too much effort to debugging, please try a recent
> compat-wireless version. There were some changes in b43 that are implemented
> there that might not be in your kernel.

I hoped Compat-wireless backport release: compat-wireless-2010-10-01-10-gb9b0a4f
is recent enough.

As for the remote debugging, it seems to me that having an ssh access
coupled with a computer-controlled outlet would be almost identical to
local, right?

> On my HP Mini 110 netbook, those fixes got rid of the DMA errors. Will
> they allow your S9 to cold boot b43?

I wonder if those DMA errors are just a sign of some other problem because
the driver automatically switches to PIO but it doesn't help.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
