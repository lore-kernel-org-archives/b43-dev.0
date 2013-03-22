From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 23 Mar 2013 00:27:30 +0100
Subject: [PATCH] b43: A fix for DMA transmission sequence errors
In-Reply-To: <514a07c7.ZQz6MhmMaq58WJlA%Larry.Finger@lwfinger.net>
References: <514a07c7.ZQz6MhmMaq58WJlA%Larry.Finger@lwfinger.net>
Message-ID: <CACna6rz75ecyy5CdaJfi=dRjrTh_Rg793Ub+-0QdVnCZNyV+Lg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: John W Linville <linville@tuxdriver.com>, isedev@gmail.com, chris@cvine.freeserve.co.uk, Michael Buesch <m@bues.ch>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

2013/3/20 Larry Finger <Larry.Finger@lwfinger.net>:
> From: Iestyn C. Elfick <isedev@gmail.com>
>
> Intermittently, b43 will report "Out of order TX status report on DMA ring".
> When this happens, the driver must be reset before communication can resume.
> The cause of the problem is believed to be an error in the closed-source
> firmware; however, all versions of the firmware are affected.
>
> This change uses the observation that the expected status is always 2 less
> than the observed value, and supplies a fake status report to skip one
> header/data pair.
>
> Not all devices suffer from this problem, but it can occur several times
> per second under heavy load. As each occurence kills the unmodified driver,
> this patch makes if possible for the affected devices to function. The patch
> logs only the first instance of the reset operation to prevent spamming
> the logs.
>
> Tested-by: Chris Vine <chris@cvine.freeserve.co.uk>
> Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
> Cc: Stable <stable@vger.kernel.org>

I promised to perform some tests, unfortunately I didn't find enough
time last weekend.

Today I've plugged my 14e4:4315 and (unfortunately?) it's working
pretty well. I hoped to reproduce some problems but failed to do so. I
was transmitting for an hour with average speed 11MiB/s and didn't
notice any DMA issues.

I was using iperf with interval of 60 seconds and only 3 results
showed some problems (8.5MiB/s, 2.5MiB/s, 4.5MiB/s). No disconnections
however and no DMA errors. I just got "Group rekeying completed..." in
wpa_supplicant.

So as I can't reproduce this, I can't find any other fix for this
issue, and there's no reason to stop this workaround. I'll just apply
it and test over weekend to check for any regressions, but they are
highly unlikely.

-- 
Rafa?
