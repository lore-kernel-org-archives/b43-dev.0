From: Robert McQueen <rob@endlessm.com>
Date: Fri, 11 Aug 2017 13:48:22 +0100
Subject: Using b43-fwcutter on Windows drivers
In-Reply-To: <bcf64bd7-ebf8-1876-3487-453c941ec7bc@lwfinger.net>
References: <CAOcMMidabs11reb+t8rcop5z8AsiU13xcsT7-VYJXGO0RdUyWw@mail.gmail.com>
 <fca17d4a-21b8-9087-b0e0-41f183b70e89@lwfinger.net>
 <CAOcMMidd-qr8DZYyQCwHrejpVym64-nR9-_10nepm61GOT7Eow@mail.gmail.com>
 <bcf64bd7-ebf8-1876-3487-453c941ec7bc@lwfinger.net>
Message-ID: <2e82aa8c-a053-a8b3-8a90-a4c56cacf60a@endlessm.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Larry,

On 08/06/17 05:48, Larry Finger wrote:
> A potential solution to your problem might be to use The method employed
> in
> http://www.lwfinger.com/b43-firmware/no_net_install_bcm43xx_firmware.tar.bz2.
> That tar file contains Broadcom object files with firmware for b43 and
> b43legacy with a script that extracts the firmware files. It meets
> Broadcom restrictions in that it only redistributes drivers, not
> firmware files. That particular tar file contains 5.100.138 b43
> firmware; however, it would be easy to package a different driver, and
> adjust the extraction script accordingly. If it is not possible to
> package the tar file as part of your Windows installation, at least you
> could have your users download that file from a Windows boot, and then
> run the firmware extraction from a Linux boot.

Thanks for this, I work with Joao and I've been investigating this
avenue of automatically fetching the drivers and then unpacking the
firmware when needed with a modprobe install hook, so we can get these
b43 cards working as seamlessly as possible in Endless when udev/etc
finds a supported card. I don't have any relevant hardware to test
unfortunately, but at least "on paper" it looks like it's working
nicely. Before we press on and enable it in the distro, I had a few
questions.

1. It looks like brcmsmac supports three devices which are all also
claimed by b43. I imagine that, because b43 usually requires manual
interaction with fwcutter, it's rare that users would get b43 working
unless they knew they needed it - so in a sense brcmsmac is the
"default" driver for these devices. However if we get b43 its firmware
automatically, does it become non-deterministic which driver will bind?

If so it feels to me (although I've got no evidence) that this could
expose some differences in behaviour / capabilities and could confuse
userland stuff like NetworkManager which uses the wireless extensions
extensively, so settings might not be applied correctly, etc. My
instinct is to just make this choice one way or another by either having
b43 not register for these three devices in our kernel, or blacklist
brcmsmac. If both drivers are available, do you have any suggestions
over which one would/should be used?

2. Your script uses the 5.100.138 driver, but 6.30.163.46 is available.
Is there any reason to not use the newer one? I had naively assumed
newer is better but there is some anecdotal evidence that some versions
work better for some cards - Arch Linux goes to the effort of packaging
two different firmware versions:
 https://wiki.archlinux.org/index.php/broadcom_wireless#b43

Is there any truth/merit in this? Which firmware would you use in an
optimal configuration? Do I need to switch the version based on the
device, or get the firmware for some cards from an older version and
some from a newer one?

3. I've not been able to find the MIPS wl_apsta drivers for download
directly from Broadcom, and every other source (wifi router source
drops, OpenWRT, etc) I've found seems not to have a LICENSE file along
with the .o. It seems most likely to me that the same Broadcom license
as applied to the PC STA wl drivers applies to these ones - ie like
http://metadata.ftp-master.debian.org/changelogs/non-free/b/broadcom-sta/broadcom-sta_6.30.223.271-7_copyright
- but I have no proof of that. Does anyone have any pointers to a more
definitive statement of the license the wl_apsta.o drivers are under?

> Larry

Cheers,
Rob

........................................................................

Robert McQueen  |  +1.415.413.4159  |  Endless <http://endlessm.com/>
