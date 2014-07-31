From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Thu, 31 Jul 2014 22:23:57 +0200
Subject: [PATCH 3.18 3/7] b43: flush some writes on Broadcom MIPS SoCs
In-Reply-To: <1406836788-23704-4-git-send-email-zajec5@gmail.com>
References: <1406836788-23704-1-git-send-email-zajec5@gmail.com>
 <1406836788-23704-4-git-send-email-zajec5@gmail.com>
Message-ID: <53DAA5DD.7050608@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 07/31/2014 09:59 PM, Rafa? Mi?ecki wrote:
> Access to PHY and radio registers is indirect on Broadcom hardware and
> it seems that addressing on MIPS SoCs may require flushing. Broadcom
> code does that unconditionally on MIPS, so let's do the same to make
> sure hardware won't miss anything important.
> 
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
>  drivers/net/wireless/b43/b43.h        |  8 ++++++++
>  drivers/net/wireless/b43/main.c       | 17 ++++++++---------
>  drivers/net/wireless/b43/phy_a.c      |  4 ++--
>  drivers/net/wireless/b43/phy_common.c |  4 ++--
>  drivers/net/wireless/b43/phy_g.c      |  8 ++++----
>  drivers/net/wireless/b43/phy_ht.c     |  6 +++---
>  drivers/net/wireless/b43/phy_lcn.c    |  6 +++---
>  drivers/net/wireless/b43/phy_lp.c     |  6 +++---
>  drivers/net/wireless/b43/phy_n.c      |  6 +++---
>  9 files changed, 36 insertions(+), 29 deletions(-)
> 

A comment in brcmsmac says this is only needed to work around a bug in
the host pcie controller of 4717, 4718 and 4706. I haven't noticed this
problem with BCM4706, so it could be that it is already fixed in the
shipped version of bcm4706.

The comment says the following:
bcm4716 (which includes 4717 & 4718), plus 4706 on PCIe can reorder
transactions. As a fix, a read after write is performed on certain
places in the code. Older chips and the newer 5357 family don't require
this fix.

This commit did the cleanup:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=6a9a25eec0b55ea45e22710a9bcaf9690cb42fe6

Hauke
