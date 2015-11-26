From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 26 Nov 2015 13:40:30 +0100
Subject: (bug report) b43: precendence error
In-Reply-To: <20151126115843.GH10556@mwanda>
References: <20151126115843.GH10556@mwanda>
Message-ID: <20151126134030.63bd44aa@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: zajec5@gmail.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Thu, 26 Nov 2015 14:58:43 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> [ All the old wireless Smatch warnings are showing up as new ones
>   because of the path reshuffle in linux-next.  I'm going through and
>   reporting the extra suspicious ones.  -dan ]
> 
> Hello Rafa? Mi?ecki,
> 
> The patch 6f98e62a9f1b: "b43: update cordic code to match current
> specs" from Jan 25, 2010, leads to the following static checker
> warning:
> 
> 	drivers/net/wireless/broadcom/b43/phy_lp.c:1803 lpphy_start_tx_tone()
> 	warn: mask and shift to zero
> 
> drivers/net/wireless/broadcom/b43/phy_lp.c
>   1800          for (i = 0; i < samples; i++) {
>   1801                  sample = b43_cordic(angle);
>   1802                  angle += rotation;
>   1803                  buf[i] = CORDIC_CONVERT((sample.i * max) & 0xFF) << 8;
>   1804                  buf[i] |= CORDIC_CONVERT((sample.q * max) & 0xFF);
> 
> Maybe the intention was:
> 
> 			buf[i] = (CORDIC_CONVERT(sample.i * max) & 0xFF) << 8;
> 			buf[i] |= CORDIC_CONVERT((sample.q * max) & 0xFF;
> 
>   1805          }
>   1806  


This looks like a bug indeed.
Rafa?, do you have hw to check this?

 			buf[i] = (CORDIC_CONVERT(sample.i * max) & 0xFF) << 8;
 			buf[i] |= CORDIC_CONVERT(sample.q * max) & 0xFF;

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20151126/03c6a363/attachment.sig>
