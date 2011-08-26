From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 26 Aug 2011 16:34:56 -0500
Subject: [wireless-next][PATCH 0/3][ANNOUNCE] b43 the first Linux driver
	supporting HT-PHY (BCM4331)!
In-Reply-To: <20110826232731.3ade9956@milhouse>
References: <1314384081-3460-1-git-send-email-zajec5@gmail.com>
	<20110826232731.3ade9956@milhouse>
Message-ID: <4E581180.9020609@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <m@bues.ch>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>, Maxime Vincent <maxime.vince@gmail.com>, Darren <dmbtech@gmail.com>

On 08/26/2011 04:27 PM, Michael B?sch wrote:
> On Fri, 26 Aug 2011 20:41:18 +0200
> Rafa? Mi?ecki<zajec5@gmail.com>  wrote:
>
>> After improving DMA (the important patch for BCM4331 is my one) we can finally
>> enable support for HT-PHY.
>
> I'd really like to thank you guys for your great work on the driver.
> You made some really significant improvements to the driver in the last few
> months and thus ported b43 over to the latest and greatest broadcom
> wireless devices. Things looked messy with only legacy G-PHY support,
> but then you guys appeared. ;) Thanks.

The "guys" are really only one guy, Rafa?. His ability to convert ugly mmio 
dumps into code is remarkable.

Larry
