From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 31 Jul 2014 22:33:06 +0200
Subject: [PATCH 3.18 3/7] b43: flush some writes on Broadcom MIPS SoCs
In-Reply-To: <53DAA5DD.7050608@hauke-m.de>
References: <1406836788-23704-1-git-send-email-zajec5@gmail.com>
 <1406836788-23704-4-git-send-email-zajec5@gmail.com>
 <53DAA5DD.7050608@hauke-m.de>
Message-ID: <CACna6rwZdcW9KC+dyvm+tUjVvvLJ+TnObY-_Ew6fXmpLqFW0qg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: "John W. Linville" <linville@tuxdriver.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 31 July 2014 22:23, Hauke Mehrtens <hauke@hauke-m.de> wrote:
> A comment in brcmsmac says this is only needed to work around a bug in
> the host pcie controller of 4717, 4718 and 4706. I haven't noticed this
> problem with BCM4706, so it could be that it is already fixed in the
> shipped version of bcm4706.
>
> The comment says the following:
> bcm4716 (which includes 4717 & 4718), plus 4706 on PCIe can reorder
> transactions. As a fix, a read after write is performed on certain
> places in the code. Older chips and the newer 5357 family don't require
> this fix.
>
> This commit did the cleanup:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=6a9a25eec0b55ea45e22710a9bcaf9690cb42fe6

Any idea why Broadcom didn't own comments and didn't enable it for
bcm4716 and bcm4706 only?

-- 
Rafa?
