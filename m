From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 23 Jul 2011 10:49:55 +0200
Subject: [PATCH 1/2] ssb: define boardflags
In-Reply-To: <20110723103725.6d5bab09@maggie>
References: <1311412213-3825-1-git-send-email-zajec5@gmail.com>
	<1311412213-3825-2-git-send-email-zajec5@gmail.com>
	<20110723103725.6d5bab09@maggie>
Message-ID: <CACna6rxZqmC-n1iQGX+KnoPDFRx4gY1gV+td0gPi2wu_WnT1XQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 23 lipca 2011 10:37 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Sat, 23 Jul 2011 11:10:11 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> They are SPROM specific, so all should be defined in ssb code.
>
> Oh, well. I'm not sure.
> Most of these currently are defined in b43 code, because they are b43-specific
> and _not_ ssb specific. If we decide to define them in ssb, they need to be
> removed from b43, at least.

Well, SPROM is board specific (not 80211 core specific), so I believe
the same applies to boardflags, doesn't it? Boardflags are read from
SPROM, so it makes sense for me.

I planned to remove them from b43 and b43legacy and driver_pci. Just
wanted to provide minimal version for now, as John may want to take it
still for 3.1.

-- 
Rafa?
