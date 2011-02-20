From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 20 Feb 2011 14:05:48 +0100
Subject: bcm4322 success!
In-Reply-To: <201102201340.52880.christoph.thielecke@gmx.de>
References: <201101032121.10454.christoph.thielecke@gmx.de>
	<AANLkTikto8PkO8aD3x3i_E6b_GXKsx9XYJ0X+WjkrBaN@mail.gmail.com>
	<201102201340.52880.christoph.thielecke@gmx.de>
Message-ID: <AANLkTimRE9iAcoODyWmhcp0rOUAwEG_vy3Ozs7c3VM7N@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 20 lutego 2011 13:40 u?ytkownik Christoph Thielecke
<christoph.thielecke@gmx.de> napisa?:
> Hello,
>
>> > I found your blog entry with the christmas gift:
>> > http://zajec.net/blog/view/2010-b43-and-nphy-rev-3-plus
>> > (Patch: http://marc.info/?l=linux-wireless&m=129296339527734&w=2)
>>
>> Your problems come from fact that you applied only final patch
>> enabling rev3+ support. That way you missed many important earlier
>> patches (for example the one enabling correct firmware loading).
>>
>> Please use sth like wireless-testing git tree to get all needed
>> patches. Using. compat-wireless may do the trick as well, however I
>> didn't try it.
> I can report success! I got it working at 2.6.38-rc5 by specifying options for
> b43 module.
> The specified options are:
> nohwcrypt=1 hwtkip=0 qos=0 pio=1 bad_frames_preempt=1
>
> I'm using it currently ~30 minutes and its working fine.

Thanks for your report! Do you need that all options at all? I think
hwtkip=0 is default one. Parameter qos should not matter. AFAIK pio is
needed for some BCM4321s only. I didn't check what bad_frames_preempt
does.


> wlan0 ? ? IEEE 802.11bg ?ESSID:"xxxxxxxxx"
> ? ? ? ? ?Mode:Managed ?Frequency:2.432 GHz ?Access Point: 00:14:BF:xx:xx:x
> ? ? ? ? ?Bit Rate=11 Mb/s ? Tx-Power=20 dBm
> ? ? ? ? ?Retry ?long limit:7 ? RTS thr:off ? Fragment thr:off
> ? ? ? ? ?Encryption key:off
> ? ? ? ? ?Power Management:off
> ? ? ? ? ?Link Quality=70/70 ?Signal level=0 dBm
> ? ? ? ? ?Rx invalid nwid:0 ?Rx invalid crypt:0 ?Rx invalid frag:0
> ? ? ? ? ?Tx excessive retries:4045 ?Invalid misc:1776 ? Missed beacon:0
>
> Its only 11Mbit (sure its a 54Mbit AP) but speed is constant ~ 500k/s.
>
> Btw: the driver from broadcom (wl) is NOT working but 4e3 does :-D

Hm, that's interesting. wl should work too.

As for speed, it's known issue. I still hope to get patches ready for
2.6.39 merge window.

-- 
Rafa?
