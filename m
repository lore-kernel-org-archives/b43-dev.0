From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 26 Nov 2015 14:34:16 +0100
Subject: (bug report) b43: impossible conditions in debugfs
In-Reply-To: <20151126130033.GG7289@mwanda>
References: <20151126115924.GI10556@mwanda> <20151126133241.5bc5a793@wiggum>
 <20151126130033.GG7289@mwanda>
Message-ID: <20151126143416.6104ff24@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Thu, 26 Nov 2015 16:00:34 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> On Thu, Nov 26, 2015 at 01:32:41PM +0100, Michael B?sch wrote:
> > > See also:
> > > drivers/net/wireless/broadcom/b43/debugfs.c:346 mmio32write__write_file() warn: impossible condition '(mask > 4294967295) => (0-u32max > u32max)'
> > > drivers/net/wireless/broadcom/b43/debugfs.c:346 mmio32write__write_file() warn: impossible condition '(set > 4294967295) => (0-u32max > u32max)'  
> > 
> > 
> > 
> > Sure. These are intentional.
> > The compiler will optimize this out.  
> 
> Hm...  We try to ignore when people do intentional comparisons with zero
> like this:
> 
> 	if (unsigned_var < 0 || unsigned_var >= 10)
> 		return -EINVAL;
> 
> Because they are obviously harmless and they don't hurt readability.
> Also Linus doesn't like removing these.


It just checks whether the value will fit into a 32 bit unsigned int
variable. It doesn't make assumptions on what sizeof(unsigned int) is,
although it would be safe to assume 4 here and omit the check.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20151126/51883ec1/attachment.sig>
