From: Dan Carpenter <dan.carpenter@oracle.com>
Date: Thu, 26 Nov 2015 16:00:34 +0300
Subject: (bug report) b43: impossible conditions in debugfs
In-Reply-To: <20151126133241.5bc5a793@wiggum>
References: <20151126115924.GI10556@mwanda>
 <20151126133241.5bc5a793@wiggum>
Message-ID: <20151126130033.GG7289@mwanda>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael =?iso-8859-1?Q?B=FCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Thu, Nov 26, 2015 at 01:32:41PM +0100, Michael B?sch wrote:
> > See also:
> > drivers/net/wireless/broadcom/b43/debugfs.c:346 mmio32write__write_file() warn: impossible condition '(mask > 4294967295) => (0-u32max > u32max)'
> > drivers/net/wireless/broadcom/b43/debugfs.c:346 mmio32write__write_file() warn: impossible condition '(set > 4294967295) => (0-u32max > u32max)'
> 
> 
> 
> Sure. These are intentional.
> The compiler will optimize this out.

Hm...  We try to ignore when people do intentional comparisons with zero
like this:

	if (unsigned_var < 0 || unsigned_var >= 10)
		return -EINVAL;

Because they are obviously harmless and they don't hurt readability.
Also Linus doesn't like removing these.

But what's the point of this?  I have seen these before when I was
checking ide_set_disk_chs() for underflows.  I also reported another one
recently that was exactly the same as this and the guy changed it from
if (x > UINT_MAX) to if (!(x < UINT_MAX))...  I don't get it.

regards,
dan carpenter
