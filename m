From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 8 Aug 2010 12:02:44 +0200
Subject: 14e4:4315 help install
In-Reply-To: <AANLkTin0+yt+vr6+YgwVqG5CV1ZCnsDYTUJRTYrL2PH-@mail.gmail.com>
References: <AANLkTinnsu-OdVcwMSj3YoynZj6_7umCo=a82Z48mDZw@mail.gmail.com>
	<AANLkTin_ck8wFgWj5pyptYKTmMO-uu80dibbS_3NRAav@mail.gmail.com>
	<AANLkTikB0k_6+rPb37M75wbNqE0TV9d_zu6DVbN5Tyjj@mail.gmail.com>
	<AANLkTi=sOrwZqX4D+i4TWH_YNKoL6z56Ei8xVBNJWub2@mail.gmail.com>
	<AANLkTikrn2qXPbzV=PXfsiBW5XmbpqQhhg8wrLhwgN93@mail.gmail.com>
	<AANLkTi=ep953r4qxt7NWTwVbuA=aqH5iaL4vhPhWNVG6@mail.gmail.com>
	<AANLkTinWgUuzFZfp+UgioxG6r0KrhjPyJXxxVmmOn+Do@mail.gmail.com>
	<AANLkTin0+yt+vr6+YgwVqG5CV1ZCnsDYTUJRTYrL2PH-@mail.gmail.com>
Message-ID: <AANLkTikYZAMW4eT5mnMpPemW=M79TYf11qratTdB1oZ3@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/8/8 mic cat <micacatt@gmail.com>:
> For my problem (14e4:4315),I'm download new "BT4" "R1" (2.6.34)
>
> And My Card "Work". (inteface:wlan0 ? ? chipset:broadcom ? ? driver:B43-{phy0}
> I am testing injection is "work". Very good card, but stop "work" sometimes.

Does it stop working only for injection? Or does it also happen in
normal (managed) mode?

What do you see in "dmesg" after card stops working?


> P.S
> I have card ?Pci :14e4:234b (appleAirport) is very good card ?with
> good reception.
> but i no say for linux. Or are the work if you like it for driver or firmwear.?

I guess you mean 14e4:432b, right? It's not supported N-PHY card.
Larry made great work writing specs but we lack developers to create
driver.


-- 
Rafa?
