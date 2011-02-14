From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 15 Feb 2011 00:44:58 +0100
Subject: [PATCH] ssb: Make ssb_wait_bit multi-bit safe
In-Reply-To: <1297725710.5683.17.camel@maggie>
References: <1297725710.5683.17.camel@maggie>
Message-ID: <AANLkTimjkFJrWpubECRRNybmvYdcAh3UUbMOa0iv166g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: John Linville <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

2011/2/15 Michael B?sch <mb@bu3sch.de>:
> ssb_wait_bit was designed for only one-bit bitmasks.
> People start using it for multi-bit bitmasks. Make the "set" case
> is safe for this. The "unset" case is already safe.

Thanks :)

-- 
Rafa?
