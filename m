From: Octavian Voicu <octavian.voicu@gmail.com>
Date: Tue, 30 Aug 2011 02:33:24 +0300
Subject: BCM4321 support
In-Reply-To: <4E5BC004.8060608@lwfinger.net>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
	<CAM0=5GvmNd7GPEhuQpHNBZK6FBarAn279tB7LbbJRDy=e4FKAQ@mail.gmail.com>
	<CA+XFjip4Z7Ua9eVwWsR4t4pWrR1rdEkhVtOS8KE2oJHN1EWLLg@mail.gmail.com>
	<CAM0=5GsXuz_Fybuw3rpkHxE3oqNwRLMcc+ZjsgfGHHiRP_ER8w@mail.gmail.com>
	<4E5AB689.4010000@lwfinger.net>
	<CAM0=5Gv7FzSP9w1xa=WgFdAeKD2R4=wxQOG+H0vX2NRht8Kefw@mail.gmail.com>
	<4E5BC004.8060608@lwfinger.net>
Message-ID: <CAM0=5GsX2W7oLXY+WuP+sYJFqWqAOCcKqaqY6UCxFnNBvR3iiw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, Aug 29, 2011 at 7:36 PM, Larry Finger <Larry.Finger@lwfinger.net>wrote:

> The firmware has its own private memory and it shares some memory with the
> host CPU, but it does not have access to the SPROM.
>

Good to know, thanks for the explanation!


> Most of the code you need is already there. Use the SPROM fallback
> mechanism. You will need to call the ssb_arch_register_fallback_**sprom()
> routine to specify the routine that loads an alternative SPROM contents.
> This mechanism will work to compensate for your broken hardware.
>

Yeah, something along those lines. Hopefully I can make it use sprom_extract
to fill in the internal structures. It's gonna be quite tricky, voodoo black
magic :)

And another side question: do you usually run the wireless-next kernel
>> when doing driver development and recompile the whole thing every time
>> you change something? Or rebuild just the targets/modules you're
>> interested in, and the whole kernel when changing data structures used
>> outside the module?
>>
>
> Fiddling around with modules to get them to load is too much work. I always
> use the wireless-testing kernel. Whenever changes are made. I use 'make -jX'
> to rebuild, where X is the number of cpu's + 1. It only does what is
> necessary. As I use openSUSE, this is followed by 'sudo make
> install_modules' and if bzImage was rebuilt, this is followed by 'sudo make
> install'. The latter command also updates the GRUB menu if the new kernel is
> not already in the list. If your distro is Debian-based, those simple
> commands may not work, but someone on the list will tell us how the do it. I
> don't think that long process of building a ".deb" file is needed.
>

I found that it works to just do: make -C /lib/modules/`uname -r`/build
M=`pwd` drivers/net/wireless/b43/b43.ko
but I do have to be careful and build the modules in order of their
dependencies, otherwise the dependent module will have wrong versions of the
symbols it needs and it won't work.

On Tue, Aug 30, 2011 at 12:42 AM, Nicolas de Peslo?an <
nicolas.2p.debian@free.fr> wrote:

> The clean way is make deb-pkg from the root of the kernel tree. It will
> build whatever need to be build (normal build), then build several .deb
> files you can install using dpkg -i. The normal build takes "normal build
> time", but building the .deb files takes several minutes. I don't consider
> this a problem, but...
>
> The fastest way is to simply make, then copy the changed modules into
> /lib/modules/..., but from a debian point of view, it is very dirty.
>

Yeah, I guess I prefer the very quick and dirty way. I added them to
/lib/modules/.../updates/ and ran depmod. Good enough for me. As long as I
don't dig too deep in b43 I probably won't need to do full kernel builds.

My biggest concern right now is that the modules I build cannot be rmmod-ed
after being inserted. This happens with any custom built modules, including
the dkms built ones (eg. nvidia).

What happens is that after inserting them they show with a huge ref number
in lsmod, and there is a dependency on [permanent], which I understand
appears when the module doesn't have a registered exit function -- which it
should have, because CONFIG_MODULE_UNLOAD is y. Precompiled modules from
.debs work fine.

It's the same problem as described here [1]. Any thoughts on this? Is it an
ubuntu thing? I'm guessing that if I recompile the kernel problem might get
fixed, but do the Ubuntu guys have some special patch that prevents
unloading custom built modules?

$ lsmod | egrep 'ssb|b4|802'
ssb_sprom_override     12467  3343385879 [permanent]
b43                   332274  842478592 [permanent]
mac80211              301993  937372790 b43,[permanent]
cfg80211              197510  1895908598 b43,mac80211,[permanent]
b44                    35793  2191473215 [permanent]
ssb                    51848  4218871345 b43,b44,[permanent]
...
nvidia              11905275  0 [permanent]

rmmod and modprobe -r  (even with --force) fail.

Just imagine having to do a restart after each test of the module...

Octavian

[1] http://kerneltrap.org/node/16886
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110830/66e8b0be/attachment.html>
