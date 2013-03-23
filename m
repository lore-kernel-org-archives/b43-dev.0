From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 23 Mar 2013 20:34:56 +0100
Subject: [PATCH] b43: use bcma_pmu_spuravoid_pllupdate()
In-Reply-To: <1363885909-12263-1-git-send-email-hauke@hauke-m.de>
References: <1363885909-12263-1-git-send-email-hauke@hauke-m.de>
Message-ID: <CACna6rxAs5hYqePCkVfUXBh2z=W+OWuhCO5J+EqGnUgYOnAGaA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

2013/3/21 Hauke Mehrtens <hauke@hauke-m.de>:
> Do not implement this in b43, but use bcma_pmu_spuravoid_pllupdate().

Can we wait with this patch few days, please? I'm in process of
debugging BCM4322 and channel 13 support, which may be related to this
part of driver.

Please Cc driver ML when touching it's code.

-- 
Rafa?
