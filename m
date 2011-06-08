From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Wed, 8 Jun 2011 22:37:16 +0200
Subject: Faulty 14e4:4315 (BCM4312)?
In-Reply-To: <BANLkTin+sAHnQ3afDJH0KMSZEeUqzRDmYw@mail.gmail.com>
References: <BANLkTin+sAHnQ3afDJH0KMSZEeUqzRDmYw@mail.gmail.com>
Message-ID: <BANLkTi=RQe_jGFPEOYumPxxxmWM4M+BLcQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/6/8 Rafa? Mi?ecki <zajec5@gmail.com>:
> Hey,
>
> I've just discovered I can not connect with my 14e4:4315 to my home network.
>
> dmesg:
> [ ?119.744050] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> [ ?119.746744] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
> [ ?121.130067] b43-phy0 debug: Chip initialized
> [ ?121.130348] b43-phy0 debug: 64-bit DMA initialized
> [ ?121.130416] b43-phy0 debug: QoS enabled
> [ ?121.139857] b43-phy0 debug: Wireless interface started
> [ ?121.145095] b43-phy0 debug: Adding Interface type 2
> [ ?121.145605] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [ ?128.295371] wlan0: authenticate with 00:23:69:c2:65:06 (try 1)
> [ ?128.300285] wlan0: authenticated
> [ ?128.300319] wlan0: associate with 00:23:69:c2:65:06 (try 1)
> [ ?128.303709] wlan0: RX AssocResp from 00:23:69:c2:65:06 (capab=0x411
> status=0 aid=3)
> [ ?128.303715] wlan0: associated
> [ ?128.304711] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
> [ ?128.429557] b43-phy0 debug: Using hardware based encryption for
> keyidx: 0, mac: 00:23:69:c2:65:06
> [ ?128.429611] b43-phy0 debug: Using hardware based encryption for
> keyidx: 2, mac: ff:ff:ff:ff:ff:ff
> [ ?132.208036] ieee80211 phy0: wlan0: No probe response from AP
> 00:23:69:c2:65:06 after 500ms, disconnecting.
>
> wpa_supplicant fills my console with:
>> ioctl[SIOCSIWENCODEEXT]: Invalid argument
>> ioctl[SIOCSIWENCODEEXT]: Invalid argument
>> Trying to associate with 00:23:69:c2:65:06 (SSID='zajec_poznan_160' freq=2427 MHz)
>> Associated with 00:23:69:c2:65:06
>> WPA: Key negotiation completed with 00:23:69:c2:65:06 [PTK=CCMP GTK=CCMP]
>> CTRL-EVENT-CONNECTED - Connection to 00:23:69:c2:65:06 completed (auth) [id=0 id_str=]
>> CTRL-EVENT-DISCONNECTED bssid=00:23:69:c2:65:06 reason=0
>
> It seems it was already reported, for example in:
> "No probe response from AP <address> after 500ms, disconnecting." by
> Miklos Vajna on Thu, 14 Jan 2010 17:29:20 -0800.
> http://www.mail-archive.com/bcm43xx-dev at lists.berlios.de/msg09481.html
>
> What's really surprising I can not connect to this network also when
> using wl 5.100.82.38!
>
> Did anyone of you already got some faulty BCM4312 hardware? Did it
> behave like this? I'm surprised than scanning works, but connection is
> quickly dropped. It does not really sound like a faulty hardware.

Chances are, your card can happily communicate with the AP using CCK,
but once it tries to do OFDM, it fails.
Is the AP close enough for OFDM communication?

>
> Of course I'll experiment with this more, for now just early-asking.
>
> --
> Rafa?
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
