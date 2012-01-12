From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 12 Jan 2012 17:11:50 +0100
Subject: [PATCH] b43: add default option to avoid duplicating device
 support with brcmsmac
In-Reply-To: <1326315180-29398-1-git-send-email-linville@tuxdriver.com>
References: <1326315180-29398-1-git-send-email-linville@tuxdriver.com>
Message-ID: <CACna6rxffpPhYVqKNttu79JET=NkBP4NrAayywQHWcj=mw=T9A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

2012/1/11 John W. Linville <linville@tuxdriver.com>:
> +config B43_BCMA_EXTRA
> + ? ? ? bool "Support for devices also supported by brcmsmac"
> + ? ? ? depends on B43_BCMA
> + ? ? ? default n
> +

Is this really *the* solution? I wonder if we can do whatever you're
trying to do in a better way? To let final users try both drivers
without recompiling kernel?

The description also isn't saying too much. I can't imagine anyone
taking decision advisedly other than "n, as it's the default". On
other hand, what should we put here? The whole comparison of drivers?
Can be hard, but I really think there should be more info.

-- 
Rafa?
