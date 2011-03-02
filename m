From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Thu, 3 Mar 2011 00:12:36 +0100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTinHzH2RjoxM+yQGttxmgpr3K=BNdXupHB6nJ-9B@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTim4XtL9+2mw7Kx_Cu_LXak8Y6a_CgkwtrUHf_bo@mail.gmail.com>
	<AANLkTinHzH2RjoxM+yQGttxmgpr3K=BNdXupHB6nJ-9B@mail.gmail.com>
Message-ID: <AANLkTikai-3ioq4=6D96TU6tcUGqv=ki-eqrr1hUNDnQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/2 Rafa? Mi?ecki <zajec5@gmail.com>:
> Also: could you try loading b43 with pio mode instead of dma? To do this:
> rmmod b43
> rmmod ssb
> insmod /lib/modules/2.6.32.x/b43.ko pio=1

pio support seems to removed in OpenWrt; to make this work it you
probably need to remove package/mac80211/patches/810-b43_no_pio.patch
and then recompile mac80211.

Regards,
Jonas Gorski
