From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 17 Aug 2011 13:34:16 +0200
Subject: Question about versions: wl vs. brcmsmac
Message-ID: <CACna6rzdgENO-fCmm8tTVpuk_M7A88C7HgSGmTsjF3U8ZxDbYQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brudley@broadcom.com, henryp@broadcom.com, rvossen@broadcom.com, arend@broadcom.com, frankyl@broadcom.com, kanyan@broadcom.com
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

Hey Broadcom,

I've compare dump from wl with dump from brcmsmac and noticed some differences.

Some random ones for LCN PHY:
1) brcmsmac doesn't touch 0x663 register in PHY init
2) wl uses 0xfedb, brcmsmac uses 0xfe4b as some value for 0xb table
3) brcmsmac uses 0x3 instead 0x0 for radio reg 0x38
and so on...

My question is, which driver includes newer (more correct I hope) code?

I'm comparing brcmsmac from git with wl 5.100.82.38.

-- 
Rafa?
