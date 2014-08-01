From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 1 Aug 2014 23:35:56 +0200
Subject: b43-fwcutter: add helper script for getting firmware
In-Reply-To: <CACna6ryu_Gw_sF2ec9ZkSoh=cLrX1T2FTt_2s+qkGNzWUcDnwg@mail.gmail.com>
References: <CACna6rz8TMrhkrSJWsxuBAzNjNew8usn9qo1zHgtPQUCtT-_2A@mail.gmail.com>
 <20140801204454.21badf20@wiggum>
 <CACna6ryu_Gw_sF2ec9ZkSoh=cLrX1T2FTt_2s+qkGNzWUcDnwg@mail.gmail.com>
Message-ID: <20140801233556.7a117cf1@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 1 Aug 2014 23:26:55 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> No heuristics. Extracting any passed archive and looking for binary
> objects in it would *surly* contain some bugs.
> 
> We update binaries (lwfinger.com/b43-firmware/) rarely, once a year
> maybe? So having a simple checksum of .tar.bz2 should make the trick.
> I need to know which archive I'm dealing with to know the location of
> .o file only.

I completely agree here.

> > And on the online-functionality:
> > How do you detect which firmware to download? Note that I thought
> > about this in the early bcm43xx days, too. The driver had special
> > versioned MODULE_FIRMWARE markers (that we removed last year or so,
> > because they were horribly outdated), so that an automatic tool
> > could decide what firmware to download. Are you going to decide
> > by kernel version? What for patched/backported kernels? The plain
> > firmware file names from the remaining MODULE_FIRMWAREs probably
> > isn't enough information.
> 
> Do you think about problem of using new version of script with old
> kernel? Like using a fresh script wild old kernel that e.g. didn't
> support firmware rev 598+?

Yes.

> What about handling it in a kernel? If we ever start supporting new,
> backward incompatible, version of firmware, maybe we should use
> something like a /lib/firmware/b43-v123/?

Yes, we should _have_ done this. But we didn't.
We could simply ignore old incompatible kernels and in future do this:

> In such situation we could make script prepare both:
> /lib/firmware/b43/
> and
> /lib/firmware/b43-v123/
> 
> Script wouldn't need to check for the current kernel then. And user
> could switch between kernels without changing user space.
> 
> Does it make sense?

sure.
Do symbolic links to directories work for firmware fetching (Need to check 
both udev and in-kernel mechanisms)

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140801/38c5c365/attachment.sig>
