From: Buck Golemon <buck@yelp.com>
Date: Wed, 14 Dec 2011 08:50:56 -0800
Subject: Fwd: Broadcom 4331
In-Reply-To: <CANDQx1rHt2fmFhAD9iqSfXfwujA_VzuSJV-WAxQ11BDWgiwS=Q@mail.gmail.com>
References: <CANDQx1rHt2fmFhAD9iqSfXfwujA_VzuSJV-WAxQ11BDWgiwS=Q@mail.gmail.com>
Message-ID: <CANDQx1q-u29YGmOFpCHX59-xq8pv5eEy2UXfsTQkiREYLzCCJg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I'm re-sending this as it didn't seem to get through the first time.

-buck

---------- Forwarded message ----------
From: Buck Golemon <buck@yelp.com>
Date: Tue, Nov 29, 2011 at 1:25 PM
Subject: Broadcom 4331
To: b43-dev at lists.infradead.org


I saw that the page was updated to show support for the bcm4331 chip under
kernel 3.2rc2, so accordingly I've downloaded and installed a nightly build.

http://linuxwireless.org/en/users/Drivers/b43#Supported_devices
http://kernel.ubuntu.com/~kernel-ppa/mainline/daily/2011-11-29-oneiric/

I've attached logs showing what happens when I try to load the bcma module
(which in turn loads b43).

I believe the fatal flaw is this one, below. How can I fix it?


==> /var/log/kern.log <==
Nov 29 12:45:44 buck-MacBookPro kernel: [  646.609889] b43-phy0: Broadcom
4331 WLAN found (core revision 29)
Nov 29 12:45:44 buck-MacBookPro kernel: [  646.610040] b43-phy0 ERROR:
FOUND UNSUPPORTED PHY (Analog 9, Type 7, Revision 1)
Nov 29 12:45:44 buck-MacBookPro kernel: [  646.610046] b43: probe of
bcma0:0 failed with error -95
Nov 29 12:45:44 buck-MacBookPro kernel: [  646.610075] Broadcom 43xx driver
loaded [ Features: PNL ]


$ uname -a
Linux buck-MacBookPro 3.2.0-999-generic #201111290417 SMP Tue Nov 29
09:26:30 UTC 2011 i686 i686 i386 GNU/Linux
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20111214/2dd583f9/attachment-0001.html>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: bcma.log
Type: text/x-log
Size: 26802 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20111214/2dd583f9/attachment-0001.bin>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: bcma.lspci
Type: application/octet-stream
Size: 2556 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20111214/2dd583f9/attachment-0002.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43-fwcutter
Type: application/octet-stream
Size: 106 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20111214/2dd583f9/attachment-0003.obj>
