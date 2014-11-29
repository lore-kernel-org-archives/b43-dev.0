From: nick <xerofoify@gmail.com>
Date: Fri, 28 Nov 2014 22:32:30 -0500
Subject: [PATCH] drivers:net:wireless: Add mutex locking for function,
 b43_op_beacon_set_time in main.c
In-Reply-To: <20141129002148.1beb21d9@wiggum>
References: <1417213013-19758-1-git-send-email-xerofoify@gmail.com>	<CACna6rxmOC0h9hOpa=5iWFM1THQ8Q4hCi8MnmqkZJbB_U0PJ0A@mail.gmail.com>
 <20141129002148.1beb21d9@wiggum>
Message-ID: <54793E4E.7050602@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <m@bues.ch>, =?UTF-8?B?UmFmYcWCIE1pxYI=?= =?UTF-8?B?ZWNraQ==?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Network Development <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stefano Brivio <stefano.brivio-hl5o88x/ua9eoWH0uzbU5w@public.gmane.org>, b43-dev <b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>

Michael,
I don't have hardware for this driver on me, so I didn't test it. However this seems to 
be correct from my reading of the code around this function and other locking related
to this driver.
Cheers Nick

On 2014-11-28 06:21 PM, Michael B?sch wrote:
> On Fri, 28 Nov 2014 23:40:46 +0100
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> 
>>> @@ -5094,8 +5094,9 @@ static int b43_op_beacon_set_tim(struct ieee80211_hw *hw,
>>>  {
>>>         struct b43_wl *wl = hw_to_b43_wl(hw);
>>>
>>> -       /* FIXME: add locking */
>>> +       mutex_lock(&wl->mutex);
>>>         b43_update_templates(wl);
>>> +       mutex_unlock(&wl->mutex);
>>>
>>>         return 0;
>>>  }
>>
>> Does anyone remember why this simple solution wasn't implemented
>> earlier? Michael?
> 
> I think the callback used to be (is?) in atomic context.
> 
>> Nicholas: did you test it anyhow?
> 
