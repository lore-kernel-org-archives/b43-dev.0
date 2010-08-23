From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 23 Aug 2010 18:17:07 -0500
Subject: [PATCH 1/2] b43: N-PHY: band width setting with dumb clock control
	call
In-Reply-To: <AANLkTim6d0C_Lx=zExfHy-hfeVdY=aXZCfi6c825TGt7@mail.gmail.com>
References: <1282506589-8220-1-git-send-email-zajec5@gmail.com>	<AANLkTi=TMhmTF+ztooAu=E1e1zdw-cBnaSZCKj=Utik0@mail.gmail.com>	<AANLkTikMxL41zrR+KDF1Od_SKpbQhsQWHWiAAAULYx+F@mail.gmail.com>
	<AANLkTim6d0C_Lx=zExfHy-hfeVdY=aXZCfi6c825TGt7@mail.gmail.com>
Message-ID: <4C730173.7080703@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: =?UTF-8?B?R8OhYm9yIFN0ZWZhbmlr?= <netrolller.3d@gmail.com>, Julian Calaby <julian.calaby@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 08/23/2010 05:53 PM, Rafa? Mi?ecki wrote:
>> I believe you need to do the whole PHY init, including the common
>> part; not just the PHY type-specific init. Larry, is this true?
> 
> Do you mean b43_phy_init? Larry: I guess indeed some tip would be nice :)

As it shows in http://bcm-v4.sipsolutions.net/802.11/PHY/Init, you need to do
the Common steps. #15 in that list is the specific routines for the PHY type in
the device.

The code in b43_phy_init() seems not to have all of these steps in it, but I'm
not sure where they are implemented.

Larry
