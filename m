From: =?ISO-8859-1?Q?Kevyn=2DAlexandre_Par=E9?= <kevyn.alexandre.pare@gmail.com>
Date: Wed, 14 Jul 2010 09:15:23 -0400
Subject: My test for bcm4213
In-Reply-To: <AANLkTinHyR4ho_Ti6xB1dggpOBX1uJ_hZn7WXX_mgWlc@mail.gmail.com>
References: <AANLkTinHyR4ho_Ti6xB1dggpOBX1uJ_hZn7WXX_mgWlc@mail.gmail.com>
Message-ID: <AANLkTinodxB2RDKnHoHlzSDvC2xbL-J78z0O8TX59JDb@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

Here my test for bcm4213

vostro at vostro:~$ lspci -n | grep 14e4
06:00.0 0280: 14e4:4315 (rev 01)

vostro at vostro:~$ uname -a
Linux vostro 2.6.35-rc3-wl+ #1 SMP Sat Jul 3 20:37:05 EDT 2010 x86_64 GNU/Linux

On top ubuntu 10.04

After booting error happen and I fallow instruction, see DMESG-WIRELESS

didn't work with sudo apt-get install b43-fwcutter // it was downloading
on 12 that was failling... didn't investigate more..

wget http://bu3sch.de/b43/fwcutter/b43-fwcutter-013.tar.bz2
tar xjvf b43-fwcutter-013.tar.bz2
cd b43-fwcutter-013/
make
cd ..

export FIRMWARE_INSTALL_DIR="/lib/firmware"
wget http://downloads.openwrt.org/sources/broadcom-wl-4.178.10.4.tar.bz2
tar xjf broadcom-wl-4.178.10.4.tar.bz2
cd broadcom-wl-4.178.10.4/
sudo ../b43-fwcutter-013/b43-fwcutter -w "$FIRMWARE_INSTALL_DIR" wl_apsta.o

see DMESG file attach for log.

next step try it with last 2.6.35-rc4 or later...

Should I check in linux-next tree for lastest stuff related to bcm4213
or it have been merge already in mainline?

NOTE: After starting my computer in hibernate mode the NetworkManager
Applet was not showing wireless network... I try to modprobe -r b43
and modprobe b43 but nothing happen. log didn't show much so I reboot
and it works...

Kevyn-Alexandre Pare
-------------- next part --------------
A non-text attachment was scrubbed...
Name: DMESG-WIRELESS
Type: application/octet-stream
Size: 62684 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100714/26dfc946/attachment-0002.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: DMESG
Type: application/octet-stream
Size: 68479 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100714/26dfc946/attachment-0003.obj>
