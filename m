From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Date: Sat,  3 Sep 2011 21:01:01 +0200
Subject: [PATCH 1/3] b43: drop Copyright for not really copyrightable info
In-Reply-To: <1315076463-11222-1-git-send-email-zajec5@gmail.com>
References: <1315076463-11222-1-git-send-email-zajec5@gmail.com>
Message-ID: <1315076463-11222-2-git-send-email-zajec5@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>

As discussed in "Licensing wlc_phy_radio.h and brcm80211" (Message-ID:
<AANLkTinQMRGkOvi4e4JMsHGV_BF_4Rf5oHCtZgQjwQ1g@mail.gmail.com>) content
of that file is not copyrightable, just names and numbers.

Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
---
 drivers/net/wireless/b43/radio_2056.h |   26 --------------------------
 1 files changed, 0 insertions(+), 26 deletions(-)

diff --git a/drivers/net/wireless/b43/radio_2056.h b/drivers/net/wireless/b43/radio_2056.h
index d52df6b..a7159d8 100644
--- a/drivers/net/wireless/b43/radio_2056.h
+++ b/drivers/net/wireless/b43/radio_2056.h
@@ -1,29 +1,3 @@
-/*
-
-  Broadcom B43 wireless driver
-
-  Copyright (c) 2010 Rafa? Mi?ecki <zajec5@gmail.com>
-
-  Some parts of the code in this file are derived from the brcm80211
-  driver  Copyright (c) 2010 Broadcom Corporation
-
-  This program is free software; you can redistribute it and/or modify
-  it under the terms of the GNU General Public License as published by
-  the Free Software Foundation; either version 2 of the License, or
-  (at your option) any later version.
-
-  This program is distributed in the hope that it will be useful,
-  but WITHOUT ANY WARRANTY; without even the implied warranty of
-  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-  GNU General Public License for more details.
-
-  You should have received a copy of the GNU General Public License
-  along with this program; see the file COPYING.  If not, write to
-  the Free Software Foundation, Inc., 51 Franklin Steet, Fifth Floor,
-  Boston, MA 02110-1301, USA.
-
-*/
-
 #ifndef B43_RADIO_2056_H_
 #define B43_RADIO_2056_H_
 
-- 
1.7.3.4
