From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 19 Jun 2011 01:44:08 +0200
Subject: [PATCH 2/2] b43: HT-PHY: enable radio
In-Reply-To: <1308442692-4205-2-git-send-email-zajec5@gmail.com>
References: <1308442692-4205-1-git-send-email-zajec5@gmail.com>
	<1308442692-4205-2-git-send-email-zajec5@gmail.com>
Message-ID: <BANLkTi=17HKU7bF6yfvjYVW8F+es1V86qw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

W dniu 19 czerwca 2011 02:18 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> ?phy_read(0x0810) -> 0x0000
> phy_write(0x0810) <- 0x0000
> ?phy_read(0x0810) -> 0x0000
> phy_write(0x0810) <- 0x0001
> ?phy_read(0x0810) -> 0x0001
> phy_write(0x0810) <- 0x0000
> ?phy_read(0x0810) -> 0x0000
> phy_write(0x0810) <- 0x0002

After hacking MMIO to fool driver's reads:
 phy_read(0x0810) -> 0xffff
phy_write(0x0810) <- 0x0000
 phy_read(0x0810) -> 0xffff
phy_write(0x0810) <- 0x0001
 phy_read(0x0810) -> 0xffff
phy_write(0x0810) <- 0x0000
 phy_read(0x0810) -> 0xffff
phy_write(0x0810) <- 0x0002

So it clearly seems, driver is masking all the bits.

-- 
Rafa?
