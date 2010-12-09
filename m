From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 9 Dec 2010 16:28:46 +0100
Subject: [PATCH 0/4] Make N-PHY support experimental
In-Reply-To: <1291908338.3540.16.camel@jlt3.sipsolutions.net>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
	<AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
	<4CFEFD8D.1080808@lwfinger.net>
	<AANLkTi=mDh9wkp+u3ebuXqF8Q-rTW_YCtee3CmCBdWTh@mail.gmail.com>
	<4D00F3C3.6040801@lwfinger.net>
	<1291908338.3540.16.camel@jlt3.sipsolutions.net>
Message-ID: <AANLkTimZTzMbQenxs6-1awdoGBhbJz2kyGBSO9v2+fzn@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2010/12/9 Johannes Berg <johannes@sipsolutions.net>:
> On Thu, 2010-12-09 at 09:20 -0600, Larry Finger wrote:
>
>> It has a rev 2 PHY, and a rev 4 0x2055 radio.
>>
>> I am willing to buy a higher PHY rev device for testing. Any idea what is in a
>> 4324A-BRCM1036?
>
> It says BCM94322 on the image, and if that's any indication, I have a
> 4322 with pci ID 14e4:432b (but it's an Apple build):
>
> b43-phy0: Broadcom 4322 WLAN found (core revision 16)
> b43-phy0 debug: Found PHY: Analog 8, Type 4, Revision 4
> b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2056, Revision 3

I actually asked for some hardware donations on my blog and in news on
polish portal, but didn't receive any serious offer.

Johannes: is there any chance you could put this card in some machine
I could get ssh access to? Or is that some daily-user-card or you
don't really have free machine? Of course I don't need that now, first
we have to make PHY 2 support more complete. But maybe after
Christmas/new year I could focus on that.

-- 
Rafa?
