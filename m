From: Drew Scott Daniels <ddaniels@umalumni.mb.ca>
Date: Tue, 5 Jan 2016 01:38:56 -0600
Subject: New b43 firmware via ASUS/broadcom? postinst and documentation
 updates? downstream bugs?
Message-ID: <080d7753324814742172df41fb7071da.squirrel@webmail.dreamhost.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,
Thanks for all your work on the b43 drivers and tools.

I have some questions that I'm hoping you can help answer, or help point
me in the right direction:

1) Is there new firmware via ASUS?

https://www.asus.com/us/Networking/RTAC66U/HelpDesk_Download/ says:
Version 3.0.0.4.378.9313
Description 	GPL of ASUS RT-AC66U for firmware 3.0.0.4.378.9313
File Size 	567.48 MBytes update 2015/11/16
Download from 	Global

"Global" is a link to
http://dlcdnet.asus.com/pub/ASUS/wireless/RT-AC66U/GPL_RT_AC66U_30043789313.zip
contains
GPL_RT-AC66U_3.0.0.4.378.9313-g53ab20f.tgz
contains other files and the following files (md5sum in front):
ad1372a88f5ce40a1d1e6869d5c24580  asuswrt/License
27030a199072d086d746a679f4f23567 
asuswrt/release/src-rt-6.x/wl/sysdeps/RT-AC66U/linux/wl_ap.o
8ef6030e304f0906835b551928b7c510 
asuswrt/release/src-rt-6.x/wl/sysdeps/RT-AC66U/linux/wl_apsta.o
2cc734d9f9ba27c5922f351f6558aa54 
asuswrt/release/src-rt-6.x/wl/sysdeps/RT-AC66U/linux/wl_sta.o

2) Are these ASUS released files GPL that could be included in the Linux
kernel?

asuswrt/License starts:

DESCRIPTION
--------------------------
This product includes copyrighted third-party software licensed
under the terms of the GNU General Public License. Please see
The GNU General Public License for the exact terms and conditions
of this license. All future firmware updates will also be accompanied
with their respective source code. Please visit our web site for updated
information. Note that we do not offer direct support for the distribution.


3) https://www.broadcom.com/support/802.11 also has a download to
hybrid-v35_64-nodebug-pcoem-6_30_223_271.tar.gz with files dated
2015-09-18 including lib/wlc_hybrid.o_shipped with md5sum
6889dbd24abf8006de5cc6eddd138518. This looks newer than
broadcom-wl-6.30.163.46.tar.bz2 which had support added in 2013 to
fwcutter.

It's hard to tell without trying to cut the files out, and I'm not sure if
that's the right file.

4) http://linuxwireless.org/en/users/Drivers/b43/ lists b43-fwcutter-018
but I see http://bues.ch/b43/fwcutter/ lists:
b43-fwcutter-019.tar.bz2	25-Jun-2014 16:05 	46K

5) http://linuxwireless.sipsolutions.net/en/users/Drivers/b43/ lists
http://www.lwfinger.com/b43-firmware/broadcom-wl-5.100.138.tar.bz2 but
http://linuxwireless.sipsolutions.net/en/users/Drivers/b43/developers/
shows a table with a link to
http://www.lwfinger.com/b43-firmware/broadcom-wl-6.30.163.46.tar.bz2 which
looks newer. Does it not work as well as 5.100.138?

6) b43-fwcutter-0.19.tar.bz2 contains:
./debian/firmware-b43-installer/DEBIAN/postinst
that downloads broadcom-wl-5.100.138.tar.bz2 and not 6.30.136.46
Debian and Ubuntu b43-fwcutter_019-2 contain the same postinst.

7) Debian, Ubuntu and Arch are all tracking issues with b43-fwcutter
including file permissions being 750 or 755. See:
https://launchpad.net/ubuntu/+source/b43-fwcutter/+bugs
https://bugs.debian.org/cgi-bin/pkgreport.cgi?repeatmerged=yes&src=b43-fwcutter
https://aur.archlinux.org/packages/b43-firmware/
Fedora doesn't list any open bugs at
https://apps.fedoraproject.org/packages/b43-fwcutter/ and doesn't seem to
have the postinst script.
There may be other issues being tracked in the other distributions like
openSUSE.

Are the file permissions intentional? Just needed temporarily?


Thanks,

     Drew Daniels
Blog: http://www.boxheap.net/ddaniels/blog/
