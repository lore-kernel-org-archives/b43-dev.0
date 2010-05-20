From: Roberto <naddaro@yahoo.it>
Date: Thu, 20 May 2010 07:57:59 +0000 (GMT)
Subject: No probe response from AP ... after 500ms, disconnecting
In-Reply-To: <20100519160309.32139.qmail@stuge.se>
Message-ID: <209187.41636.qm@web23708.mail.ird.yahoo.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

No, it wasn't running.

Now it's running but


dmesg
----

  136.247658] b43 ssb0:0: firmware: requesting b43/ucode15.fw
[  136.330940] b43 ssb0:0: firmware: requesting b43/lp0initvals15.fw
[  136.335966] b43 ssb0:0: firmware: requesting b43/lp0bsinitvals15.fw
[  136.484316] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  142.005293] b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[  142.005303] b43-phy0 ERROR: This device does not support DMA on your system. Please use PIO instead.
[  142.005308] b43-phy0: Controller RESET (DMA error) ...
[  142.240310] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  147.761662] b43-phy0: Controller restarted
[  147.762220] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  314.034904] wlan0: authenticate with 00:e0:98:50:5f:f8 (try 1)
[  314.036932] wlan0: authenticated
[  314.064364] wlan0: associate with 00:e0:98:50:5f:f8 (try 1)
[  314.066469] wlan0: RX AssocResp from 00:e0:98:50:5f:f8 (capab=0x5 status=0 aid=1)
[  314.066473] wlan0: associated
[  314.067396] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  314.073007] wlan0: deauthenticating from 00:e0:98:50:5f:f8 by local choice (reason=3)
[  314.073201] cfg80211: Calling CRDA to update world regulatory domain


---------------

last part  when I give

> iwconfig wlan0 essid MYESSID


thanks
rob


--- Mer 19/5/10, Peter Stuge <peter@stuge.se> ha scritto:

> Da: Peter Stuge <peter@stuge.se>
> Oggetto: Re: No probe response from AP ... after 500ms, disconnecting
> A: b43-dev at lists.infradead.org
> Data: Mercoled? 19 maggio 2010, 18:03
> Roberto wrote:
> > I'm trying with my ap without any encryption. (only to
> test)
>
> It is intended that wpa_supplicant should always be running
> anyway.
> Is it running on your system?
>
>
> //Peter
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



      
