From: Stuart Longland <redhatter@gentoo.org>
Date: Fri, 19 Aug 2011 12:12:06 +1000
Subject: bcm4312
In-Reply-To: <CACeRjpz1xPoVZgBM7qbt2yWeVg_UNsdeQjG70On=bZrCzr5aRw@mail.gmail.com>
References: <CACeRjpz1xPoVZgBM7qbt2yWeVg_UNsdeQjG70On=bZrCzr5aRw@mail.gmail.com>
Message-ID: <4E4DC676.6070502@gentoo.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/19/11 11:26, bendney wrote:
> hello .im installing gentoo ,but the bcm4312 drivers can't work, i m a
> newbie, i follow the documentation         
> 
> emerge ...firmware    ...fwcutter         emerge ...sta  (wl)
>  but there has another guide  say  dont  use  firmware   fwcutter , just
> use sta   what the relationship above ?     how can i do ?

Okay, understood you're a "newbie", but I'm afraid I lost my crystal
ball back in the Brisbane floods.  I can certainly attest that the
drivers do work.

The 'sta' driver IIRC is Broadcom's proprietary driver.  Nothing we can
do to help you with that.  (<rant>Ohh why can't Broadcom just join in
with b43 instead of going the lone ranger approach?</rant>)

What we'll need to know:
- What kernel version are you using?  (`uname -r`, or at the very least
the ebuild you used.  Have a squiz at /var/db/pkg/sys-kernel and see
what directories are present.)
- What Broadcom chip you are using (`lspci -nn`)
- What version of firmware you used?

I found that kernel 3.0 worked best for me with the 802.11N "Airport" in
my 2008-model MacBook using the bleeding edge (not-yet-in-kernel)
fwcutter and firmware.  See:

http://thread.gmane.org/gmane.linux.drivers.bcm54xx.devel/12038/focus=12141

Regards,
-- 
Stuart Longland (aka Redhatter, VK4MSL)      .'''.
Gentoo Linux/MIPS Cobalt and Docs Developer  '.'` :
. . . . . . . . . . . . . . . . . . . . . .   .'.'
http://dev.gentoo.org/~redhatter             :.'

I haven't lost my mind...
  ...it's backed up on a tape somewhere.
