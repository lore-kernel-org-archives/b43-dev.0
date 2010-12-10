From: ikorot at earthlink.net <ikorot@earthlink.net>
Date: Fri, 10 Dec 2010 13:54:01 -0800 (GMT-08:00)
Subject: [PATCH 1/4] b43: N-PHY: update init tables
Message-ID: <21458014.1292018042407.JavaMail.root@elwamui-rubis.atl.sa.earthlink.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

Rafal,


-----Original Message-----
>From: Rafa? Mi?ecki <zajec5@gmail.com>
>Sent: Dec 10, 2010 11:33 AM
>To: ikorot at earthlink.net
>Cc: Larry Finger <Larry.Finger@lwfinger.net>, Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless at vger.kernel.org, b43-dev at lists.infradead.org
>Subject: Re: [PATCH 1/4] b43: N-PHY: update init tables
>
>W dniu 10 grudnia 2010 20:09 u?ytkownik  <ikorot@earthlink.net> napisa?:
>> Rafal,
>>
>>
>> -----Original Message-----
>>>From: Rafa? Mi?ecki <zajec5@gmail.com>
>>>Sent: Dec 9, 2010 10:36 PM
>>>To: ikorot at earthlink.net
>>>Cc: Larry Finger <Larry.Finger@lwfinger.net>, Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless at vger.kernel.org, b43-dev at lists.infradead.org
>>>Subject: Re: [PATCH 1/4] b43: N-PHY: update init tables
>>>
>>>W dniu 10 grudnia 2010 03:26 u?ytkownik ?<ikorot@earthlink.net> napisa?:
>>>> -----Original Message-----
>>>>>From: Rafa? Mi?ecki <zajec5@gmail.com>
>>>>>Sent: Dec 9, 2010 6:06 AM
>>>>>To: ikorot at earthlink.net
>>>>>Cc: Larry Finger <Larry.Finger@lwfinger.net>, Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless at vger.kernel.org, b43-dev at lists.infradead.org
>>>>>Subject: Re: [PATCH 1/4] b43: N-PHY: update init tables
>>>>>
>>>>>2010/12/8 ?<ikorot@earthlink.net>:
>>>>>> Larry,
>>>>>>
>>>>>>
>>>>>> -----Original Message-----
>>>>>>>From: Larry Finger <Larry.Finger@lwfinger.net>
>>>>>>>Sent: Dec 7, 2010 12:00 PM
>>>>>>>To: ikorot at earthlink.net
>>>>>>>Cc: Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless at vger.kernel.org, b43-dev at lists.infradead.org
>>>>>>>Subject: Re: [PATCH 1/4] b43: N-PHY: update init tables
>>>>>>>
>>>>>>>On 12/07/2010 01:49 PM, ikorot at earthlink.net wrote:
>>>>>>>>> One reason is that these tables changed from non-zero to zero values between
>>>>>>>>> Broadcom driver 4.174.64.19 and 5.10.56.46. As they might change again, I think
>>>>>>>>> we should retain the full version.
>>>>>>>>
>>>>>>>> Is there a way to check for version of the driver?
>>>>>>>> This way whoever uses old one won't be screwed...
>>>>>>>
>>>>>>>That will not be a problem as no older version of b43 works at all with b43. To
>>>>>>>help you understand this change, when the 4.174.64.19 Broadcom driver was
>>>>>>>reverse-engineered, the tables had non-zero values. Rafel later compared the
>>>>>>>trace dumps of b43 with the latest version of wl and found that the values are
>>>>>>>now zero. When I rechecked driver 5.10.56.46, I found them to be zero there as
>>>>>>>well and changed the specs.
>>>>>>
>>>>>> Well, it maybe feasible to keep the old values and check
>>>>>> the version of the driver, since you are saying yourself
>>>>>> that the value might be changing in the future.
>>>>>> Maybe for couple of releases only?
>>>>>
>>>>>Sorry, but I don't understand that at all. What do you mean by version
>>>>>of the driver? What driver?
>>>>
>>>> #if B43_VERSION <= x.x.x.x
>>>> // table initialized to some values
>>>> #else
>>>> //table initialized to 0's
>>>> #endif
>>>
>>>You want to put condition checking b43 version in... b43 driver? I
>>>can't follow you.
>>
>> Yes.
>> And what you can't follow?
>>
>> For historical purposes and to better understand the changes and ease the
>> debugging I proposed this addition.
>> Besides if for some reason in future versions Broadcom will decide to return to
>> the same values for init tables, the changes will be very simple.
>
>So I guess you meant using "#if 0" for commenting old values?
>
>I guess we could do that instead deleting old values, but fortunately
>it's git so we always can browse history and restore old values
>without problems :)

Well, after 5 or 6 month will you remember the commit that introduced
the change?
Yes, you can browse the history, but it will be an extra effort to find
it.

I understand that the code will be bigger in size, but if it takes
just adding 2 lines of code comparing to looking thru history and 
then copying the values to sources.

Thank you.

>
>-- 
>Rafa?
