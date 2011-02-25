From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 25 Feb 2011 12:38:27 +0100
Subject: [PATCH] b43: fill PHY ctl word1 in TX header for N-PHY
In-Reply-To: <1298633651-5641-1-git-send-email-zajec5@gmail.com>
References: <1298633651-5641-1-git-send-email-zajec5@gmail.com>
Message-ID: <AANLkTikC12gTdFpkC4VFkw-Q5w4Zg3AsHbpNqnu-DQda@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev <b43-dev@lists.infradead.org>

W dniu 25 lutego 2011 12:34 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> + ? ? ? if (phy->type == B43_PHYTYPE_LP)
> + ? ? ? ? ? ? ? bw = B43_TXH_PHY1_BW_20;

(...)

> + ? ? ? if (phy->type == B43_PHYTYPE_N) {
> + ? ? ? ? ? ? ? txhdr->phy_ctl1 =
> + ? ? ? ? ? ? ? ? ? ? ? cpu_to_le16(b43_generate_tx_phy_ctl1(dev, rate));
> + ? ? ? ? ? ? ? txhdr->phy_ctl1_fb =
> + ? ? ? ? ? ? ? ? ? ? ? cpu_to_le16(b43_generate_tx_phy_ctl1(dev, rate_fb));
> + ? ? ? }

Just to make it clear: this TX header is expected to be filled on
both: LP-PHY and N-PHY - that's why you can see some LP specific code
in filling function. It just was not tested yet on LP-PHY, that's why
it is still disabled.

-- 
Rafa?
