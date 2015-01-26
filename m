From: Falco Preiseni <apfelkomplott2014@mailbox.org>
Date: Mon, 26 Jan 2015 15:36:06 +0100 (CET)
Subject: BCM43228 not working (no access points shown)
In-Reply-To: <CACna6rzCDnZuakxsj7ftRR+PsEvJrFcc=Zm_9swWnt0oAogRrw@mail.gmail.com>
References: <89580273.9420.1420391589215.JavaMail.open-xchange@ox3app>
 <CACna6ryjfpehyZQvsJQv+ib4c0O5vFTvZp3eRY4u4gP=jg-urA@mail.gmail.com>
 <731034686.6449.1421521983812.JavaMail.open-xchange@ox2app>
 <CACna6rzCDnZuakxsj7ftRR+PsEvJrFcc=Zm_9swWnt0oAogRrw@mail.gmail.com>
Message-ID: <1652037317.13481.1422282966103.JavaMail.open-xchange@ox2app>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Sorry for the late reply..

> On 19 January 2015 at 09:06 Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> Wait a second. So are all these tests coming from the same machine? Do
> I get it right that:
> 1) Debian (3.2.0) + wl.ko (5.100.82.112) = GOOD
> 2) ArchLinux + wl.ko (6.30.223.248) = BAD
> 3) ArchLinux + b43.ko = BAD
> ?
Yes, that's correct and it's the same machine.

> Do you still have this Debian? Could you try following setup:
> Debian (3.2.0) + wl.ko (6.30.223.248)
> and let us know if it works?
This also works. I installed the broadcom-sta-dkms package from testing as it
contains the above version...
