From: David Woodhouse <dwmw2@infradead.org>
Date: Fri, 26 Aug 2011 14:28:36 +0100
Subject: [RFT][PATCH] b43: use 8K buffers for 64-bit DMA to workaround
	hardware bug
In-Reply-To: <1314201438-12125-1-git-send-email-zajec5@gmail.com>
References: <1314201438-12125-1-git-send-email-zajec5@gmail.com>
Message-ID: <1314365317.14057.70.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Wed, 2011-08-24 at 17:57 +0200, Rafa? Mi?ecki wrote:
> 
> David: can you give it a try? 

On top of the tree I already have; nothing else?

This would be easier if you had a (preferably 3.0-based) git tree that
people could just build the b43 and bcma drivers from.

-- 
dwmw2
-------------- next part --------------
A non-text attachment was scrubbed...
Name: smime.p7s
Type: application/x-pkcs7-signature
Size: 5818 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110826/d06221cc/attachment.bin>
