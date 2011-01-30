From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 30 Jan 2011 13:08:50 +0100
Subject: Mini PCIeWiFi card not detected in non-mini adapter
In-Reply-To: <AANLkTimPoG2wEY-XOpfW99qpK6ohe5k3wR6XjtSYCH4L@mail.gmail.com>
References: <AANLkTinrAgtjz-3Mv0ik9x6sRRvnvUQZn4jQX97mG7it@mail.gmail.com>
	<AANLkTinhxNK9a6E2iGdFnvQuk-j7W=Pax7WirH08E5eQ@mail.gmail.com>
	<AANLkTikqR=aX+icFSKxkMNCZdbEgPmKR--gAPePgW6vM@mail.gmail.com>
	<20110128161612.GC2452@redhat.com>
	<AANLkTimPoG2wEY-XOpfW99qpK6ohe5k3wR6XjtSYCH4L@mail.gmail.com>
Message-ID: <AANLkTin4S8ZceiRKJ2i01HuiWRxb7gDPa_1SkGonforo@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stanislaw Gruszka <sgruszka@redhat.com>
Cc: Brian Prodoehl <bprodoehl@gmail.com>, linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

I write everything down, in case someone in future would hit similar issue.

W dniu 29 stycznia 2011 10:37 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> W dniu 28 stycznia 2011 17:16 u?ytkownik Stanislaw Gruszka
> <sgruszka@redhat.com> napisa?:
>> On Thu, Jan 27, 2011 at 06:19:56PM +0100, Rafa? Mi?ecki wrote:
>>> What I've bought is following adapter:
>>> http://allegro.pl/adapter-wifi-mini-pci-e-na-pci-e-3-anteny-kp13-i1429732145.html
>>
>> I'm using adapters form http://www.hwtools.net/ , they work pretty well for me,
>> but they are also quite expensive.
>
> Yeah, they have adapters few times more expensive than my one :(
>
>
> Yesterday my friend was nice (and brave :P) enough to let me open his
> notebook and test my card in it. Card was detected just fine in his
> Windows 7.
>
> Today I managed to test my adapter (with my Broadcom card inside) in
> some other PC with PCI Express x1. It was detected again! Motherboard
> in this PC is: Asus/Pegatron IPMTB-TK.
>
>
> So:
> 1) My Broadcom card is fine
> 2) My adapted is fine
>
> There must be problem with my motherboard/BIOS/PCI Express x1 slot.
>
> I'm much happier now when I know I don't need to return that adapters
> (I bought 2) :)

I've used openSUSE LiveCD on Asus/Pegatron IPMTB-TK and I still was
able to see my WiFi card (using adapter).

Then thanks for MSDNAA I've tried Windows XP on my problematic
P5V02-MX motherboard. Windows XP also could not detect my WiFI card!

So there is nothing from with Linux+adapter, the problem in directly
related to my P5V02-MX motherboard.

-- 
Rafa?
