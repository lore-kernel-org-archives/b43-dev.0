From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 17 Nov 2011 12:42:31 +0100
Subject: Patch "b43: refuse to load unsupported firmware" has been added
 to the 3.0-stable tree
In-Reply-To: <CACna6ryO0tGJ0SJBnhd9s93BXW-EchrWFX1faWP6gVOEQSYfkA@mail.gmail.com>
References: <1321487254296@kroah.org> <1321512890.2885.92.camel@deadeye>
 <CACna6ryQe3p3WUeHo5F6HUoO-BH6hC+=YhDgH=sMey6dwperng@mail.gmail.com>
 <20111117121956.68cd800e@milhouse>
 <CACna6ryO0tGJ0SJBnhd9s93BXW-EchrWFX1faWP6gVOEQSYfkA@mail.gmail.com>
Message-ID: <20111117124231.28a057fd@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 17 Nov 2011 12:37:10 +0100
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> W dniu 17 listopada 2011 12:19 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> > On Thu, 17 Nov 2011 09:42:04 +0100
> > Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> >> 1) Broadcom driver doesn't contain info about firmware version
> >
> > In fact it does. The microcode does contain the version, of course.
> >
> >> 2) Because of that b43-fwcutter can't name files correctly
> >
> > And fwcutter is even able to extract it from the dump. It also
> > does so currently.
> >
> >> 3) Discovering firmware version requires loading it to the firmware
> >> and reading from SHM
> >
> > No.
> 
> I had no idea about that, but I admit, I didn't read the whole
> b43-fwcutter code. Thanks for explaining.
> 
> What about API level (revsion?)? Do you think b43-fwcutten can extract
> that? This would be perfect solution to include API level in firmware
> file name.
> 

I'm not sure what you are referring to by "API level". I didn't
follow the latest firmware development too closely. Is that something new?

fwcutter contains a tiny trivial disassembler that is able to extract various
immediates from the microcode. So if your versioning is stored as immediates
in the code, it's trivial to add extraction for it.

fwcutter currently extracts (and prints) ucode version, patchlevel, date and time.

-- 
Greetings, Michael.
