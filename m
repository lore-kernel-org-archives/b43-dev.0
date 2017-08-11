From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 11 Aug 2017 13:44:20 -0500
Subject: Using b43-fwcutter on Windows drivers
In-Reply-To: <2e82aa8c-a053-a8b3-8a90-a4c56cacf60a@endlessm.com>
References: <CAOcMMidabs11reb+t8rcop5z8AsiU13xcsT7-VYJXGO0RdUyWw@mail.gmail.com>
 <fca17d4a-21b8-9087-b0e0-41f183b70e89@lwfinger.net>
 <CAOcMMidd-qr8DZYyQCwHrejpVym64-nR9-_10nepm61GOT7Eow@mail.gmail.com>
 <bcf64bd7-ebf8-1876-3487-453c941ec7bc@lwfinger.net>
 <2e82aa8c-a053-a8b3-8a90-a4c56cacf60a@endlessm.com>
Message-ID: <7ca23fb9-bdfc-3d8c-88fc-8f4a8c58dd78@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/11/2017 07:48 AM, Robert McQueen wrote:
> Thanks for this, I work with Joao and I've been investigating this
> avenue of automatically fetching the drivers and then unpacking the
> firmware when needed with a modprobe install hook, so we can get these
> b43 cards working as seamlessly as possible in Endless when udev/etc
> finds a supported card. I don't have any relevant hardware to test
> unfortunately, but at least "on paper" it looks like it's working
> nicely. Before we press on and enable it in the distro, I had a few
> questions.
> 
> 1. It looks like brcmsmac supports three devices which are all also
> claimed by b43. I imagine that, because b43 usually requires manual
> interaction with fwcutter, it's rare that users would get b43 working
> unless they knew they needed it - so in a sense brcmsmac is the
> "default" driver for these devices. However if we get b43 its firmware
> automatically, does it become non-deterministic which driver will bind?

I would expect that the connection would not be deterministic for those devices. 
The safest thing would be for you to create a special kernel patch that would 
comment out the appropriate lines in the PCI device table found in 
drivers/bcma/host_pci.c. That would be the entries with device ID of 0x0576, 
0x4353, 0x4357, and 43224, although that last one does not seem to be in my 
table. With those changes, there would be no contention.

> If so it feels to me (although I've got no evidence) that this could
> expose some differences in behaviour / capabilities and could confuse
> userland stuff like NetworkManager which uses the wireless extensions
> extensively, so settings might not be applied correctly, etc. My
> instinct is to just make this choice one way or another by either having
> b43 not register for these three devices in our kernel, or blacklist
> brcmsmac. If both drivers are available, do you have any suggestions
> over which one would/should be used?

I suspect that the Broadcom version would be better. They have access to the 
data sheets for the device, which the b43 authors do not.

> 2. Your script uses the 5.100.138 driver, but 6.30.163.46 is available.
> Is there any reason to not use the newer one? I had naively assumed
> newer is better but there is some anecdotal evidence that some versions
> work better for some cards - Arch Linux goes to the effort of packaging
> two different firmware versions:
>   https://wiki.archlinux.org/index.php/broadcom_wireless#b43
> 
> Is there any truth/merit in this? Which firmware would you use in an
> optimal configuration? Do I need to switch the version based on the
> device, or get the firmware for some cards from an older version and
> some from a newer one?

The newer version may be better. We have no documentation regarding what changes 
may have been made. You get to make your choice.

> 3. I've not been able to find the MIPS wl_apsta drivers for download
> directly from Broadcom, and every other source (wifi router source
> drops, OpenWRT, etc) I've found seems not to have a LICENSE file along
> with the .o. It seems most likely to me that the same Broadcom license
> as applied to the PC STA wl drivers applies to these ones - ie like
> http://metadata.ftp-master.debian.org/changelogs/non-free/b/broadcom-sta/broadcom-sta_6.30.223.271-7_copyright
> - but I have no proof of that. Does anyone have any pointers to a more
> definitive statement of the license the wl_apsta.o drivers are under?

You will only find those wl_apsta drivers contained within the open-source 
packages for the various AP systems. That is where you would find any license 
statements made by Broadcom.

Larry
