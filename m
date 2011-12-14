From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 14 Dec 2011 19:05:57 +0100
Subject: Broadcom 4331
In-Reply-To: <CANDQx1q-u29YGmOFpCHX59-xq8pv5eEy2UXfsTQkiREYLzCCJg@mail.gmail.com>
References: <CANDQx1rHt2fmFhAD9iqSfXfwujA_VzuSJV-WAxQ11BDWgiwS=Q@mail.gmail.com>
 <CANDQx1q-u29YGmOFpCHX59-xq8pv5eEy2UXfsTQkiREYLzCCJg@mail.gmail.com>
Message-ID: <CACna6rzxpaymc-k3gBzub8GY6gnHuVosryPYnzSKn0vYSvNXMw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/12/14 Buck Golemon <buck@yelp.com>:
> I'm re-sending this as it didn't seem to get through the first time.
>
> -buck
>
> ---------- Forwarded message ----------
> From: Buck Golemon <buck@yelp.com>
> Date: Tue, Nov 29, 2011 at 1:25 PM
> Subject: Broadcom 4331
> To: b43-dev at lists.infradead.org
>
>
> I saw that the page was updated to show support for the bcm4331 chip under
> kernel 3.2rc2, so accordingly I've downloaded and installed a nightly build.
>
> http://linuxwireless.org/en/users/Drivers/b43#Supported_devices
> http://kernel.ubuntu.com/~kernel-ppa/mainline/daily/2011-11-29-oneiric/
>
> I've attached logs showing what happens when I try to load the bcma module
> (which in turn loads b43).
>
> I believe the fatal flaw is this one, below. How can I fix it?
>
>
> ==> /var/log/kern.log <==
> Nov 29 12:45:44 buck-MacBookPro kernel: [ ?646.609889] b43-phy0: Broadcom
> 4331 WLAN found (core revision 29)
> Nov 29 12:45:44 buck-MacBookPro kernel: [ ?646.610040] b43-phy0 ERROR: FOUND
> UNSUPPORTED PHY (Analog 9, Type 7, Revision 1)
> Nov 29 12:45:44 buck-MacBookPro kernel: [ ?646.610046] b43: probe of bcma0:0
> failed with error -95
> Nov 29 12:45:44 buck-MacBookPro kernel: [ ?646.610075] Broadcom 43xx driver
> loaded [ Features: PNL ]

Enable CONFIG_B43_PHY_HT to add support for BCM4331 (which is HT-PHY based).

Support for PHY_HT it experimental, so it's not enabled by default.

-- 
Rafa?
