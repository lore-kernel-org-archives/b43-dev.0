From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 11 Mar 2016 17:30:47 +0100
Subject: [v2, resend] b43: Fix memory leaks in b43_bus_dev_ssb_init and
 b43_bus_dev_bcma_init
In-Reply-To: <20160311162230.GA5436@sudip-laptop>
References: <1452949690-16387-1-git-send-email-baijiaju1990@163.com>
 <20160311162230.GA5436@sudip-laptop>
Message-ID: <20160311173047.785c2b24@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, kvalo@codeaurora.org
Cc: Jia-Ju Bai <baijiaju1990@163.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, joe@perches.com

On Fri, 11 Mar 2016 21:52:30 +0530
Sudip Mukherjee <sudipm.mukherjee@gmail.com> wrote:

> On Sat, Jan 16, 2016 at 09:08:10PM +0800, Jia-Ju Bai wrote:
> > The memory allocated by kzalloc in b43_bus_dev_ssb_init and
> > b43_bus_dev_bcma_init is not freed.
> > This patch fixes the bug by adding kfree in b43_ssb_remove,
> > b43_bcma_remove and error handling code of b43_bcma_probe.
> > 
> > Thanks Michael for his suggestion.
> > 
> > Signed-off-by: Jia-Ju Bai <baijiaju1990@163.com>  
> 
> The patch did not apply cleanly. I had to edit the patch to point to
> drivers/net/wireless/broadcom/b43/main.c
> 
> For CONFIG_B43_SSB part-
> Tested-by: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>


Ok thanks a lot.
We possibly don't get an bcma tester anytime soon. As this is quite an
important fix, we should probably apply it.

Sudip, can you please update the patch so it applies cleanly on the
current tree? You can add my acked-by if you want.

Kalle, can you please apply it afterwards?

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160311/723bfcd4/attachment.sig>
