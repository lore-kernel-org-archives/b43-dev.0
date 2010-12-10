From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 10 Dec 2010 07:36:56 +0100
Subject: [PATCH 1/4] b43: N-PHY: update init tables
In-Reply-To: <26490304.1291947984094.JavaMail.root@elwamui-rubis.atl.sa.earthlink.net>
References: <26490304.1291947984094.JavaMail.root@elwamui-rubis.atl.sa.earthlink.net>
Message-ID: <AANLkTi=CP0x_iE8ENieujGbTEOD5X67--xA0TKwQ-GTe@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ikorot@earthlink.net
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

W dniu 10 grudnia 2010 03:26 u?ytkownik  <ikorot@earthlink.net> napisa?:
> -----Original Message-----
>>From: Rafa? Mi?ecki <zajec5@gmail.com>
>>Sent: Dec 9, 2010 6:06 AM
>>To: ikorot at earthlink.net
>>Cc: Larry Finger <Larry.Finger@lwfinger.net>, Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless at vger.kernel.org, b43-dev at lists.infradead.org
>>Subject: Re: [PATCH 1/4] b43: N-PHY: update init tables
>>
>>2010/12/8 ?<ikorot@earthlink.net>:
>>> Larry,
>>>
>>>
>>> -----Original Message-----
>>>>From: Larry Finger <Larry.Finger@lwfinger.net>
>>>>Sent: Dec 7, 2010 12:00 PM
>>>>To: ikorot at earthlink.net
>>>>Cc: Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless at vger.kernel.org, b43-dev at lists.infradead.org
>>>>Subject: Re: [PATCH 1/4] b43: N-PHY: update init tables
>>>>
>>>>On 12/07/2010 01:49 PM, ikorot at earthlink.net wrote:
>>>>>> One reason is that these tables changed from non-zero to zero values between
>>>>>> Broadcom driver 4.174.64.19 and 5.10.56.46. As they might change again, I think
>>>>>> we should retain the full version.
>>>>>
>>>>> Is there a way to check for version of the driver?
>>>>> This way whoever uses old one won't be screwed...
>>>>
>>>>That will not be a problem as no older version of b43 works at all with b43. To
>>>>help you understand this change, when the 4.174.64.19 Broadcom driver was
>>>>reverse-engineered, the tables had non-zero values. Rafel later compared the
>>>>trace dumps of b43 with the latest version of wl and found that the values are
>>>>now zero. When I rechecked driver 5.10.56.46, I found them to be zero there as
>>>>well and changed the specs.
>>>
>>> Well, it maybe feasible to keep the old values and check
>>> the version of the driver, since you are saying yourself
>>> that the value might be changing in the future.
>>> Maybe for couple of releases only?
>>
>>Sorry, but I don't understand that at all. What do you mean by version
>>of the driver? What driver?
>
> #if B43_VERSION <= x.x.x.x
> // table initialized to some values
> #else
> //table initialized to 0's
> #endif

You want to put condition checking b43 version in... b43 driver? I
can't follow you.

-- 
Rafa?
