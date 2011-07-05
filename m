From: Thomas Zwaagstra <gurutonic@gmail.com>
Date: Tue, 05 Jul 2011 02:25:17 -0700
Subject: b43 and BCM4322 reports full signal strength for all AP
In-Reply-To: <4E0ACF42.5020300@gmail.com>
References: <4E0ACF42.5020300@gmail.com>
Message-ID: <4E12D87D.8010606@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hey everyone,

I'm running B43 from compat-wireless-3.0_rc4-r4 with the BCM4322 in my
macbook pro 5,2.  It seems to work, except that every AP shows full
signal strength / quality. Is this a known issue or should I be doing
something to debug this? Beyond that, the connection is sometimes
unstable and slower than broadcom's WL.

However, monitor mode and injection work great on B43.  Scanning/init
also seems to be much faster using B43.  With WL, it takes significantly
longer to connect to my AP after boot or waking from suspend.

Can someone also verify that I'm using the correct firmware?

lspci: 04:00.0 Network controller: Broadcom Corporation BCM4322
802.11a/b/g/n Wireless LAN Controller (rev 01)

04:00.0 0280: 14e4:432b (rev 01)

Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]
b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)

Thanks,

Tom
