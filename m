From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 18 Feb 2015 17:37:48 +0100
Subject: b43-fwcutter: add helper script for getting firmware
In-Reply-To: <CACna6ryuSMp=xT78DYpjqe18vrwXBORMejhYdz+eUX_GY69fyA@mail.gmail.com>
References: <CACna6rz8TMrhkrSJWsxuBAzNjNew8usn9qo1zHgtPQUCtT-_2A@mail.gmail.com>
 <CACna6ryuSMp=xT78DYpjqe18vrwXBORMejhYdz+eUX_GY69fyA@mail.gmail.com>
Message-ID: <20150218173748.65120d85@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, 18 Feb 2015 11:03:03 +0100
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> On 1 August 2014 at 19:41, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> > Installing a firmware was always kind of challenge for end users.
> > There were many tries of solving this:
> > 1) Distribution wiki pages with descriptions
> > 2) b43 wiki page trying to handle the most common distros
> > 3) Extra non-free packages
> > 4) Scripts like install_bcm43xx_firmware in openSUSE
> > 5) Scripts like postinst in Debian
> > Way too many of them. Way too complex.
> >
> > My idea is to add a helper script to the b43-tools / fwcutter and put
> > it during install in $(PREFIX)/bin/. This way we will know that every
> > user who installed b43-fwcutter also owns our script. Then we just
> > tell our users "hey, fire your b43_install_firmware" (or whatever).
> >
> > Of course distros still we be able to make it automatic. For example
> > Debian's postinst could simply call this script and simplify its
> > postinst. Same for RPMs.
> >
> > [The second part]
> >
> > Now, if you like my idea above, there is one more thing worth
> > considering. Offline firmware installation. It's not that common, but
> > there still appear ppl who can't use Ethernet cable and don't have
> > another Linux machine to extract firmware using it. For them our
> > script would be useless.
> >
> > So my another idea is to make our script accept passing path to the
> > driver as a command line argument. So one can download
> > broadcom-wl-6.30.163.46.tar.bz2, put it on a USB flash and call
> > b43_install_firmware /mnt/usb/broadcom-wl-6.30.163.46.tar.bz2
> > We should also remember to allows passing other archives as an
> > argument (wl_apsta-3.130.20.0.o at least!).
> >
> >
> > Do you like this idea? Could someone handle this?
> 
> I'd like to resurrect this idea. So far I've prepared wiki page
> describing the problem and our plan, see:
> https://wireless.wiki.kernel.org/en/users/drivers/b43/firmware
> 
> Is there anything else you would like to add? Before I start
> contacting distribution maintainers?

I am all for pulling distribution extensions into mainline.
I did so some time ago for some of the debian specific changes.

Generic scripts are good, if everybody can use them.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150218/79694e32/attachment.sig>
