From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 30 Jun 2012 11:19:51 +0200
Subject: [PATCH v2 0/9] bcma misc updates
In-Reply-To: <1341013486-2520-1-git-send-email-hauke@hauke-m.de>
References: <1341013486-2520-1-git-send-email-hauke@hauke-m.de>
Message-ID: <CACna6rwmGOBULax1UZPjhNnHW63bfCOcgWCmoOscyrcbeFGzig@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, b43-dev@lists.infradead.org, arend@broadcom.com, linux-wireless@vger.kernel.org, brcm80211-dev-list@broadcom.com

2012/6/30 Hauke Mehrtens <hauke@hauke-m.de>:
> These are some updates for bcma. Some are extending or completing some
> workarounds for PCIe based wireless cards. A patch adds
> bcma_pmu_spuravoid_pllupdate, used by brcmsmac and an other patch adds
> constants for the chip ids. This code is mostly based on code from
> brcmsmac and the Broadcom SDK for BCM47XX SoCs.
>
> This was tested on a BCM4718 SoC with a BCM43224 PCIe and a BCM5357.
> The Wifi part of the BCM4718 and BCM43224 is more or less working with
> brcmsmac, which need some more patches for that, but it has low speed
> and some times or with some access points I still get errors. The wifi
> of the BCM5357 does not work.
>
> These patches are based on current wireless-testing.

Look fine for me. I'll need to rebase my logging patch...

-- 
Rafa?
