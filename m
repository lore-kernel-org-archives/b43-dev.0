From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 28 Aug 2011 19:07:26 +0200
Subject: [PATCH 2/2] bcma: extract some basic info about board from SPROM
In-Reply-To: <4E5A74C9.1050909@lwfinger.net>
References: <1314550043-6220-1-git-send-email-zajec5@gmail.com>
	<1314550043-6220-2-git-send-email-zajec5@gmail.com>
	<4E5A74C9.1050909@lwfinger.net>
Message-ID: <CACna6rxVhv2Rf2NM9U-cc4cf5XQhSMpbGYmrVSW_KH-e2ETc0Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 28 sierpnia 2011 19:03 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 08/28/2011 11:47 AM, Rafa? Mi?ecki wrote:
>>
>> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>
>> ---
>> ?drivers/bcma/sprom.c | ? ?9 +++++++++
>> ?1 files changed, 9 insertions(+), 0 deletions(-)
>>
>> diff --git a/drivers/bcma/sprom.c b/drivers/bcma/sprom.c
>> index 166ed13..d729239 100644
>> --- a/drivers/bcma/sprom.c
>> +++ b/drivers/bcma/sprom.c
>> @@ -133,6 +133,15 @@ static void bcma_sprom_extract_r8(struct bcma_bus
>> *bus, const u16 *sprom)
>> ? ? ? ? ? ? ? ?v = sprom[SPOFF(SSB_SPROM8_IL0MAC) + i];
>> ? ? ? ? ? ? ? ?*(((__be16 *)bus->sprom.il0mac) + i) = cpu_to_be16(v);
>> ? ? ? ?}
>> +
>> + ? ? ? bus->sprom.board_rev = sprom[SPOFF(SSB_SPROM8_BOARDREV)];
>> +
>> + ? ? ? bus->sprom.boardflags_lo = sprom[SPOFF(SSB_SPROM8_BFLLO)];
>> + ? ? ? bus->sprom.boardflags_hi = sprom[SPOFF(SSB_SPROM8_BFLHI)];
>> + ? ? ? bus->sprom.boardflags2_lo = sprom[SPOFF(SSB_SPROM8_BFL2LO)];
>> + ? ? ? bus->sprom.boardflags2_hi = sprom[SPOFF(SSB_SPROM8_BFL2HI)];
>> +
>> + ? ? ? bus->sprom.country_code = sprom[SPOFF(SSB_SPROM8_CCODE)];
>> ?}
>>
>> ?int bcma_sprom_get(struct bcma_bus *bus)
>
> Does the card in question not need any other info from the SPROM, or is this
> just a first step? Is the usual SPROM Rev 8 code part of ssb, and is that
> the reason you don't use it here?

It will need more info, I just didn't add everything yet. I think we
should review ssb's code anyway, so I didn't copy&paste it. For
example ssb doesn't read board_rev at the moment for SPROM rev 8.

-- 
Rafa?
