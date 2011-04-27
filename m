From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 27 Apr 2011 22:52:37 +0200
Subject: [PATCH] ssb: cc: prepare clockmode support for cores rev 10+
In-Reply-To: <1303936862.7373.5.camel@Nokia-N900>
References: <1303918811-4949-1-git-send-email-zajec5@gmail.com>
	<1303936862.7373.5.camel@Nokia-N900>
Message-ID: <BANLkTikJj4vA6obyCkqwsiG+Ha7aOnz=SQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, b43-dev@lists.infradead.org

2011/4/27 Michael B?sch <m@bues.ch>:
>> +??? ??? ??? /* udelay(150); TODO: not available in early init */
>
> udelay() should be available at this point. Are you confusing it with
> msleep(), which is not available that early?

I had no idea about this difference, thanks.

However I still think about initializing ChipCommon later, to let it
*sleep* and no to delay boot process. Should this be fine? Or are
there some important reasons to init ChipCommon early?

-- 
Rafa?
