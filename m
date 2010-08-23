From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 24 Aug 2010 00:53:52 +0200
Subject: [PATCH 1/2] b43: N-PHY: band width setting with dumb clock
	control call
In-Reply-To: <AANLkTikMxL41zrR+KDF1Od_SKpbQhsQWHWiAAAULYx+F@mail.gmail.com>
References: <1282506589-8220-1-git-send-email-zajec5@gmail.com>
	<AANLkTi=TMhmTF+ztooAu=E1e1zdw-cBnaSZCKj=Utik0@mail.gmail.com>
	<AANLkTikMxL41zrR+KDF1Od_SKpbQhsQWHWiAAAULYx+F@mail.gmail.com>
Message-ID: <AANLkTim6d0C_Lx=zExfHy-hfeVdY=aXZCfi6c825TGt7@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>
Cc: Julian Calaby <julian.calaby@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>

W dniu 23 sierpnia 2010 01:30 u?ytkownik G?bor Stefanik
<netrolller.3d@gmail.com> napisa?:
>>> + ? ? ? if (!fast)
>>> + ? ? ? ? ? ? ? b43_clock_control(dev, 0);
>>> + ? ? ? dev->phy.b_width = b_width;
>>> + ? ? ? b43_read32(dev, B43_MMIO_MACCTL); /* flush writes */
>>> + ? ? ? /* TODO: Call PHY BMAC Reset */
>>> + ? ? ? dev->phy.ops->init(dev);
>
> I believe you need to do the whole PHY init, including the common
> part; not just the PHY type-specific init. Larry, is this true?

Do you mean b43_phy_init? Larry: I guess indeed some tip would be nice :)

-- 
Rafa?
