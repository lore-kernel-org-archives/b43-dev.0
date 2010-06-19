From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 19 Jun 2010 08:26:56 -0500
Subject: Problems with b43 wirelesss
In-Reply-To: <AANLkTimxOgQySTag7u4DlZugbveWr7csDSAERkewAYhp@mail.gmail.com>
References: <AANLkTimIkTaIrdXHulE6YVnB3ZwWrMBCNnCK1SKdyctL@mail.gmail.com>	<AANLkTimvdtruvFaugHTYcSNhL5pBZXPYtzEF3qolO_qW@mail.gmail.com>
	<AANLkTimxOgQySTag7u4DlZugbveWr7csDSAERkewAYhp@mail.gmail.com>
Message-ID: <4C1CC5A0.7080600@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Magnus Therning <magnus@therning.org>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, b43-dev@lists.infradead.org, wireless <linux-wireless@vger.kernel.org>

On 06/19/2010 07:35 AM, Magnus Therning wrote:
> 2010/6/19 Rafa? Mi?ecki <zajec5@gmail.com>:
>> You can Google for b43 & DMA errors. Simply try "pio" option for b43
>> module. Or switch to newer kernel, which will pick up pio for you
>> after first DMA error.
> 
> Given the following messages in dmesg, I thought this was already happening:
> 
> b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000,
> 0x00000000, 0x00000000, 0x00000000
> b43-phy0 ERROR: This device does not support DMA on your system.
> Please use PIO instead.
> b43-phy0: Controller RESET (DMA error) ...
> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> b43-phy0: Controller restarted
> 
> I'm running the 2.6.33 (latest stable is 2.6.34), but I am using the
> latest daily (2010-06-17) from compat-wireless[1], so unless I'm
> missing something there isn't much to be gained from switching to the
> latest kernel.  In any case I will try it to see if that improves the
> situation.
> 
> My naive reading of the messages tells me that this *isn't* a DMA
> error... I also don't really understand how I could ever get an
> initial connection, which I do, if that were the problem I'm having.

No, it is a fatal DMA error and your device did switch to PIO mode. The
dmesg output does not make that clear. I'm sending a patch to change the
logged message.

> It looks like the following is more relevant to my problem:
> 
> No probe response from AP 00:22:3f:c3:99:a8 after 500ms, disconnecting.
> cfg80211: Calling CRDA to update world regulatory domain
> wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
> wlan0: authenticated
> wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
> wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
> wlan0: associated
> wlan0: deauthenticated from 00:22:3f:c3:99:a8 (Reason: 15)
> 
> Especially since that sequence of messages is repeated over an over.
> 
> My next test will be to turn off all security on the wireless, just to
> rule out WPA completley.

I looked for an explanation of Reason 15 deauthentications. Perhaps
someone on the wireless ML will know the answer.

Larry
