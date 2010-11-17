From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 17 Nov 2010 21:23:25 +0100
Subject: [RFC][PATCH] b43: rfkill: use HI enabled bit for all devices
In-Reply-To: <1290025040.2513.69.camel@maggie>
References: <1290023808-26672-1-git-send-email-zajec5@gmail.com>
	<1290025040.2513.69.camel@maggie>
Message-ID: <AANLkTi=ddd9gTmfWgXgn-8SnTh_br_dTnagOFO0xztvh@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 17 listopada 2010 21:17 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> On Wed, 2010-11-17 at 20:56 +0100, Rafa? Mi?ecki wrote:
>> Devices which use LO enabled bit are covered by b43legacy
>>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>> Is this alright to use inline for this? Is my WARN_ON OK?
>> ---
>> ?drivers/net/wireless/b43/main.c ? | ? ?2 ++
>> ?drivers/net/wireless/b43/rfkill.c | ? 21 +++------------------
>> ?drivers/net/wireless/b43/rfkill.h | ? ?4 ++--
>> ?3 files changed, 7 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
>> index fa48803..9b71bb1 100644
>> --- a/drivers/net/wireless/b43/main.c
>> +++ b/drivers/net/wireless/b43/main.c
>> @@ -4527,6 +4527,8 @@ static int b43_op_start(struct ieee80211_hw *hw)
>> ? ? ? ? ? ? ? }
>> ? ? ? }
>>
>> + ? ? /* we don't expect older devices which need other RFKILL check */
>> + ? ? B43_WARN_ON(dev->dev->id.revision < 3);
>
> Do we really need that check? The driver is full of assumptions that
> the core revision is >=5.

Thanks for info, wasn't aware of that.


> I also think this assertion is misplaced in the interface start
> handler. If you want it, do it in the rfkill check function. (for
> nondebug build it's a no-op)
>
>> ? ? ? /* XXX: only do if device doesn't support rfkill irq */
>> ? ? ? wiphy_rfkill_start_polling(hw->wiphy);
>>
>> diff --git a/drivers/net/wireless/b43/rfkill.c b/drivers/net/wireless/b43/rfkill.c
>> index 78016ae..012ed2f 100644
>> --- a/drivers/net/wireless/b43/rfkill.c
>> +++ b/drivers/net/wireless/b43/rfkill.c
>> @@ -26,25 +26,10 @@
>>
>>
>> ?/* Returns TRUE, if the radio is enabled in hardware. */
>> -bool b43_is_hw_radio_enabled(struct b43_wldev *dev)
>> +inline bool b43_is_hw_radio_enabled(struct b43_wldev *dev)
>
> inline doesn't make sense here.

Err, tip for compiler for optimization? To avoid some JUMPs in generated ASM?


>> {
>> - ? ? if (dev->phy.rev >= 3 || dev->phy.type == B43_PHYTYPE_LP) {
>> - ? ? ? ? ? ? if (!(b43_read32(dev, B43_MMIO_RADIO_HWENABLED_HI)
>> - ? ? ? ? ? ? ? ? ? & B43_MMIO_RADIO_HWENABLED_HI_MASK))
>> - ? ? ? ? ? ? ? ? ? ? return 1;
>> - ? ? } else {
>> - ? ? ? ? ? ? /* To prevent CPU fault on PPC, do not read a register
>> - ? ? ? ? ? ? ?* unless the interface is started; however, on resume
>> - ? ? ? ? ? ? ?* for hibernation, this routine is entered early. When
>> - ? ? ? ? ? ? ?* that happens, unconditionally return TRUE.
>> - ? ? ? ? ? ? ?*/
>> - ? ? ? ? ? ? if (b43_status(dev) < B43_STAT_STARTED)
>> - ? ? ? ? ? ? ? ? ? ? return 1;
>> - ? ? ? ? ? ? if (b43_read16(dev, B43_MMIO_RADIO_HWENABLED_LO)
>> - ? ? ? ? ? ? ? ? & B43_MMIO_RADIO_HWENABLED_LO_MASK)
>> - ? ? ? ? ? ? ? ? ? ? return 1;
>> - ? ? }
>> - ? ? return 0;
>> + ? ? return !(b43_read32(dev, B43_MMIO_RADIO_HWENABLED_HI)
>> + ? ? ? ? ? ? & B43_MMIO_RADIO_HWENABLED_HI_MASK);
>> ?}
>
> Getting rid of that old crap is a good idea. So ACK on this part.
>
>> /* The poll callback for the hardware button. */
>> diff --git a/drivers/net/wireless/b43/rfkill.h b/drivers/net/wireless/b43/rfkill.h
>> index f046c3c..7aa8a5a 100644
>> --- a/drivers/net/wireless/b43/rfkill.h
>> +++ b/drivers/net/wireless/b43/rfkill.h
>> @@ -4,8 +4,8 @@
>> ?struct ieee80211_hw;
>> ?struct b43_wldev;
>>
>> -void b43_rfkill_poll(struct ieee80211_hw *hw);
>> +inline bool b43_is_hw_radio_enabled(struct b43_wldev *dev);
>>
>> -bool b43_is_hw_radio_enabled(struct b43_wldev *dev);
>> +void b43_rfkill_poll(struct ieee80211_hw *hw);
>>
>> ?#endif /* B43_RFKILL_H_ */
>
> doesn't make sense.

"inline" was added to match rfkill.c change. Order was changed to
match rfkill.c order, but I guess we can live without that.

-- 
Rafa?
