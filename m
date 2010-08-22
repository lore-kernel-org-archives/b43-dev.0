From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 22 Aug 2010 22:00:07 +0200
Subject: [PATCH] b43: N-PHY: add missing phyrxchain setting and fix
	warning in RX core function
In-Reply-To: <AANLkTikP5hQKMyJD1-7+gaY8PykQ77At+Vpkqf=HRT0H@mail.gmail.com>
References: <1282506452-8159-1-git-send-email-zajec5@gmail.com>
	<AANLkTikP5hQKMyJD1-7+gaY8PykQ77At+Vpkqf=HRT0H@mail.gmail.com>
Message-ID: <AANLkTincNmC+Lbm_UbzARx6LiHinOnQMF=vb6PKfp66x@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 22 sierpnia 2010 21:49 u?ytkownik G?bor Stefanik
<netrolller.3d@gmail.com> napisa?:
> 2010/8/22 Rafa? Mi?ecki <zajec5@gmail.com>:
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>> G?bor: please kindly, watch out for such a missing calls/sets. We may lose a
>> lot of time looking for such a missing lines later.
>> ---
>> ?drivers/net/wireless/b43/phy_n.c | ? ?4 +++-
>> ?1 files changed, 3 insertions(+), 1 deletions(-)
>>
>> diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
>> index d116229..2466c0a 100644
>> --- a/drivers/net/wireless/b43/phy_n.c
>> +++ b/drivers/net/wireless/b43/phy_n.c
>> @@ -3092,6 +3092,8 @@ static void b43_nphy_set_rx_core_state(struct b43_wldev *dev, u8 mask)
>> ? ? ? ?struct b43_phy_n *nphy = phy->n;
>> ? ? ? ?u16 buf[16];
>>
>> + ? ? ? nphy->phyrxchain = mask;
>> +
>> ? ? ? ?if (0 /* FIXME clk */)
>> ? ? ? ? ? ? ? ?return;
>>
>> @@ -3103,7 +3105,7 @@ static void b43_nphy_set_rx_core_state(struct b43_wldev *dev, u8 mask)
>> ? ? ? ?b43_phy_maskset(dev, B43_NPHY_RFSEQCA, ~B43_NPHY_RFSEQCA_RXEN,
>> ? ? ? ? ? ? ? ? ? ? ? ?(mask & 0x3) << B43_NPHY_RFSEQCA_RXEN_SHIFT);
>>
>> - ? ? ? if (mask & 0x3 != 0x3) {
>> + ? ? ? if ((mask & 0x3) != 0x3) {
>
> Why is this needed? An & doesn't magically transform into an && under
> any circumstances...

I agree it's quite obvious, however I believe kernel compiles with
flags raising such a warnings by default:

drivers/net/wireless/b43/phy_n.c: In function ?b43_nphy_set_rx_core_state?:
drivers/net/wireless/b43/phy_n.c:3106:2: warning: suggest parentheses
around comparison in operand of ?&?

-- 
Rafa?
