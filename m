From: Magnus Therning <magnus@therning.org>
Date: Sat, 19 Jun 2010 13:35:10 +0100
Subject: Problems with b43 wirelesss
In-Reply-To: <AANLkTimvdtruvFaugHTYcSNhL5pBZXPYtzEF3qolO_qW@mail.gmail.com>
References: <AANLkTimIkTaIrdXHulE6YVnB3ZwWrMBCNnCK1SKdyctL@mail.gmail.com>
	<AANLkTimvdtruvFaugHTYcSNhL5pBZXPYtzEF3qolO_qW@mail.gmail.com>
Message-ID: <AANLkTimxOgQySTag7u4DlZugbveWr7csDSAERkewAYhp@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/6/19 Rafa? Mi?ecki <zajec5@gmail.com>:
> You can Google for b43 & DMA errors. Simply try "pio" option for b43
> module. Or switch to newer kernel, which will pick up pio for you
> after first DMA error.

Given the following messages in dmesg, I thought this was already happening:

b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000
b43-phy0 ERROR: This device does not support DMA on your system.
Please use PIO instead.
b43-phy0: Controller RESET (DMA error) ...
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
b43-phy0: Controller restarted

I'm running the 2.6.33 (latest stable is 2.6.34), but I am using the
latest daily (2010-06-17) from compat-wireless[1], so unless I'm
missing something there isn't much to be gained from switching to the
latest kernel.  In any case I will try it to see if that improves the
situation.

My naive reading of the messages tells me that this *isn't* a DMA
error... I also don't really understand how I could ever get an
initial connection, which I do, if that were the problem I'm having.

It looks like the following is more relevant to my problem:

No probe response from AP 00:22:3f:c3:99:a8 after 500ms, disconnecting.
cfg80211: Calling CRDA to update world regulatory domain
wlan0: authenticate with 00:22:3f:c3:99:a8 (try 1)
wlan0: authenticated
wlan0: associate with 00:22:3f:c3:99:a8 (try 1)
wlan0: RX AssocResp from 00:22:3f:c3:99:a8 (capab=0x431 status=0 aid=1)
wlan0: associated
wlan0: deauthenticated from 00:22:3f:c3:99:a8 (Reason: 15)

Especially since that sequence of messages is repeated over an over.

My next test will be to turn off all security on the wireless, just to
rule out WPA completley.

Cheers,
M

[1]: http://wireless.kernel.org/download/compat-wireless-2.6/compat-wireless-2010-06-17.tar.bz2

-- 
Magnus Therning                        (OpenPGP: 0xAB4DFBA4)
magnus?therning?org          Jabber: magnus?therning?org
http://therning.org/magnus         identi.ca|twitter: magthe
