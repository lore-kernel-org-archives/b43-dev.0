From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 08 Jun 2011 19:27:13 -0500
Subject: Faulty 14e4:4315 (BCM4312)?
In-Reply-To: <BANLkTikXnXR2f1TUrJ7bhC9KdBe0XevN7Q@mail.gmail.com>
References: <BANLkTin+sAHnQ3afDJH0KMSZEeUqzRDmYw@mail.gmail.com>	<BANLkTi=RQe_jGFPEOYumPxxxmWM4M+BLcQ@mail.gmail.com>	<BANLkTikg5YSj=9Y+Bbv_8oJSG1OkG4GQBw@mail.gmail.com>	<BANLkTi=tSGzu57+-MovR2q0y2qLGZ=AwFA@mail.gmail.com>	<BANLkTincRK-fo+=dHoDQppsLwfMGmeiWJA@mail.gmail.com>	<BANLkTi=ezOxXVswSNsRqL06A6rozMiaNzQ@mail.gmail.com>	<4DF00043.1070304@lwfinger.net>	<BANLkTi=VDh7mECOvnCJRfoEDt6WBw2ZtjA@mail.gmail.com>	<4DF0062F.6030602@lwfinger.net>
	<BANLkTikXnXR2f1TUrJ7bhC9KdBe0XevN7Q@mail.gmail.com>
Message-ID: <4DF01361.9000103@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/08/2011 06:47 PM, Rafa? Mi?ecki wrote:
>
> Yeah, that's exactly the same card. The same cores, revisions, cc
> status, PMU capabilities.
>
> I just didn't try 508.1084 firmware. I've been playing with 410.2160,
> 478-104, 508.1103, 508.1107 however, so switching to your's version
> probably won't help.
>
> What is your network encryption and freq?
>
> BSS 00:23:69:c2:65:06 (on wlan0)
>          TSF: 665805184 usec (0d, 00:11:05)
>          freq: 2427
>          beacon interval: 100
>          capability: ESS Privacy ShortSlotTime (0x0411)
>          signal: -14.00 dBm
>          last seen: 778 ms ago
>          SSID: zajec_poznan_160
>          Supported rates: 1.0* 2.0* 5.5* 11.0* 6.0 9.0 12.0 18.0
>          DS Parameter set: channel 4
>          ERP:<no flags>
>          Extended supported rates: 24.0 36.0 48.0 54.0
>          RSN:     * Version: 1
>                   * Group cipher: CCMP
>                   * Pairwise ciphers: CCMP
>                   * Authentication suites: PSK
>                   * Capabilities: 16-PTKSA-RC (0x000c)
>          WMM:    * Parameter version 1
>                  * BE: CW 15-1023, AIFSN 3
>                  * BK: CW 15-1023, AIFSN 7
>                  * VI: CW 7-15, AIFSN 2, TXOP 3008 usec
>                  * VO: acm CW 3-7, AIFSN 2, TXOP 1504 usec
>
> network={
>          ssid="zajec_poznan_160"
>          key_mgmt=WPA-PSK
>          proto=WPA RSN
>          pairwise=CCMP TKIP
>          group=CCMP TKIP
>          psk="psssst"
> }
>

My scan data are:

           Cell 02 - Address: C0:3F:0E:BE:2B:44
                     Channel:3
                     Frequency:2.422 GHz (Channel 3)
                     Quality=70/70  Signal level=-11 dBm
                     Encryption key:on
                     ESSID:"lwfdjf-n"
                     Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s; 18 Mb/s
                               24 Mb/s; 36 Mb/s; 54 Mb/s
                     Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 48 Mb/s
                     Mode:Master
                     Extra:tsf=00000226ec352cf9
                     Extra: Last beacon: 32ms ago
                     IE: Unknown: 00086C7766646A662D6E
                     IE: Unknown: 010882848B962430486C
                     IE: Unknown: 030103
                     IE: Unknown: 2A0100
                     IE: Unknown: 2F0100
                     IE: IEEE 802.11i/WPA2 Version 1
                         Group Cipher : TKIP
                         Pairwise Ciphers (2) : CCMP TKIP
                         Authentication Suites (1) : PSK
                     IE: Unknown: 32040C121860
                     IE: WPA Version 1
                         Group Cipher : TKIP
                         Pairwise Ciphers (2) : CCMP TKIP
                         Authentication Suites (1) : PSK


This AP is capable of 802.11n with 2.4 GHz rate up to 270 Mbps and HT40, which 
is the reason for channel 3.

Larry
