From: Fabrizio Regalli <fabreg@gmail.com>
Date: Tue, 22 Jun 2010 20:54:33 +0200
Subject: Problem with b43
In-Reply-To: <4C20D20C.6000606@lwfinger.net>
References: <AANLkTilLczfhdWgMfxN2eL5dVmml4KL4ndq0BMtgFfDG@mail.gmail.com>
	<4C046DA6.3020308@polymtl.ca>
	<AANLkTinKC4wz1tcKcATNOPTrDcuVFyfV83RYYwQfjC9k@mail.gmail.com>
	<AANLkTimCtaUkpeFF0NIEzuSSWVIcMmbVMaSAVlBGhphD@mail.gmail.com>
	<AANLkTik_mkRNmY9FHIG91lq0oTzb2j3frfy0eqfCYNFT@mail.gmail.com>
	<AANLkTimpDoxIjIBVOPug5uLADaV5oX6RX8se9VC1x6Pd@mail.gmail.com>
	<AANLkTili3ExOipmXzdd9JMMMhiyc8KUZoND-3KaznevA@mail.gmail.com>
	<4C20D20C.6000606@lwfinger.net>
Message-ID: <AANLkTik-XDxM8A4Z0_p4bRnLPvSrxP8ZaYSKrCqgtbrN@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

G?bor, Larry

first of all, excuse me for my mistake: I forget to add in Cc: the ml.

The actual situation is:

## /etc/modprobe.d/b43.conf ##

options b43 pio=0 qos=0 nohwcrypt=1

I remove network-manager and gnome-network-manager
It seems to recognize correctly the access point:

## iwconfig ##

wlan0     IEEE 802.11bg  ESSID:"XXXXX"
          Mode:Managed  Frequency:2.472 GHz  Access Point:
00:18:4D:2E:85:4A
          Bit Rate=1 Mb/s   Tx-Power=20 dBm
          Retry  long limit:7   RTS thr:off   Fragment thr:off
          Encryption key:off
          Power Management:off
          Link Quality=70/70  Signal level=-21 dBm
          Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
          Tx excessive retries:0  Invalid misc:0   Missed beacon:0

## ifconfig ##

wlan0     Link encap:Ethernet  HWaddr 00:1d:60:e7:53:b8
          inet addr:192.168.0.100  Bcast:192.168.0.255  Mask:255.255.255.0
          inet6 addr: fe80::21d:60ff:fee7:53b8/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:49 errors:0 dropped:0 overruns:0 frame:0
          TX packets:91 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:4471 (4.3 KiB)  TX bytes:12226 (11.9 KiB)

but the ping is very horrible and the connection is unstable:


ING 192.168.0.2 (192.168.0.2) 56(84) bytes of data.
64 bytes from 192.168.0.2: icmp_req=1 ttl=64 time=2180 ms
64 bytes from 192.168.0.2: icmp_req=3 ttl=64 time=888 ms
64 bytes from 192.168.0.2: icmp_req=5 ttl=64 time=1030 ms
64 bytes from 192.168.0.2: icmp_req=6 ttl=64 time=227 ms
64 bytes from 192.168.0.2: icmp_req=9 ttl=64 time=215 ms
64 bytes from 192.168.0.2: icmp_req=11 ttl=64 time=5100 ms
64 bytes from 192.168.0.2: icmp_req=12 ttl=64 time=4095 ms
64 bytes from 192.168.0.2: icmp_req=14 ttl=64 time=3546 ms
64 bytes from 192.168.0.2: icmp_req=17 ttl=64 time=528 ms
64 bytes from 192.168.0.2: icmp_req=18 ttl=64 time=5875 ms
64 bytes from 192.168.0.2: icmp_req=20 ttl=64 time=3862 ms
64 bytes from 192.168.0.2: icmp_req=21 ttl=64 time=3328 ms
64 bytes from 192.168.0.2: icmp_req=24 ttl=64 time=313 ms

24 packets transmitted, 13 received, 45% packet loss, time 23128ms
rtt min/avg/max/mdev = 215.307/2399.514/5875.790/1923.942 ms, pipe 6

After a few minutes i retry pinging:

PING 192.168.0.2 (192.168.0.2) 56(84) bytes of data.
64 bytes from 192.168.0.2: icmp_req=1 ttl=64 time=17.4 ms
64 bytes from 192.168.0.2: icmp_req=2 ttl=64 time=1.82 ms
64 bytes from 192.168.0.2: icmp_req=3 ttl=64 time=5.26 ms
64 bytes from 192.168.0.2: icmp_req=4 ttl=64 time=10.1 ms
64 bytes from 192.168.0.2: icmp_req=5 ttl=64 time=5.63 ms
64 bytes from 192.168.0.2: icmp_req=6 ttl=64 time=1.82 ms
64 bytes from 192.168.0.2: icmp_req=7 ttl=64 time=7.99 ms
64 bytes from 192.168.0.2: icmp_req=8 ttl=64 time=1.98 ms
64 bytes from 192.168.0.2: icmp_req=9 ttl=64 time=2.23 ms
64 bytes from 192.168.0.2: icmp_req=10 ttl=64 time=5.80 ms
64 bytes from 192.168.0.2: icmp_req=11 ttl=64 time=1.83 ms
64 bytes from 192.168.0.2: icmp_req=12 ttl=64 time=35.1 ms

--- 192.168.0.2 ping statistics ---
12 packets transmitted, 12 received, 0% packet loss, time 11016ms

And this time it was perfect!!

Third time:

64 bytes from 192.168.0.2: icmp_req=1 ttl=64 time=9.88 ms
64 bytes from 192.168.0.2: icmp_req=2 ttl=64 time=5.27 ms
64 bytes from 192.168.0.2: icmp_req=3 ttl=64 time=18.9 ms
64 bytes from 192.168.0.2: icmp_req=4 ttl=64 time=0.563 ms
64 bytes from 192.168.0.2: icmp_req=5 ttl=64 time=9.98 ms
64 bytes from 192.168.0.2: icmp_req=9 ttl=64 time=9.71 ms
64 bytes from 192.168.0.2: icmp_req=10 ttl=64 time=20.1 ms
64 bytes from 192.168.0.2: icmp_req=11 ttl=64 time=39.0 ms
64 bytes from 192.168.0.2: icmp_req=12 ttl=64 time=98.7 ms
64 bytes from 192.168.0.2: icmp_req=14 ttl=64 time=137 ms
64 bytes from 192.168.0.2: icmp_req=16 ttl=64 time=197 ms

35 packets transmitted, 21 received, 40% packet loss, time 34115ms
rtt min/avg/max/mdev = 0.563/36.300/197.480/54.568 ms

Now, without any modification:

# ping 192.168.0.2
PING 192.168.0.2 (192.168.0.2) 56(84) bytes of data.
