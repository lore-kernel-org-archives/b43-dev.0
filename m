From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Tue, 27 Aug 2013 18:44:00 -0700
Subject: [E1000-devel] [PATCH net-next] drivers:net: Convert
 dma_alloc_coherent(...__GFP_ZERO) to dma_zalloc_coherent
In-Reply-To: <1377582323.2658.10.camel@joe-AO722>
References: <dbbfc5e66dba7d2b63549d218407fb0c4031f2ed.1363367992.git.joe@perches.com>
 <1377582323.2658.10.camel@joe-AO722>
Message-ID: <1377654240.2005.32.camel@jtkirshe-mobl>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Joe Perches <joe@perches.com>
Cc: netdev@vger.kernel.org, e1000-devel@lists.sourceforge.net, users@rt2x00.serialmonkey.com, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org

On Mon, 2013-08-26 at 22:45 -0700, Joe Perches wrote:
> __GFP_ZERO is an uncommon flag and perhaps is better
> not used.  static inline dma_zalloc_coherent exists
> so convert the uses of dma_alloc_coherent with __GFP_ZERO
> to the more common kernel style with zalloc.
> 
> Remove memset from the static inline dma_zalloc_coherent
> and add just one use of __GFP_ZERO instead.
> 
> Trivially reduces the size of the existing uses of
> dma_zalloc_coherent.
> 
> Realign arguments as appropriate.
> 
> Signed-off-by: Joe Perches <joe@perches.com>

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: This is a digitally signed message part
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130827/c5b18fe6/attachment.sig>
