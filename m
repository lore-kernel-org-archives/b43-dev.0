Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D657CCF2D4
	for <b43-dev@archiver.kernel.org>; Mon, 19 Oct 2026 02:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aipbOgR1AUUrJoUULVlI3OAiYwFGmB3sG3iNcLBA2E4=; b=4moN69fc7PNdc6
	pRzLNghVxyg5h/jVt/+TyeGk9nSoQvCv3oPIHxsDaQ8eZX2epChki7YlYRIt4w3Oe/PZhVCeY9nbL
	U9hnV6Yvk1+wqnZsVqgTU5jxqTA526FmHA4vH6kts+N70+zzhi57qkqwFBhHeTVEQc8jAGAqfXK91
	CDyNV2rvN9IcBOEeDHu9Kks5RxKYbsm5QI1vMMEdDOaJhK87aqPs0YA67XDcpL6nhKigfW7SB8hfJ
	13+qvZw/rS1LHNq9ywJpQFdf3G889W9lk31nACrXHoW/ypPuno1YDhZ84PyIP32E0lEm17XFsKk8d
	6OgDUizkHQKenJY40YGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xId32-00000006Sok-0TCb;
	Mon, 19 Oct 2026 02:24:24 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xId2z-00000006SoM-0s0t
	for b43-dev@lists.infradead.org;
	Mon, 19 Oct 2026 02:24:22 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-3a7cfe8f761so1749758a91.1
        for <b43-dev@lists.infradead.org>; Sun, 18 Oct 2026 19:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792376660; x=1792981460; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2Gk59ct/zaCRueU3AFoIL4iyqvmR/bVU0l3fys1RicI=;
        b=ESrj9TBtxts0U+pVcd0fP9vR1uHlWQUZ7fiuVMlrvPlby3cuOmQQ8VFzzLdW+an1Kl
         UuNScedP84JQBGuwFmjnwoj9lHvkKtqYGC6WdoOvuh1IbcmmdwKo8qLc7RCtwL8Ce8ec
         xkZHEcqAt+3Y2vCPtKg3lKjOGJY990kSlCuQDtXMWZ4HSZyfQ15fYIVyP6I6Z0MrAk7t
         Z7LowCP9WXjijZHFxy2A9fiumg4Fb6x7ppfMGyDhirXdKkzkn+/PvHTRTmw0J0l2Aibf
         9VHHoW0EtZUISndTpBtyX6gZldFs8xlxMNnYWcJaDIz//Q3lWmWONnJ7aBL9H09G0nwI
         O/ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792376660; x=1792981460;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2Gk59ct/zaCRueU3AFoIL4iyqvmR/bVU0l3fys1RicI=;
        b=SBcSllxbl5r1ChHwRE+xRxqYhbRrD+kMU1kPmcKN8ruBuJeZ1RCx+wT+rq/5RYMugD
         VugSkcptzSbPpd48koeKRfSbTbXSZOoWpdWkbM4tTYgVKvwm03LssYGCV/nMcKlXYPWd
         FTWPFOilgOd0tUv8tOS8l7un+qeyFkWsscLnC+WTk/XFQ6VcrMS2VgRYhnhW8HdQ7DzR
         i1+GUk/ZjiYUg0KU58ZR3A3uEQWxaS1FdDCq6mKmf4e59Q7mHj9Pj9idLb6mFazIwbvG
         IcgI2pMciW/o8N5dLHOFu4B+9lGT9Up2qjcQncnbtvMMsp7dD7CYzhzPKaU74EHuJYHC
         N5WQ==
X-Forwarded-Encrypted: i=1; AKwUvBwfWav6n/Q1Bl8/SfB0yp4zy9hNAL0vyroeObDpCcHt7oqfbdH/6FI+y1leEdJ9sd4lcHdXU3OM@lists.infradead.org
X-Gm-Message-State: AFq9FYKxpteTrX9i9+yhWeEhWTQcOI4vyNAoFmCOIjmTfE3Y8Kex/sDF
	WtWjSu2DYrOtlkHGegMh/pWV42jTDhop+Ra7cNS4jFCGfMTxwyD0sU2d
X-Gm-Gg: AYBFou1WxEauq9F1yjoS7RejYlvXSrzC63x6K+BMTcRune00pQBP7wU/8ety1jmQWbf
	qVybEo8abAWYYIXjtp5URFvCRyosFtK+0AzaEOD3T6HgM7TAw6P1qCKPkru5KtMnowet8PlYJR9
	oB98KbmXhosC7w+mqG8VqAU2U17bSBKMtDmyTroCTX1HoKvJQyXL8OAye/O6sBoUS1AHdcg2m9L
	uwO8fjXJKZ4y3A7F37plztYS6Qj1dKIsDdyzC8KgndZf/WST5EIAm2hTjSO9KGShNjEFBtDGSLw
	ml+t0154TELeliQTyG4kPB7tHE9yq0e+s0ihHcYA9QNVGiRVw0+F3RHI50narVJ25wOYP4IS6h9
	rWM62GQMsoBlItMX9qqFNL8Zu2eZBzjtHSqHenL0ejVm5pA97LrE3/Q3/OehEiZ1CaWZKvuXGW9
	aeJowOz+q3MxHa8+3k91+38+5tS503XEzWrGwVd8RhIuJFygTxCtmpBVBKXn4iVFG7K88fqTOrK
	AaqtXWQVMyVY43eZvUCiXsX/SZqDJUdPmSXVvpCKxrOQyU1f9JeKstZTL1dgJvhltN94QHtNZW4
	3Ii2jdCcP5s9oWcN0sTEcD985JsDx+UgBFf0vR5Mg33Rj4x70hz//b3f8ny5
X-Received: by 2002:a17:90b:5108:b0:3ac:8741:e2ec with SMTP id 98e67ed59e1d1-3acbb3d5753mr7030690a91.1.1792376659959;
        Sun, 18 Oct 2026 19:24:19 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ac9474b52fsm21169534a91.9.2026.10.18.19.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 19:24:19 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless] wifi: b43: fix 2.4 GHz reception on HT-PHY
Date: Sun, 18 Oct 2026 19:24:18 -0700
Message-ID: <20261019022418.236356-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261018_192421_253660_CB5CF1E3 
X-CRM114-Status: GOOD (  18.82  )
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
Cc: open list <linux-kernel@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, "open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On a BCM4331 (HT-PHY rev 1, radio 2059 rev 0) b43 barely receives in
the 2.4 GHz band, with or without HT: against an access point half a
metre away, 15-45% of the pings are lost and iperf3 runs at 0-3
Mbit/s each way. The 5 GHz band works.

An mmiotrace of wl 6.30.223.271 on the same card shows two things b43
does not do:

- wl writes PHY table 9, 48 entries, on every PHY init in both bands.
  b43 never writes it.
- wl writes the RX gain tables 0, 1 and 40 (one per core) and the gain
  code tables 2, 3 and 41 on every band change, with different values
  for 2.4 and 5 GHz. b43 only writes entries 8-11 of tables 0, 1 and
  40, once at init, with values that are neither.

Write table 9 at PHY init and the gain tables on every channel setup,
with wl's values for the band. Replaying wl's state on the card showed
that table 9 is needed for any reception at all, and the gain tables
for full throughput. This also answers the old question of whether wl
meant table 2 instead of 40: table 40 is the gain table of core 3.

With an RT-N16 access point on channel 6 without HT, iperf3 now runs
at 15 Mbit/s each way, and 2 of 40 pings sent right after association
are lost.

Fixes: 98f8dc72ac50 ("b43: HT-PHY: init: add missing small-tables writes")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_ht.c    | 62 ++++++++++++++++---
 .../net/wireless/broadcom/b43/tables_phy_ht.c | 11 ++++
 2 files changed, 65 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_ht.c b/drivers/net/wireless/broadcom/b43/phy_ht.c
index fab8399c64f7..b6c200cba715 100644
--- a/drivers/net/wireless/broadcom/b43/phy_ht.c
+++ b/drivers/net/wireless/broadcom/b43/phy_ht.c
@@ -760,6 +760,58 @@ static void b43_phy_ht_spur_avoid(struct b43_wldev *dev,
 	b43_phy_ht_reset_cca(dev);
 }
 
+/*
+ * The RX gain tables depend on the band. Tables 0, 1 and 40 hold the gains
+ * of cores 1, 2 and 3, tables 2, 3 and 41 the matching gain codes. Values
+ * from wl, which writes them on every band change.
+ */
+static void b43_phy_ht_gain_tables(struct b43_wldev *dev,
+				   enum nl80211_band band)
+{
+	static const u8 gain_tbl[] = { 0, 1, 40 };
+	static const u8 code_tbl[] = { 2, 3, 41 };
+	static const u16 gain[2][4][4] = {
+		{ { 0x10, 0x10 }, { 0x0b, 0x11, 0x15, 0x1a },
+		  { 0xfd, 0x07, 0x07, 0x07 } },
+		{ { 0x0d, 0x0d }, { 0x0e, 0x14, 0x18, 0x1c },
+		  { 0xff, 0x07, 0x0b, 0x0b } },
+	};
+	static const u16 code[2][4] = {
+		{ 0, 1, 1, 1 }, { 0, 1, 2, 2 },
+	};
+	bool ghz5 = band == NL80211_BAND_5GHZ;
+	int core, i;
+
+	for (core = 0; core < ARRAY_SIZE(gain_tbl); core++) {
+		u8 g = gain_tbl[core], c = code_tbl[core];
+
+		for (i = 0; i < 2; i++)
+			b43_httab_write(dev, B43_HTTAB16(g, i),
+					gain[ghz5][0][i]);
+		for (i = 0; i < 4; i++) {
+			b43_httab_write(dev, B43_HTTAB16(g, 0x08 + i),
+					gain[ghz5][1][i]);
+			b43_httab_write(dev, B43_HTTAB16(g, 0x10 + i),
+					gain[ghz5][2][i]);
+			b43_httab_write(dev, B43_HTTAB16(c, 0x10 + i),
+					code[ghz5][i]);
+		}
+		for (i = 0; i <= 0xa; i++) {
+			if (ghz5) {
+				b43_httab_write(dev, B43_HTTAB16(g, 0x20 + i),
+						i < 2 ? 0xfa : 0xfd);
+				b43_httab_write(dev, B43_HTTAB16(c, 0x20 + i),
+						i < 2 ? 1 : 2);
+			} else {
+				b43_httab_write(dev, B43_HTTAB16(g, 0x20 + i),
+						i < 0xa ? 0x00 : 0xfd);
+				b43_httab_write(dev, B43_HTTAB16(c, 0x20 + i),
+						i < 0xa ? 1 : 2);
+			}
+		}
+	}
+}
+
 static void b43_phy_ht_channel_setup(struct b43_wldev *dev,
 				const struct b43_phy_ht_channeltab_e_phy *e,
 				struct ieee80211_channel *new_channel)
@@ -801,6 +853,8 @@ static void b43_phy_ht_channel_setup(struct b43_wldev *dev,
 
 	b43_phy_ht_spur_avoid(dev, new_channel);
 
+	b43_phy_ht_gain_tables(dev, new_channel->band);
+
 	b43_phy_write(dev, 0x017e, 0x3830);
 }
 
@@ -946,14 +1000,6 @@ static int b43_phy_ht_op_init(struct b43_wldev *dev)
 	b43_phy_maskset(dev, B43_PHY_OFDM(0x0141), 0xff00, 0x46);
 	b43_phy_maskset(dev, 0x0283, 0xff00, 0x40);
 
-	b43_httab_write_few(dev, B43_HTTAB16(00, 0x8), 4,
-			    0x09, 0x0e, 0x13, 0x18);
-	b43_httab_write_few(dev, B43_HTTAB16(01, 0x8), 4,
-			    0x09, 0x0e, 0x13, 0x18);
-	/* TODO: Did wl mean 2 instead of 40? */
-	b43_httab_write_few(dev, B43_HTTAB16(40, 0x8), 4,
-			    0x09, 0x0e, 0x13, 0x18);
-
 	b43_phy_maskset(dev, B43_PHY_OFDM(0x24), 0x3f, 0xd);
 	b43_phy_maskset(dev, B43_PHY_OFDM(0x64), 0x3f, 0xd);
 	b43_phy_maskset(dev, B43_PHY_OFDM(0xa4), 0x3f, 0xd);
diff --git a/drivers/net/wireless/broadcom/b43/tables_phy_ht.c b/drivers/net/wireless/broadcom/b43/tables_phy_ht.c
index 1acf2df66e5e..7952584c0170 100644
--- a/drivers/net/wireless/broadcom/b43/tables_phy_ht.c
+++ b/drivers/net/wireless/broadcom/b43/tables_phy_ht.c
@@ -14,6 +14,16 @@
 #include "phy_common.h"
 #include "phy_ht.h"
 
+/* Written by wl on every PHY init; without it 2.4 GHz reception fails */
+static const u16 b43_httab_0x09[] = {
+	0x0000, 0x0000, 0x0002, 0x0000, 0x0001, 0x0001, 0x0003, 0x0001,
+	0x0000, 0x0000, 0x0002, 0x0000, 0x0001, 0x0001, 0x0003, 0x0001,
+	0x0000, 0x0000, 0x0002, 0x0000, 0x0001, 0x0001, 0x0003, 0x0001,
+	0x0000, 0x0000, 0x0002, 0x0000, 0x0001, 0x0001, 0x0003, 0x0001,
+	0x0000, 0x0000, 0x0002, 0x0000, 0x0001, 0x0001, 0x0003, 0x0001,
+	0x0000, 0x0000, 0x0002, 0x0000, 0x0001, 0x0001, 0x0003, 0x0001,
+};
+
 static const u16 b43_httab_0x12[] = {
 	0x0000, 0x0008, 0x000a, 0x0010, 0x0012, 0x0019,
 	0x001a, 0x001c, 0x0080, 0x0088, 0x008a, 0x0090,
@@ -796,6 +806,7 @@ void b43_phy_ht_tables_init(struct b43_wldev *dev)
 	BUILD_BUG_ON(ARRAY_SIZE(b43_httab_0x1a_0xc0_late) !=
 			B43_HTTAB_1A_C0_LATE_SIZE);
 
+	httab_upload(dev, B43_HTTAB16(0x09, 0), b43_httab_0x09);
 	httab_upload(dev, B43_HTTAB16(0x12, 0), b43_httab_0x12);
 	httab_upload(dev, B43_HTTAB16(0x27, 0), b43_httab_0x27);
 	httab_upload(dev, B43_HTTAB16(0x26, 0), b43_httab_0x26);
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
