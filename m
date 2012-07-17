From: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Date: Tue, 17 Jul 2012 22:16:12 +0200
Subject: [PATCH v3 0/0] mac80211: Restructure ieee80211_tx_info->control to
 gain free space along tx-path 
Message-ID: <1342556174-23769-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, ath9k-devel@lists.ath9k.org, ath5k-devel@lists.ath5k.org, ilw@linux.intel.com, users@rt2x00.serialmonkey.com, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, chunkeey@googlemail.com, buytenh@wantstofly.org, dsd@gentoo.org, coelho@ti.com, johannes.berg@intel.com

In order to enable new annotations per data packet along the max80211 tx-path,
(e.g. upcoming Transmit Power Control (TPC) per packet) this patch-serie does:

- fix the ieee80211_tx_info->control usage in driver mac80211_hwsim
- remove control.sta from ieee80211_tx_info and adapt all affected drivers


Greetings Thomas                                                                                                                                                                                                                        

---
CC list is a reduced "get_maintainer.pl", focuses on mailing lists - suggested
by J. Berg
