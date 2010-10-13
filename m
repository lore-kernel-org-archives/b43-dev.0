From: Paul Fertser <fercerpav@gmail.com>
Date: Wed, 13 Oct 2010 10:58:45 +0400
Subject: PIO mode (was: Re: Issues with 14e4:4315 on "lenovo ideapad s9" -
	works only after wl)
In-Reply-To: <AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
	<AANLkTinYvvk0mYTgKu2gJziLSEoZnMm491wUbZ4BO_Sf@mail.gmail.com>
	<20101010170311.GW1593@home.pavel.comp>
	<AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
Message-ID: <20101013065845.GG1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, Oct 10, 2010 at 06:50:06PM -0700, Larry Finger wrote:
> On Sun, Oct 10, 2010 at 10:03 AM, Paul Fertser <[1]fercerpav@gmail.com> wrote:
>   On Sun, Oct 10, 2010 at 08:39:04AM -0700, Larry Finger wrote:
>   > On my HP Mini 110 netbook, those fixes got rid of the DMA errors. Will
>   > they allow your S9 to cold boot b43?
> 
>   I wonder if those DMA errors are just a sign of some other problem because
>   the driver automatically switches to PIO but it doesn't help.
> ?
> On most machines, the automatic switch to PIO does not work. You probably need
> to load the driver with PIO=1.

The PIO mode doesn't work for me at all. The logs after automatic switching
are identical to those of coldbooting b43 with pio=1. Same with loading it
after wl. The dmesg is attached (that's with plain wpa_supplicant, no NM
interfering). Reloading b43 without pio=1 makes it work (to clarify:
coldboot -> b43 pio=1 -> b43 -- works; coldboot -> b43 -> Fatal error ->
rmmod b43 -> modprobe b43 fails immediately).

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43-pio-dysfunct.dmesg.txt.gz
Type: application/x-gunzip
Size: 14583 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101013/319c1871/attachment-0001.bin>
