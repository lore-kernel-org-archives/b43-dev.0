From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 01 Apr 2011 18:00:46 +0200
Subject: ChipCommon as independent driver?
In-Reply-To: <AANLkTikGp+ZFhTtsaW7E4SO_5trte1_eF4KLWbkwVty5@mail.gmail.com>
	(sfid-20110401_104947_004628_8A7D9C8C)
References: <AANLkTikGp+ZFhTtsaW7E4SO_5trte1_eF4KLWbkwVty5@mail.gmail.com>
	(sfid-20110401_104947_004628_8A7D9C8C)
Message-ID: <1301673646.5219.18.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org

On Fri, 2011-04-01 at 16:49 +0200, Rafa? Mi?ecki wrote: 
> Do you have idea how we could nicely solve that issue?

Yeah. Just don't share code between ssb and bcmai.
That's the only clean solution to that mess.

-- 
Greetings Michael.
