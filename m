From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 16 Aug 2010 14:06:01 -0500
Subject: [RFT] BCM4312 users with DMA errors, please test!
In-Reply-To: <AANLkTimMhW7OX3DT7A3EDNaOnr577KmTv5w9C_mz19TG@mail.gmail.com>
References: <AANLkTimMhW7OX3DT7A3EDNaOnr577KmTv5w9C_mz19TG@mail.gmail.com>
Message-ID: <4C698C19.5010902@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?windows-1252?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

On 08/16/2010 12:59 PM, G?bor Stefanik wrote:
> Hello Everyone!
> 
> If you are experiencing DMA errors on a BCM4312, please test the
> attached patch. It implements the PCI-E SERDES workaround, which the
> hybrid driver is applying during early init to LP-PHY cards, and which
> is a good candidate for the cause of the DMA error.
> Note that this is not a final patch & it may cause collateral damage
> for non-4312 cards; if it helps the 4312 problem, I will submit a
> cleaned-up version.

The patch that you distributed had a couple of errors in compiling, namely:

  CC [M]  drivers/ssb/driver_pcicore.o
drivers/ssb/driver_pcicore.c: In function ?ssb_pcie_mdio_set_block?:
drivers/ssb/driver_pcicore.c:457:7: error: ?i? undeclared (first use in this
function)
drivers/ssb/driver_pcicore.c:457:7: note: each undeclared identifier is reported
only once for each function it appears in
drivers/ssb/driver_pcicore.c: In function ?ssb_pcie_mdio_read?:
drivers/ssb/driver_pcicore.c:503:2: error: expected ?;? before ?pcicore_write32?
make[2]: *** [drivers/ssb/driver_pcicore.o] Error 1
make[1]: *** [drivers/ssb] Error 2
make[1]: *** Waiting for unfinished jobs....

Did you forget a quilt refresh?

My machine does not have the DMA error, but I will be testing.

Larry
