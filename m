From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 11 Jun 2011 18:20:00 +0200
Subject: Faulty 14e4:4315 (BCM4312)?
In-Reply-To: <BANLkTikhTh7Vf=SQSPyE9u6C3XNANYGMZQ@mail.gmail.com>
References: <BANLkTin+sAHnQ3afDJH0KMSZEeUqzRDmYw@mail.gmail.com>
	<BANLkTi=RQe_jGFPEOYumPxxxmWM4M+BLcQ@mail.gmail.com>
	<BANLkTikg5YSj=9Y+Bbv_8oJSG1OkG4GQBw@mail.gmail.com>
	<BANLkTi=tSGzu57+-MovR2q0y2qLGZ=AwFA@mail.gmail.com>
	<BANLkTincRK-fo+=dHoDQppsLwfMGmeiWJA@mail.gmail.com>
	<BANLkTi=ezOxXVswSNsRqL06A6rozMiaNzQ@mail.gmail.com>
	<4DF00043.1070304@lwfinger.net>
	<BANLkTi=VDh7mECOvnCJRfoEDt6WBw2ZtjA@mail.gmail.com>
	<4DF0062F.6030602@lwfinger.net>
	<BANLkTikXnXR2f1TUrJ7bhC9KdBe0XevN7Q@mail.gmail.com>
	<BANLkTikhTh7Vf=SQSPyE9u6C3XNANYGMZQ@mail.gmail.com>
Message-ID: <BANLkTi=gG1+=mPmTmxNA6SVMdfbm8Nh7WQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 11 czerwca 2011 09:53 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> In my parent's house I've the same router with the same OpenWRT
> version. Freq is also the same:
>
> (...)
>
> It connected just fine here. Weird.
>
> Maybe G?bor is right? Maybe we miss some calibration needed for the
> low distance with jamming?

I wanted to make some iperf tests so I connected keyboard and monitor.
I could not connect anymore after this. My reaction? What a Terrible
Failure.

After experimenting, it appeared to be about direction of the antenna.
Moving it by 90 degrees caused disconnection and reconnecting was not
possible. Moving it back worked like a charm... well - kind of -
because speed was still horrible. However at least connecting was
working fine.
So we may be lacking something important about calibration. But on the
other hand, wl or ndiswrapper are not much better. Speed achieved with
ndiswrapper can be 3Mb/s and 15Mb/s after 10 minutes (without touching
anything).

To make it even more ugly, PIO mode is almost not working for me. I
can connect to the network (with antenna in the correct direction),
but getting IP (dhcp) causes loosing authentication. Every time. After
loosing connection taking interface down & up is required.

I'm leaving this for now. Hope noone will ever meet card like mine.

-- 
Rafa?
