From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 23 Mar 2013 20:51:47 +0100
Subject: [PATCH] b43: use bcma_pmu_spuravoid_pllupdate()
In-Reply-To: <514E0691.7010909@hauke-m.de>
References: <1363885909-12263-1-git-send-email-hauke@hauke-m.de>
 <CACna6rxAs5hYqePCkVfUXBh2z=W+OWuhCO5J+EqGnUgYOnAGaA@mail.gmail.com>
 <514E0691.7010909@hauke-m.de>
Message-ID: <CACna6rx2eniO8bhHnPZ-6Xq=wMqHo5aE9iWr195G33ORYxCGqQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

2013/3/23 Hauke Mehrtens <hauke@hauke-m.de>:
> On 03/23/2013 08:34 PM, Rafa? Mi?ecki wrote:
>> 2013/3/21 Hauke Mehrtens <hauke@hauke-m.de>:
>>> Do not implement this in b43, but use bcma_pmu_spuravoid_pllupdate().
>>
>> Can we wait with this patch few days, please? I'm in process of
>> debugging BCM4322 and channel 13 support, which may be related to this
>> part of driver.
>
> I have not problem with waiting and rebasing my patch onto your fix as
> this is not a fix just a code cleanup.
>
>> Please Cc driver ML when touching it's code.
>
> This was not intended, I just forgot to do so.

Great, thanks :) I'm really glad to see you improving b43, thanks for your work!

-- 
Rafa?
