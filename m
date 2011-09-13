From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 13 Sep 2011 22:18:30 +0200
Subject: Should my BCM4321 be working yet?
In-Reply-To: <20110913074045.28675.qmail@science.horizon.com>
References: <CACna6rxC+bVhj_wq42aFMkZLEc+8Xq3EWGr8JAb2W80mas_vpg@mail.gmail.com>
	<20110913074045.28675.qmail@science.horizon.com>
Message-ID: <CACna6rxVtVGvEVLWPW+1rXcmU3ar_-HuvWdddv_eg339=zrmSw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/9/13 George Spelvin <linux@horizon.com>:
> Now, if I use the "enable wireless" hotkey, the bluetooth LED lights up.
> After that, "ifconfig wlan0 up" lights the wifi LED, and "ifconfig wlan0"
> *does* report UP.

Is there anything interesting in dmesg after that? Please, do:
1) load b43
2) use "enable wireless" hotkey
3) ip link set wlan0 up
4) iw dev wlan0 scan
5) dmesg


>> But "ifconfig -a" soon reveals a previously absent =C2=A0wlan0 interface =
> with
>> a 00:19:75 MAC address (which is NOT a Broadcom address), and I can find
>> an ssb_sprom in /sys (which ssb_sprom -P does reasonably sensible things
>> with).
>
>> MAC can not be so short. Please provide full output of "ip a".
>
> I truncated it, knowing that the first 24 bits are the IEEE organization
> ID. ?The full output is like
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 16436 qdisc noqueue state UNKNOWN
> ? ?link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
> ? ?inet 127.0.0.1/8 scope host lo
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP qlen 1000
> ? ?link/ether 00:15:c5:2b:8f:16 brd ff:ff:ff:ff:ff:ff
> ? ?inet 192.168.0.100/24 brd 192.168.0.255 scope global eth0
> 3: wlan0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN qlen 1000
> ? ?link/ether 00:19:7d:27:42:2a brd ff:ff:ff:ff:ff:ff
>
> (Oops, I typoed the address. ?00:19:7d isn't Broadcom, either.)
>
> Thank you very much for your response!

Have you tried loading wl driver? Did it report another MAC? Or have
you tried to look for MAC printed on the wireless card?

-- 
Rafa?
