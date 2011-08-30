From: =?ISO-8859-1?Q?Nicolas_de_Peslo=FCan?= <nicolas.2p.debian@free.fr>
Date: Tue, 30 Aug 2011 08:46:51 +0200
Subject: BCM4321 support
In-Reply-To: <CAM0=5GsX2W7oLXY+WuP+sYJFqWqAOCcKqaqY6UCxFnNBvR3iiw@mail.gmail.com>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>	<CAM0=5GvmNd7GPEhuQpHNBZK6FBarAn279tB7LbbJRDy=e4FKAQ@mail.gmail.com>	<CA+XFjip4Z7Ua9eVwWsR4t4pWrR1rdEkhVtOS8KE2oJHN1EWLLg@mail.gmail.com>	<CAM0=5GsXuz_Fybuw3rpkHxE3oqNwRLMcc+ZjsgfGHHiRP_ER8w@mail.gmail.com>	<4E5AB689.4010000@lwfinger.net>	<CAM0=5Gv7FzSP9w1xa=WgFdAeKD2R4=wxQOG+H0vX2NRht8Kefw@mail.gmail.com>	<4E5BC004.8060608@lwfinger.net>
	<CAM0=5GsX2W7oLXY+WuP+sYJFqWqAOCcKqaqY6UCxFnNBvR3iiw@mail.gmail.com>
Message-ID: <4E5C875B.9030602@free.fr>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Le 30/08/2011 01:33, Octavian Voicu a ?crit :

<snip>

> On Tue, Aug 30, 2011 at 12:42 AM, Nicolas de Peslo?an <nicolas.2p.debian@free.fr
> <mailto:nicolas.2p.debian@free.fr>> wrote:
>
>     The clean way is make deb-pkg from the root of the kernel tree. It will build whatever need to
>     be build (normal build), then build several .deb files you can install using dpkg -i. The normal
>     build takes "normal build time", but building the .deb files takes several minutes. I don't
>     consider this a problem, but...
>
>     The fastest way is to simply make, then copy the changed modules into /lib/modules/..., but from
>     a debian point of view, it is very dirty.
>
>
> Yeah, I guess I prefer the very quick and dirty way. I added them to /lib/modules/.../updates/ and
> ran depmod. Good enough for me. As long as I don't dig too deep in b43 I probably won't need to do
> full kernel builds.
>
> My biggest concern right now is that the modules I build cannot be rmmod-ed after being inserted.
> This happens with any custom built modules, including the dkms built ones (eg. nvidia).

I really suggest you once try building the whole kernel with deb-pkg, then touch a single file in 
b43, then rebuild. The overhead of producing .deb files is not null, but not big enough to stop me 
from rebuilding on every try. And I assume it would solve this module unload issue.

	Nicolas.
