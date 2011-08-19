From: David Woodhouse <dwmw2@infradead.org>
Date: Fri, 19 Aug 2011 21:52:20 +0100
Subject: [PATCH] Add uevent to bcma bus, to autoload drivers.
In-Reply-To: <CACna6rzsKaHYL4aH9=0X+_6Q7j-_5AnHc7KfiQ9_FxSLhqEPBA@mail.gmail.com>
References: <4E3420E9.6080603@lwfinger.net>
	<CACna6ryErHY+OyAnvc9+MYArb5mXpSdadOPADsQOBz796UqSUw@mail.gmail.com>
	<1313617419.3990.134.camel@shinybook.infradead.org>
	<CACna6rzQmEE-EF+7tvQ8vkwp9bYwWMkna3UHw8ym7PmjKWWQTQ@mail.gmail.com>
	<1313653897.13224.4.camel@shinybook.infradead.org>
	<CACna6rzsKaHYL4aH9=0X+_6Q7j-_5AnHc7KfiQ9_FxSLhqEPBA@mail.gmail.com>
Message-ID: <1313787142.6210.9.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Larry Finger <Larry.Finger@lwfinger.net>

On Fri, 2011-08-19 at 22:13 +0200, Rafa? Mi?ecki wrote:
> I can accept sending patch directly to John, if I'm included in CC and
> linux-wireless is included as well.

But if b43 isn't ready for *some* bcma card, so you don't want it
autoloading, then perhaps we might have wanted to remove a MODULE_ALIAS
from b43 to prevent it being autoloaded for just *that* device. Or
something like that. So even for this "obviously correct" patch I'd
rather run it by you first.

-- 
dwmw2
