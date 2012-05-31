From: Seth Forshee <seth.forshee@canonical.com>
Date: Thu, 31 May 2012 09:26:52 -0500
Subject: [PATCH] b43: ensure ext PA lines are enabled for BCM4331
In-Reply-To: <4FC77D25.4060100@hauke-m.de>
References: <1338472163-3810-1-git-send-email-seth.forshee@canonical.com>
 <4FC77D25.4060100@hauke-m.de>
Message-ID: <20120531142652.GA32179@thinkpad-t410>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>, Arend van Spriel <arend@broadcom.com>
Cc: Stefano Brivio <stefano.brivio@polimi.it>, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Thu, May 31, 2012 at 04:16:05PM +0200, Hauke Mehrtens wrote:
> Hi Seth,
> 
> why don't you call this from bcma_pmu_workarounds() in
> drivers/bcma/driver_chipcommon_pmu.c instead of calling this from b43? I
> think it looks better to call some workarounds on chip common from bcma
> and not from b43.

Arend recommended calling it from within b43's start op, but I'm not
sure of the reason. Arend?

Agreed though that if there's no need to run it every time the interface
is started then bcma_pmu_workarounds() would be a nicer place for it.

> According to some Broadcom code this should also be called for chip_id
> 43431 when turning it on and in the sprom code.

I'm having trouble parsing this, specifically the "and in the sprom
code" part. Can you clarify?

Thanks,
Seth
