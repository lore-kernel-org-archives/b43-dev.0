From: =?ISO-8859-1?Q?Nicolas_de_Peslo=FCan?= <nicolas.2p.debian@free.fr>
Date: Mon, 29 Aug 2011 23:42:39 +0200
Subject: BCM4321 support
In-Reply-To: <4E5BC004.8060608@lwfinger.net>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>	<CAM0=5GvmNd7GPEhuQpHNBZK6FBarAn279tB7LbbJRDy=e4FKAQ@mail.gmail.com>	<CA+XFjip4Z7Ua9eVwWsR4t4pWrR1rdEkhVtOS8KE2oJHN1EWLLg@mail.gmail.com>	<CAM0=5GsXuz_Fybuw3rpkHxE3oqNwRLMcc+ZjsgfGHHiRP_ER8w@mail.gmail.com>	<4E5AB689.4010000@lwfinger.net>	<CAM0=5Gv7FzSP9w1xa=WgFdAeKD2R4=wxQOG+H0vX2NRht8Kefw@mail.gmail.com>
	<4E5BC004.8060608@lwfinger.net>
Message-ID: <4E5C07CF.4050609@free.fr>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Le 29/08/2011 18:36, Larry Finger a ?crit :

> If your distro is Debian-based, those simple commands may not work, but someone on the list will
> tell us how the do it. I don't think that long process of building a ".deb" file is needed.

The clean way is make deb-pkg from the root of the kernel tree. It will build whatever need to be 
build (normal build), then build several .deb files you can install using dpkg -i. The normal build 
takes "normal build time", but building the .deb files takes several minutes. I don't consider this 
a problem, but...

The fastest way is to simply make, then copy the changed modules into /lib/modules/..., but from a 
debian point of view, it is very dirty.

HTH.

	Nicolas.
