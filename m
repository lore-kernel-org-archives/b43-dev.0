From: Michael Buesch <mb@bu3sch.de>
Date: Mon, 10 May 2010 15:59:35 +0200
Subject: [PATCH] ssb: Handle alternate SSPROM location
In-Reply-To: <4be77726.2Sqkr0ilm/WZUNRg%Larry.Finger@lwfinger.net>
References: <4be77726.2Sqkr0ilm/WZUNRg%Larry.Finger@lwfinger.net>
	(sfid-20100510_030206_444334_609A555A)
Message-ID: <201005101559.35829.mb@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On Monday 10 May 2010 05:01:58 Larry Finger wrote:
> Index: wireless-testing/drivers/ssb/driver_chipcommon.c
> ===================================================================
> --- wireless-testing.orig/drivers/ssb/driver_chipcommon.c
> +++ wireless-testing/drivers/ssb/driver_chipcommon.c
> @@ -252,15 +252,17 @@ void ssb_chipcommon_init(struct ssb_chip
>  {
>  	u16 delay;
>  
> +	cc->status = 0;

Not needed. All data structures are zero'd by default.

-- 
Greetings, Michael.
