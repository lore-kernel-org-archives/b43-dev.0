From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 15 Aug 2011 10:14:31 +0200
Subject: [PATCH 2/3] b43: LCN-PHY: implement disabling radio
In-Reply-To: <CA+XFjio4gg5zO-gx+6v2rLGidziNY-rUachmdt02VwE9tX_SWQ@mail.gmail.com>
References: <1313357250-8292-1-git-send-email-zajec5@gmail.com>
	<1313357250-8292-2-git-send-email-zajec5@gmail.com>
	<CA+XFjio4gg5zO-gx+6v2rLGidziNY-rUachmdt02VwE9tX_SWQ@mail.gmail.com>
Message-ID: <CACna6ry7g3WCf=tuiOm8C7k81jo-NMOrkyBLsa++hTCJR9RtuA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 15 sierpnia 2011 01:24 u?ytkownik G?bor Stefanik
<netrolller.3d@gmail.com> napisa?:
> 2011/8/14 Rafa? Mi?ecki <zajec5@gmail.com>:
>> wl reads radio version, then disables it. That's how we found it in MMIO
>> dump:
>> ?radio_read(0x0000) -> 0x0031 <-- RADIO READ WITHOUT 0x200 SET!
>> ?radio_read(0x0001) -> 0x0064 <-- RADIO READ WITHOUT 0x200 SET!
>> ?radio_read(0x0002) -> 0x0020 <-- RADIO READ WITHOUT 0x200 SET!
>> ?read32 0xfaafc120 -> 0x04000400
>> ?phy_read(0x044d) -> 0x0000
>> phy_write(0x044d) <- 0x0000
>> ?phy_read(0x044c) -> 0x1fff
>> phy_write(0x044c) <- 0x1fff
>> ?phy_read(0x04b7) -> 0x0000
>> phy_write(0x04b7) <- 0x0000
>> ?phy_read(0x04b1) -> 0x0000
>> phy_write(0x04b1) <- 0x0000
>> ?phy_read(0x04b0) -> 0x7dff
>> phy_write(0x04b0) <- 0x7dff
>> ?phy_read(0x04fa) -> 0x0000
>> phy_write(0x04fa) <- 0x0000
>> ?phy_read(0x04f9) -> 0x007f
>> phy_write(0x04f9) <- 0x007f
>
> Doesn't brcm80211 support this PHY?

They do, but I still have some stuff RE-ed anyway. That stuff comes
from my tests of MMIO hacks I've done before using them on BCM4331.


> (Because then, reverse-engineering wl is pointless.)

(Unless that's fun for you ;) )

-- 
Rafa?
