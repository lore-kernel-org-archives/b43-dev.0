From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 7 Jun 2011 00:50:02 +0200
Subject: [RFC][PATCH 04/10] bcma: add mips driver
In-Reply-To: <4DED4F6C.5030902@hauke-m.de>
References: <1307311658-15853-1-git-send-email-hauke@hauke-m.de>
	<1307311658-15853-5-git-send-email-hauke@hauke-m.de>
	<BANLkTim_TtNVmmyH5J3G0pK-vrWNL1+24A@mail.gmail.com>
	<4DED4F6C.5030902@hauke-m.de>
Message-ID: <BANLkTi=OAvaLei6v+qG4u=CDQznetiKsrA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-wireless@vger.kernel.org, linux-mips@linux-mips.org, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com

W dniu 7 czerwca 2011 00:06 u?ytkownik Hauke Mehrtens
<hauke@hauke-m.de> napisa?:
> On 06/06/2011 01:23 PM, Rafa? Mi?ecki wrote:
>>> + ? ? ? ? ? ? ? ? ? ? ? for (i = 0; i < bus->nr_cores; i++)
>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? if ((1 << bcma_core_mips_irqflag(&bus->cores[i])) == oldirqflag) {
>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? bcma_core_mips_set_irq(&bus->cores[i], 0);
>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? break;
>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? }
>>
>> Braces for "for".
> Is this needed after the coding guildlines? Shouldn't they be removed if
> they are not needed?

Whoops, after re-checking coding style it seems I was wrong.

-- 
Rafa?
