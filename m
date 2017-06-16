From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 16 Jun 2017 08:21:48 +0200
Subject: Using b43-fwcutter on Windows drivers
In-Reply-To: <CAOcMMiexGBmnuiTPzzsux-wq8HUGejU4i=UckTapKe1YoAAsHQ@mail.gmail.com>
References: <CAOcMMidabs11reb+t8rcop5z8AsiU13xcsT7-VYJXGO0RdUyWw@mail.gmail.com>
 <fca17d4a-21b8-9087-b0e0-41f183b70e89@lwfinger.net>
 <CAOcMMidd-qr8DZYyQCwHrejpVym64-nR9-_10nepm61GOT7Eow@mail.gmail.com>
 <bcf64bd7-ebf8-1876-3487-453c941ec7bc@lwfinger.net>
 <CAOcMMic01a3On+va+x5_FcC_9Gz8xKhdjU1gbjQ0qYwN1CdSmQ@mail.gmail.com>
 <20170612185828.4e64b801@wiggum>
 <CAOcMMiexGBmnuiTPzzsux-wq8HUGejU4i=UckTapKe1YoAAsHQ@mail.gmail.com>
Message-ID: <20170616082148.72f3f344@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 15 Jun 2017 18:21:40 -0400
Jo?o Paulo Rechi Vita <jprvita@endlessm.com> wrote:

> We've been trying to do some binary grepping for the first 4 bytes of
> the firmware files in the windows driver (grep -obUaP
> "\x75\x01\x00\x00" BCMWL664.SYS), but although there are some matching
> occurrences, after that the bytes start to differ. Any other
> suggestions on trying to match the firmware files with windows
> drivers?

Well, then you most likely have differing fw versions.
Try to find other binaries.

> On a another topic, is there a license file available somewhere for
> the wl MIPS drivers? I've downloaded the Asus/Netgear tarballs that
> they were originally extracted from, but couldn't find a license for
> the drivers there, just a general release notes file on the top dir,
> and some un-related licenses for different projects used in the
> router's rootfs image.

I don't know anything about the licensing.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170616/061c5758/attachment.sig>
