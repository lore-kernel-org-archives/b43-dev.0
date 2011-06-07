From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 7 Jun 2011 02:33:28 +0200
Subject: [RFC][PATCH 03/10] bcma: add embedded bus
In-Reply-To: <4DED4DEB.5030802@hauke-m.de>
References: <1307311658-15853-1-git-send-email-hauke@hauke-m.de>
	<1307311658-15853-4-git-send-email-hauke@hauke-m.de>
	<BANLkTi=T6xO9q+vOCk5Fu+2J_nUTwX3dcg@mail.gmail.com>
	<4DED4DEB.5030802@hauke-m.de>
Message-ID: <BANLkTikATEB7zoDPBcc4Ubh7ONyHXWBW+w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-wireless@vger.kernel.org, linux-mips@linux-mips.org, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com

W dniu 7 czerwca 2011 00:00 u?ytkownik Hauke Mehrtens
<hauke@hauke-m.de> napisa?:
> On 06/06/2011 12:22 PM, Rafa? Mi?ecki wrote:
>>> + ? ? ? if (bus->hosttype == BCMA_HOSTTYPE_EMBEDDED) {
>>> + ? ? ? ? ? ? ? iounmap(bus->mmio);
>>> + ? ? ? ? ? ? ? mmio = ioremap(BCMA_ADDR_BASE, BCMA_CORE_SIZE * bus->nr_cores);
>>> + ? ? ? ? ? ? ? if (!mmio)
>>> + ? ? ? ? ? ? ? ? ? ? ? return -ENOMEM;
>>> + ? ? ? ? ? ? ? bus->mmio = mmio;
>>> +
>>> + ? ? ? ? ? ? ? mmio = ioremap(BCMA_WRAP_BASE, BCMA_CORE_SIZE * bus->nr_cores);
>>> + ? ? ? ? ? ? ? if (!mmio)
>>> + ? ? ? ? ? ? ? ? ? ? ? return -ENOMEM;
>>> + ? ? ? ? ? ? ? bus->host_embedded = mmio;
>>
>> Do we really need both? mmio and host_embedded? What about keeping
>> mmio only and using it in calculation for read/write[8,16,32]?
>
> These are two different memory regions, it should be possible to
> calculate the other address, but I do not like that. As host_embedded is
> in a union this does not waste any memory.

Ah, OK, I can see what does happen here. You are using:
1) bus->mmio for first core
2) bus->host_embedded for first agent/wrapper

I'm not sure if this is a correct approach. Doing "core_index *
BCMA_CORE_SIZE" comes from ssb, where it was the way to calculate
offset. In case of BCMA we are reading all the info from (E)EPROM,
which also includes addresses of the cores.

IMO you should use core->addr and core->wrap for read/write ops. I
believe this is approach Broadcom decided to use for BCMA, when
designing (E)EPROM.

You should not need bus->host_embedded then, maybe you could even do
not set bus->mmio?

-- 
Rafa?
