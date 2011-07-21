From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 21 Jul 2011 17:31:00 -0500
Subject: [PATCH] b43legacy: dma: cache translation (routing bits)
In-Reply-To: <1311287100-3888-1-git-send-email-zajec5@gmail.com>
References: <1311287100-3888-1-git-send-email-zajec5@gmail.com>
Message-ID: <4E28A8A4.3080509@lwfinger.net>
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

I will be testing this patch ASAP. Unfortunately, my test box with a b43legacy 
device crashes on boot with wireless-testing with a fresh pull this afternoon. 
It does boot with commit d36a160 with only 70 commits between. It shouldn't take 
too long to sort out.

Larry
