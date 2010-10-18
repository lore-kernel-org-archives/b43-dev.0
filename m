From: Paul Fertser <fercerpav@gmail.com>
Date: Mon, 18 Oct 2010 08:11:03 +0400
Subject: PIO mode
In-Reply-To: <4CBB7A46.6040507@lwfinger.net>
References: <20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
	<AANLkTinYvvk0mYTgKu2gJziLSEoZnMm491wUbZ4BO_Sf@mail.gmail.com>
	<20101010170311.GW1593@home.pavel.comp>
	<AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
	<20101013065845.GG1593@home.pavel.comp>
	<4CBB7A46.6040507@lwfinger.net>
Message-ID: <20101018041103.GK1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

On Sun, Oct 17, 2010 at 05:35:50PM -0500, Larry Finger wrote:
> On 10/13/2010 01:58 AM, Paul Fertser wrote:
> > The PIO mode doesn't work for me at all. The logs after automatic switching
> > are identical to those of coldbooting b43 with pio=1. Same with loading it
> > after wl. The dmesg is attached (that's with plain wpa_supplicant, no NM
> > interfering). Reloading b43 without pio=1 makes it work (to clarify:
> > coldboot -> b43 pio=1 -> b43 -- works; coldboot -> b43 -> Fatal error ->
> > rmmod b43 -> modprobe b43 fails immediately).
> 
> To clarify what you say, would the following setup work correctly?
> 
> 1. Blacklist ssb, b43, and wl.
> 2. Issue the following commands:
> 	modprobe -v b43 pio=1
> 	modprobe -rv b43
> 	modprobe -v b43

Just tested again to be sure.

This works the same as coldbooting b43 without this parameter, i.e. on
wireless-testing it loads and works but i'm able to induce the fatal dma
error by producing constant upstream traffic. It switches to PIO mode and
is able to scan but fails to associate. Reloading the module produces the
dma error immediately, and pio still doesn't work (see dmesg in my other
message).

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
