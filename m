From: grarpamp <grarpamp@gmail.com>
Date: Thu, 6 Feb 2014 03:19:04 -0500
Subject: Need to match driver to microcode?
In-Reply-To: <CACna6rwXrua5-55+T=y+NACVnXkwrEEVg-A-UK=x6Pk5W9-EGQ@mail.gmail.com>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
 <52F2CFEB.6000307@lwfinger.net>
 <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
 <52F2EA75.3080400@lwfinger.net>
 <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
 <CACna6rwXrua5-55+T=y+NACVnXkwrEEVg-A-UK=x6Pk5W9-EGQ@mail.gmail.com>
Message-ID: <CAD2Ti29in5Y5PgWLKaWPJu1hUKYgYWi2a0cWORXqaFd8Y_XNRg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, Feb 6, 2014 at 1:10 AM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> How does something like '6.30.102.9 (r366174)' on the wrapper
>> relate to its corresponding internal '784.2'? What are those
>> strings each describing?
>
> Broadcom's closed source driver embeds firmware in the driver. They
> don't request it from the user space (ex. from /lib/firmware/).
> However they develop driver and firmware independently, so they use
> different numbering for them.
>
> You can't really say what firmware version is embedded in the driver
> until you load this firmware to the WiFi card and read the version
> back.
>
> What we do is downloading closed source driver (that was compiled for
> some completely different system/architecture) and extract firmware
> from it (which is a tiny part of the total size). We extract it to the
> /lib/firmware/ and then b43 can use it.

I should say i understand Broadcom makes a closed source
linux driver:
http://www.broadcom.com/support/802.11/linux_sta.php
which I don't think includes the card firmware, but I'll
try to unpack it again and look closer. Even if it does
i don't see any reference on b43 site to fw ever being
cut out of it and used with b43/insmod, only to blobs
from GPL being used that way.

And I know the firmware the open b43 driver uses comes
from unpacking GPL releases from people like Linksys.

What I didn't understand was if I run strings on wl_apsta.o
I get the first number, and b43 prints the second number
when loading the firmware. I didn't get what those different
numbers in the same .o/.fw file represented. And I'm
not sure if the first number is present in the loaded firmware
to also be printed on load.

It sounds like the 784.2 is Broadcom microcode rev
and the 6.30.102.9 (rN) is their driver rev (which seemed
a bit odd to find the latter in wl_apsta.o
which i don't think functions as a driver to Linksys,
only as a firmware blob). It could be just a build chain
note or artifact. I suppose apsta could be a driver
object too, but haven't looked that far into the GPL kits.

Now I get what those two numbers are, driver and firmware,
respectively I think.

> In the past there were only 2 noticeable changes in the driver <->
> firmware communication. It results in some 3 different code paths in
> the b43 (we didn't drop support for the old firmwares yet).

Ok, so it sounds like it's not necessarily always just matter of
adding a newer firmware like 7mm.nnn to fwcutter_list.h and
then insmod for b43. There could be other things todo there.
