From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 1 Apr 2011 16:49:45 +0200
Subject: ChipCommon as independent driver?
Message-ID: <AANLkTikGp+ZFhTtsaW7E4SO_5trte1_eF4KLWbkwVty5@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org

I wanted to make ChipCommon independed, to make it usable with any
bus. The problem is:
void ssb_chipco_set_clockmode(struct ssb_chipcommon *cc, enum ssb_clkmode mode)

This function calls code from pci.c which gives us a loop:
WARNING: Module
/lib/modules/2.6.39-rc1-wl-wireless+/kernel/drivers/net/wireless/b43/b43.ko
ignored, due to loop
WARNING: Module
/lib/modules/2.6.39-rc1-wl-wireless+/kernel/drivers/ssb/ssb.ko
ignored, due to loop
WARNING: Loop detected:
/lib/modules/2.6.39-rc1-wl-wireless+/kernel/drivers/ssb/bcmcorecc.ko
needs ssb.ko which needs bcmcorecc.ko again!
WARNING: Module
/lib/modules/2.6.39-rc1-wl-wireless+/kernel/drivers/ssb/bcmcorecc.ko
ignored, due to loop

Do you have idea how we could nicely solve that issue?

-- 
Rafa?
