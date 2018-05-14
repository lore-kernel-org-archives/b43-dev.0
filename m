From: Chris Vine <vine35792468@gmail.com>
Date: Mon, 14 May 2018 18:49:53 +0100
Subject: Regression: bcm4312 lp-phy device not working in 4.17-rc5 kernel
Message-ID: <20180514184953.001c06412efcf2b16fdc59ac@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

I have an old netbook with a Broadcom bcm4312 802.11b/g lp-phy
[14e4:4315] (rev 01) wifi device.  This works up to and including the
4.16 kernel, but not with 4.17-rc5.

The b43, mac80211, cfg80211, ssb and mmc_core modules are loaded OK, as
is the firmware, and the wlan0 interface will come up, but any attempt
to use the interface fails and it cannot (for example) scan.

No useful error messages are given.  The interface (wlan0) is just
reported as not being ready.

Chris
