From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 2 Jun 2011 21:30:48 +0200
Subject: [PATCH] bcma: read SPROM and extract MAC from it
Message-ID: <BANLkTi=OPXYBHC-S1Zk2Qbfh6gOXTf-JrQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Jun 2, 2011 4:52 PM, "Arend van Spriel" <arend@broadcom.com> wrote:
>
> On 06/02/2011 02:08 AM, Rafa? Mi?ecki wrote:
>>
>> In case of BCMA cards SPROM is located in the ChipCommon core, it is
>> not mapped as separated host window. So far we have met only SPROMs rev
>> 8.
>> SPROM layout seems to be the same as for SSB buses, so we decided to
>> share SPROM struct and some defines.
>> For now we extract MAC address only, this can be improved of course.
>>
>> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>
>>
>> +/**************************************************
>> + * Validation.
>> + **************************************************/
>> +
>> +static inline u8 bcma_crc8(u8 crc, u8 data)
>> +{
>
>
> Somehow this crc8 looks quite familiar to me ;-) I send out a patch to
John providing a crc8 as library module so you could consider using that. It
will probably end up in wireless-testing before this patch (if accepted that
is).

Absolutely! I've already said that in discussion about crc8.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110602/fa72d4f3/attachment.html>
