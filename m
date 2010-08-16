From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Mon, 16 Aug 2010 19:59:36 +0200
Subject: [RFT] BCM4312 users with DMA errors, please test!
Message-ID: <AANLkTimMhW7OX3DT7A3EDNaOnr577KmTv5w9C_mz19TG@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

Hello Everyone!

If you are experiencing DMA errors on a BCM4312, please test the
attached patch. It implements the PCI-E SERDES workaround, which the
hybrid driver is applying during early init to LP-PHY cards, and which
is a good candidate for the cause of the DMA error.
Note that this is not a final patch & it may cause collateral damage
for non-4312 cards; if it helps the 4312 problem, I will submit a
cleaned-up version.

Thanks,
G?bor
-------------- next part --------------
A non-text attachment was scrubbed...
Name: pcie_serdes_workaround.diff
Type: application/octet-stream
Size: 3420 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100816/3f259da2/attachment.obj>
