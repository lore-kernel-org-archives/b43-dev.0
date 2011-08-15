From: David Woodhouse <dwmw2@infradead.org>
Date: Mon, 15 Aug 2011 07:18:57 -0600
Subject: [PATCH 2/3] b43: LCN-PHY: implement disabling radio
In-Reply-To: <CA+XFjio4gg5zO-gx+6v2rLGidziNY-rUachmdt02VwE9tX_SWQ@mail.gmail.com>
References: <1313357250-8292-1-git-send-email-zajec5@gmail.com>
	<1313357250-8292-2-git-send-email-zajec5@gmail.com>
	<CA+XFjio4gg5zO-gx+6v2rLGidziNY-rUachmdt02VwE9tX_SWQ@mail.gmail.com>
Message-ID: <1313414343.3990.6.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-1?Q?G=E1bor?= Stefanik <netrolller.3d@gmail.com>
Cc: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Mon, 2011-08-15 at 01:24 +0200, G?bor Stefanik wrote:
> Doesn't brcm80211 support this PHY? (Because then, reverse-engineering
> wl is pointless.)

I'd be great to "clean up" the interface between brcm80211 and its phy
code, so that the phy code can be moved out of drivers/staging. And once
we've done that, we can make b43 use it too.

That way we not only get LCN PHY code, but also hopefully support for
*other* PHYs as and when they are produced.

-- 
dwmw2
