From: Stuart Longland <redhatter@gentoo.org>
Date: Fri, 26 Aug 2011 10:33:13 +1000
Subject: 4331 support
In-Reply-To: <20110826002731.55067eao70ovewg8@jamesanslow.net>
References: <20110825233820.14231gncpwmacjdw@jamesanslow.net>	<4E56D231.5080306@lwfinger.net>
	<20110826002731.55067eao70ovewg8@jamesanslow.net>
Message-ID: <4E56E9C9.4070406@gentoo.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/26/11 09:27, james at jamesanslow.net wrote:
> Hi Larry,
> 
> Thanks for getting back to me on this. I'm not overly experienced when
> it comes to driver development and so I may be best suited to waiting
> until this is made live. That is, unless compiling and patching
> experimental drivers is an easy thing to do (but from what I understand
> it's not?)
> 
> Kind regards,
> James

Well, no more difficult than downloading a kernel source tree via git
and compiling it.  The wireless-testing tree is basically a branch of
the mainline Linux kernel with experimental versions of device drivers.

Failing that, maybe try switching to the latest stable 3.0.x release of
the kernel if you're not running that already.
-- 
Stuart Longland (aka Redhatter, VK4MSL)      .'''.
Gentoo Linux/MIPS Cobalt and Docs Developer  '.'` :
. . . . . . . . . . . . . . . . . . . . . .   .'.'
http://dev.gentoo.org/~redhatter             :.'

I haven't lost my mind...
  ...it's backed up on a tape somewhere.
