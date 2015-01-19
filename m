From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 19 Jan 2015 09:06:14 +0100
Subject: BCM43228 not working (no access points shown)
In-Reply-To: <731034686.6449.1421521983812.JavaMail.open-xchange@ox2app>
References: <89580273.9420.1420391589215.JavaMail.open-xchange@ox3app>
 <CACna6ryjfpehyZQvsJQv+ib4c0O5vFTvZp3eRY4u4gP=jg-urA@mail.gmail.com>
 <731034686.6449.1421521983812.JavaMail.open-xchange@ox2app>
Message-ID: <CACna6rzCDnZuakxsj7ftRR+PsEvJrFcc=Zm_9swWnt0oAogRrw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 17 January 2015 at 20:13, Falco Preiseni
<apfelkomplott2014@mailbox.org> wrote:
> thanks for your efforts :) I tried out the wl driver on ArchLinux but it didn't
> work either. However, on Debian the wl driver works with my card:
>
> $ uname -a
> Linux noname 3.2.0-4-amd64 #1 SMP Debian 3.2.63-2+deb7u1 x86_64 GNU/Linux
>
> $ dmesg
> [   97.463846] wl 0000:02:00.0: setting latency timer to 64
> [   97.492386] INFO @wl_cfg80211_attach : Registered CFG80211 phy
> [   97.493105] wlan0: Broadcom BCM4359 802.11 Hybrid Wireless Controller
> 5.100.82.112
>
> On ArchLinux I noticed that there is always (for b43 and wl) the same error
> (INVALID_DEVICE_REQUEST) in the dmesg output after the broadcom stuff:
> [  587.974839] wl0: online cpus 1
> [  587.975382] wlan0: Broadcom BCM4359 802.11 Hybrid Wireless Controller
> 6.30.223.248 (r487574)
> [  587.983443] wl 0000:02:00.0 wlo1: renamed from wlan0
> [  588.134778] AMD-Vi: Event logged [INVALID_DEVICE_REQUEST device=00:00.1
> address=0x000000fdf80c0020 flags=0x0a00]
>
> I found only one entry on google [1] with the same error and interestingly
> enough that user has the same wifi card and laptop model (HP Elitebook 755 G2
> with AMD processor). Unfortunately the given solution (add *intremap=off* as
> kernel parameter) does not work for me :(
>
> Howsoever: It's not a b43 problem. I don't know...

Wait a second. So are all these tests coming from the same machine? Do
I get it right that:
1) Debian (3.2.0) + wl.ko (5.100.82.112) = GOOD
2) ArchLinux + wl.ko (6.30.223.248) = BAD
3) ArchLinux + b43.ko = BAD
?

If so it would mean that:
1) Upgrading kernel broke something
2) Upgrading wl.ko broken something

Do you still have this Debian? Could you try following setup:
Debian (3.2.0) + wl.ko (6.30.223.248)
and let us know if it works?

-- 
Rafa?
