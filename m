From: Dennis Yurichev <dennis_mailing_lists@conus.info>
Date: Thu, 20 Dec 2012 11:09:15 +0200
Subject: BCM4313 on Lenovo IdeaPad S10-3
Message-ID: <m34njh9jk4.fsf@conus.info>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi.

Got %subj%:

09:00.0 Network controller [0280]: Broadcom Corporation BCM4313 802.11b/g/n Wireless LAN Controller [14e4:4727] (rev 01)
        Subsystem: Broadcom Corporation Device [14e4:0510]
        Flags: bus master, fast devsel, latency 0, IRQ 18
        Memory at f0100000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: <access denied>
        Kernel driver in use: bcma-pci-bridge
        Kernel modules: bcma

On both 3.0.0 (from Ubuntu 11) and 
latest (commit 11520e5e7c1855fc3bf202bb3be35a39d9efa034 from git) 
kernels it works, but disconnecting too often... 

Anything I can do?
