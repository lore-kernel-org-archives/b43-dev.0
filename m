From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 1 Feb 2011 13:51:01 +0100
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
Message-ID: <AANLkTikoBMgObBgM7tz8sPPKRdKV0fky-BAoe_K_LgPj@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/2/1 Dale Walsh <dale@daleenterprise.com>:
> I had a hard drive failure which forced me to perform a fresh/clean
> installation of ubuntu 10 on a new drive since the old drive no longer
> functions (it was rather old).
> My use of the b43 software is only for modification of the PCI ID's of the
> flashrom and the original installation was provided to me on the HD.
> Now I am unable to write the flashrom after the new installation it always
> reports "write error: Operation Not Supported" and this is using the same
> cards I was flashing before, I even tried using a?previously?modified card
> and I get the same failure.
> Since it worked before I can only conclude that the new software is broken
> and the ability to write is a requirement, can someone help me resolve this
> please.

Do you mean ssb driver functionality? I remember Michael was fixing
writing some time ago:

commit e33761e6f23881de9f3ee77cc2204ab2e26f3d9a
Author: Michael Buesch <mb@bu3sch.de>
Date:   Mon Nov 23 20:58:06 2009 +0100

    ssb: Fix range check in sprom write

    The range check in the sprom image parser hex2sprom() is broken.
    One sprom word is 4 hex characters.
    This fixes the check and also adds much better sanity checks to the code.
    We better make sure the image is OK by doing some sanity checks to avoid
    bricking the device by accident.

    Signed-off-by: Michael Buesch <mb@bu3sch.de>
    Cc: stable at kernel.org
    Signed-off-by: John W. Linville <linville@tuxdriver.com>

commit 3ba6018aa314559c5867138a8173b068268a70db
Author: Michael Buesch <mb@bu3sch.de>
Date:   Mon Nov 23 20:12:13 2009 +0100

    ssb: Fix SPROM writing

    The SPROM writing routines were broken since we rewrote the suspend
    handling on wireless devices, because SPROM writing depended on suspend.

    This patch changes it and freezes devices with the driver remove(), probe()
    callbacks instead. This also simplifies the whole logics a lot.

    Signed-off-by: Michael Buesch <mb@bu3sch.de>
    Signed-off-by: John W. Linville <linville@tuxdriver.com>

Do you have that patches in your kernel?

-- 
Rafa?
