From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 14 Oct 2010 19:06:00 +0200
Subject: Licensing wlc_phy_radio.h and brcm80211 (was: [PATCH 3/3] b43:
	N-PHY: add 2055 radio regs)
In-Reply-To: <20101014165111.GA22130@suse.de>
References: <AANLkTinQMRGkOvi4e4JMsHGV_BF_4Rf5oHCtZgQjwQ1g@mail.gmail.com>
	<20101014165111.GA22130@suse.de>
Message-ID: <AANLkTin9PxzROyCQxiT5-ca4CUQK+kppS7gAibbbZ2=v@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Greg KH <gregkh@suse.de>
Cc: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Henry Ptasinski <henryp@broadcom.com>, Brett Rudley <brudley@broadcom.com>, Nohee Ko <noheek@broadcom.com>

2010/10/14 Greg KH <gregkh@suse.de>:
> On Thu, Oct 14, 2010 at 06:40:14PM +0200, Rafa? Mi?ecki wrote:
>> W dniu 11 pa?dziernika 2010 18:24 u?ytkownik G?bor Stefanik
>> <netrolller.3d@gmail.com> napisa?:
>> > Doesn't brcm80211 contain register names for B2055?
>>
>> I've checked brcm80211 and noticed defines in
>> drivers/staging/brcm80211/phy/wlc_phy_radio.h.
>>
>> Whole brcm80211 driver is licensed as:
>> MODULE_LICENSE("Dual BSD/GPL");
>>
>> Mentioned file contains following comments:
>> +/*
>> + * Copyright (c) 2010 Broadcom Corporation
>> + *
>> + * Permission to use, copy, modify, and/or distribute this software for any
>> + * purpose with or without fee is hereby granted, provided that the above
>> + * copyright notice and this permission notice appear in all copies.
>>
>> Our b43 driver is licensed as:
>> MODULE_LICENSE("GPL");
>> and I am not sure if permission above is actually GPL-compatible. The
>> best option would be to add defines from wlc_phy_radio.h and include
>> Broadcom's copyright. However comment above wants us to include info
>> about free copying/modifying/using which is not GPL-compatible.
>>
>> Is there any way to solve this issue?
>
> I don't understand, are you just wanting to use the names in the .h file
> for the registers?

Yes. I want to put lines like:
#define RADIO_2056_RX0				(0x6 << 12)
in my radio_2056.h


> If so, why? ?You don't want to support the same devices in the b43
> driver that the brcm80211 driver does, do you?

I do. I see many advantages of that plus most of the code is already
here coming from RE.

Finishing N-PHY support in b43 does not need much work plus:
1) We support SSB devices
2) We support older (LP/G-phy) devices
3) We share infrastructure (easier to maintain)
4) We probably could support modes like AP

-- 
Rafa?
