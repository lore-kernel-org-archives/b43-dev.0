From: David Woodhouse <dwmw2@infradead.org>
Date: Mon, 18 Mar 2013 21:30:45 +0000
Subject: [PATCH 00/13] b43: implement basic TX power mgmt
In-Reply-To: <CACna6ry4bxZROnoBpu7S39e+cDure79nmzhLY8228Zuxecdt3w@mail.gmail.com>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
 <1363171283.32099.343.camel@i7.infradead.org>
 <CACna6ryEBFqg1ORRcbob+FWcFGiMt9fOfQAkAov9wmoR8M4Fxw@mail.gmail.com>
 <1363273116.4853.58.camel@i7.infradead.org>
 <CACna6ry4bxZROnoBpu7S39e+cDure79nmzhLY8228Zuxecdt3w@mail.gmail.com>
Message-ID: <1363642245.26810.24.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Sat, 2013-03-16 at 14:50 +0100, Rafa? Mi?ecki wrote:
> To verify my theory, could you try reverting
> 4969b41798e512689bba57c8c44d873216eba814, AKA
> b43: HT-PHY: enable basic TX power setup
> ? Does reverting this patch brings you back ~4.1MiB/s?

Fairly much, yes.

-- 
dwmw2

-------------- next part --------------
A non-text attachment was scrubbed...
Name: smime.p7s
Type: application/x-pkcs7-signature
Size: 6171 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130318/48eecab4/attachment.bin>
