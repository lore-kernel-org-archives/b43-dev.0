From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 11 Jun 2011 19:36:44 +0200
Subject: Faulty 14e4:4315 (BCM4312)?
In-Reply-To: <BANLkTi=gG1+=mPmTmxNA6SVMdfbm8Nh7WQ@mail.gmail.com>
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
	<BANLkTi=gG1+=mPmTmxNA6SVMdfbm8Nh7WQ@mail.gmail.com>
Message-ID: <BANLkTi=S0b8c3JSW5fb1GdMR2OC8XRYN0w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 11 czerwca 2011 18:20 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> To make it even more ugly, PIO mode is almost not working for me. I
> can connect to the network (with antenna in the correct direction),
> but getting IP (dhcp) causes loosing authentication. Every time. After
> loosing connection taking interface down & up is required.
>
> I'm leaving this for now. Hope noone will ever meet card like mine.

Not sure if I'll shout up.

As I could not benchmark PIO on BCM4312 (14e4:4315), I decided to
switch to BCM4311 (14e4:4312). Guess what. The same PIO issue!

qos=0 workarounds pio issue on BCM4311 (14e4:4312). Not sure about BCM4312 yet.

-- 
Rafa?
