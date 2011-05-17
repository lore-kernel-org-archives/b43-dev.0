From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 17 May 2011 14:17:58 +0200
Subject: ssb: how did we get special reject bit for SSB rev 2.3?
In-Reply-To: <BANLkTik59ohV42QYR3JqssbJjEzxnEGyOw@mail.gmail.com>
References: <BANLkTik2Sc9aWi_cHVvLJzGv3esey=wPag@mail.gmail.com>
	<BANLkTimoju5LSrKcRe67c41mCkPU0PUOjg@mail.gmail.com>
	<BANLkTik59ohV42QYR3JqssbJjEzxnEGyOw@mail.gmail.com>
Message-ID: <BANLkTi=Ais3sYvyAPcDFaRmudG_FQJgEag@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Michael Buesch <mb@bu3sch.de>, Larry Finger <Larry.Finger@lwfinger.net>

2011/5/17 Rafa? Mi?ecki <zajec5@gmail.com>:
> W dniu 17 maja 2011 13:32 u?ytkownik Jonas Gorski
> <jonas.gorski@gmail.com> napisa?:
>> 2011/5/17 Rafa? Mi?ecki <zajec5@gmail.com>:
>>> Currently we are using different REJECT bit for SSB rev 2.3:
>>> #define ?SSB_TMSLOW_REJECT ? ? ?0x00000002 /* Reject (Standard Backplane) */
>>> #define ?SSB_TMSLOW_REJECT_23 ? 0x00000004 /* Reject (Backplane rev 2.3) */
>>>
>>> Does anyone know where did we get this from?
>>
>> Broadcom public sources define it as follows:
>> #define SBTML_REJ_MASK ? ? ? ? ?0x0006 ? ? ? ? ?/* reject field */
>> #define SBTML_REJ ? ? ? ? ? ? ? 0x0002 ? ? ? ? ?/* reject */
>> #define SBTML_TMPREJ ? ? ? ? ? ?0x0004 ? ? ? ? ?/* temporary reject,
>> for error recovery */
>>
>>>
>>> wl does never use this bit:
>>
>> It seems neither do the public ssb sources:
>> # grep -r 'SBTML_TMPREJ' shared/ | wc -l
>> 0
>> #
>
> Where did you check this? AFAIK wl has only linux_osl.c public
> available and brcmsmac does not support SSB at all. Do you find any
> references to SBTML_REJ in this "shared/*"?

This is from a bcm47xx router GPL tarball (the asus rt-n10 to be
specific), but it's also in the brcm80211 drivers:
<http://lxr.linux.no/#linux+v2.6.38/drivers/staging/brcm80211/include/sbconfig.h#L150>

and SBTML_REJ usage:
<http://lxr.linux.no/#linux+v2.6.38/drivers/staging/brcm80211/util/sbutils.c#L459>

Jonas
