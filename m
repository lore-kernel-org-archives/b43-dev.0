From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 8 Aug 2010 13:15:54 +0200
Subject: 14e4:4315 help install
In-Reply-To: <AANLkTimggEXJP=xod_6L3VvqCZgwKySwKsY3E3SPt-xx@mail.gmail.com>
References: <AANLkTinnsu-OdVcwMSj3YoynZj6_7umCo=a82Z48mDZw@mail.gmail.com>
	<AANLkTin_ck8wFgWj5pyptYKTmMO-uu80dibbS_3NRAav@mail.gmail.com>
	<AANLkTikB0k_6+rPb37M75wbNqE0TV9d_zu6DVbN5Tyjj@mail.gmail.com>
	<AANLkTi=sOrwZqX4D+i4TWH_YNKoL6z56Ei8xVBNJWub2@mail.gmail.com>
	<AANLkTikrn2qXPbzV=PXfsiBW5XmbpqQhhg8wrLhwgN93@mail.gmail.com>
	<AANLkTi=ep953r4qxt7NWTwVbuA=aqH5iaL4vhPhWNVG6@mail.gmail.com>
	<AANLkTinWgUuzFZfp+UgioxG6r0KrhjPyJXxxVmmOn+Do@mail.gmail.com>
	<AANLkTin0+yt+vr6+YgwVqG5CV1ZCnsDYTUJRTYrL2PH-@mail.gmail.com>
	<AANLkTikYZAMW4eT5mnMpPemW=M79TYf11qratTdB1oZ3@mail.gmail.com>
	<AANLkTimiX1_dO-10M3=QTQZo9e9PRbSL-97xe2y6ctJt@mail.gmail.com>
	<AANLkTincTOFVTkk53nX1hdrjP2R21Jk_JG8Rmda8RX2p@mail.gmail.com>
	<AANLkTi=vDaSMgc=xORaH92iwva4qKattGvMQqpR5XJxB@mail.gmail.com>
	<AANLkTimggEXJP=xod_6L3VvqCZgwKySwKsY3E3SPt-xx@mail.gmail.com>
Message-ID: <AANLkTikKuAtNbA8qBqZ=fHH0D_wAeLpu8xh3c6F04w+y@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 8 sierpnia 2010 12:59 u?ytkownik mic cat <micacatt@gmail.com> napisa?:
> For Dma what is "PIO" (This device does not support DMA on your
> system. Please use PIO instead)

You can use b43's parameter pio. For example like this:
# rmmod b43
# modprobe b43 pio=1

Or booting with "b43.pio=1" (you can white this in GRUB).

This will increase CPU usage, but should avoid DMA problems. However,
as I mentioned, this this is not needed with 2.6.35 anymore.


> For kernel i am try for upgrade "2.6.35"

Thanks! Please share results! We're very interested in information if
using 2.6.35 helps with DMA errors.


> So iwlist scan : wlan0 (myBcm) No Scann Result.

No idea about this issue :|


-- 
Rafa?
