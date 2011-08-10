From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 10 Aug 2011 19:15:15 +0200
Subject: [PATCH 2/2] b43: fix DMA on some bugged hardware
In-Reply-To: <CACna6rz0m7SDT=gn26yGQYa6w4KghabCcK8QfM_NmJmpgN2gcg@mail.gmail.com>
References: <1312992688-6976-1-git-send-email-zajec5@gmail.com>
	<1312992688-6976-2-git-send-email-zajec5@gmail.com>
	<20110810183339.7259d936@milhouse>
	<CACna6rxNV-d_YNrCOqFCz8cbmbiXh-OqOYkvYmXacJCHsJ74-g@mail.gmail.com>
	<20110810185534.5f4b9db9@milhouse>
	<CACna6rz0m7SDT=gn26yGQYa6w4KghabCcK8QfM_NmJmpgN2gcg@mail.gmail.com>
Message-ID: <20110810191515.1cb11eb1@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org


> kernel offers me addresses like:
> 0x000000001f310000

Yeah and that's why you didn't trigger the bug in the patch.
Extension is zero for both cases (low and high).

-- 
Greetings, Michael.
