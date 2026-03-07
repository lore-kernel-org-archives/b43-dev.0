Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEAD6F55103
	for <b43-dev@archiver.kernel.org>; Sat,  7 Mar 2026 17:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9AdiVcHMQqQ5eHEhuw98Q/W9n+95jCXayGdHlsvW4IM=; b=Y5UBMEhy3CdXvX
	HZ4ClQv1L2ha02Lzc8c2u2dC1ZGWLnkb+oUosrmnUyx2mQlEItDglk7GXt6KgP2CMSnp4adq81qL6
	NUMuzfQWZOIK5a8rCM7tfFOjtdr0+jT+qwh5a4+YYX0le4tQc+4AY7Qs6qBZSSb8MV10jUQuHsINX
	wKXML8j4t9Zf2EMhPlvtRe9gqzV51fyxYacp7ZE7EfliHLhJ1CSPS8f0c6oN2Kw40TVrG2BC+Rxyh
	oJ40YlAb3TsiF93FiakGqoDwwCO+mCoMqDRHr0YmrAsbdgoZdkfTDDtxhM/o1W7VUmsFzH8FLX2Ny
	onphB0zUYD29I7kQ5Q/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyv2k-00000005NNc-0Mkf;
	Sat, 07 Mar 2026 17:02:22 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyv2d-00000005NNH-31xd
	for b43-dev@lists.infradead.org;
	Sat, 07 Mar 2026 17:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-953a8a3ca9; t=1772902931;
 bh=NFVlUbKudwsd2RoRt8SZg7LHgZtBORvUOp+m1jsIKrw=;
 b=ttdjNwnOanARB+lhb0NPJNEvFZ7YlZs8WI0pIyfJmVMBVWFn8NS2PsD1QO39Ys6d33MNbUoO9
 3I/TDhZZn7jLFSkwOGzDToPwIWxMitHqCF2iYN0QBko7UJJVOHikywpVIpbC8qA4QIc7+K3fT3C
 k+wOEVWxoLYR/h8GnIZNFKql3LZAS5/Bqi5sYlNNJO3EGgNrLwAhc1TGFD9w6969FJft9923t/V
 NpFNl1Bt0edK1DZFZxcny2E8hNONg37U2oh9OSEqNP3L0Rv8/mYkYynxxOHFTYPfiqIvnYusZS0
 FlgnPgWv5Xz4xsK+fFHiXmi71nNI6eCmdc+F3/NMdVxw==
X-Forward-Email-ID: 69ac5a116f9862d9de0d97b5
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.44
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Joshua Peisach <jpeisach@ubuntu.com>
To: linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org
Subject: [PATCH] wifi: b43: use register definitions in nphy_op_software_rfkill
Date: Sat,  7 Mar 2026 12:01:35 -0500
Message-ID: <20260307170135.167460-1-jpeisach@ubuntu.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260307_090216_020278_47910F7E 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>, Johan Hovold <johan@kernel.org>, Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Replaces uses of hardcoded register addresses with proper definitions,
for readability.

Signed-off-by: Joshua Peisach <jpeisach@ubuntu.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 26 +++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index bbc30cbad..22359bd9d 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -6566,19 +6566,19 @@ static void b43_nphy_op_software_rfkill(struct b43_wldev *dev,
 
 			b43_radio_mask(dev, 0x09, ~0x2);
 
-			b43_radio_write(dev, 0x204D, 0);
-			b43_radio_write(dev, 0x2053, 0);
-			b43_radio_write(dev, 0x2058, 0);
-			b43_radio_write(dev, 0x205E, 0);
-			b43_radio_mask(dev, 0x2062, ~0xF0);
-			b43_radio_write(dev, 0x2064, 0);
-
-			b43_radio_write(dev, 0x304D, 0);
-			b43_radio_write(dev, 0x3053, 0);
-			b43_radio_write(dev, 0x3058, 0);
-			b43_radio_write(dev, 0x305E, 0);
-			b43_radio_mask(dev, 0x3062, ~0xF0);
-			b43_radio_write(dev, 0x3064, 0);
+			b43_radio_write(dev, B2056_TX0 | B2056_TX_PADA_BOOST_TUNE, 0);
+			b43_radio_write(dev, B2056_TX0 | B2056_TX_PADG_BOOST_TUNE, 0);
+			b43_radio_write(dev, B2056_TX0 | B2056_TX_PGAA_BOOST_TUNE, 0);
+			b43_radio_write(dev, B2056_TX0 | B2056_TX_PGAG_BOOST_TUNE, 0);
+			b43_radio_mask(dev, B2056_TX0 | B2056_TX_MIXA_BOOST_TUNE, ~0xF0);
+			b43_radio_write(dev, B2056_TX0 | B2056_TX_MIXG_BOOST_TUNE, 0);
+
+			b43_radio_write(dev, B2056_TX1 | B2056_TX_PADA_BOOST_TUNE, 0);
+			b43_radio_write(dev, B2056_TX1 | B2056_TX_PADG_BOOST_TUNE, 0);
+			b43_radio_write(dev, B2056_TX1 | B2056_TX_PGAA_BOOST_TUNE, 0);
+			b43_radio_write(dev, B2056_TX1 | B2056_TX_PGAG_BOOST_TUNE, 0);
+			b43_radio_mask(dev, B2056_TX1 | B2056_TX_MIXA_BOOST_TUNE, ~0xF0);
+			b43_radio_write(dev, B2056_TX1 | B2056_TX_MIXG_BOOST_TUNE, 0);
 		}
 	} else {
 		if (phy->rev >= 19) {
-- 
2.51.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
