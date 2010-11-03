From: Jason <b43@lakedaemon.net>
Date: Wed, 03 Nov 2010 12:28:36 -0400
Subject: pci id 14e4:4727 (bcm4313) status?
Message-ID: <4CD18DB4.60405@lakedaemon.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

All,

I have a pci-express card that shows itself as pci_id 14e4:4727.  According to [1], it says partial support since 2.6.33 (b43/wl/brcm80211).  I was hoping that meant b43 since it has much better mac80211 integration than brcm80211.  I didn't think brcm80211 was in 2.6.33. 

However, compat-wireless (built from tarball) doesn't see it.  grep the source code doesn't pull up '4727' in b43... I tried to update my wireless-testing-2.6 tree, but it looks like it's still having trouble, latest is 229aebb... from Oct 24th.

So, what will it take to get it up and running?  I've contributed some patches to staging, but they're mainly janitorial/checkpatch stuff for brcm80211.  Are there some beginner tasks for b43 (ie dig through brcm80211 and port over) that might help out?

thx,

Jason.

[1] http://linuxwireless.org/en/users/Drivers/b43#Known_PCI_devices
