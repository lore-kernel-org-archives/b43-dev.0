Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26DD9CCA490
	for <b43-dev@archiver.kernel.org>; Sun, 18 Oct 2026 20:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YEMCnQzhonWqLsgxuqrBVapX9JOHCGjBOAdOLiti/mI=; b=mB66HtRDuxRoIh
	i4aIe2l5tgI0Fj2ZdQdZoA7JeqyGhztrDAkMsqBCEIrszx1iwgWreWe2LnFqTDXEm19QS7zpG/QWY
	GhcNMzvgIHxbwuzc+dRmcw/wIiTs0BXrO5oZ9K9SrSbvJQRm4bWRE7fF+sfgPDqgE2Kj9Tco3rBNo
	zxjwMHpMJ+7un7rzeSTWo0cg0MLqFNll4bpuk5GiWY5o6f9IBU6ZrmYitVq1ety9hLltwbJd5SUY8
	iZ3w2+STFyHGOgyzuvbnUfjR9fwG73bFYRrZqnai+oUg+NRj3RXPkws88vXuwaaZcOpa5V/qOSlzW
	6bES2nw52b8V4tI8KnLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIXF0-00000006CM7-1e7A;
	Sun, 18 Oct 2026 20:12:22 +0000
Received: from mail-dl1-x122f.google.com ([2607:f8b0:4864:20::122f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIXEx-00000006CLk-3gND
	for b43-dev@lists.infradead.org;
	Sun, 18 Oct 2026 20:12:21 +0000
Received: by mail-dl1-x122f.google.com with SMTP id a92af1059eb24-16079d54c17so3528494c88.0
        for <b43-dev@lists.infradead.org>; Sun, 18 Oct 2026 13:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792354339; x=1792959139; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=9rxS8cu+8uQMWd8R4vCgJNNQUau1Y5Zq1kaWOXI5jNU=;
        b=HkKL64fly5Zmv85rluq2NQzVAtTABTSdEKwDSgbzdCH8X00cWNabYAGNwFbjnw2lDB
         dCy8ozu2SuZuWClfQ5g/4z/a7P4ucAe4yHRxT+la+uXPkXKag9KlxJyjLFE3h9/iSwAC
         uIIF6uOMh0d2rjMYOEehCwqR1QqqQtGkzAW2gne8gp/sw1HMqAogpvlBX5H4diZoY3sV
         exBCrJU6OK1GCMq2iEJ0LGdrWNX2qpImP05J7HjIp+cptPN4vRYhfV1WYzhf6Px9EAsB
         yCQsv3vBmHUDlpTvusioJYGlePoY50XX6SQ+3L7TgXTabu7NnZDj7Cgy49JXe1gGZOlG
         EFEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792354339; x=1792959139;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9rxS8cu+8uQMWd8R4vCgJNNQUau1Y5Zq1kaWOXI5jNU=;
        b=T5eH0teP1pvsfDULPY+IYWEl4CIDVeLqe8jB2FekUIM4qKukAK1WN5+NWPf0EjrGuq
         55IKyGkB5KeCsrMFqokLi82T1vMfDyhbeqt4ck6yHxHmqexdxu+LUFRRaABmBbdZXluf
         v4r6FTqlwmbDyb6vdbKctYE40xtl/8Uri/g/VrHQTbTs7NAYbCh4FbfVIkq8lUPnEDSM
         yQO7hKngqsFQgyVtkSRVQ9y7Ds4J55Bwze67QsIYhrMtTghm/XZTdzsXXP3krEPDLh1a
         WKGJpZwNOxKQejt/Joj7cwJiALyYi5c6uLuJPsw+DmKQNu7zEjxO6Ci8utz0dFY6DOwY
         N1gQ==
X-Forwarded-Encrypted: i=1; AKwUvBzHkNro3Hf8cOSOsTAwg6aK7vcQcfeSPwTzOfVe77tlQ4tcyEFFx/762K0nQ3PQPwxiBuikLfh7@lists.infradead.org
X-Gm-Message-State: AFq9FYIlE/Cnm8CB6eD2wfeoST5VaTfMzIMmGoJuAWrTee2ylxXitJ0x
	bGoyDgRyhrHUZaH2SIOmBw9uCBIcVQ7cPotEJLlQdj6W+lGZS+X/ce7PN2FyEFXj
X-Gm-Gg: AYBFou1WUykrQ8g5vfTz4dn/oWduklNFeNrCNCUW+eI6ghAmeE0t4NLEX/TRrB6vUT4
	Tvjfxz8Uv3Br3KeOPvhr3gN/xh5gAvBwQW6rED44Z/qcIdmm/sOMpQFCBgVm4m/eP1nNATcVbgs
	viu+DxCGdn6V99rWLigE86mvZ7Uz4bmg46eJuKXRAWbIMkCdLnZOUOsppB03fCqo0OyLDQVCXZR
	TS4S7XGGFxz/JoODBLgk6bnPW9yiPT3wvDkwOGYJDu6vpGXZTivkkVZuWMve8J+9DiIrS4ffNVM
	X8TkZONdlzmHD4xDNHzBDJtXx6KhZr+Z2pEFFH/sklfm8wGJqpJweiqxWAWKp4qexo3SZqkS7YQ
	tzxpYOpB8M1yC9vGE3/83NfP3JVYVctF+yG4e7CP2ibcL+ePAl/Oib8barcADZZy7GYRLGeRoZJ
	nF4R1rMwLlsPFnvWU2B2gDHH4ezp/Jh3cv1jb0Vu7TH07eC4/GyX1IrfukdZMRRBeWXJIkTyuwb
	ry/NUyGqIIpthQ0l1WdUd1CIL/jnKm4kbRu2difBF++mwWB75aZg3Dlznd10OlxTOX4A39ciVDB
	sCMshmZ3z8FKLxtBB3YC+QdVxSRk1o/a2OAGIyH27wAaG++E
X-Received: by 2002:a05:7022:f512:b0:144:c127:dd1b with SMTP id a92af1059eb24-18514256b0dmr8231019c88.39.1792354338635;
        Sun, 18 Oct 2026 13:12:18 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e34])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-185aaea8b24sm16046825c88.19.2026.10.18.13.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 13:12:17 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless] wifi: b43: keep the HT-PHY TX power control enabled
Date: Sun, 18 Oct 2026 13:12:16 -0700
Message-ID: <20261018201216.51975-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261018_131219_942657_6323FECF 
X-CRM114-Status: GOOD (  14.47  )
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

b43_phy_ht_tx_power_ctl() enables the TX power control by setting the
enable bits in TXPCTL_CMD_C1, then writes the saved TX power index of
each core to its command register. For core 1 that register is
TXPCTL_CMD_C1 itself, so the write clears the enable bits again, as
does the write of index 0x32 on 5 GHz. A TX power index is saved
whenever the control is turned off, which b43_phy_ht_op_init() does
before turning it back on, so the control ends up off and the TX gain
stays where the saved index left it.

Change only the index field of the command registers. With that, and
with the TX power estimates fixed, the hardware TX power control
(ht_txgain_idx=-1) keeps TXPCTL_CMD_C1 at 0xe019 as with wl, and a
BCM4331 holds its 2.4 GHz target power of 19 dBm from the SPROM: the
TX power control status registers report 19-20.3 dBm at gain indices
14-17.

Fixes: 60e8fb9233e1 ("b43: HT-PHY: implement controlling TX power control")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_ht.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_ht.c b/drivers/net/wireless/broadcom/b43/phy_ht.c
index fab8399c64f7..412e520bbcec 100644
--- a/drivers/net/wireless/broadcom/b43/phy_ht.c
+++ b/drivers/net/wireless/broadcom/b43/phy_ht.c
@@ -555,16 +555,23 @@ static void b43_phy_ht_tx_power_ctl(struct b43_wldev *dev, bool enable)
 	} else {
 		b43_phy_set(dev, B43_PHY_HT_TXPCTL_CMD_C1, en_bits);
 
+		/*
+		 * Only touch the index: the enable bits are in the same
+		 * register for core 1
+		 */
 		if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ) {
 			for (i = 0; i < 3; i++)
-				b43_phy_write(dev, cmd_regs[i], 0x32);
+				b43_phy_maskset(dev, cmd_regs[i],
+						~B43_PHY_HT_TXPCTL_CMD_C1_INIT,
+						0x32);
 		}
 
 		for (i = 0; i < 3; i++)
 			if (phy_ht->tx_pwr_idx[i] <=
 			    B43_PHY_HT_TXPCTL_CMD_C1_INIT)
-				b43_phy_write(dev, cmd_regs[i],
-					      phy_ht->tx_pwr_idx[i]);
+				b43_phy_maskset(dev, cmd_regs[i],
+						~B43_PHY_HT_TXPCTL_CMD_C1_INIT,
+						phy_ht->tx_pwr_idx[i]);
 	}
 
 	phy_ht->tx_pwr_ctl = enable;
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
