From: David Laight <David.Laight@ACULAB.COM>
Date: Thu, 8 Oct 2020 15:59:28 +0000
Subject: [PATCH net 000/117] net: avoid to remove module when its debugfs
 is being used
In-Reply-To: <20201008155048.17679-1-ap420073@gmail.com>
References: <20201008155048.17679-1-ap420073@gmail.com>
Message-ID: <1cbb69d83188424e99b2d2482848ae64@AcuMS.aculab.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: 'Taehee Yoo' <ap420073@gmail.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wil6210@qti.qualcomm.com" <wil6210@qti.qualcomm.com>, "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>

From: Taehee Yoo
> Sent: 08 October 2020 16:49
> 
> When debugfs file is opened, its module should not be removed until
> it's closed.
> Because debugfs internally uses the module's data.
> So, it could access freed memory.
> 
> In order to avoid panic, it just sets .owner to THIS_MODULE.
> So that all modules will be held when its debugfs file is opened.

Can't you fix it in common code?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
