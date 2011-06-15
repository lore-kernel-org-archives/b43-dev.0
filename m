From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 15 Jun 2011 20:29:58 +0200
Subject: [RFC][WORTH IT?][PATCH] bcma: make use of crc8 lib
In-Reply-To: <4DF8A0EF.5030702@broadcom.com>
References: <1308138814-12235-1-git-send-email-zajec5@gmail.com>
	<4DF8A0EF.5030702@broadcom.com>
Message-ID: <BANLkTim3-sxkHmfiiwR-mLWfyUKxpSVBQA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

W dniu 15 czerwca 2011 14:09 u?ytkownik Arend van Spriel
<arend@broadcom.com> napisa?:
> On 06/15/2011 01:53 PM, Rafa? Mi?ecki wrote:
>>
>> ?static u8 bcma_sprom_crc(const u16 *sprom)
>> ?{
>> - ? ? ? int word;
>> - ? ? ? u8 crc = 0xFF;
>> + ? ? ? u8 crc;
>> + ? ? ? u8 sprom2[SSB_SPROMSIZE_WORDS_R4 * 2 - 1];
>> + ? ? ? u8 table[CRC8_TABLE_SIZE];
>> + ? ? ? u16 word;
>>
>> + ? ? ? /* u16 to u8 */
>> ? ? ? ?for (word = 0; word< ?SSB_SPROMSIZE_WORDS_R4 - 1; word++) {
>> - ? ? ? ? ? ? ? crc = bcma_crc8(crc, sprom[word]& ?0x00FF);
>> - ? ? ? ? ? ? ? crc = bcma_crc8(crc, (sprom[word]& ?0xFF00)>> ?8);
>> + ? ? ? ? ? ? ? sprom2[word * 2] = sprom[word]& ?0x00FF;
>> + ? ? ? ? ? ? ? sprom2[(word * 2) + 1] = (sprom[word]& ?0xFF00)>> ?8;
>> ? ? ? ?}
>> - ? ? ? crc = bcma_crc8(crc, sprom[SSB_SPROMSIZE_WORDS_R4 - 1]& ?0x00FF);
>> + ? ? ? /* 127th byte */
>> + ? ? ? sprom2[(SSB_SPROMSIZE_WORDS_R4 * 2) - 2] =
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? sprom[SSB_SPROMSIZE_WORDS_R4 - 1]&
>> ?0x00FF;
>> +
>> + ? ? ? /* Prepare table, 0xAB is x^8 + x^7 + x^6 + x^4 + x^2 + 1 */
>> + ? ? ? crc8_populate_lsb(table, 0xAB);
>> +
>> + ? ? ? /* Calculate */
>> + ? ? ? crc = crc8(table, sprom2, (SSB_SPROMSIZE_WORDS_R4 * 2) - 1, 0xFF);
>> ? ? ? ?crc ^= 0xFF;
>>
>> ? ? ? ?return crc;
>
> You could do (I think):
>
> crc8_populate_lsb(table, 0xAB);
> for (word = 0; word< ?SSB_SPROMSIZE_WORDS_R4; word++) {
> ? ? ? ?u16 val = cpu_to_le16(sprom[word]);
> ? ? ? ?crc = crc8(table,&val, sizeof(u16), crc);
> }

Maybe not a perfect/optimal solution (crc8 focuses on tables, we do
double loop instead) but should work. Thanks for the tip.

-- 
Rafa?
