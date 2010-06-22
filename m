From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 22 Jun 2010 14:46:33 -0500
Subject: Problem with b43
In-Reply-To: <AANLkTik-XDxM8A4Z0_p4bRnLPvSrxP8ZaYSKrCqgtbrN@mail.gmail.com>
References: <AANLkTilLczfhdWgMfxN2eL5dVmml4KL4ndq0BMtgFfDG@mail.gmail.com>	<4C046DA6.3020308@polymtl.ca>	<AANLkTinKC4wz1tcKcATNOPTrDcuVFyfV83RYYwQfjC9k@mail.gmail.com>	<AANLkTimCtaUkpeFF0NIEzuSSWVIcMmbVMaSAVlBGhphD@mail.gmail.com>	<AANLkTik_mkRNmY9FHIG91lq0oTzb2j3frfy0eqfCYNFT@mail.gmail.com>	<AANLkTimpDoxIjIBVOPug5uLADaV5oX6RX8se9VC1x6Pd@mail.gmail.com>	<AANLkTili3ExOipmXzdd9JMMMhiyc8KUZoND-3KaznevA@mail.gmail.com>	<4C20D20C.6000606@lwfinger.net>
	<AANLkTik-XDxM8A4Z0_p4bRnLPvSrxP8ZaYSKrCqgtbrN@mail.gmail.com>
Message-ID: <4C211319.3080601@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/22/2010 01:54 PM, Fabrizio Regalli wrote:
> G?bor, Larry
> 
> first of all, excuse me for my mistake: I forget to add in Cc: the ml.
> 
> The actual situation is:
> 
> ## /etc/modprobe.d/b43.conf ##
> 
> options b43 pio=0 qos=0 nohwcrypt=1
> 
> I remove network-manager and gnome-network-manager

That step was not necessary. I run under the KDE NetworkManager all the time.

> It seems to recognize correctly the access point:
> 
> ## iwconfig ##
> 
> wlan0     IEEE 802.11bg  ESSID:"XXXXX" 
>           Mode:Managed  Frequency:2.472 GHz  Access Point:
> 00:18:4D:2E:85:4A  
>           Bit Rate=1 Mb/s   Tx-Power=20 dBm  
>           Retry  long limit:7   RTS thr:off   Fragment thr:off
>           Encryption key:off
>           Power Management:off
>           Link Quality=70/70  Signal level=-21 dBm 
>           Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
>           Tx excessive retries:0  Invalid misc:0   Missed beacon:0

Yes, you are associated.

> 
> ## ifconfig ##
> 
> wlan0     Link encap:Ethernet  HWaddr 00:1d:60:e7:53:b8 
>           inet addr:192.168.0.100  Bcast:192.168.0.255  Mask:255.255.255.0
>           inet6 addr: fe80::21d:60ff:fee7:53b8/64 Scope:Link
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:49 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:91 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:4471 (4.3 KiB)  TX bytes:12226 (11.9 KiB)

You also have an IP number. Some systems have trouble with IPv6. If you do
not need it, you might disable it.

> but the ping is very horrible and the connection is unstable:
> 
> 
> ING 192.168.0.2 (192.168.0.2) 56(84) bytes of data.
> 64 bytes from 192.168.0.2 <http://192.168.0.2>: icmp_req=1 ttl=64
> time=2180 ms
> 64 bytes from 192.168.0.2 <http://192.168.0.2>: icmp_req=3 ttl=64
> time=888 ms
> 
> 24 packets transmitted, 13 received, 45% packet loss, time 23128ms
> rtt min/avg/max/mdev = 215.307/2399.514/5875.790/1923.942 ms, pipe 6

Yes - awful performance.

> 
> ..
> 
> I'm using wpa_supplicant with wpa2 authentication Could be this the
> problem?

No. I use WPA2 authentication all the time.

I have no idea what is causing the changes in performance. I do not see
them. My system will go off-line once in a while, but I never see the
dropouts or the very long ping times.

Larry
