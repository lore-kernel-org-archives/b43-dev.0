From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 1 Apr 2010 19:11:45 +0200
Subject: [RFT][PATCH] ssb: Look for SPROM at different offset on higher 
	rev CC
In-Reply-To: <201004011736.50440.mb@bu3sch.de>
References: <1270065561-4333-1-git-send-email-zajec5@gmail.com>
	<201004011736.50440.mb@bu3sch.de>
Message-ID: <l2tb170af451004011011nb230421cmfb5bcb3ac516eb7c@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Buesch <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>

2010/4/1 Michael Buesch <mb@bu3sch.de>:
> On Wednesday 31 March 2010 21:59:21 Rafa? Mi?ecki wrote:
>> Our offset handling becomes even a little more hackish now. For some reason I
>> do not understand all offsets as inrelative. It assumes base offset is 0x1000
>> but it will work for now as we make offsets relative anyway by removing base
>> 0x1000. Should be cleaner however.
>>
>
> What about fixing it correctly instead adding a hack?

See next 2 patches :)

I believe it does not add any hackish code, just exposes weirdness of
current code to bigger degree. Anyway as I said, I fixed this in next
patch I sent already yesterday.

-- 
Rafa?
