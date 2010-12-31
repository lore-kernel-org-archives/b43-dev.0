From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 31 Dec 2010 02:57:33 +0100
Subject: 2.6.37-rc7: Regression: b43: crashes in hwrng_register()
In-Reply-To: <20101230204522.GC23219@darkside.kls.lan>
	(sfid-20101230_214555_989234_FFFFFFFFCC2D4737)
References: <4D1A8200.4010609@lwfinger.net>
	<20101229195440.GD5838@darkside.kls.lan>
	<4D1BD2B0.4020101@lwfinger.net>
	<20101230012003.GA2665@darkside.kls.lan>
	<4D1BF056.3060909@lwfinger.net>
	<20101230143406.GA23219@darkside.kls.lan>
	<4D1CD161.4040107@lwfinger.net>
	<20101230204522.GC23219@darkside.kls.lan>
	(sfid-20101230_214555_989234_FFFFFFFFCC2D4737)
Message-ID: <1293760653.6528.78.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mario 'BitKoenig' Holbe <Mario.Holbe@TU-Ilmenau.DE>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, LKML <linux-kernel@vger.kernel.org>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Thu, 2010-12-30 at 21:45 +0100, Mario 'BitKoenig' Holbe wrote: 
> On Thu, Dec 30, 2010 at 12:37:21PM -0600, Larry Finger wrote:
> > The head of the rng_list is damaged. It is initialized at compile time and
> > should be OK. To help discover the order in which hwrng_register() is called,
> > apply the attached patch. Run it once with commit 84c164a34ffe67908a installed,
> > and once with it reverted.
> 
> All right, 3 dmesg excerpts attached...
> 2.6.37-rc7-vanilla.dmesg:
> 	2.6.37-rc7 vanilla (i.e. with 84c164a34ffe67908a), crashing
> 	via-rng is registered first, b43-rng second
> 2.6.37-rc7-without.dmesg:
> 	2.6.37-rc7 with 84c164a34ffe67908a reverted, not crashing
> 	b43-rng is registered first, via-rng second
> 2.6.37-rc7-without+modprobe.dmesg:
> 	2.6.37-rc7 with 84c164a34ffe67908a reverted, b43 blacklisted and
> 	manually modprobed after via-rng, crashing
> 	via-rng is registered first, b43-rng second
> 
> Seems like the crash shows up when b43-rng is registered second, but not
> when via-rng is registered second.
> Btw.: `cat rng_available' does also not crash when via-rng is registered
> second.


I suspect that there is some "hw_random.h" header version mixup is going
on here. The layout of struct hwrng was changed recently.

Your crash seems to happen on the list head embedded in struct hwrng.

Please make sure that your build environment is clean and you're not
using any external stuff such as compat-wireless. All of hwrng-core,
rng-via and b43 must be compiled against the same hw_random.h.

-- 
Greetings Michael.
