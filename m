From: Felix Fietkau <nbd@openwrt.org>
Date: Sun, 22 Jun 2014 14:14:26 +0200
Subject: [PATCH 1/2] b43: remove leftover code from old devices support
In-Reply-To: <1403277721-25302-1-git-send-email-zajec5@gmail.com>
References: <1403277721-25302-1-git-send-email-zajec5@gmail.com>
Message-ID: <53A6C8A2.4000202@openwrt.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org

On 2014-06-20 17:22, Rafa? Mi?ecki wrote:
> Old devices (A-PHY or B-PHY) are supposed to be supported by b43legacy.
> We keep phy_a.c as it's needed for G-PHY which shares some design.
> 
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
Wouldn't it make sense to move the relevant pieces of phy_a.c to phy_g.c
and then remove phy_a.c entirely?

There are pieces in phy_a.c which can be removed entirely, e.g.
b43_phyops_a and things only used by this struct.

- Felix
