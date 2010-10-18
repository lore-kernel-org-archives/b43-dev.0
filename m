From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 18 Oct 2010 14:57:48 -0500
Subject: PIO mode
In-Reply-To: <20101018041103.GK1593@home.pavel.comp>
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
	<20101018041103.GK1593@home.pavel.comp>
Message-ID: <4CBCA6BC.6080605@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/17/2010 11:11 PM, Paul Fertser wrote:
> 
> This works the same as coldbooting b43 without this parameter, i.e. on
> wireless-testing it loads and works but i'm able to induce the fatal dma
> error by producing constant upstream traffic. It switches to PIO mode and
> is able to scan but fails to associate. Reloading the module produces the
> dma error immediately, and pio still doesn't work (see dmesg in my other
> message).

If I read this correctly, the latest wireless-testing version of b43 works from
a coldboot, but it fails when doing heavy transmitting. How do you generate this
upstream traffic? I'm hoping to duplicate your results on my netbook.

Larry
