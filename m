From: Stuart Longland <redhatter@gentoo.org>
Date: Mon, 06 Jun 2011 08:51:53 +1000
Subject: b43 and late 2008 model Apple MacBook =?UTF-8?B?4oCUIExvb2sg?=
	=?UTF-8?B?bWEsIG5vIHdpcmVzISA6LSk=?=
In-Reply-To: <BANLkTikMNfWf+yATN8hutX_RySseO2CgHw@mail.gmail.com>
References: <4DEAC8FE.5010502@gentoo.org>	<4DEACA37.4080905@gentoo.org>	<4DEACFD9.6020004@lwfinger.net>	<4DEAD567.2050608@gentoo.org>	<4DEADFBC.3000100@gentoo.org>
	<BANLkTikMNfWf+yATN8hutX_RySseO2CgHw@mail.gmail.com>
Message-ID: <4DEC0889.8040909@gentoo.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/05/11 23:10, Rafa? Mi?ecki wrote:
> Status is quite nice described on our wiki page [0]. It really says
> support for your chipset is experimental only in 2.6.38 :)
> 
> [0] http://wireless.kernel.org/en/users/Drivers/b43

No problems, I've just updated that page... it already suggested 2.6.39,
but I've just clarified this, linking to this thread.

So far it seems to be more stable on wireless than MacOS X.  Under the
latter I do get the bizzare problem where an ARP packet will get dropped
due to some radio conditions here, then the MacBook disappears from the
IPv4-visible network (despite being accessible via IPv6).  So evidently
the b43 driver is working better than the Broadcom one.

I just wish they'd stop playing their silly proprietary games and just
contribute to the b43 driver instead of taking this lone ranger
approach.  Surely any cats are out of the bag by now and that this is
just a needless duplication of effort.

Anyway, I'll get off the soap box before I get pushed. :-)

Thanks for the assistance.
Regards,
-- 
Stuart Longland (aka Redhatter, VK4MSL)      .'''.
Gentoo Linux/MIPS Cobalt and Docs Developer  '.'` :
. . . . . . . . . . . . . . . . . . . . . .   .'.'
http://dev.gentoo.org/~redhatter             :.'

I haven't lost my mind...
  ...it's backed up on a tape somewhere.
