From: nick <xerofoify@gmail.com>
Date: Sat, 29 Nov 2014 13:09:09 -0500
Subject: [PATCH] drivers:net:wireless: Add mutex locking for function,
 b43_op_beacon_set_time in main.c
In-Reply-To: <CACna6ryjZ-LY06wAMzoL77Wca3McUUT+VYsO4EPO87NqjBnaNw@mail.gmail.com>
References: <1417213013-19758-1-git-send-email-xerofoify@gmail.com>	<CACna6rxmOC0h9hOpa=5iWFM1THQ8Q4hCi8MnmqkZJbB_U0PJ0A@mail.gmail.com>	<20141129002148.1beb21d9@wiggum>	<54793E4E.7050602@gmail.com>	<20141129095632.69361457@wiggum>
 <CACna6ryjZ-LY06wAMzoL77Wca3McUUT+VYsO4EPO87NqjBnaNw@mail.gmail.com>
Message-ID: <547A0BC5.2080005@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, =?UTF-8?B?TWljaGE=?= =?UTF-8?B?ZWwgQsO8c2No?= <m@bues.ch>
Cc: Network Development <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stefano Brivio <stefano.brivio-hl5o88x/ua9eoWH0uzbU5w@public.gmane.org>, b43-dev <b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>

Sorry about that, next time I will be more careful.
Nick

On 2014-11-29 04:04 AM, Rafa? Mi?ecki wrote:
> On 29 November 2014 at 09:56, Michael B?sch <m@bues.ch> wrote:
>> On Fri, 28 Nov 2014 22:32:30 -0500
>> nick <xerofoify@gmail.com> wrote:
>>
>>> I don't have hardware for this driver on me, so I didn't test it. However this seems to
>>> be correct from my reading of the code around this function and other locking related
>>> to this driver.
>>
>> From the current docs:
>>
>>>  * @set_tim: Set TIM bit. mac80211 calls this function when a TIM bit
>>>  *      must be set or cleared for a given STA. Must be atomic.
>>
>> So it is not allowed to lock a mutex here.
> 
> Nicholas please be more careful with your patches. It seems your patch
> is wrong, you didn't check the docs and you didn't even say in the
> first place that it wasn't tested. You could at least submit with with
> RFT tag or sth.
> 
