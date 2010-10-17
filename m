From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 17 Oct 2010 17:35:50 -0500
Subject: PIO mode
In-Reply-To: <20101013065845.GG1593@home.pavel.comp>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
	<AANLkTinYvvk0mYTgKu2gJziLSEoZnMm491wUbZ4BO_Sf@mail.gmail.com>
	<20101010170311.GW1593@home.pavel.comp>
	<AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
	<20101013065845.GG1593@home.pavel.comp>
Message-ID: <4CBB7A46.6040507@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/13/2010 01:58 AM, Paul Fertser wrote:
> 
> The PIO mode doesn't work for me at all. The logs after automatic switching
> are identical to those of coldbooting b43 with pio=1. Same with loading it
> after wl. The dmesg is attached (that's with plain wpa_supplicant, no NM
> interfering). Reloading b43 without pio=1 makes it work (to clarify:
> coldboot -> b43 pio=1 -> b43 -- works; coldboot -> b43 -> Fatal error ->
> rmmod b43 -> modprobe b43 fails immediately).

Paul,

To clarify what you say, would the following setup work correctly?

1. Blacklist ssb, b43, and wl.
2. Issue the following commands:
	modprobe -v b43 pio=1
	modprobe -rv b43
	modprobe -v b43

Larry
