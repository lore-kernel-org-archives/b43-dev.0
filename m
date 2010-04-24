From: Grygoriy Fuchedzhy <grygoriy.fuchedzhy@gmail.com>
Date: Sat, 24 Apr 2010 14:35:24 +0300
Subject: [14e4:4315] Dell Studio 1735, rfkill problem
In-Reply-To: <20100424112652.28e5735a@laptop.homenet>
References: <q2xb7f967271004231505m3e7de9a5j8f6a005f72541764@mail.gmail.com>
	<20100424110940.2b908933@laptop.homenet>
	<20100424112652.28e5735a@laptop.homenet>
Message-ID: <x2qb7f967271004240435ga6d41d04n2463282649f7200@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/4/24 Chris Vine <chris@cvine.freeserve.co.uk>:
> On Sat, 24 Apr 2010 11:09:40 +0100
> Chris Vine <chris@cvine.freeserve.co.uk> wrote:
>> Out of interest, is acpi-wmi loaded and if so does it make any
>> difference if you blacklist it?
>
> Sorry I meant acer-wmi. ?That incorrectly loads on my laptop (which
> isn't acer) and causes similar symptoms for me.

It wasn't built at all. I tried to build acer-wmi and dell-wmi.
acer-wmi doesn't load automatically, if I load
it manually it fails to load throwing error that I do not have
neccesary hardware. dell-wmi loads
automatically but it doesn't affect my problem.

Here is some more details about my hardware switch.
If I disable rfkill in kernel and turn switch off I get following:
> No probe response from AP 00:23:69:2f:3f:01 after 500ms, disconnecting.
> wlan0: direct probe to AP 00:23:69:2f:3f:01 (try 1)
> wlan0: direct probe to AP 00:23:69:2f:3f:01 (try 2)
> wlan0: direct probe to AP 00:23:69:2f:3f:01 (try 3)
> wlan0: direct probe to AP 00:23:69:2f:3f:01 timed out

Wifi led remains turned on. Then I turn switch back on.
> wlan0: direct probe to AP 00:23:69:2f:3f:01 (try 1)
> wlan0: direct probe responded
> wlan0: authenticate with AP 00:23:69:2f:3f:01 (try 1)
> wlan0: authenticated
> wlan0: associate with AP 00:23:69:2f:3f:01 (try 1)
> wlan0: RX AssocResp from 00:23:69:2f:3f:01 (capab=0x411 status=0 aid=1)
> wlan0: associated

And everything works fine.

I have only led_radio led on my notebook, but don't have led_tx,
led_rx, led_assoc,
so I added printk calls to ieee80211_led_xxx routines in net/mac80211/led.c for
debugging purpose. In case if I have rfkill enabled in kernel when I
turn switch off I get
led_assoc(..., 0) and led_radio(..., 0) calls and radio stops
transmitting until I reboot.
If I have rfkill disabled in kernel when I turn switch off I get
led_assoc(..., 0) and then
led_tx(...) keeps going and there is no led_rx(...) untill I turn
switch back on.

It looks like switch turns off some high power tx/rx circuit, but
logic remains active.
It keeps scanning but can't find anything.

Don't know if this info would be useful, but I hope so.

-- 
Grygoriy Fuchedzhy
