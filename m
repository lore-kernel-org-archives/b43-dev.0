From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 5 Jun 2011 15:10:38 +0200
Subject: =?UTF-8?Q?Re=3A_b43_and_late_2008_model_Apple_MacBook_=E2=80=94_Look_m?=
	=?UTF-8?Q?a=2C_no_wires=21_=3A=2D=29?=
In-Reply-To: <4DEADFBC.3000100@gentoo.org>
References: <4DEAC8FE.5010502@gentoo.org> <4DEACA37.4080905@gentoo.org>
	<4DEACFD9.6020004@lwfinger.net> <4DEAD567.2050608@gentoo.org>
	<4DEADFBC.3000100@gentoo.org>
Message-ID: <BANLkTikMNfWf+yATN8hutX_RySseO2CgHw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/6/5 Stuart Longland <redhatter@gentoo.org>:
>
> On 06/05/11 11:01, Stuart Longland wrote:
>> On 06/05/11 10:37, Larry Finger wrote:
>>> Coverage of the "n" devices with b43 did not become very good until
>>> 2.6.39 and those changes were too invasive to be backported to earlier
>>> kernels. Using the git tree from wireless-testing should work.
>>
>> Ahh okay, so an update to the kernel will be worthwhile...
>> I shall do a pull of the relevant git tree and see how it goes.
>
> It seems to be actually working now...
>
>> stuartl at vk4msl-mb ~ $ /sbin/ifconfig wlan0 ; /sbin/iwconfig wlan0
>> wlan0 ? ? Link encap:Ethernet ?HWaddr 00:23:6c:83:b6:b7
>> ? ? ? ? ? inet addr:192.168.64.45 ?Bcast:192.168.64.255 ?Mask:255.255.255.0
>> ? ? ? ? ? inet6 addr: 2001:388:d000:1100:223:6cff:fe83:b6b7/64 Scope:Global
>> ? ? ? ? ? inet6 addr: fe80::223:6cff:fe83:b6b7/64 Scope:Link
>> ? ? ? ? ? UP BROADCAST RUNNING MULTICAST ?MTU:1500 ?Metric:1
>> ? ? ? ? ? RX packets:561 errors:0 dropped:0 overruns:0 frame:0
>> ? ? ? ? ? TX packets:687 errors:0 dropped:0 overruns:0 carrier:0
>> ? ? ? ? ? collisions:0 txqueuelen:1000
>> ? ? ? ? ? RX bytes:281615 (275.0 KiB) ?TX bytes:99282 (96.9 KiB)
>>
>> wlan0 ? ? IEEE 802.11bg ?ESSID:"longlandclan"
>> ? ? ? ? ? Mode:Managed ?Frequency:2.437 GHz ?Access Point: 00:60:64:28:74:1C
>> ? ? ? ? ? Bit Rate=54 Mb/s ? Tx-Power=20 dBm
>> ? ? ? ? ? Retry ?long limit:7 ? RTS thr:off ? Fragment thr:off
>> ? ? ? ? ? Power Management:off
>> ? ? ? ? ? Link Quality=70/70 ?Signal level=0 dBm
>> ? ? ? ? ? Rx invalid nwid:0 ?Rx invalid crypt:0 ?Rx invalid frag:0
>> ? ? ? ? ? Tx excessive retries:0 ?Invalid misc:60 ? Missed beacon:0
>
> Kernel is:
>> commit 3f83d64e768605b9f7a8d5d06c3ae04c94209aa1
>> Merge: e1ec677 805a3b8
>> Author: John W. Linville <linville@tuxdriver.com>
>> Date: ? Fri Jun 3 16:00:09 2011 -0400
>>
>> ? ? Merge ssh://master.kernel.org/pub/scm/linux/kernel/git/linville/wireless-next-2.6
>
>> 2011-06-05 11:44:08 (3.03 MB/s) - `/home/portage/distfiles/linux-2.6.36.tar.bz2' saved [70277083/70277083]
> About what I'd expect for a 54Mbps link.
>
> Thanks for the assistance. ?Hopefully this thread helps the next person
> looking for wifi on similar machines.

Status is quite nice described on our wiki page [0]. It really says
support for your chipset is experimental only in 2.6.38 :)

[0] http://wireless.kernel.org/en/users/Drivers/b43

-- 
Rafa?
