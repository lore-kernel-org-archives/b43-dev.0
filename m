From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 17 Jul 2012 11:44:50 +0200
Subject: [PATCH 2/2] mac80211: Remove control.sta from struct
 ieee80211_tx_info and restructure tx-path
In-Reply-To: <1342205545-45382-3-git-send-email-thomas@net.t-labs.tu-berlin.de>
 (sfid-20120713_205245_114771_49FF4AC7)
References: <1342205545-45382-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
 <1342205545-45382-3-git-send-email-thomas@net.t-labs.tu-berlin.de>
 (sfid-20120713_205245_114771_49FF4AC7)
Message-ID: <1342518290.7427.9.camel@jlt3.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, ath9k-devel@lists.ath9k.org, ath5k-devel@lists.ath5k.org, ilw@linux.intel.com, users@rt2x00.serialmonkey.com, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, chunkeey@googlemail.com, buytenh@wantstofly.org, dsd@gentoo.org, coelho@ti.com

Ok first of all, please actually compile the tree after your changes. It
doesn't. When it does, please fix
 1) line length in the commit log should be < 72 chars
 2) indentation in mac80211.h
 3) removal of an important comment in mac80211.h that I pointed out in
    previous review

> The tx-path of all affected drivers is restructured to respect the chaneged
> layout of struct ieee80211_tx_info. List of modified drivers:
> ath9k

Please also remove the driver list. git can tell you the modified files
very easily.

johannes
