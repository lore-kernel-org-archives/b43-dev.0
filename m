From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Mon, 16 Aug 2010 20:15:52 +0200
Subject: [RFT] BCM4312 users with DMA errors, please test!
In-Reply-To: <AANLkTin0R6k0_GoSEN8aJ8t_fTJw9h_N_0etcxAokv6N@mail.gmail.com>
References: <AANLkTimMhW7OX3DT7A3EDNaOnr577KmTv5w9C_mz19TG@mail.gmail.com>
	<AANLkTin0R6k0_GoSEN8aJ8t_fTJw9h_N_0etcxAokv6N@mail.gmail.com>
Message-ID: <AANLkTinPR-Fp7u6vFq9LsY93myS4QzyMpF3R0NydmHYv@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arthur Moreira <arthur.moreira@gmail.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

2010/8/16 Arthur Moreira <arthur.moreira@gmail.com>:
> Hi,
> I have a BCM4353 card, with the ?hybrid module ?wl work fine to find
> and conect to networks.
> But, a want to put the card in monitor mode.
>
> (my card is a 802.11bgN mini card, in a dell vostro)
>
> this path will help me? and.. how to aply the path? the comand path $#
> < file ? ????
> tks
>
>
> ? ? ? ? ? ? ? Arthur Moreira
>

No, this patch is only for BCM4312 devices, not the BCM43224 that you
have (there is no such thing as a "BCM4353" AFAIK - PCI device IDs
don't map directly to chip IDs!). Your card is an N-PHY, probably
revision 4 or 5 (you can see the revision by adding 14e4:4353 to the
list of PCI IDs in ssb, then looking for the "FOUND UNSUPPORTED PHY"
line in dmesg). We are working on N-PHYs, revisions <=2 will likely be
usable soon; rev.3 and newer will take longer, however. (It is
possible that this patch will also be needed for N-PHYs if they show
similar DMA errors to the 4312, but it is certainly not enough to get
N-PHYs to work.)

>
>
>
> 2010/8/16 G?bor Stefanik <netrolller.3d@gmail.com>:
>> Hello Everyone!
>>
>> If you are experiencing DMA errors on a BCM4312, please test the
>> attached patch. It implements the PCI-E SERDES workaround, which the
>> hybrid driver is applying during early init to LP-PHY cards, and which
>> is a good candidate for the cause of the DMA error.
>> Note that this is not a final patch & it may cause collateral damage
>> for non-4312 cards; if it helps the 4312 problem, I will submit a
>> cleaned-up version.
>>
>> Thanks,
>> G?bor
>>
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
