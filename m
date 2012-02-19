From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun, 19 Feb 2012 20:28:35 +0100
Subject: [PATCH 04/11] ssb: add ccode
In-Reply-To: <20120219194923.566f3fe8@milhouse>
References: <1329676345-15856-1-git-send-email-hauke@hauke-m.de>
 <1329676345-15856-5-git-send-email-hauke@hauke-m.de>
 <20120219194923.566f3fe8@milhouse>
Message-ID: <4F414D63.1070409@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-1?Q?Michael_B=FCsch?= <m@bues.ch>
Cc: linville@tuxdriver.com, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, arend@broadcom.com

On 02/19/2012 07:49 PM, Michael B?sch wrote:
> On Sun, 19 Feb 2012 19:32:18 +0100
> Hauke Mehrtens <hauke@hauke-m.de> wrote:
> 
>> This member contains the country code encoded with two chars
>>
>> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
>> ---
>>  include/linux/ssb/ssb.h |    1 +
>>  1 files changed, 1 insertions(+), 0 deletions(-)
>>
>> diff --git a/include/linux/ssb/ssb.h b/include/linux/ssb/ssb.h
>> index 4928419..44e486e 100644
>> --- a/include/linux/ssb/ssb.h
>> +++ b/include/linux/ssb/ssb.h
>> @@ -33,6 +33,7 @@ struct ssb_sprom {
>>  	u8 et1mdcport;		/* MDIO for enet1 */
>>  	u16 board_rev;		/* Board revision number from SPROM. */
>>  	u8 country_code;	/* Country Code */
>> +	char ccode[2];		/* Country Code as two chars like EU or US */
> 
> This usually is referred to as "alpha2". So we should name it like that, too.
I can not find any references to "alpha2" in the spec, the broadcom
code, ssb, bcma or b43. ccode was the name broadcom gave this value so I
took it.
http://bcm-v4.sipsolutions.net/SPROM wrongly maps ccode to country_code,
but cc is stored into country_code in ssb.

Hauke
