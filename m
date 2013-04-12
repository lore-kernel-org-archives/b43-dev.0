From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Fri, 12 Apr 2013 14:34:46 +0200
Subject: [PATCH] b43: use bcma_pmu_spuravoid_pllupdate()
In-Reply-To: <CACna6rxteO-uMCXNO0xh8t3Pkry3NnDkPJGcYuwRSSYEZue8=Q@mail.gmail.com>
References: <1365683953-3430-1-git-send-email-hauke@hauke-m.de>
 <CACna6rxteO-uMCXNO0xh8t3Pkry3NnDkPJGcYuwRSSYEZue8=Q@mail.gmail.com>
Message-ID: <5167FF66.7050003@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 04/12/2013 08:26 AM, Rafa? Mi?ecki wrote:
> 2013/4/11 Hauke Mehrtens <hauke@hauke-m.de>:
>> Do not implement this in b43, but use bcma_pmu_spuravoid_pllupdate().
>>
>> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
>> ---
>>  drivers/net/wireless/b43/phy_n.c |   86 +++++++-------------------------------
>>  1 file changed, 14 insertions(+), 72 deletions(-)
>>
>> diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
>> index 7b557ad..05945da 100644
>> --- a/drivers/net/wireless/b43/phy_n.c
>> +++ b/drivers/net/wireless/b43/phy_n.c
>> @@ -5097,77 +5097,6 @@ static void b43_chantab_phy_upload(struct b43_wldev *dev,
>>         b43_phy_write(dev, B43_NPHY_BW6, e->phy_bw6);
>>  }
>>
>> -/* http://bcm-v4.sipsolutions.net/802.11/PmuSpurAvoid */
>> -static void b43_nphy_pmu_spur_avoid(struct b43_wldev *dev, bool avoid)
>> -{
> 
> I think it may be better to keep b43_nphy_pmu_spur_avoid, as some
> chipsets may need additional workarounds (that AFAIR can't be handled
> in ssb/bcma). I mean workarounds related to the spurious avoidance
> ofc, so it would be a good idea to put them in separated function.
> 
Ok, I will send a new version of this patch.

Hauke
