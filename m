From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Wed, 18 Jan 2012 16:05:39 +0100
Subject: A-phy
Message-ID: <361D6290-0077-4303-955E-7BE4854C2CCC@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Larry, Rafal,

maybe this is not a new question on the list but I'm a little bit confused about a-phy support. I read on the http://bcm-v4.sipsolutions.net/802.11/Multiband page that a-phy should be supported on 14e4:4319 which is pointed out as being a BCM4318, and 14e4:4312 that is BCM4311 instead. On http://linuxwireless.org/en/users/Drivers/b43 I also read that "The 802.11a part of the 4311 is not supported" and, in fact, I have a couple of devices which lspci displays as

03:00.0 Network controller: Broadcom Corporation BCM4312 802.11a/b/g (rev 01)
03:00.0 0280: 14e4:4312 (rev 01)

and dmesg says:
[  428.174190] b43-phy1: Broadcom 4311 WLAN found (core revision 10)
[  428.216031] b43-phy1 debug: Found PHY: Analog 4, Type 2, Revision 8
[  428.216055] b43-phy1 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 2

And, in fact, a-phy is not activated (it actually seems completely disabled from initialization code).

So, is there any device I can buy for which b43 supports a-phy If the answer is yes (I really hope so :-) ) do you have some pointers on ebay?

Many many thanks!
-Francesco
