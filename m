From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Fri, 15 Oct 2010 16:15:49 +0200
Subject: [PATCH 2/3] b43: N-PHY: define registers names for 2056 radio
In-Reply-To: <AANLkTik0FZQOyePhY1KDAVFiD5YQ9bF4M5A5p8SGUYAy@mail.gmail.com>
References: <1287090064-14607-1-git-send-email-zajec5@gmail.com>
	<1287090064-14607-2-git-send-email-zajec5@gmail.com>
	<AANLkTimesczkO4iSrjPjAGMf+xs04bKGALumAFq7GzTQ@mail.gmail.com>
	<AANLkTik0FZQOyePhY1KDAVFiD5YQ9bF4M5A5p8SGUYAy@mail.gmail.com>
Message-ID: <AANLkTi=okr9poWxa1V-zDQj5f64fqFRuQWBgpzvRmVsw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, Henry Ptasinski <henryp@broadcom.com>, Brett Rudley <brudley@broadcom.com>, Nohee Ko <noheek@broadcom.com>

2010/10/15 Rafa? Mi?ecki <zajec5@gmail.com>:
> W dniu 15 pa?dziernika 2010 01:58 u?ytkownik G?bor Stefanik
> <netrolller.3d@gmail.com> napisa?:
>> 2010/10/14 Rafa? Mi?ecki <zajec5@gmail.com>:
>>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>>> Cc: Henry Ptasinski <henryp@broadcom.com>
>>> Cc: Brett Rudley <brudley@broadcom.com>
>>> Cc: Nohee Ko <noheek@broadcom.com>
>>> ---
>>> ?drivers/net/wireless/b43/radio_2056.h | ?522 +++++++++++++++++++++++++++++++++
>>> ?1 files changed, 522 insertions(+), 0 deletions(-)
>>>
>>> diff --git a/drivers/net/wireless/b43/radio_2056.h b/drivers/net/wireless/b43/radio_2056.h
>>> index 60341d7..462c9fd 100644
>>> --- a/drivers/net/wireless/b43/radio_2056.h
>>> +++ b/drivers/net/wireless/b43/radio_2056.h
>>> @@ -4,6 +4,9 @@
>>>
>>> ? Copyright (c) 2010 Rafa? Mi?ecki <zajec5@gmail.com>
>>>
>>> + ?Some parts of the code in this file are derived from the brcm80211
>>> + ?driver ?Copyright (c) 2010 Broadcom Corporation
>>> +
>>> ? This program is free software; you can redistribute it and/or modify
>>> ? it under the terms of the GNU General Public License as published by
>>> ? the Free Software Foundation; either version 2 of the License, or
>>> @@ -28,6 +31,525 @@
>>>
>>> ?#include "tables_nphy.h"
>>>
>>> +#define RADIO_2056_SYN ? ? ? ? ? ? ? ? ? ? ? ? (0x0 << 12)
>>> +#define RADIO_2056_TX0 ? ? ? ? ? ? ? ? ? ? ? ? (0x2 << 12)
>>> +#define RADIO_2056_TX1 ? ? ? ? ? ? ? ? ? ? ? ? (0x3 << 12)
>>
>> Please use B2056_ as the prefix. See LP-PHY.
>
> What does it mean? This "B" prefix?

AFAIK it is a contraction for BCM. (The actual radio is called
BCM2056.) However, LP-PHY already uses B2062_ and B2063_ as its radio
register prefixes, so it is a good idea to follow the convention here,
too.

>
> --
> Rafa?
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
