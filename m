From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 1 Aug 2014 23:26:55 +0200
Subject: b43-fwcutter: add helper script for getting firmware
In-Reply-To: <20140801204454.21badf20@wiggum>
References: <CACna6rz8TMrhkrSJWsxuBAzNjNew8usn9qo1zHgtPQUCtT-_2A@mail.gmail.com>
 <20140801204454.21badf20@wiggum>
Message-ID: <CACna6ryu_Gw_sF2ec9ZkSoh=cLrX1T2FTt_2s+qkGNzWUcDnwg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 1 August 2014 20:44, Michael B?sch <m@bues.ch> wrote:
>> 4) Scripts like install_bcm43xx_firmware in openSUSE
>> 5) Scripts like postinst in Debian
>> Way too many of them. Way too complex.
>>
>> My idea is to add a helper script to the b43-tools / fwcutter and put
>> it during install in $(PREFIX)/bin/. This way we will know that every
>> user who installed b43-fwcutter also owns our script. Then we just
>> tell our users "hey, fire your b43_install_firmware" (or whatever).
>>
>> Of course distros still we be able to make it automatic. For example
>> Debian's postinst could simply call this script and simplify its
>> postinst. Same for RPMs.
>
> Ok this sounds good. _But_ I am not a distribution guy.
> We should probably contact the Debian, Fedora, SuSE or whatever package
> maintainer to get comments on this.
> It would be bad, if we ship something, that turns out to be useless for
> distro packages, for whatever reason.

OK, I'll try to contact distribution guys, but I believe we have to
have some plan well-specified first.


>> Now, if you like my idea above, there is one more thing worth
>> considering. Offline firmware installation. It's not that common, but
>> there still appear ppl who can't use Ethernet cable and don't have
>> another Linux machine to extract firmware using it. For them our
>> script would be useless.
>>
>> So my another idea is to make our script accept passing path to the
>> driver as a command line argument. So one can download
>> broadcom-wl-6.30.163.46.tar.bz2, put it on a USB flash and call
>> b43_install_firmware /mnt/usb/broadcom-wl-6.30.163.46.tar.bz2
>> We should also remember to allows passing other archives as an
>> argument (wl_apsta-3.130.20.0.o at least!).
>
> How do you plan to implement this? Another list of checksums
> for all kinds of tarballs, or some kind of heuristics?
> Note that if this contains too many heuristics, distros might
> dislike it, because this tends to generate funny bugs.

No heuristics. Extracting any passed archive and looking for binary
objects in it would *surly* contain some bugs.

We update binaries (lwfinger.com/b43-firmware/) rarely, once a year
maybe? So having a simple checksum of .tar.bz2 should make the trick.
I need to know which archive I'm dealing with to know the location of
.o file only.


> And on the online-functionality:
> How do you detect which firmware to download? Note that I thought
> about this in the early bcm43xx days, too. The driver had special
> versioned MODULE_FIRMWARE markers (that we removed last year or so,
> because they were horribly outdated), so that an automatic tool
> could decide what firmware to download. Are you going to decide
> by kernel version? What for patched/backported kernels? The plain
> firmware file names from the remaining MODULE_FIRMWAREs probably
> isn't enough information.

Do you think about problem of using new version of script with old
kernel? Like using a fresh script wild old kernel that e.g. didn't
support firmware rev 598+?
What about handling it in a kernel? If we ever start supporting new,
backward incompatible, version of firmware, maybe we should use
something like a /lib/firmware/b43-v123/?
In such situation we could make script prepare both:
/lib/firmware/b43/
and
/lib/firmware/b43-v123/

Script wouldn't need to check for the current kernel then. And user
could switch between kernels without changing user space.

Does it make sense?

-- 
Rafa?
