From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 1 Aug 2014 20:44:54 +0200
Subject: b43-fwcutter: add helper script for getting firmware
In-Reply-To: <CACna6rz8TMrhkrSJWsxuBAzNjNew8usn9qo1zHgtPQUCtT-_2A@mail.gmail.com>
References: <CACna6rz8TMrhkrSJWsxuBAzNjNew8usn9qo1zHgtPQUCtT-_2A@mail.gmail.com>
Message-ID: <20140801204454.21badf20@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 1 Aug 2014 19:41:57 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> Installing a firmware was always kind of challenge for end users.

Yes, agreed.

> There were many tries of solving this:
> 1) Distribution wiki pages with descriptions
> 2) b43 wiki page trying to handle the most common distros

a) We have this (in a generic way).
b) Nobody (tm) reads this.

c) Not so surprising :D

> 3) Extra non-free packages

Distros do this. I don't see me getting involved here.

> 4) Scripts like install_bcm43xx_firmware in openSUSE
> 5) Scripts like postinst in Debian
> Way too many of them. Way too complex.
> 
> My idea is to add a helper script to the b43-tools / fwcutter and put
> it during install in $(PREFIX)/bin/. This way we will know that every
> user who installed b43-fwcutter also owns our script. Then we just
> tell our users "hey, fire your b43_install_firmware" (or whatever).
> 
> Of course distros still we be able to make it automatic. For example
> Debian's postinst could simply call this script and simplify its
> postinst. Same for RPMs.

Ok this sounds good. _But_ I am not a distribution guy.
We should probably contact the Debian, Fedora, SuSE or whatever package
maintainer to get comments on this.
It would be bad, if we ship something, that turns out to be useless for
distro packages, for whatever reason.

I already integrated some patches from the Debian package recently and
I am all for getting distro specific stuff upstream. But we should
collaborate with the distro maintainers. (And so should they and send all
their patches upstream)

> Now, if you like my idea above, there is one more thing worth
> considering. Offline firmware installation. It's not that common, but
> there still appear ppl who can't use Ethernet cable and don't have
> another Linux machine to extract firmware using it. For them our
> script would be useless.
> 
> So my another idea is to make our script accept passing path to the
> driver as a command line argument. So one can download
> broadcom-wl-6.30.163.46.tar.bz2, put it on a USB flash and call
> b43_install_firmware /mnt/usb/broadcom-wl-6.30.163.46.tar.bz2
> We should also remember to allows passing other archives as an
> argument (wl_apsta-3.130.20.0.o at least!).

How do you plan to implement this? Another list of checksums
for all kinds of tarballs, or some kind of heuristics?
Note that if this contains too many heuristics, distros might
dislike it, because this tends to generate funny bugs.

And on the online-functionality:
How do you detect which firmware to download? Note that I thought
about this in the early bcm43xx days, too. The driver had special
versioned MODULE_FIRMWARE markers (that we removed last year or so,
because they were horribly outdated), so that an automatic tool
could decide what firmware to download. Are you going to decide
by kernel version? What for patched/backported kernels? The plain
firmware file names from the remaining MODULE_FIRMWAREs probably
isn't enough information.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140801/92734a7f/attachment.sig>
