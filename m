From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 3 Sep 2011 21:40:36 +0200
Subject: [PATCH 3/3] b43: LCN-PHY: load TX gain table on init
In-Reply-To: <1315076463-11222-4-git-send-email-zajec5@gmail.com>
References: <1315076463-11222-1-git-send-email-zajec5@gmail.com>
	<1315076463-11222-4-git-send-email-zajec5@gmail.com>
Message-ID: <CACna6rzVXL4DWY_O+28iGz1OHGisSSnJwahiivNZS6REh6Ukdw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

W dniu 3 wrze?nia 2011 21:01 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> Values and ops were taken from MMIO dump of wl. struct was copied from
> brcmsmac.

To get table I've simply used vim and RegExp plus find&replace:

:%s/phy_write(0x0455) <- 0x....\n phy_read(0x0456) -> 0x....\n
phy_read(0x0457) -> 0x....\n\(.*\n.*\n.*\n\)/\1\r/
:%s/phy_write(0x0455) <- 0x....\nphy_write(0x0457) <-
0x\(....\)\nphy_write(0x0456) <- 0x\(....\)/0x\1\2/
:%s/0x\(..\)\(..\)\(..\)\(..\)\n0x\(.\)\(..\).....\n/\t{ 0x\4, 0x\3,
0x\2, 0x\5, 0x\6 },/

-- 
Rafa?
