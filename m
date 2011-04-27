From: Michael =?ISO-8859-1?Q?B=FCsch?= <m@bues.ch>
Date: Wed, 27 Apr 2011 22:41:02 +0200
Subject: [PATCH] ssb: cc: prepare clockmode support for cores rev 10+
In-Reply-To: <1303918811-4949-1-git-send-email-zajec5@gmail.com>
References: <1303918811-4949-1-git-send-email-zajec5@gmail.com>
Message-ID: <1303936862.7373.5.camel@Nokia-N900>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

> +??? ??? ??? /* udelay(150); TODO: not available in early init */

udelay() should be available at this point. Are you confusing it with msleep(), which is not available that early?
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110427/e0e1d2fa/attachment.html>
