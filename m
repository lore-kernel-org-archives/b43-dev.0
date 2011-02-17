From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 16 Feb 2011 22:21:52 -0600
Subject: [PATCH 0/2] ssb: improve device disabling
In-Reply-To: <1297903851-5499-1-git-send-email-zajec5@gmail.com>
References: <1297903851-5499-1-git-send-email-zajec5@gmail.com>
Message-ID: <4D5CA260.1070807@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <mb@bu3sch.de>, b43-dev@lists.infradead.org

On 02/16/2011 06:50 PM, Rafa? Mi?ecki wrote:
> With that patches we follow specs and (as recently proved by MMIO dumps) wl.
>
> The more important patch is the first one. It detects problem (and warns) with
> SSB when it is in some broken state. We can for example hit such an issue when
> enabling DMA on 14e4:4329 (N-PHY, rev 1). The real fix is now known yet, but
> not we at least get warning. Switching to PIO on that card does not raise
> warning anymore (as expected).
>
> We all hate regressions and Michal says than enabling/disabling SSB device can
> be tricky. I have tested that patches with few b43 driven devices:
> 14e4:4318 (BCM4318)
> 14e4:4315 (BCM4312)
> 14e4:4329 (BCM4321)
> 14e4:4328 (BCM4321)
> 14e4:432b (BCM4322)

I tested 14e4:4311 (BCM4311) and found no problems.

Larry
