From: Paul Fertser <fercerpav@gmail.com>
Date: Wed, 20 Oct 2010 23:37:07 +0400
Subject: MMIO trace for "warm" boot of b43 on IdeaPad S9 (was: Re: PIO mode)
In-Reply-To: <4CBF359A.6030700@lwfinger.net>
References: <20101013065845.GG1593@home.pavel.comp>
	<4CBB7A46.6040507@lwfinger.net>
	<20101018041103.GK1593@home.pavel.comp>
	<4CBCA6BC.6080605@lwfinger.net>
	<20101019004331.GN1593@home.pavel.comp>
	<4CBDC183.9020101@lwfinger.net>
	<20101019162258.GO1593@home.pavel.comp>
	<4CBF28C0.9000404@lwfinger.net>
	<20101020175427.GQ1593@home.pavel.comp>
	<4CBF359A.6030700@lwfinger.net>
Message-ID: <20101020193707.GT1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Oct 20, 2010 at 01:31:54PM -0500, Larry Finger wrote:
> Could you please provide the "warm" equivalent of
> b43-cold-boot.trace-head.txt.gz? Do a cold boot followed by an load/unload of
> wl, start the trace, and load b43. I would like to see what in the registers is
> different.

Attached. (stop network manager, modprobe wl, rmmod wl, start network-manager,
start tracing, modprobe b43, wait for association).

Full log is at [1].

Big thanks again for working on this.

[1] https://paulfertser.is-a-geek.org/files/b43-ideapad/
-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43-warm-boot.trace-head.txt.gz
Type: application/x-gunzip
Size: 13549 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101020/69eb6a89/attachment-0002.bin>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43-warm-boot.dmesg.txt.gz
Type: application/x-gunzip
Size: 14252 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101020/69eb6a89/attachment-0003.bin>
