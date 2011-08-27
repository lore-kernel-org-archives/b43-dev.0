From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 27 Aug 2011 22:42:26 +0200
Subject: [Bug]No probe response from after 500ms, disconnecting.
In-Reply-To: <CACna6rxTZg_uVTJdW8gNriezoWo9pRBm19Z1evvKASH9bg1KEg@mail.gmail.com>
References: <1301780916.5200.31.camel@acer.lan>
	<CACna6rxTZg_uVTJdW8gNriezoWo9pRBm19Z1evvKASH9bg1KEg@mail.gmail.com>
Message-ID: <CACna6rzug+2yUweLrQhPZqjw0mPxmfQiJ3+ZiootUYy0mMBu8Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 26 sierpnia 2011 21:15 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> 2011/4/2 Szymon Zygmunt <szymon.zygmunt@gmail.com>:
>> 1. A description of the problem at hand:
>> Last time I changed my wireless card and I have problems with wireless
>> link when I copy large files over lan. Link is broken after some part of
>> file (eg. 50 - 200 MB) and I have to reload my b43 driver (modprobe -r
>> b43, modprobe b43). After that connection work again for a while and
>> situation is repeated.
>>
>> 2. When it happens:
>> Always when I copy large file from my ftp (sets on openwrt box) to my PC
>> over wifi.
>>
>> 3. How to reproduce:
>> Start to operation with high transmission rates (eg. copy larg file)
>
> Szymon, this is a damn late reply and I think I understand if you've
> already switched to some other card.
>
> In case you're still using b43 & BCM4318: did you manage to fix this
> problem yourself?

I've tested my BCM4318 which is
06:05.0 0280: 14e4:4318 (rev 02)
        Subsystem: 1468:0311
and it still works fine after using iperf for 20 minutes (about 3.2 GB
transfered to my notebook with 14e4:4318). Average speed was 22.5 Mb/s
and I was quite close to the AP.

I'll try:
1) Switching to the 478.104 firmware
2) Using ftp instead of iperf
3) Moving to some other room, to increase distance

-- 
Rafa?
