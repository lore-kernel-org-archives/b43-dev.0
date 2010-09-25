From: ikorot at earthlink.net <ikorot@earthlink.net>
Date: Fri, 24 Sep 2010 17:17:55 -0700 (GMT-07:00)
Subject: Is this card supported?
Message-ID: <32462193.1285373876405.JavaMail.root@elwamui-royal.atl.sa.earthlink.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Rafal,


-----Original Message-----
>From: Rafa? Mi?ecki <zajec5@gmail.com>
>Sent: Sep 24, 2010 2:27 PM
>To: ikorot at earthlink.net
>Cc: b43-dev at lists.infradead.org
>Subject: Re: Is this card supported?
>
>2010/9/24  <ikorot@earthlink.net>:
>> Hi, ALL,
>> This is an information about the hardware:
>>
>> IgorsGentooWork OE # uname -a
>> Linux IgorsGentooWork 2.6.32-gentoo-r7 #4 Mon Jul 5 13:42:27 PDT 2010 i686 Intel(R) Celeron(R) M processor 1.50GHz GenuineIntel GNU/Linux
>>
>> IgorsGentooWork OE # lspci -vnn | grep 14e4
>> 02:00.0 Ethernet controller [0200]: Broadcom Corporation BCM4401-B0 100Base-TX [14e4:170c] (rev 02)
>> 02:03.0 Network controller [0280]: Broadcom Corporation BCM4318 [AirForce One 54g] 802.11g Wireless LAN Controller [14e4:4318] (rev 02)
>>
>> Is this device supported?
>
>http://wireless.kernel.org/en/users/Drivers/b43

Can you then explain this:

IgorsGentooWork OE # ifconfig wlan0 up
IgorsGentooWork OE # iwconfig wlan0 essid "GoogleWiFi"
Cannot read /proc/net/wireless
Error for wireless request "Set ESSID" (8B1A) :
    SET failed on device wlan0 ; Invalid argument.
IgorsGentooWork OE # man iwconfig
IgorsGentooWork OE # iwconfig wlan0 scan
iwconfig: unknown command "scan"
IgorsGentooWork OE # ifconfig wlan0 scan
scan: Unknown host
ifconfig: `--help' gives usage information.
IgorsGentooWork OE # man ifconfig
IgorsGentooWork OE # ifconfig -a
eth0      Link encap:Ethernet  HWaddr 00:14:22:aa:cc:69  
          inet addr:192.168.2.141  Bcast:192.168.2.255  Mask:255.255.255.0
          inet6 addr: fe80::214:22ff:feaa:cc69/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:2403559 errors:0 dropped:0 overruns:0 frame:0
          TX packets:2084228 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:2352559614 (2.1 GiB)  TX bytes:766927573 (731.3 MiB)
          Interrupt:9 

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:28 errors:0 dropped:0 overruns:0 frame:0
          TX packets:28 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:2592 (2.5 KiB)  TX bytes:2592 (2.5 KiB)

sit0      Link encap:IPv6-in-IPv4  
          NOARP  MTU:1480  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

wlan0     Link encap:Ethernet  HWaddr 00:16:ce:1d:9f:32  
          UP BROADCAST MULTICAST  MTU:1500  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

dmesg says:

IgorsGentooWork OE # dmesg | tail
[4995866.378984] b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
[4995866.379706] PM: Adding info for No Bus:ssb0:0
[4995866.407533] PM: Removing info for No Bus:ssb0:0
[4995866.534044] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
[4995866.566088] b43-phy0 debug: Chip initialized
[4995866.566283] b43-phy0 debug: 32-bit DMA initialized
[4995866.566357] b43-phy0 debug: QoS enabled
[4995866.577067] b43-phy0 debug: Wireless interface started
[4995866.577076] b43-phy0 debug: Adding Interface type 2
[4995866.577633] ADDRCONF(NETDEV_UP): wlan0: link is not ready

Thank you.

P.S.: Just so that nobody will be bothered I will add the ML to
whitelist.. ;-)

>
>-- 
>Rafa?
