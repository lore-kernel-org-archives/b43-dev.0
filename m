From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 25 May 2013 15:37:02 -0500
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <20130525214223.4e69a772@milhouse>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
 <alpine.DEB.2.02.1305132025560.1278@kelly.ryd.net>
 <20130524164922.GA2175@tuxdriver.com>
 <alpine.DEB.2.02.1305252058060.1282@kelly.ryd.net>
 <51A112FC.8060100@hauke-m.de> <20130525214223.4e69a772@milhouse>
Message-ID: <51A120EE.40008@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <m@bues.ch>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Thommy Jakobsson <thommyj@gmail.com>, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlYw==?= =?UTF-8?B?a2k=?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, piotras@gmail.com

On 05/25/2013 02:42 PM, Michael B?sch wrote:
> On Sat, 25 May 2013 21:37:32 +0200
> Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
>> On 05/25/2013 09:02 PM, Thommy Jakobsson wrote:
>>>
>>>
>>> On Fri, 24 May 2013, John W. Linville wrote:
>>>
>>>> Ping?  Should I drop this one?
>>>>
>>> Still working great on my device, so from that I think we should go for
>>> it. But it would be great if Rafal (or someone) tested it on some other
>>> hardware as well.
>>>
>>> //Thommy
>>
>> This is included in OpenWrt for ~4 weeks now and I haven't read of
>> anybody complaining about any new problems introduced by this patch or
>> something which looks like the DMA under run.
>> I am also for adding this to the kernel.
>
> I'm probably missing something, but isn't this patch already in Linus' tree?
> It's in stable review after all.

The patch is in wireless-testing with John's s-o-b, and in the mainline tree 
with the same annotation.

It has been working OK here, but my devices did not show underrun.

Larry
