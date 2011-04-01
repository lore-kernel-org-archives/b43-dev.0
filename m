From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 1 Apr 2011 18:06:16 +0200
Subject: ChipCommon as independent driver?
In-Reply-To: <1301673646.5219.18.camel@maggie>
References: <AANLkTikGp+ZFhTtsaW7E4SO_5trte1_eF4KLWbkwVty5@mail.gmail.com>
	<1301673646.5219.18.camel@maggie>
Message-ID: <BANLkTin2ZaBVbum9Y=iqWTwW4kzkdKAJnA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org

W dniu 1 kwietnia 2011 18:00 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> On Fri, 2011-04-01 at 16:49 +0200, Rafa? Mi?ecki wrote:
>> Do you have idea how we could nicely solve that issue?
>
> Yeah. Just don't share code between ssb and bcmai.
> That's the only clean solution to that mess.

Do you want to have core drivers separated as well? Really? Should we
have separated pci core? chiccommon core? gige core? 80211 (b43) core?

My mistake was to include ssb_private.h in separated chipcommon.

-- 
Rafa?
