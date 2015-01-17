From: Falco Preiseni <apfelkomplott2014@mailbox.org>
Date: Sat, 17 Jan 2015 20:13:03 +0100 (CET)
Subject: BCM43228 not working (no access points shown)
In-Reply-To: <CACna6ryjfpehyZQvsJQv+ib4c0O5vFTvZp3eRY4u4gP=jg-urA@mail.gmail.com>
References: <89580273.9420.1420391589215.JavaMail.open-xchange@ox3app>
 <CACna6ryjfpehyZQvsJQv+ib4c0O5vFTvZp3eRY4u4gP=jg-urA@mail.gmail.com>
Message-ID: <731034686.6449.1421521983812.JavaMail.open-xchange@ox2app>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Rafa?,

thanks for your efforts :) I tried out the wl driver on ArchLinux but it didn't
work either. However, on Debian the wl driver works with my card:

$ uname -a
Linux noname 3.2.0-4-amd64 #1 SMP Debian 3.2.63-2+deb7u1 x86_64 GNU/Linux

$ dmesg
[   97.463846] wl 0000:02:00.0: setting latency timer to 64
[   97.492386] INFO @wl_cfg80211_attach : Registered CFG80211 phy
[   97.493105] wlan0: Broadcom BCM4359 802.11 Hybrid Wireless Controller
5.100.82.112

On ArchLinux I noticed that there is always (for b43 and wl) the same error
(INVALID_DEVICE_REQUEST) in the dmesg output after the broadcom stuff:
[  587.974839] wl0: online cpus 1
[  587.975382] wlan0: Broadcom BCM4359 802.11 Hybrid Wireless Controller
6.30.223.248 (r487574)
[  587.983443] wl 0000:02:00.0 wlo1: renamed from wlan0
[  588.134778] AMD-Vi: Event logged [INVALID_DEVICE_REQUEST device=00:00.1
address=0x000000fdf80c0020 flags=0x0a00]

I found only one entry on google [1] with the same error and interestingly
enough that user has the same wifi card and laptop model (HP Elitebook 755 G2
with AMD processor). Unfortunately the given solution (add *intremap=off* as
kernel parameter) does not work for me :(

Howsoever: It's not a b43 problem. I don't know...

Regards,
Falco

[1] http://forums.fedoraforum.org/showthread.php?t=300746

> Rafa? Mi?ecki <zajec5@gmail.com> hat am 16. Januar 2015 um 20:03 geschrieben:
> 
> 
> On 4 January 2015 at 18:13, Falco Preiseni
> <apfelkomplott2014@mailbox.org> wrote:
> > my Broadcom BCM43228 wifi card is not able to show any access points
> > (neither
> > with "iw wlpx scan" nor with NetworkManager). Connecting with the ESSID does
> > not
> > work, either. According to the LED and the output of "ip link" the card is
> > active. Furthermore "lspci -k" tells that "bcma-pci-bridge" is the kernel
> > driver
> > in use despite I modprobed b43. According to [3] this could be a sign that
> > b43
> > ignores my device. Or is this label normal?
> >
> > I followed the instructions on the ArchLinux Wiki[1] (which should align
> > with
> > the official instructions [2]), installed b43-fwcutter and b43-firmware in
> > order
> > to obtain the firmware version 5.100.138 and I also tried a newer firmware
> > (6.30.163.46). Currently I have blacklisted almost everything (b43legacy,
> > bcma-pci-bridge, bcma, brcmsmac, ssb and b43) and activated "option b43
> > allhwsupport=1" and modprobed b43 by hand.
> >
> > I did a lot of reasearch but wasn't able to solve my problem. At least the
> > label
> > "bcma-pci-bridge" looks like a bug but I don't know. Any idea what's wrong?
> 
> Hi Falco,
> 
> Sorry for the late reply, it took me some time to get my dev machine running.
> 
> It appears my BCM43228 identifies itself as the same model as yours.
> I've tested it and it works fine with 3.17 and 3.19-rc2. I switched to
> the same firmware you use and it was still OK. Performance varies (for
> most of time it's about 20Mb/s but sometimes drops down to 8Mb/s, but
> it works).
> 
> Were you using this card successfully with wl.ko? I don't really know
> what may be wrong with it :|
