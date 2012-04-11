From: Ben Prescott <b43-dev.lists@thewatertower.org>
Date: Wed, 11 Apr 2012 18:39:25 +0100
Subject: b43: system hangs during kernel initialisation [14e4:4318]
In-Reply-To: <43470.80.0.47.200.1332963853.squirrel@server27.ukservers.net>
References: <4F72181C.3030903@thewatertower.org>
 <4F723155.1080104@lwfinger.net> <4F72AE46.1050805@thewatertower.org>
 <4F7335FC.5090501@lwfinger.net>
 <43470.80.0.47.200.1332963853.squirrel@server27.ukservers.net>
Message-ID: <4F85C1CD.1010506@thewatertower.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


On 28/03/12 20:44, Ben Prescott wrote:
> Not a problem at all;  the b43.blacklist=yes kernel param causes the
> module to bail out;  I used that to get 12.04 installed.
>
> That said, I rebuilt to 11.10 to test older kernels, and that's where the
> system is at the moment.
>
> I've installed Ubuntu's b43 firmware package and rebooted into the
> 3.2.0-rc2 kernel.
>
> that works, now.
>
> regards, Ben
>
> ben at tecumseh:~$ uname -a
> Linux tecumseh 3.2.0-030200rc2-generic #201111151435 SMP Tue Nov 15
> 19:43:49 UTC 2011 i686 i686 i386 GNU/Linux
>

Further reports of this issue are arising, this time on old Apple kit.

https://bugs.launchpad.net/ubuntu/+source/casper/+bug/956677

regards, Ben
