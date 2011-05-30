From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 30 May 2011 09:45:49 +0200
Subject: Request for testing b43 & Broadcom 14e4:4315 cards for DMA ERRORs
	(Linux 3.0)
In-Reply-To: <BANLkTi=fgGTvjdQ0Ghd15CBoYzd9TLU2CQ@mail.gmail.com>
References: <BANLkTi=fgGTvjdQ0Ghd15CBoYzd9TLU2CQ@mail.gmail.com>
Message-ID: <BANLkTikNq-nkOA8V04ymOzU-6E89w9SCUA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 30 maja 2011 09:22 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> I believe we've fixed that errors in Linux 3.0-rc1. Can you give it a
> chance and report back?

I'd like to say (and you should too) big thanks to Juan, who gave me
access to his affected machine and spent a lot of time testing. He
even bisected kernel on his Atom pointing us to hrtimers regression.


If this is going to work, I've some annoying info for Larry.

I can not tell which of the recent b43/ssb commits were really needed
for solving this issue the final one was "b43: implement timeouts
workaround". The tricky part is we got very similar patch ready 1,5
year ago [0], by Larry!

The mistake done by Larry was applying workaround on PCI(e) core
instead of 80211 core. I've noticed that when comparing
"ssb_read32(SSB_IMCFGLO);" after cold boot between ssb&b43 and wl.
Drivers read different values from hardware, so it was a hint we were
doing this on a wrong core.

[0] http://lists.berlios.de/pipermail/bcm43xx-dev/2009-December/006592.html

-- 
Rafa?
