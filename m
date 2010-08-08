From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sun, 8 Aug 2010 17:45:02 +0200
Subject: Status of N-PHY rev. 0/1/2 support
Message-ID: <AANLkTikfVAyn+GnVK=m0a7kVtAVcVjL8piGHW7mtJeFu@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Looking through phy_n.c, it looks like everything is implemented for
early-revision (revs 0 through 2) N-PHY cards, modulo perhaps
calibration. Does anyone know what we still need to do before support
for early-revision N-PHYs can be enabled (such as potential SSB issues
similar to the infamous DMA error for LP-PHY)?

Thanks,
G?bor

(P.S. I'm writing because I started work on N-PHY code, but I wish to
complete support for the early revisions first before beginning to
write rev3+ code.)
