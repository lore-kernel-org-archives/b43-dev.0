From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 11 Jun 2011 09:53:08 +0200
Subject: Faulty 14e4:4315 (BCM4312)?
In-Reply-To: <BANLkTikXnXR2f1TUrJ7bhC9KdBe0XevN7Q@mail.gmail.com>
References: <BANLkTin+sAHnQ3afDJH0KMSZEeUqzRDmYw@mail.gmail.com>
	<BANLkTi=RQe_jGFPEOYumPxxxmWM4M+BLcQ@mail.gmail.com>
	<BANLkTikg5YSj=9Y+Bbv_8oJSG1OkG4GQBw@mail.gmail.com>
	<BANLkTi=tSGzu57+-MovR2q0y2qLGZ=AwFA@mail.gmail.com>
	<BANLkTincRK-fo+=dHoDQppsLwfMGmeiWJA@mail.gmail.com>
	<BANLkTi=ezOxXVswSNsRqL06A6rozMiaNzQ@mail.gmail.com>
	<4DF00043.1070304@lwfinger.net>
	<BANLkTi=VDh7mECOvnCJRfoEDt6WBw2ZtjA@mail.gmail.com>
	<4DF0062F.6030602@lwfinger.net>
	<BANLkTikXnXR2f1TUrJ7bhC9KdBe0XevN7Q@mail.gmail.com>
Message-ID: <BANLkTikhTh7Vf=SQSPyE9u6C3XNANYGMZQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 9 czerwca 2011 01:47 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> BSS 00:23:69:c2:65:06 (on wlan0)
> ? ? ? ?TSF: 665805184 usec (0d, 00:11:05)
> ? ? ? ?freq: 2427
> ? ? ? ?beacon interval: 100
> ? ? ? ?capability: ESS Privacy ShortSlotTime (0x0411)
> ? ? ? ?signal: -14.00 dBm
> ? ? ? ?last seen: 778 ms ago
> ? ? ? ?SSID: zajec_poznan_160
> ? ? ? ?Supported rates: 1.0* 2.0* 5.5* 11.0* 6.0 9.0 12.0 18.0
> ? ? ? ?DS Parameter set: channel 4
> ? ? ? ?ERP: <no flags>
> ? ? ? ?Extended supported rates: 24.0 36.0 48.0 54.0
> ? ? ? ?RSN: ? ? * Version: 1
> ? ? ? ? ? ? ? ? * Group cipher: CCMP
> ? ? ? ? ? ? ? ? * Pairwise ciphers: CCMP
> ? ? ? ? ? ? ? ? * Authentication suites: PSK
> ? ? ? ? ? ? ? ? * Capabilities: 16-PTKSA-RC (0x000c)
> ? ? ? ?WMM: ? ?* Parameter version 1
> ? ? ? ? ? ? ? ?* BE: CW 15-1023, AIFSN 3
> ? ? ? ? ? ? ? ?* BK: CW 15-1023, AIFSN 7
> ? ? ? ? ? ? ? ?* VI: CW 7-15, AIFSN 2, TXOP 3008 usec
> ? ? ? ? ? ? ? ?* VO: acm CW 3-7, AIFSN 2, TXOP 1504 usec
>
> network={
> ? ? ? ?ssid="zajec_poznan_160"
> ? ? ? ?key_mgmt=WPA-PSK
> ? ? ? ?proto=WPA RSN
> ? ? ? ?pairwise=CCMP TKIP
> ? ? ? ?group=CCMP TKIP
> ? ? ? ?psk="psssst"
> }

In my parent's house I've the same router with the same OpenWRT
version. Freq is also the same:

BSS 00:23:69:a3:92:f0 (on wlan0)
        TSF: 3120501241 usec (0d, 00:52:00)
        freq: 2427
        beacon interval: 100
        capability: ESS Privacy ShortSlotTime (0x0411)
        signal: -61.00 dBm
        last seen: 843 ms ago
        SSID: zajec_160nl_openwrt
        Supported rates: 1.0* 2.0* 5.5* 11.0* 6.0 9.0 12.0 18.0
        DS Parameter set: channel 4
        ERP: Barker_Preamble_Mode
        Extended supported rates: 24.0 36.0 48.0 54.0
        RSN:     * Version: 1
                 * Group cipher: CCMP
                 * Pairwise ciphers: CCMP
                 * Authentication suites: PSK
                 * Capabilities: 16-PTKSA-RC (0x000c)
        WMM:    * Parameter version 1
                * BE: CW 15-1023, AIFSN 3
                * BK: CW 15-1023, AIFSN 7
                * VI: CW 7-15, AIFSN 2, TXOP 3008 usec
                * VO: CW 3-7, AIFSN 2, TXOP 1504 usec

It connected just fine here. Weird.

Maybe G?bor is right? Maybe we miss some calibration needed for the
low distance with jamming?

-- 
Rafa?
