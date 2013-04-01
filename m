From: John W. Linville <linville@tuxdriver.com>
Date: Mon, 1 Apr 2013 16:01:56 -0400
Subject: [FIX 3.3+][PATCH] ssb: implement spurious tone avoidance
In-Reply-To: <1364487482-14642-1-git-send-email-zajec5@gmail.com>
References: <1364487482-14642-1-git-send-email-zajec5@gmail.com>
Message-ID: <20130401200156.GF3526@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Stable <stable@vger.kernel.org>

On Thu, Mar 28, 2013 at 05:18:02PM +0100, Rafa? Mi?ecki wrote:
> And make use of it in b43. This fixes a regression introduced with
> 49d55cef5b1925a5c1efb6aaddaa40fc7c693335
> b43: N-PHY: implement spurious tone avoidance
> This commit made BCM4322 use only MCS 0 on channel 13, which of course
> resulted in performance drop (down to 0.7Mb/s).
> 
> Reported-by: Stefan Br?ns <stefan.bruens@rwth-aachen.de>
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> Cc: Stable <stable@vger.kernel.org>
> ---
> John:
> While this is fix, unfortunately it's not a one-liner. I wish to see it
> in 3.9 and backported to stable kernels, but if you think it's too big,
> well, just take it for the next.

  CC      drivers/ssb/driver_chipcommon_pmu.o
drivers/ssb/driver_chipcommon_pmu.c: In function ?ssb_pmu_spuravoid_pllupdate?:
drivers/ssb/driver_chipcommon_pmu.c:695:3: error: implicit declaration of function ?ssb_err? [-Werror=implicit-function-declaration]
cc1: some warnings being treated as errors
make[1]: *** [drivers/ssb/driver_chipcommon_pmu.o] Error 1
make: *** [drivers/ssb/] Error 2

When building in wireless.git...

-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
