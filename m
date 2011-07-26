From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 26 Jul 2011 18:35:06 +0200
Subject: BCM4329 running ok in Android and fails in debian
In-Reply-To: <CAJ7S3qbDB+p75XRHwwCWxBPkAVqqFu8MxMMDmdbXwD3GEabtvw@mail.gmail.com>
References: <BANLkTi=P_ZF38DXMMR=kbE7jL3JgBRj3JA@mail.gmail.com>
	<CAJ7S3qbDB+p75XRHwwCWxBPkAVqqFu8MxMMDmdbXwD3GEabtvw@mail.gmail.com>
Message-ID: <CACna6rxqA3Wi-C0rT4gNnG6NWRtyddShCeOnK_LsbH0+_Bc1XQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/7/26 Hamilton Vera <hamilton.listas@gmail.com>:
> Greetings masters
>
> Actually we are working on an Android tablet (ARM iMX51 ) running
> kernel 2.6.35.3 and froyo. BCM4329 works just fine in Android.
>
> I am trying to port a Debian ?to this board ?and for some unknown
> reason the same BCM4329 does not work properly in Debian.
>
> I am using the same module bcm4329.ko and firmware that used to work in Android.
>
> In Debian I am able to connect to the AP but when I start more than
> one download/upload process the wifi hangs. ?Using a USB-Wifi dongle I
> have no problems at all (just to check if all libs and applications
> iwlist/wpa_supplicant are working fine ).
>
> If anyone had faced the same issue please let me know, I will start to
> debug the module right now.

Interesting, I wanted to play with BCM4329 and brcmfmac driver, but
Broadcom couldn't offer my any card "connectable" to standard PC.

AFAIK BCM4329 is usind SDIO interface.

Are you using Debian on your tablet? Or did you manage to put BCM4329
based card in "normal" PC?

-- 
Rafa?
