From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 9 Apr 2011 01:28:44 +0200
Subject: Wrong offset for SSB_SPROM4_ANTAVAIL?
Message-ID: <BANLkTin-p+XQaWRezBP4Ux7NvLf3cB26DA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

while matching SPROM content to its offsets, I noticed that
SSB_SPROM4_ANTAVAIL has an odd offset (0x5d)[1]. Shouldn't this be
rather even (probably 0x5c), since the SPROM consists of 16 bit words?

Regards
Jonas

[1] <http://git.kernel.org/?p=linux/kernel/git/linville/wireless-next-2.6.git;a=blob;f=include/linux/ssb/ssb_regs.h;h=402955ae48ceac9c118833bed28ca093407e4638;hb=HEAD#l290>

P.S: I currently lack the free space for yet another kernel git tree,
so I would prefer if somebody else fixes this - assuming my analysis
is right ;-)
