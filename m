From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 14 Jul 2011 20:43:38 +0200
Subject: [PATCH] bcma: add check if sprom is available before accessing it.
In-Reply-To: <1310210523-13431-1-git-send-email-hauke@hauke-m.de>
References: <1310210523-13431-1-git-send-email-hauke@hauke-m.de>
Message-ID: <CACna6rzJg1cY76J8C8tNbmYECVFwdZgk_=iMSDg2x844VeHB3A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

2011/7/9 Hauke Mehrtens <hauke@hauke-m.de>:
> The SoCs like the bcm4716 do not have a sprom on the bcma bus like a
> pcie device. It stores the values in some partition on flash memory.
> For ssb this informations are read out in the bcm47xx arch code,
> something like that should also be implemented for bcma. Without this
> patch bcma panics on SoCs.

Didn't regress my BCM43224 or BCM4313, seems this flag is safe to use,
Broadcom really cares to set it.

Thanks Hauke.

-- 
Rafa?
