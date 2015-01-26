From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 26 Jan 2015 17:33:18 +0100
Subject: BCM43228 not working (no access points shown)
In-Reply-To: <1652037317.13481.1422282966103.JavaMail.open-xchange@ox2app>
References: <89580273.9420.1420391589215.JavaMail.open-xchange@ox3app>
 <CACna6ryjfpehyZQvsJQv+ib4c0O5vFTvZp3eRY4u4gP=jg-urA@mail.gmail.com>
 <731034686.6449.1421521983812.JavaMail.open-xchange@ox2app>
 <CACna6rzCDnZuakxsj7ftRR+PsEvJrFcc=Zm_9swWnt0oAogRrw@mail.gmail.com>
 <1652037317.13481.1422282966103.JavaMail.open-xchange@ox2app>
Message-ID: <CACna6ry_RGseL1L_nRv9h5a_OGcMj7wYjMgc5oMBpd6r3uZcDw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 26 January 2015 at 15:36, Falco Preiseni
<apfelkomplott2014@mailbox.org> wrote:
> Sorry for the late reply..
>
>> On 19 January 2015 at 09:06 Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> Wait a second. So are all these tests coming from the same machine? Do
>> I get it right that:
>> 1) Debian (3.2.0) + wl.ko (5.100.82.112) = GOOD
>> 2) ArchLinux + wl.ko (6.30.223.248) = BAD
>> 3) ArchLinux + b43.ko = BAD
>> ?
> Yes, that's correct and it's the same machine.
>
>> Do you still have this Debian? Could you try following setup:
>> Debian (3.2.0) + wl.ko (6.30.223.248)
>> and let us know if it works?
> This also works. I installed the broadcom-sta-dkms package from testing as it
> contains the above version...

So this could be some kernel regression. Probably related to your
machine. Too bad, as it means I won't be able to resolve this problem.

You should bisect kernel marking 3.2 as GOOD and whatever version
ArchLinux uses as BAD. This will of course require compiling kernel
for many times (10? 20?) and trying version by version with the
Broadcom's wl driver.

-- 
Rafa?
