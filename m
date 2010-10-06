From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 6 Oct 2010 18:07:44 +0200
Subject: [PATCH 3/3] b43: N-PHY: don't duplicate setting channel in shared
	memory
In-Reply-To: <1286379040.11721.1.camel@maggie>
References: <1286344208-32479-1-git-send-email-zajec5@gmail.com>
	<1286344208-32479-4-git-send-email-zajec5@gmail.com>
	<1286379040.11721.1.camel@maggie>
Message-ID: <AANLkTinsWTCmTjYZ=SgY0-ArTOVgG50V0r9USHnuvQfb@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 6 pa?dziernika 2010 17:30 u?ytkownik Michael B?sch
<mb@bu3sch.de> napisa?:
> On Wed, 2010-10-06 at 07:50 +0200, Rafa? Mi?ecki wrote:
>> It's already set in PHY common code.
>>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>> ?drivers/net/wireless/b43/phy_n.c | ? 13 +++----------
>> ?1 files changed, 3 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/net/wireless/b43/phy_n.c b/drivers/net/wireless/b43/phy_n.c
>> index 47c58cd..bb8cb36 100644
>> --- a/drivers/net/wireless/b43/phy_n.c
>> +++ b/drivers/net/wireless/b43/phy_n.c
>> @@ -73,8 +73,6 @@ static void b43_nphy_rf_control_override(struct b43_wldev *dev, u16 field,
>> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? u16 value, u8 core, bool off);
>> ?static void b43_nphy_rf_control_intc_override(struct b43_wldev *dev, u8 field,
>> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? u16 value, u8 core);
>> -static int b43_nphy_op_switch_channel(struct b43_wldev *dev,
>> - ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? unsigned int new_channel);
>>
>> ?static inline bool b43_empty_chanspec(struct b43_chanspec *chanspec)
>> ?{
>> @@ -224,7 +222,7 @@ static void b43_radio_init2055_post(struct b43_wldev *dev)
>> ? ? ? if (i)
>> ? ? ? ? ? ? ? b43err(dev->wl, "radio post init timeout\n");
>> ? ? ? b43_radio_mask(dev, B2055_CAL_LPOCTL, 0xFF7F);
>> - ? ? b43_nphy_op_switch_channel(dev, dev->phy.channel);
>> + ? ? b43_switch_channel(dev, dev->phy.channel);
>> ? ? ? b43_radio_write(dev, B2055_C1_RX_BB_LPF, 0x9);
>> ? ? ? b43_radio_write(dev, B2055_C2_RX_BB_LPF, 0x9);
>> ? ? ? b43_radio_write(dev, B2055_C1_RX_BB_MIDACHP, 0x83);
>> @@ -3352,12 +3350,7 @@ static void b43_nphy_chanspec_setup(struct b43_wldev *dev,
>>
>> ? ? ? b43_chantab_phy_upload(dev, e);
>>
>> - ? ? tmp = chanspec.channel;
>> - ? ? if (chanspec.b_freq == 1)
>> - ? ? ? ? ? ? tmp |= 0x0100;
>> - ? ? if (chanspec.b_width == 3)
>> - ? ? ? ? ? ? tmp |= 0x0200;
>> - ? ? b43_shm_write16(dev, B43_SHM_SHARED, 0xA0, tmp);
>> + ? ? /* Don't follow specs, B43_SHM_SH_CHAN is set by b43_switch_channel */
>
> Looks great. I dunno if a comment is really needed and whether it is
> correct, though. We _do_ follow the specs. We just do it elsewhere.

I got "Don't strictly follow specs here" earlier, but made it shorter
to match 80 chars ;) Maybe it wasn't too good idea. Should left it
longer or don't put at all.

John: could you drop this comment line when applying? Or would you
like me to resend this fixed?

-- 
Rafa?
