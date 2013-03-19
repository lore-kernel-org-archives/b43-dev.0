From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 19 Mar 2013 09:38:07 +0100
Subject: [PATCH 00/13] b43: implement basic TX power mgmt
In-Reply-To: <1363642245.26810.24.camel@shinybook.infradead.org>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
 <1363171283.32099.343.camel@i7.infradead.org>
 <CACna6ryEBFqg1ORRcbob+FWcFGiMt9fOfQAkAov9wmoR8M4Fxw@mail.gmail.com>
 <1363273116.4853.58.camel@i7.infradead.org>
 <CACna6ry4bxZROnoBpu7S39e+cDure79nmzhLY8228Zuxecdt3w@mail.gmail.com>
 <1363642245.26810.24.camel@shinybook.infradead.org>
Message-ID: <CACna6ryWQotHJ+RTneJ_ESKppQ4Zv2XS=Xe1TrqwX8C94yTR9A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Woodhouse <dwmw2@infradead.org>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2013/3/18 David Woodhouse <dwmw2@infradead.org>:
> On Sat, 2013-03-16 at 14:50 +0100, Rafa? Mi?ecki wrote:
>> To verify my theory, could you try reverting
>> 4969b41798e512689bba57c8c44d873216eba814, AKA
>> b43: HT-PHY: enable basic TX power setup
>> ? Does reverting this patch brings you back ~4.1MiB/s?
>
> Fairly much, yes.

Thanks. I'll add workaround for your card, but it needs fixing reading
board info in ssb/bcma/b43.

-- 
Rafa?
