From: registration at out-of-bounds.de <registration@out-of-bounds.de>
Date: Fri, 14 Apr 2017 13:28:27 +0200
Subject: Using b43 with broadcom 4312 on hp2133 yields "device not ready"
Message-ID: <7828614472cf8cead9a152593a34bcfe@out-of-bounds.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello all,

I've been struggling to get the broadcom 4312 wlan chip to work on a 
hp2133 laptop. According to all documentation I found this should work 
and it almost does: Could extract firmware and driver is loading but 
network manager in Fedora only shows "device not ready" (but I can use 
to wireless switch to toggle to "deactivated"). Now I'm out of ideas and 
hope anybody can help. Details enclosed below

----
HISTORY
hardware is hp 2133 laptop
wlan is enabled in bios
distro is fedora 25

yum install broadcom-wl
yum install akmod-wl
yum install kmod-wl
yum install b43-fwcutter
yum install wget

used wget to download broadcom-wl-4.178.10.4.tar.bz2
wget http://downloads.openwrt.org/sources/broadcom-wl-4.178.10.4.tar.bz2
used fw-cutter to extract firmware from wl_apsta.o to /lib/firmware
b43-fwcutter -w /lib/firmware wl_apsta.o

used wget to download broadcom-wl-5.100.138.tar.bz2
wget http://www.lwfinger.com/b43-firmware/broadcom-wl-5.100.138.tar.bz2
used fw-cutter to extract firmware from wl_apsta.o to /lib/firmware
b43-fwcutter -w /lib/firmware wl_apsta.o

added modules to /etc/modprobe.d/blacklist as per resource #1
according to resource #3 b43 should be the correct driver and is loaded
lspci -nn -d 14e4:
according to resource #0 b43 should support 14e4:4315 (bcm4312)

made backups of firmware directories and freshly created above versions
created symlink to point to active version
only b43 directory affected by extraction
ls -ld /lib/firmware/b*


STATUS
using b43 driver and firmware 4.178.x
network manager shows up during boot
blue led is on but device is not ready
wireless switch is responsive (can toggle between not ready and 
deactivated)

using b43 driver and firmware 5.100.x
network manager shows up during boot
blue led is on but device is not ready
wireless switch is responsive (can toggle between not ready and 
deactivated)


RESOURCES
#0 https://wireless.wiki.kernel.org/en/users/Drivers/b43
#1 http://www.linuxwireless.org/en/users/Drivers/b43/#Fedora
#2 
https://ask.fedoraproject.org/en/question/46860/how-to-setup-broadcom-4312-wireless/
#3 https://wiki.debian.org/bcm43xx
#4 http://www.linlap.com/hp_2133

CONFIGURATION
uname -a
Linux hp-2133 4.9.13-200.fc25.i686+PAE #1 SMP Mon Feb 27 17:11:30 UTC 
2017 i686 i686 i386 GNU/Linux
lspci -nn | grep Broadcom
02:00.0 Network controller [0280]: Broadcom Limited BCM4312 802.11b/g 
LP-PHY [14e4:4315] (rev ff)
07:03.0 Ethernet controller [0200]: Broadcom Limited NetXtreme BCM5788 
Gigabit Ethernet [14e4:169c] (rev 03)
dmesg
[   17.442229] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[   17.460089] b43-phy0: Found PHY: Analog 6, Type 5 (LP), Revision 1
[   17.460104] b43-phy0: Found Radio: Manuf 0x17F, ID 0x2062, Revision 
2, Version 0
[   17.471228] Broadcom 43xx driver loaded [ Features: PNLS ]
----

Thanks in advance and happy easter holidays!

BTW: I could also not compile the proprietary driver, but that's another 
issue. I would really prefer to go with b43
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: lspci.txt
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170414/79137a7b/attachment-0003.txt>
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: dmesg.txt
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170414/79137a7b/attachment-0004.txt>
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: lsmod.txt
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170414/79137a7b/attachment-0005.txt>
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: blacklist
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170414/79137a7b/attachment-0001.ksh>
