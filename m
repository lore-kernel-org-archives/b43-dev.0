From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 27 Jan 2011 18:19:56 +0100
Subject: Mini PCIeWiFi card not detected in non-mini adapter
In-Reply-To: <AANLkTinhxNK9a6E2iGdFnvQuk-j7W=Pax7WirH08E5eQ@mail.gmail.com>
References: <AANLkTinrAgtjz-3Mv0ik9x6sRRvnvUQZn4jQX97mG7it@mail.gmail.com>
	<AANLkTinhxNK9a6E2iGdFnvQuk-j7W=Pax7WirH08E5eQ@mail.gmail.com>
Message-ID: <AANLkTikqR=aX+icFSKxkMNCZdbEgPmKR--gAPePgW6vM@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Brian Prodoehl <bprodoehl@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

W dniu 27 stycznia 2011 17:48 u?ytkownik Brian Prodoehl
<bprodoehl@gmail.com> napisa?:
> 2011/1/27 Rafa? Mi?ecki <zajec5@gmail.com>:
>> I've received mini PCIe adapter to PCIe x1 slot to test notebook cards
>> inserted into PC. ?Unfortunately after inserting my Broadcom card to
>> it, it is not detected in "lspci" at all.
>>
>> My WiFi card used to work in "native" slot inside notebook. So if
>> anything is broken, that would be PCIe x1 slot on motherboard or
>> adapter itself. I've tested V and GND pins in my PCIe x1 slot, all
>> work fine. I'll try get some other WiFi cards, to test my adapter
>> tomorrow.
>>
>> However, maybe you have heard about some problems with such a
>> adapters? Can there be sth preventing my card from being detected,
>> visible?
>>
>> --
>> Rafa?
>
> I haven't tested that sort of thing with PCI-Express, but I had bad
> results with Atheros AR5414-based modules in Mini-PCI to PCI adapters
> like this:
>
> http://www.dealextreme.com/p/mini-pci-to-pci-adapter-with-antenna-9307
>
> The system either wouldn't boot, or it would boot and the wireless
> card wouldn't show up in lspci, so I gave up on it.

That are not good news :(

What I've bought is following adapter:
http://allegro.pl/adapter-wifi-mini-pci-e-na-pci-e-3-anteny-kp13-i1429732145.html

(Maybe) interesting part is that it contains LED near antennas which
doesn't light for me. After tracking GND line of this LED I can see it
going to mini PCIe slot. So maybe it's not critical, maybe it would
light if my WiFi card worked?

-- 
Rafa?
