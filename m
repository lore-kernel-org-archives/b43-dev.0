From: =?UTF-8?Q?Jo=C3=A3o_Paulo_Rechi_Vita?= <jprvita@endlessm.com>
Date: Thu, 15 Jun 2017 18:21:40 -0400
Subject: Using b43-fwcutter on Windows drivers
In-Reply-To: <20170612185828.4e64b801@wiggum>
References: <CAOcMMidabs11reb+t8rcop5z8AsiU13xcsT7-VYJXGO0RdUyWw@mail.gmail.com>
 <fca17d4a-21b8-9087-b0e0-41f183b70e89@lwfinger.net>
 <CAOcMMidd-qr8DZYyQCwHrejpVym64-nR9-_10nepm61GOT7Eow@mail.gmail.com>
 <bcf64bd7-ebf8-1876-3487-453c941ec7bc@lwfinger.net>
 <CAOcMMic01a3On+va+x5_FcC_9Gz8xKhdjU1gbjQ0qYwN1CdSmQ@mail.gmail.com>
 <20170612185828.4e64b801@wiggum>
Message-ID: <CAOcMMiexGBmnuiTPzzsux-wq8HUGejU4i=UckTapKe1YoAAsHQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello again,

On Mon, Jun 12, 2017 at 12:59 PM, Michael B?sch <m@bues.ch> wrote:
> On Mon, 12 Jun 2017 12:28:09 -0400
> Jo?o Paulo Rechi Vita <jprvita@endlessm.com> wrote:
>
>> We already ship a similar script based on the debian package for
>> b43-fwcutter (with some adaptations for our rootfs layout), that would
>> download the drivers, extract and install firmware for the user, so we
>> could just ship the files as well. What I was trying to avoid is
>> shipping those files, and that's where extracting from the Windows
>> drivers would come in handy.
>
>
> Well, the problem is that it is very hard to get the names for the
> firmware images found in the binary.
>
> What you could do is try to find a Linux driver and a Windows driver
> with exactly matching FW versions and then use the names from the Linux
> driver to extract the blobs from the Windows driver.

We've been trying to do some binary grepping for the first 4 bytes of
the firmware files in the windows driver (grep -obUaP
"\x75\x01\x00\x00" BCMWL664.SYS), but although there are some matching
occurrences, after that the bytes start to differ. Any other
suggestions on trying to match the firmware files with windows
drivers?

> It would be pretty easy to write a script that takes a Linux driver and
> its matching extract-offsets and extract-names and then create the
> corresponding offsets for the Windows binary.
> Please feel free to create such a script and I would be happy to
> include it in b43-fwcutter.
>
> A script to auto-generate the extract-info from a Linux driver is
> already included with b43-fwcutter.
>

Yep, I have looked at that, and tried to objdump the windows driver,
but as you guys said, the symbol names are stripped out of it.

On a another topic, is there a license file available somewhere for
the wl MIPS drivers? I've downloaded the Asus/Netgear tarballs that
they were originally extracted from, but couldn't find a license for
the drivers there, just a general release notes file on the top dir,
and some un-related licenses for different projects used in the
router's rootfs image.

Thanks,

......................................................................................
Jo?o Paulo Rechi Vita  |  +1.415.851.5778  |  Endless
