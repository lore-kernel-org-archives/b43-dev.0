From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sat, 25 May 2013 21:37:32 +0200
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <alpine.DEB.2.02.1305252058060.1282@kelly.ryd.net>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <CACna6rxWPOqQPNUaASaj=v=O+Wjt0okjX4jNwE3tv-=etfATCg@mail.gmail.com>
 <alpine.DEB.2.02.1305132025560.1278@kelly.ryd.net>
 <20130524164922.GA2175@tuxdriver.com>
 <alpine.DEB.2.02.1305252058060.1282@kelly.ryd.net>
Message-ID: <51A112FC.8060100@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thommy Jakobsson <thommyj@gmail.com>
Cc: "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?B?UmFmYcWCIE1pxYI=?= =?UTF-8?B?ZWNraQ==?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, m@bues.ch, piotras@gmail.com, Larry.Finger@lwfinger.net

On 05/25/2013 09:02 PM, Thommy Jakobsson wrote:
> 
> 
> On Fri, 24 May 2013, John W. Linville wrote:
> 
>> Ping?  Should I drop this one?
>>
> Still working great on my device, so from that I think we should go for 
> it. But it would be great if Rafal (or someone) tested it on some other 
> hardware as well. 
> 
> //Thommy

This is included in OpenWrt for ~4 weeks now and I haven't read of
anybody complaining about any new problems introduced by this patch or
something which looks like the DMA under run.
I am also for adding this to the kernel.

Hauke
