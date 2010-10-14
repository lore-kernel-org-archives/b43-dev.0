From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 14 Oct 2010 18:40:14 +0200
Subject: Licensing wlc_phy_radio.h and brcm80211 (was: [PATCH 3/3] b43: N-PHY:
	add 2055 radio regs)
Message-ID: <AANLkTinQMRGkOvi4e4JMsHGV_BF_4Rf5oHCtZgQjwQ1g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Henry Ptasinski <henryp@broadcom.com>, Brett Rudley <brudley@broadcom.com>, Nohee Ko <noheek@broadcom.com>, Greg Kroah-Hartman <gregkh@suse.de>

W dniu 11 pa?dziernika 2010 18:24 u?ytkownik G?bor Stefanik
<netrolller.3d@gmail.com> napisa?:
> Doesn't brcm80211 contain register names for B2055?

I've checked brcm80211 and noticed defines in
drivers/staging/brcm80211/phy/wlc_phy_radio.h.

Whole brcm80211 driver is licensed as:
MODULE_LICENSE("Dual BSD/GPL");

Mentioned file contains following comments:
+/*
+ * Copyright (c) 2010 Broadcom Corporation
+ *
+ * Permission to use, copy, modify, and/or distribute this software for any
+ * purpose with or without fee is hereby granted, provided that the above
+ * copyright notice and this permission notice appear in all copies.

Our b43 driver is licensed as:
MODULE_LICENSE("GPL");
and I am not sure if permission above is actually GPL-compatible. The
best option would be to add defines from wlc_phy_radio.h and include
Broadcom's copyright. However comment above wants us to include info
about free copying/modifying/using which is not GPL-compatible.

Is there any way to solve this issue?

-- 
Rafa?
