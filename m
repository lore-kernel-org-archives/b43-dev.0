From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 15 Mar 2013 07:33:27 +0100
Subject: [RFT][PATCH] b43: DMA: debug rings alignment
In-Reply-To: <2764885.SxiT7ALNty@wks001.ise.net>
References: <1363293681-23385-1-git-send-email-zajec5@gmail.com>
 <8990870.3kQAHQdGWn@wks001.ise.net>
 <2764885.SxiT7ALNty@wks001.ise.net>
Message-ID: <CACna6rw=q_KaD7Wa9=9V49TNRq7g7=huV5yf+aQ-vsHTP=2ZBQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2013/3/14 ISE Development <isedev@gmail.com>:
> On Thursday 14 Mar 2013 21:58:18 ISE Development wrote:
>> Will start testing now...
>
> Here's the output:
>
> [38667.424687] b43-phy0 debug: [DBG] Testing TX on ring 0x200: 0x0
> [38667.424733] b43-phy0 debug: [DBG] Testing TX on ring 0x240: 0x0
> [38667.424787] b43-phy0 debug: [DBG] Testing TX on ring 0x280: 0x0
> [38667.424840] b43-phy0 debug: [DBG] Testing TX on ring 0x2C0: 0x0
> [38667.424894] b43-phy0 debug: [DBG] Testing TX on ring 0x300: 0x0
> [38667.424948] b43-phy0 debug: [DBG] Testing RX on ring 0x200: 0x0

Whoops, so this hardware doesn't support unaligned addressing (address
based, not index based). My alternative solution won't even apply in
this case. Thanks for testing.

-- 
Rafa?
