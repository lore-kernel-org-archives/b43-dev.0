From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 22 Jul 2011 09:38:15 -0500
Subject: [PATCH] b43legacy: dma: cache translation (routing bits)
In-Reply-To: <1311287100-3888-1-git-send-email-zajec5@gmail.com>
References: <1311287100-3888-1-git-send-email-zajec5@gmail.com>
Message-ID: <4E298B57.6070808@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, Michael Buesch <mb@bu3sch.de>, b43-dev@lists.infradead.org

On 07/21/2011 05:25 PM, Rafa? Mi?ecki wrote:
>
> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>
> ---
> Ideally this should have been applied before:
> ssb: return correct translation bit for 64-bit DMA
>
> This is because mentioned patch added TMSHIGH register read on every
> ssb_dma_translation call which affected performance.
>
> If we can live with affected performance between that 2 commits, please
> just apply this ASAP.
>
> It affected performance (however I don't expect anything like making it
> 90% slower) is not acceptable, please revert mentioned patch, apply this
> one and then re-apply reverted patches.
> ---

Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

The patch is fine. In fact, I didn't notice much difference in CPU usage in the 
before/after tests; however, my b43legacy device only handles 802.11b, thus 
there are not a lot of packets per second.

The failure to boot with the latest pull is more problematic. My bisection try 
led to the nonsensical result of a branch commit. I will pull mainline 3.0 to 
see if it has the same problem.

Larry
