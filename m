Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08A60A5BC9
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=L5y4107u;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KLusUv8Q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iFBFYZigUjTfqvJaitjriMQFKg/nnJ4hRp2kFHYDiYs=; b=L5y4107unBf4uQ6L9upDzBCwtz
	jr+VsG7h5y2OwFf8cLUHPr2bt3gYqSB2sOsy9ibdzRBmv2ehzJ60SxHnaQzxHWOG3qqWSSunt4ftO
	xOOS7aK7qcjTUuiI0ZWGXUFvPPpZfpsRp1Uxg5F/BtumY7+YGdhirEZAkNICfZTeCVj2wHDqZaslm
	yr6idLqwIFSHrgrNqMuQSpBLwWMj+jOyBa+Cpo1V29ttCmBxZgTGx9ZNHEq8DLxnvg85B5WytmJTa
	FAmBGR/dvkHpDycH3qflVGVDBK26LBHkAQE1INnqvGgW1qcnfiL2XmSp4BOaQpoqR0Gye/Sb3SzDK
	dZd4iIzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2Y-0000000AoWL-3Smq;
	Thu, 12 Nov 2026 17:56:50 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2T-0000000AoRS-2Lis
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:56:46 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-48dfc0421d9so33288f8f.1
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506203; x=1795111003; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bVukesRVZXuCwNfxWw9b9XoFHDuzUlJG4NqmqHbHpsU=;
        b=KLusUv8Q64BUU77UHWHzBMWB+DVycZ/6FFCqQVIJeqaV3rlH/YZJYS9p3vMx073APO
         hgnat9mp2djMN07Bzf0yoHgLtniQjBCQokRC3ZG2PcO5Oefp0byqoYYqyuSTvO7PGErF
         uJqp2lrVEts7SgWGkcCavIRULtdX5sYnBAUg2K0+vSWAVyI1J0ce/rAmoEX1GApd5LbF
         FPsDoKLm1Mo2pk1En+KTzwmyaGdl84/I7GlBZr83XNnm5bqwaJMn4ReLBaE95WgTEqks
         UT9o9Xx1dLYAKs21Q1OanMVozBWt24d9WuxIPzSggKOHSFQykIw2FBUwoPB2EGQaUDfy
         NEzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506203; x=1795111003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bVukesRVZXuCwNfxWw9b9XoFHDuzUlJG4NqmqHbHpsU=;
        b=yZ5Oo1zFZHpvW+jNalFJHYy0kw1Xt8XhKNP4AhhiPj73+BITL1XJRuiM6pj7XskGNV
         nPq/aNirJy3zNsu9X0jnOx3FWIVg/r8ID/Qf0SmNXcPePC7R9+IxfM4YRyOctA2nm1Rh
         Eg0sjFMUO6ZHbDp9aH4klqe03/DrtVqS277/u2qOlv6CAeOw1ObbrXReQpVkqbPdk/PJ
         esIx35A9pWbkohyQF2mjk7Ky7LPJR4F0akhaYEyAYri0nrZP/06pze1txfQbgyCino5a
         s90zYc6vZywMfI882G2/6WzDAepcpfkRdrMu4U4RvoBOnam9M8OX/KLt626DPEEBIivu
         /Bdw==
X-Forwarded-Encrypted: i=1; AL+hErFbM5e+soS6K16Ben4bwS4xKA5xyiUBkb91JsTpcYj1v/sAwIqDF7LTZopPpnCSESg7pkj6806q@lists.infradead.org
X-Gm-Message-State: APuU4Z8PkbijR6azzzelKPbJ5DU5BRapT2QMBMiR29qdGqSFDbLjOIDP
	G3qRSeB6T7zfUL2O+OodtsxcLAtVulD2jg7nYur31RhJ2mxHs524ldiW
X-Gm-Gg: AYBFou3cFhCr+XmUtPWjoy/rnInEqMScHq34QSOGlbvQXhZMRn9hl1l+20p/zGxkdTf
	XLAqSBQKBkCphPjiBFaJALIwDuLulPn6h7z4qE/uWjF0qbG1/JyZRi8nup9pMuAV3MifFDiNK4+
	vtMveX9rtrdZlTjnqttwOLk5LSeBFFjs1PEzYXmsS9BWyuqUaykvpGtf68yGwK5lrHBt0qIwuSJ
	BMVKkNPvfIIHKlhgJcZ7Sf+5na2p9c8Cf5VyO+eE0/mNu9HxdQBOuvqAWMmbHVLvbD8L+1yyYg7
	yclg4MWt8az4dmnFkzQLPHM7FuPUXUsRWBAwQR/4h5tndICYED17XF6ogwbip82yECyapC02LL+
	D2QMjsEHE/Aj2VoeRlSvU91HfGvYwOpkwEVbEfSGAfdKklVuH1AHeSOhgboDLkDeCECQNBmgzRP
	Phn6lfn0kGJ4FsNXq+60IqmJGGFk3MwAEgT5bnpuLnFU6XlXRt2crnnJ1PnA9c7sVlF2NA4EX1D
	keZnYd/W/TcN+3liAAdYcT44562acxReEoF7qnTayewFZJX8zKyj96mTnrXPEIp/vPdEjdFZlK0
	ayc+SWgAyfKUbH6CwV2k3c6SpUFNu9Npy9/KgDVyhnIilEZmU+FFxF0Uwt+6ZRHFWtetQq8ctnM
	BcDh2e6JTwMpc5A92q+PIDh6lAQSBZXQpzwK3MmKWja7+QTdN0yiGKlrtTHAukgjaPgRRqdPes2
	BJs0nr4N3F8btBNxcSpTNhxsUqDXXaIzBV/4J/mYa0JyqJz3H3HZpV7R11QsXockc=
X-Received: by 2002:a05:6000:2411:b0:48d:df08:307c with SMTP id ffacd0b85a97d-49c726da6a6mr271994f8f.44.1794506203353;
        Thu, 12 Nov 2026 09:56:43 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c5f1c193fsm547430f8f.13.2026.11.12.09.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:42 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 1/4] wifi: b43: 11ac chanspec for the AC microcode
Date: Thu, 12 Nov 2026 18:56:37 +0100
Message-ID: <20261112175640.40603-2-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261112175640.40603-1-gonsolo@gmail.com>
References: <20261112175640.40603-1-gonsolo@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095645_658952_78AF6F30 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: jpeisach@ubuntu.com, julian.calaby@gmail.com, kvalo@kernel.org, linux-kernel@vger.kernel.org, rosenp@gmail.com, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The AC microcode keeps an 11ac chanspec of the current channel in SHM
(where older microcode keeps the channel cookie) and takes one in every
TX descriptor and puts one in every RX header: the channel, 0x1000 for
20 MHz and 0xc000 on 5 GHz.

Add b43_ac_chanspec() and use it for the channel cookie in
b43_switch_channel(). The TX and RX header patches that follow use it too.
Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_common.c | 13 +++++++++++++
 drivers/net/wireless/broadcom/b43/phy_common.h |  7 +++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/phy_common.c b/drivers/net/wireless/broadcom/b43/phy_common.c
index 285490f..cfc14c1 100644
--- a/drivers/net/wireless/broadcom/b43/phy_common.c
+++ b/drivers/net/wireless/broadcom/b43/phy_common.c
@@ -413,6 +413,17 @@ void b43_phy_take_out_of_reset(struct b43_wldev *dev)
 	}
 }
 
+/*
+ * The 11ac chanspec of a primary channel as the AC microcode takes it in
+ * SHM and in the TX and RX headers: channel, 0x1000 for 20 MHz, 0xc000 on
+ * 5 GHz.
+ */
+u16 b43_ac_chanspec(struct b43_wldev *dev, unsigned int channel)
+{
+	return channel | 0x1000 |
+	       (b43_current_band(dev->wl) == NL80211_BAND_5GHZ ? 0xc000 : 0);
+}
+
 int b43_switch_channel(struct b43_wldev *dev, unsigned int new_channel)
 {
 	struct b43_phy *phy = &(dev->phy);
@@ -428,6 +439,8 @@ int b43_switch_channel(struct b43_wldev *dev, unsigned int new_channel)
 	/* FIXME: set 40Mhz flag if required */
 	if (0)
 		channelcookie |= B43_SHM_SH_CHAN_40MHZ;
+	if (b43_ucode_is_ac(dev))
+		channelcookie = b43_ac_chanspec(dev, new_channel);
 	savedcookie = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_CHAN);
 	b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_CHAN, channelcookie);
 
diff --git a/drivers/net/wireless/broadcom/b43/phy_common.h b/drivers/net/wireless/broadcom/b43/phy_common.h
index 5ec5233..c20a20e 100644
--- a/drivers/net/wireless/broadcom/b43/phy_common.h
+++ b/drivers/net/wireless/broadcom/b43/phy_common.h
@@ -390,6 +390,13 @@ void b43_phy_take_out_of_reset(struct b43_wldev *dev);
  */
 int b43_switch_channel(struct b43_wldev *dev, unsigned int new_channel);
 
+/*
+ * 11ac chanspec of the AC microcode, and the centre channel of the 80 MHz block
+ * of a 5 GHz primary (0: none)
+ */
+u16 b43_ac_chanspec(struct b43_wldev *dev, unsigned int channel);
+unsigned int b43_ac_80mhz_centre(unsigned int channel);
+
 /**
  * b43_software_rfkill - Turn the radio ON or OFF in software.
  */

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
