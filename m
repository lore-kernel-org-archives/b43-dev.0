From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 19 Jul 2011 19:14:01 +0200
Subject: [PATCH 1/2] bcma: inform drivers about translation bits needed
	for the board
In-Reply-To: <4E2596FB.5030105@gnu.org>
References: <1311062701-3455-1-git-send-email-zajec5@gmail.com>
	<4E2596FB.5030105@gnu.org>
Message-ID: <CACna6ry+tSdBJOr8RimHusWJw+cKZuxwdhoi0CHmE-TKJo5PtA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Roskin <proski@gnu.org>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 19 lipca 2011 16:38 u?ytkownik Pavel Roskin <proski@gnu.org> napisa?:
> On 07/19/2011 04:05 AM, Rafa? Mi?ecki wrote:
>>
>> When using DMA, drivers need to pass special translation info to the
>> hardware.
>>
>> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>
>
> I'm not sure why you are copying it to me.

Upd, I've used bash history and the last send-email was with --cc to you.


>> + ? ? ? switch (bus->hosttype) {
>> + ? ? ? case BCMA_HOSTTYPE_PCI:
>> + ? ? ? ? ? ? ? return 0x40000000;
>
> This is already implemented in ssb_dma_translation(), and the constant is
> called SSB_PCI_DMA. ?I think we need a named constant here as well, either
> SSB_PCI_DMA or a new constant BCMA_PCI_DMA.


-- 
Rafa?
