From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 17 Nov 2011 12:59:07 +0100
Subject: Patch "b43: refuse to load unsupported firmware" has been added
 to the 3.0-stable tree
In-Reply-To: <CACna6ryP4v3pjtrfhEkvYvXBGCujfBpn6YJ+Es=JkcEXsb3xpQ@mail.gmail.com>
References: <1321487254296@kroah.org> <1321512890.2885.92.camel@deadeye>
 <CACna6ryQe3p3WUeHo5F6HUoO-BH6hC+=YhDgH=sMey6dwperng@mail.gmail.com>
 <20111117121956.68cd800e@milhouse>
 <CACna6ryO0tGJ0SJBnhd9s93BXW-EchrWFX1faWP6gVOEQSYfkA@mail.gmail.com>
 <20111117124231.28a057fd@milhouse>
 <CACna6ryP4v3pjtrfhEkvYvXBGCujfBpn6YJ+Es=JkcEXsb3xpQ@mail.gmail.com>
Message-ID: <20111117125907.39f3d305@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 17 Nov 2011 12:49:44 +0100
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> W dniu 17 listopada 2011 12:42 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> > On Thu, 17 Nov 2011 12:37:10 +0100
> > Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> >
> >> W dniu 17 listopada 2011 12:19 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> >> > On Thu, 17 Nov 2011 09:42:04 +0100
> >> > Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> >> >> 1) Broadcom driver doesn't contain info about firmware version
> >> >
> >> > In fact it does. The microcode does contain the version, of course.
> >> >
> >> >> 2) Because of that b43-fwcutter can't name files correctly
> >> >
> >> > And fwcutter is even able to extract it from the dump. It also
> >> > does so currently.
> >> >
> >> >> 3) Discovering firmware version requires loading it to the firmware
> >> >> and reading from SHM
> >> >
> >> > No.
> >>
> >> I had no idea about that, but I admit, I didn't read the whole
> >> b43-fwcutter code. Thanks for explaining.
> >>
> >> What about API level (revsion?)? Do you think b43-fwcutten can extract
> >> that? This would be perfect solution to include API level in firmware
> >> file name.
> >>
> >
> > I'm not sure what you are referring to by "API level". I didn't
> > follow the latest firmware development too closely. Is that something new?
> >
> > fwcutter contains a tiny trivial disassembler that is able to extract various
> > immediates from the microcode. So if your versioning is stored as immediates
> > in the code, it's trivial to add extraction for it.
> >
> > fwcutter currently extracts (and prints) ucode version, patchlevel, date and time.
> 
> http://git.kernel.org/?p=linux/kernel/git/dwmw2/linux-firmware.git;a=commit;h=a531257c40920de0161150091eaccbbc1182eb96
> 
> It seems Broadcom wants using some basename-apiversion syntax for
> their firmware files... but indeed it does not make much sense to me.
> 
> According to their firmware, current API is 0. I assume it from
> reading file name which is bcm43xx-0.fw. It does not make much sense,
> as we had at least 2 earlier APIs.
> 
> Looks like dead end.
> 
> Don't know what else we can propose. Putting exact version and
> patchlevel will make it complex (a lot of firmwares are available).

No. Simply make up arbitrary incrementing numbers and add it to the
directory name. /lib/firmware/b43 for the old ones.
/lib/firmware/b43-1 for the next newer one that we support. -2, -3 and so on.
What internal ucode rev/patchlevel that corresponds to doesn't really matter.

In the driver you can then probe all directories (starting from the number
that is the newest when the driver was released, of course) and see if
there's usable firmware in there. This way it will never probe "too new"
firmwares.

-- 
Greetings, Michael.
