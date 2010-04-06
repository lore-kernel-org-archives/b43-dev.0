From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 06 Apr 2010 11:53:53 -0500
Subject: PCIe setup routines
Message-ID: <4BBB6721.3030201@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

There are routines in
http://bcm-v4.sipsolutions.net/PCI-E#PCIe_Attach_.28int_state.29 that I
don't think have been implemented.

I still have a question about getting an MMIO address from sprom[x].
That is how the 0x280A address is picked in the code I sent earlier;
however, I don't see any of the other addresses in those routines being
used on my card. I still need to find where that array is filled in
Broadcom's code.

Larry
