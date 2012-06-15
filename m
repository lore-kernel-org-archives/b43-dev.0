From: Joe Perches <joe@perches.com>
Date: Fri, 15 Jun 2012 03:48:39 -0700
Subject: [PATCH wireless-next 00/20] Use pr_<level>
In-Reply-To: <1339745811.4512.0.camel@jlt3.sipsolutions.net>
References: <cover.1339739415.git.joe@perches.com>
 (sfid-20120615_080311_586023_85E50A2D)
 <1339745811.4512.0.camel@jlt3.sipsolutions.net>
Message-ID: <1339757319.24527.21.camel@joe2Laptop>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, libertas-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

On Fri, 2012-06-15 at 09:36 +0200, Johannes Berg wrote:
> On Thu, 2012-06-14 at 22:53 -0700, Joe Perches wrote:
> > Update logging style
> 
> So ... since we make everybody else explain *why* they make a change, I
> think you should too.

To improve logging style consistency.
To reduce logging defects.
To standardize logging prefixes.
To tee up conversions of:
	pr_<level>("%s: ...", ([truct netdevice *]foo)->name, ...)
to
	netdev_<level>(foo, "...", ...) 
