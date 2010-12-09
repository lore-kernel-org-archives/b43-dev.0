From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 9 Dec 2010 15:11:02 +0100
Subject: [PATCH 0/4] Make N-PHY support experimental
In-Reply-To: <4CFEFD8D.1080808@lwfinger.net>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
	<AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
	<4CFEFD8D.1080808@lwfinger.net>
Message-ID: <AANLkTi=mDh9wkp+u3ebuXqF8Q-rTW_YCtee3CmCBdWTh@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2010/12/8 Larry Finger <Larry.Finger@lwfinger.net>:
> I have a bit more info regarding the problem with WPA2 encryption on an N PHY.
> As shown in the NetworkManager log attached, Authentication is successful, but
> DHCP fails. Either the transmit data is improperly encrypted, or the decryption
> fails. I will use wireshark to sort that out. Note: Using software encryption
> makes no difference.

Hm, I expected software encryption to work, that's weird. I don't
really have nice access to my development machine, so some tests would
be great.

-- 
Rafa?
