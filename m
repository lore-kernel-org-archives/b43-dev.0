From: Fabrizio Regalli <fabreg@gmail.com>
Date: Thu, 24 Jun 2010 23:50:07 +0200
Subject: Problem with b43
In-Reply-To: <AANLkTin4cgLO3SECq11yi1r_w9LLA6xbEip00Ma96uvx@mail.gmail.com>
References: <AANLkTilLczfhdWgMfxN2eL5dVmml4KL4ndq0BMtgFfDG@mail.gmail.com>
	<4C046DA6.3020308@polymtl.ca>
	<AANLkTinKC4wz1tcKcATNOPTrDcuVFyfV83RYYwQfjC9k@mail.gmail.com>
	<AANLkTimCtaUkpeFF0NIEzuSSWVIcMmbVMaSAVlBGhphD@mail.gmail.com>
	<AANLkTik_mkRNmY9FHIG91lq0oTzb2j3frfy0eqfCYNFT@mail.gmail.com>
	<AANLkTimpDoxIjIBVOPug5uLADaV5oX6RX8se9VC1x6Pd@mail.gmail.com>
	<AANLkTili3ExOipmXzdd9JMMMhiyc8KUZoND-3KaznevA@mail.gmail.com>
	<4C20D20C.6000606@lwfinger.net>
	<AANLkTik-XDxM8A4Z0_p4bRnLPvSrxP8ZaYSKrCqgtbrN@mail.gmail.com>
	<4C211319.3080601@lwfinger.net>
	<AANLkTin4cgLO3SECq11yi1r_w9LLA6xbEip00Ma96uvx@mail.gmail.com>
Message-ID: <AANLkTimgyk0Vja9NEX-zZI3Sz1ElxG8qTFb9Ue-jQQ58@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I've update WRT on my netgear router without success: the problem is not
solved
So I've changed the access point with another netgear and now works fine.
The only "strange" message is

[ 1558.692139] b43-phy0 ERROR: PHY transmission error

what does it means?

Thanks


2010/6/22 Fabrizio Regalli <fabreg@gmail.com>

> Now I switched to WEP auth, for trying:
>
>
>
> wlan0     IEEE 802.11bg  ESSID:"XXXX"
>           Mode:Managed  Frequency:2.437 GHz  Access Point:
> 00:18:4D:2E:85:4A
>           Bit Rate=5.5 Mb/s   Tx-Power=20 dBm
>           Retry  long limit:7   RTS thr:off   Fragment thr:off
>           Encryption key:XXXX-XXXX-XXXX-XXXX-XXXX-XXXX
>           Power Management:off
>           Link Quality=70/70  Signal level=-23 dBm
>           Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
>           Tx excessive retries:0  Invalid misc:0   Missed beacon:0
>
> The wlan0 interface is up & running:
>
> ifconfig wlan0 |grep inet
>
>           inet addr:192.168.0.100  Bcast:192.168.0.255  Mask:255.255.255.0
>           inet6 addr: fe80::21d:60ff:fee7:53b8/64 Scope:Link
>
> but nothing to do: it does not ping the ap (192.168.0.2)
>
> PING 192.168.0.2 (192.168.0.2) 56(84) bytes of data.
>
>
> --- 192.168.0.2 ping statistics ---
> 3 packets transmitted, 0 received, 100% packet loss, time 2016ms
>
> Here's a dmesg output:
>
> [  160.482533] b43-phy1: Broadcom 4318 WLAN found (core revision 9)
> [  160.524036] b43-phy1 debug: Found PHY: Analog 3, Type 2, Revision 7
> [  160.524058] b43-phy1 debug: Found Radio: Manuf 0x17F, Version 0x2050,
> Revision 8
> [  160.548601] phy1: Selected rate control algorithm 'minstrel'
> [  160.549717] Registered led device: b43-phy1::tx
> [  160.549746] Registered led device: b43-phy1::rx
> [  160.549778] Registered led device: b43-phy1::assoc
> [  160.549799] Registered led device: b43-phy1::radio
> [  160.549911] Broadcom 43xx driver loaded [ Features: PL, Firmware-ID:
> FW13 ]
> [  181.508303] b43 ssb0:0: firmware: requesting b43/ucode5.fw
> [  181.510885] b43 ssb0:0: firmware: requesting b43/pcm5.fw
> [  181.513857] b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
> [  181.516679] b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
> [  181.632028] b43-phy1: Loading firmware version 410.2160 (2007-05-26
> 15:32:10)
> [  181.652056] b43-phy1 debug: Chip initialized
> [  181.652203] b43-phy1 debug: 32-bit DMA initialized
> [  181.652211] b43-phy1 debug: QoS disabled
> [  181.672368] b43-phy1 debug: Wireless interface started
> [  181.704094] b43-phy1 debug: Adding Interface type 2
> [  181.734463] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [  181.916349] wlan0: authenticate with 00:18:4d:2e:85:4a (try 1)
> [  181.917759] wlan0: 00:18:4d:2e:85:4a denied authentication (status 13)
> [  181.918140] wlan0: authenticate with 00:18:4d:2e:85:4a (try 1)
> [  181.923714] wlan0: authenticated
> [  181.924100] wlan0: associate with 00:18:4d:2e:85:4a (try 1)
> [  181.925832] wlan0: RX AssocResp from 00:18:4d:2e:85:4a (capab=0x411
> status=0 aid=1)
> [  181.925834] wlan0: associated
> [  181.926327] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
> [  191.932006] wlan0: no IPv6 routers present
>
> I'm using a netgear WG602 v3 as access point with 1.2.5 firmware.
>
> Now I'm trying to upgrade AP firmware with WRT
>
>
> 2010/6/22 Larry Finger <Larry.Finger@lwfinger.net>
>
>> On 06/22/2010 01:54 PM, Fabrizio Regalli wrote:
>>
>> > G?bor, Larry
>> >
>> > first of all, excuse me for my mistake: I forget to add in Cc: the ml.
>> >
>> > The actual situation is:
>> >
>> > ## /etc/modprobe.d/b43.conf ##
>> >
>> > options b43 pio=0 qos=0 nohwcrypt=1
>> >
>> > I remove network-manager and gnome-network-manager
>>
>> That step was not necessary. I run under the KDE NetworkManager all the
>> time.
>>
>> > It seems to recognize correctly the access point:
>> >
>> > ## iwconfig ##
>> >
>> > wlan0     IEEE 802.11bg  ESSID:"XXXXX"
>> >           Mode:Managed  Frequency:2.472 GHz  Access Point:
>> > 00:18:4D:2E:85:4A
>> >           Bit Rate=1 Mb/s   Tx-Power=20 dBm
>> >           Retry  long limit:7   RTS thr:off   Fragment thr:off
>> >           Encryption key:off
>> >           Power Management:off
>> >           Link Quality=70/70  Signal level=-21 dBm
>> >           Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
>> >           Tx excessive retries:0  Invalid misc:0   Missed beacon:0
>>
>> Yes, you are associated.
>>
>> >
>> > ## ifconfig ##
>> >
>> > wlan0     Link encap:Ethernet  HWaddr 00:1d:60:e7:53:b8
>> >           inet addr:192.168.0.100  Bcast:192.168.0.255
>>  Mask:255.255.255.0
>> >           inet6 addr: fe80::21d:60ff:fee7:53b8/64 Scope:Link
>> >           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>> >           RX packets:49 errors:0 dropped:0 overruns:0 frame:0
>> >           TX packets:91 errors:0 dropped:0 overruns:0 carrier:0
>> >           collisions:0 txqueuelen:1000
>> >           RX bytes:4471 (4.3 KiB)  TX bytes:12226 (11.9 KiB)
>>
>> You also have an IP number. Some systems have trouble with IPv6. If you do
>> not need it, you might disable it.
>>
>> > but the ping is very horrible and the connection is unstable:
>> >
>> >
>> > ING 192.168.0.2 (192.168.0.2) 56(84) bytes of data.
>> > 64 bytes from 192.168.0.2 <http://192.168.0.2>: icmp_req=1 ttl=64
>> > time=2180 ms
>> > 64 bytes from 192.168.0.2 <http://192.168.0.2>: icmp_req=3 ttl=64
>> > time=888 ms
>> >
>> > 24 packets transmitted, 13 received, 45% packet loss, time 23128ms
>> > rtt min/avg/max/mdev = 215.307/2399.514/5875.790/1923.942 ms, pipe 6
>>
>> Yes - awful performance.
>>
>> >
>> > ..
>> >
>> > I'm using wpa_supplicant with wpa2 authentication Could be this the
>> > problem?
>>
>> No. I use WPA2 authentication all the time.
>>
>> I have no idea what is causing the changes in performance. I do not see
>> them. My system will go off-line once in a while, but I never see the
>> dropouts or the very long ping times.
>>
>> Larry
>>
>
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100624/37c71f48/attachment.html>
