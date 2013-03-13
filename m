From: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 13 Mar 2013 10:41:23 +0000
Subject: [PATCH 00/13] b43: implement basic TX power mgmt
In-Reply-To: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
Message-ID: <1363171283.32099.343.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Thu, 2013-03-07 at 16:47 +0100, Rafa? Mi?ecki wrote:
> After spotting a lot of N-PHY-similar functions in
> BCM4331 dump of MMIO ops - split into names parts
> I was able to finally improve HT-PHY code.
> 
> It now sets TX basically, I can finally talk with devices that are few
> meters away, not just few centimetres. It's a little patch bomb, sorry
> for that, but I wasn't sure if my code is correct until it was complete
> and started working.

If you have a git tree I can pull this from, I'd be happy to give it
some testing...

-- 
dwmw2
-------------- next part --------------
A non-text attachment was scrubbed...
Name: smime.p7s
Type: application/x-pkcs7-signature
Size: 6171 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130313/d3474d97/attachment.bin>
