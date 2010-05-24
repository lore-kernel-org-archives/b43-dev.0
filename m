From: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <mb@bu3sch.de>
Date: Mon, 24 May 2010 18:41:26 +0200
Subject: PCIe setup routines
In-Reply-To: <4BFAA997.4050107@lwfinger.net>
	(sfid-20100524_163025_371025_09010168)
References: <4BBB6721.3030201@lwfinger.net>
	<AANLkTilILf0T6hFs9EOwdOGyTTd5RJEMvE4rjz3uP3Yh@mail.gmail.com>
	<4BFAA997.4050107@lwfinger.net>
	(sfid-20100524_163025_371025_09010168)
Message-ID: <4BFAAC36.6020303@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/24/2010 06:30 PM, Larry Finger wrote:
> On 05/24/2010 11:23 AM, Rafa? Mi?ecki wrote:
>> 2010/4/6 Larry Finger<Larry.Finger@lwfinger.net>:
>>> There are routines in
>>> http://bcm-v4.sipsolutions.net/PCI-E#PCIe_Attach_.28int_state.29 that I
>>> don't think have been implemented.
>>>
>>> I still have a question about getting an MMIO address from sprom[x].
>>> That is how the 0x280A address is picked in the code I sent earlier;
>>> however, I don't see any of the other addresses in those routines being
>>> used on my card. I still need to find where that array is filled in
>>> Broadcom's code.
>>
>> Could someone point me to part of core related to PCI(e) operations?
>
> Most of the stuff is in drivers/ssb/driver_pcicore.c.

Everything related to the PCI-core is in that file.

> If not there,
> check in drivers/ssb/pci.c

No, everything in drivers/ssb/pci.c is host-related. This is the code 
that ties the SSB bus to the host PCI bus, _if_ it is a PCI card.
The file does not contain any PCI-core related code.
