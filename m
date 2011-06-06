From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 6 Jun 2011 13:00:29 +0200
Subject: [RFC][PATCH 03/10] bcma: add embedded bus
In-Reply-To: <4DECB232.70308@broadcom.com>
References: <1307311658-15853-1-git-send-email-hauke@hauke-m.de>
	<1307311658-15853-4-git-send-email-hauke@hauke-m.de>
	<BANLkTi=T6xO9q+vOCk5Fu+2J_nUTwX3dcg@mail.gmail.com>
	<1307356322.28734.11.camel@dev.znau.edu.ua>
	<BANLkTimkKFAEfbKaWo81=uyuDS=gjESHAw@mail.gmail.com>
	<4DECB232.70308@broadcom.com>
Message-ID: <BANLkTimAtq+8EmTckqytL+WyaVigNYfQwA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: George Kashperko <george@znau.edu.ua>, Hauke Mehrtens <hauke@hauke-m.de>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "linux-mips@linux-mips.org" <linux-mips@linux-mips.org>, "mb@bu3sch.de" <mb@bu3sch.de>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "bernhardloos@googlemail.com" <bernhardloos@googlemail.com>

W dniu 6 czerwca 2011 12:55 u?ytkownik Arend van Spriel
<arend@broadcom.com> napisa?:
> On 06/06/2011 12:51 PM, Rafa? Mi?ecki wrote:
>>
>> W dniu 6 czerwca 2011 12:32 u?ytkownik George Kashperko
>> <george@znau.edu.ua> ?napisa?:
>>>
>>> Hi,
>>>
>>>> Hauke,
>>>>
>>>> My idea for naming schema was to use:
>>>> bcma_host_TYPE_*
>>>>
>>>> Like:
>>>> bcma_host_pci_*
>>>> bcma_host_sdio_*
>>>>
>>>> You are using:
>>>> bcma_host_bcma_*
>>>>
>>>> What do you think about changing this to:
>>>> bcma_host_embedded_*
>>>> or just some:
>>>> bcma_host_emb_*
>>>> ?
>>>>
>>>> Does it make more sense to you? I was trying to keep names in bcma
>>>> really clear, so every first-time-reader can see differences between
>>>> hosts, host and driver, etc.
>>>
>>> how about bcma_host_soc ?
>>
>> We get then inconsistency with "BCMA_HOSTTYPE_EMBEDDED". I'd like to
>> 1) See something like bcma_host_emb...
>> xor
>> 2) Use bcma_host_soc_* and BCMA_HOSTTYPE_SOC
>>
>
> I would go for option 2). It more clearly says what it is. Embedded is a
> broader term. As an example, a handset is an embedded device, but it may use
> BCMA_HOSTTYPE_SDIO.

Good point, agree.

-- 
Rafa?
