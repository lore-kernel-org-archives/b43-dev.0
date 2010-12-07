From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Tue, 7 Dec 2010 23:57:31 +0100
Subject: [PATCH 0/4] Make N-PHY support experimental
In-Reply-To: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
Message-ID: <AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2010/12/7 Rafa? Mi?ecki <zajec5@gmail.com>:
> Finally, thanks for Larry and Francesco I got b43 working with BCM4328 chipset!

Do you mean BCM4321 (14e4:4328)? BCM4328 is AFAIK handled by brcmfmac.

>
> It's not perfectly stable yet, but scanning and associating to open network
> works! It has to be tested, improved, there are some PHY errors from time to
> time, but generally it works :)
>
> Rafa? Mi?ecki (4):
> ?b43: N-PHY: silence warnings
> ?b43: set TMS to work with current band width for N-PHY
> ?b43: fix split of N-PHY devices into supported and not (based on PHY
> ? ?rev)
> ?b43: rename config option for N-PHY, drop BROKEN
>
> ?drivers/net/wireless/b43/Kconfig ? ? ?| ? 13 +++++++------
> ?drivers/net/wireless/b43/Makefile ? ? | ? ?8 ++++----
> ?drivers/net/wireless/b43/main.c ? ? ? | ? 12 +++++++++---
> ?drivers/net/wireless/b43/phy_common.c | ? ?9 ++++++++-
> ?drivers/net/wireless/b43/phy_common.h | ? ?2 ++
> ?drivers/net/wireless/b43/phy_n.c ? ? ?| ? 16 ++++++----------
> ?6 files changed, 36 insertions(+), 24 deletions(-)
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
> the body of a message to majordomo at vger.kernel.org
> More majordomo info at ?http://vger.kernel.org/majordomo-info.html
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
