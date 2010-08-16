From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 16 Aug 2010 18:53:41 -0500
Subject: [RFT] BCM4312 users with DMA errors, please test!
In-Reply-To: <20100816233544.40f0e1d4@boulder.homenet>
References: <AANLkTimMhW7OX3DT7A3EDNaOnr577KmTv5w9C_mz19TG@mail.gmail.com>	<20100816204154.5100b604@boulder.homenet>
	<20100816233544.40f0e1d4@boulder.homenet>
Message-ID: <4C69CF85.2020809@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chris Vine <chris@cvine.freeserve.co.uk>
Cc: =?UTF-8?B?R8OhYm9yIFN0ZWZhbmlr?= <netrolller.3d@gmail.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 08/16/2010 05:35 PM, Chris Vine wrote:
> On Mon, 16 Aug 2010 20:41:54 +0100
> Chris Vine <chris@cvine.freeserve.co.uk> wrote:
> 
>> On Mon, 16 Aug 2010 19:59:36 +0200
>> G?bor Stefanik <netrolller.3d@gmail.com> wrote:
>>> Hello Everyone!
>>>
>>> If you are experiencing DMA errors on a BCM4312, please test the
>>> attached patch. It implements the PCI-E SERDES workaround, which the
>>> hybrid driver is applying during early init to LP-PHY cards, and
>>> which is a good candidate for the cause of the DMA error.
>>> Note that this is not a final patch & it may cause collateral damage
>>> for non-4312 cards; if it helps the 4312 problem, I will submit a
>>> cleaned-up version.
>>
>> This applies to 2.6.35.2, but does not compile:
>>
>> drivers/ssb/driver_pcicore.c: In function 'ssb_pcie_mdio_set_block':
>> drivers/ssb/driver_pcicore.c:457: error: 'i' undeclared (first use in
>> this function) drivers/ssb/driver_pcicore.c:457: error: (Each
>> undeclared identifier is reported only once
>> drivers/ssb/driver_pcicore.c:457: error: for each function it appears
>> in.) drivers/ssb/driver_pcicore.c: In function 'ssb_pcie_mdio_read':
>> drivers/ssb/driver_pcicore.c:503: error: expected ';' before
>> 'pcicore_write32'
>>
>> With the obvious fixes (providing a variable 'i' of int type as the
>> count variable and terminating the line which had no terminating
>> semi-colon), it compiled OK and the first time I booted up, booted up
>> OK but didn't fix the DMA error.  Subsequent attempts to boot up gave
>> me a slew of errors on boot up so I am not sure what is going on
>> there.
>>
>> You might want to check that the obvious fixes to the patch are
>> complete.
> 
> I have more or less tracked down what is happening.
> 
> The first thing to report is that this does not fix the DMA error.
> 
> The second thing is that with the patch applied, and with _all_
> wireless/ssb modules blacklisted (ssb, b43, wl), if the wl module is
> present the kernel bizarrely still tries to load it on boot up and
> shortly thereafter hangs with a number of errors reported, which differ
> on different boots (there is no particular pattern to them). That in
> turn causes some file system corruption which affects further boots
> even if the wl module is removed.  The corruption is not that serious
> and appears only to affect the kernel image and/or the wl module.
> Reinstalling both solved the problem, so far.  ef2fsck -f only reported
> that the time stamps were wrong, but inodes and directory structures
> were reported as OK.
> 
> But caveat testor so far as the corruption is concerned.  I might have
> been lucky.

I tried to duplicate your boot problems without anything unexpected happening.

I don't know what happened, but I doubt that this ssb patch was responsible.

Larry
