From: John W. Linville <linville@tuxdriver.com>
Date: Wed, 6 Oct 2010 16:18:51 -0400
Subject: [PATCH 3/3] b43: N-PHY: don't duplicate setting channel in
	shared memory
In-Reply-To: <AANLkTinsWTCmTjYZ=SgY0-ArTOVgG50V0r9USHnuvQfb@mail.gmail.com>
References: <1286344208-32479-1-git-send-email-zajec5@gmail.com>
	<1286344208-32479-4-git-send-email-zajec5@gmail.com>
	<1286379040.11721.1.camel@maggie>
	<AANLkTinsWTCmTjYZ=SgY0-ArTOVgG50V0r9USHnuvQfb@mail.gmail.com>
Message-ID: <20101006201850.GK2472@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Michael =?iso-8859-1?Q?B=FCsch?= <mb@bu3sch.de>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Wed, Oct 06, 2010 at 06:07:44PM +0200, Rafa? Mi?ecki wrote:
> W dniu 6 pa?dziernika 2010 17:30 u?ytkownik Michael B?sch
> <mb@bu3sch.de> napisa?:
> > On Wed, 2010-10-06 at 07:50 +0200, Rafa? Mi?ecki wrote:

> >> + ? ? /* Don't follow specs, B43_SHM_SH_CHAN is set by b43_switch_channel */
> >
> > Looks great. I dunno if a comment is really needed and whether it is
> > correct, though. We _do_ follow the specs. We just do it elsewhere.
> 
> I got "Don't strictly follow specs here" earlier, but made it shorter
> to match 80 chars ;) Maybe it wasn't too good idea. Should left it
> longer or don't put at all.
> 
> John: could you drop this comment line when applying? Or would you
> like me to resend this fixed?

Got it...

-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
