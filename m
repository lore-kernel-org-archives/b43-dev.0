From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sun, 27 Mar 2011 12:12:39 +0200
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <AANLkTim5s4rKS2Khm-vpzcPM8mKAwRCtH1x=mmaqr=m9@mail.gmail.com>
References: <4D8F022C.2050606@rostlab.org>
	<AANLkTim5s4rKS2Khm-vpzcPM8mKAwRCtH1x=mmaqr=m9@mail.gmail.com>
Message-ID: <BANLkTikunf4STpcCwJHfa-HSSYgQGGyMOw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/27 Rafa? Mi?ecki <zajec5@gmail.com>:
> This is new card without real entry in pciid, someone just typed some
> dumb BCM4331 in http://pci-ids.ucw.cz/read/PC/14e4/4331

BCM4331 seems to be correct:

<http://lxr.linux.no/#linux+v2.6.38/drivers/staging/brcm80211/include/bcmdevs.h#L53>:

#define BCM4331_D11N_ID         0x4331  /* 4331 802.11n dualband id */

Since this is a three stream device, this is most likely an AI card.
So if any driver might support it, then it's brcm80211 from staging.

Jonas
