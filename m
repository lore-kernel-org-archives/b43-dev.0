From: stosss <stosss@gmail.com>
Date: Sat, 26 Jan 2013 22:34:18 -0500
Subject: BCM4306
Message-ID: <CADX9XQtND8fLZwaGs+wrCYgwc6wW_nvx7sngx+Pa2+20RmXd1Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Following the instructions from http://linuxwireless.org/en/users/Drivers/b43

lspci -vnn -d 14e4:

0b:03.0 Network controller [0280]: Broadcom Corporation BCM4306
802.11b/g Wireless LAN Controller [14e4:4320] (rev 03)
             Subsystem: Hewlett-Packard Company Broadcom  802.11b/g
WLAN [103c:12f8]
             Flags: fast devsel, IRQ 5
             Memory at c8206000 (32-bit, non-prefetchable) [disabled] [size=8k]
             Kernel modules: ssb


PCI-ID          Supported       Chip ID         Modes    PHY version
14e4:4320       yes            BCM4306/3         ?            G (r2)

Device firmware installation

The Broadcom wireless chip needs proprietary software (called
"firmware") that runs on the wireless chip itself to work properly.
This firmware is copyrighted by Broadcom and must be extracted from
Broadcom's proprietary drivers. To get such firmware on your system,
you must download the driver from a legal distribution point, extract
it, and install it. This is accomplished different ways by different
Linux distributions, so please read the section for yours for the best
results. You will need an alternate working internet connection (by
Ethernet cable, for example) since the firmware cannot be included
with the distro itself.

Post details for missing distributions at b43-dev at lists.infradead.org.
Note: the firmware from the binary drivers is copyrighted by Broadcom
Corporation and cannot be redistributed.

I have been to the broadcom site. I have found and downloaded files
from the broadcom site and a couple other sites that are for the
bcm4306.

I am running PCLinuxOS which is a combination of Mandriva, Ubuntu,
Debian and a few other distributions.

I have installed from the distribution repo
b43-firmware
b43-fwcutter
b43legacy-firmware
bcm43xx-firmware
bcm43-fwcutter
dkms-broadcom-wl

According to the info above this chip should work. Something is
missing but I don't know what it is.

There are three windows drivers that show up with ndiswrapper -l that
should work as well but they don't either.

I don't know what else to check or do. Do I need to black list the
Kernel module ssb ? I have tried to get a Linux or windows driver to
work and I have tried several things even uninstalling all drivers and
then installing the ones listed above.

It would be awesome if someone could tell me what I haven't done that
I need to do and point me to a workable solution.

Thanks for any help
