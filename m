From: Jonas Gorski <jonas.gorski+openwrt@gmail.com>
Date: Wed, 2 Mar 2011 12:22:44 +0100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTikcvuBdOi=LM5Bx9cxO2yY=0BzSTn18r938KjSr@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTikcvuBdOi=LM5Bx9cxO2yY=0BzSTn18r938KjSr@mail.gmail.com>
Message-ID: <AANLkTik9PhB9QU+RF8ihKQHRWzXAC4gt8=n6shW=qWzL@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/2 Rafa? Mi?ecki <zajec5@gmail.com>:
> I checked for kernels in OpenWRT.
> OpenWRT 10.03 is 2.6.32.10
> OpenWRT 10.03.1-rc4 is 2.6.32.25
>
> I can see 2.6.32(.0) at least have:
> b43: Add LP PHY Analog Switch Support
> that's good.

Note that OpenWrt does not use the in-kernel drivers but uses
compat-wireless (except for SSB). 10.03 uses compat-wireless
2010-03-24, while 10.03.1-rc4 uses 2010-10-19. The backfire branch
itself is currently at 2011-02-07.

Regards,
Jonas Gorski
