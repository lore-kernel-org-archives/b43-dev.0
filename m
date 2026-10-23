Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90B2606A31B
	for <b43-dev@archiver.kernel.org>; Fri, 23 Oct 2026 19:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B13ZcFu5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=n0+HLt7T
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=zKo6Dadv7Gr/d71kjJD3qm1vePF1DAZeU7ys5GrpAtI=; b=B13ZcFu570QYb9cWeph/1tCmg0
	RVZdbS3HSzFpKKvDd7wg7WkBfcFzYOmAmY1JJ0NoI/wQIYd2uoREFjKVoNsS4e86RR6rMs99V4Kgq
	wUwDiLJwLLf36nJRh7nAfmsUNC31wtlB4TBWGUCGjccti12+4oIvECbG8SIbSOIR3PuJulcyx12jP
	sp7AuWC3a5leTlU7S6FwVJVfVmWDLGHRPb08WYqdbOWM8QtZTeNi4/o+2iL9r8TT7AtcITwLcEGtp
	AxAL05zRyEca+HN+nXdjBouXrjty/srmYOpdJUiTf7c8FdC5RHXJAH1+5zihQbUQVojwS0sjB8mtn
	5SABqJoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKKdr-0000000Gq2f-23a5;
	Fri, 23 Oct 2026 19:09:27 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKKdo-0000000Gq2H-3Dh2
	for b43-dev@lists.infradead.org;
	Fri, 23 Oct 2026 19:09:25 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-3282db206d3so1196028eec.0
        for <b43-dev@lists.infradead.org>; Fri, 23 Oct 2026 12:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792782564; x=1793387364; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=N2r7UOrv8eZqrgzadXu3xwusx/htufx1GM5LO5xd2W0=;
        b=n0+HLt7Tw9D5+vpPRguT5gRAmr9+zrIg4/syXGoM8ssGGB/5a462bIIsTL4qvVqyyf
         Wh4ZcOJ1Fv4cenlVgcWcqjDWnsrCjaDnL+E6PDaadjdwYuSiUBGytshfzG6OvSeVeKZl
         pI7Q4JEz3T/fsxcoJxPCc5d/OhxCsx1RGCFNydusdEN93rt+2cCL/VBq2n0p31Y2PkvL
         E7g5bPg6num9DoIt1hfGlfnvK17aH5swHrsX0WCwQyFk+13bRkOgn28PuqWVjjiQ2wD7
         btjTZShNT11yVQZCI04lUCV6kR2gMndwH9Hbfa4MSiAXHMcgQL964y6Ei7N1EP7juMAA
         tBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792782564; x=1793387364;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=N2r7UOrv8eZqrgzadXu3xwusx/htufx1GM5LO5xd2W0=;
        b=at8njxIR7wAA0OH914+tPzeRzBawZrF9h3xDB24/61TuSTWAl0OvfETwR6umceNfwu
         P3r2m2mpTS/++iB2xGinfqWXjFMXYpUtgQwcMJ0WDSkXJrh3D5aLLoqRU/AKDarRleb7
         WvEZPK9QOqbGPy6k9P4Sqj9xJpo/E899hDP1Rz07/aW7VSxkuHgqDUp2qGN/R4o+voyX
         HQkKY9VHVG5qr6LyjofZ6ylKxVUEHYoYtdqFuR+HrVWcq80ene0z3oFT8w60IyK7sqpQ
         UkdGHR8Wtpy56CLnyiKbS7wBCe5FodmPCgd0U++Wzbsa+gzPTyFm6nKyJ4+KvEGnbAP1
         2zdQ==
X-Gm-Message-State: AFq9FYI/fIhDJlZYXuXbXcwQo3yqiETtwYiwcz3HbmkDjyQwwKwLngSi
	YMG6XaKqJjdSTeOCTRwyDADkPFgcFlMRiypDUYP1RBvFxtVLFCyhIiyI
X-Gm-Gg: AYBFou1Tm2s+qaoSy3WRqgKw6RuvD9fHiHnVjpzkoanrZmkshnsxwkigeEJ6Q7XLkOW
	TMhEHkUxgz0sOwDWS/yae0eyLrG72J6ubNTEnk1XJ8+g9tnKwdkDpx8U+15EEo/XIMR/2MU8Z4M
	iopE8Q7t3oLm224pRZS6ZBqj6jvWCgvrhu8apjKLFU2jKPPuwffjN09mLlGYx4IpEyEWN/PRbB0
	tQHaKDGXm4NzlNyEyg8TahW6+ORa0m+7Ts1l89YdLfDnqLA/QKurE1574+C0E5/6BSPsSg2z7Y2
	5uOs9/2pEHCTz6ZOeR3QxUBvXVFwX/PzWqMURepNsjEKVZl3Pcn9rOhc9Bi1+km/cYKvDycNqNc
	UCNMrDJoPvSXFY/WNE9tTPOmdBl50+0TZy3qirTYoLH1nyneoDkjIhP6LF1A12AtwSNOTwqb3A+
	7ieBbX3n96/7KMxhxFoq+SlIt/ETbG70snMw3X49kTv5zKqijQn0cyZQdpOByD8Iyi5INWJLW7K
	mkpAfuBKaPSmaMLhezZCjKAntnY4vFua2cVUEebW2cSw8CvrjM/vZbpss5V+Zv9UimB5oO9Jl9A
	qDFS5WOYU9ojmgNHlCgOnCLhjLBCzprky/WboPR7XMmHJa7WLCicxzBoH5zjENS4D4MOf8OnB8X
	24V3isCqEwjQNVHvsiPO0wKpNeuto
X-Received: by 2002:a05:7300:80ca:b0:369:e918:3c95 with SMTP id 5a478bee46e88-369e9184604mr68042eec.4.1792782563590;
        Fri, 23 Oct 2026 12:09:23 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:37f::e34])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8daa3a8sm159990eec.16.2026.10.23.12.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 12:09:22 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org (open list:B43 WIRELESS DRIVER),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH wireless] wifi: b43: apply the TX power limit set on the interface
Date: Fri, 23 Oct 2026 12:09:21 -0700
Message-ID: <20261023190921.73237-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_120924_833127_C7C10068 
X-CRM114-Status: GOOD (  13.20  )
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

A TX power limit set with "iw dev <dev> set txpower" never reaches the
hardware. mac80211 keeps such a limit per interface and only passes it
to the driver as BSS_CHANGED_TXPOWER. The power level of the hardware
configuration, which b43_op_config() turns into the desired TX power,
is only recalculated for a limit set on the whole wiphy, or when the
channel changes.

Take the TX power of the interface on BSS_CHANGED_TXPOWER as the
desired TX power, and recheck the TX power right away, as
b43_op_config() does.

Fixes: 1ea6f9c0d48b ("mac80211: handle TX power per virtual interface")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 3825b6ad9f4f..01e3e80b43a5 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -4161,6 +4161,17 @@ static void b43_op_bss_info_changed(struct ieee80211_hw *hw,
 	}
 
 	b43_mac_enable(dev);
+
+	/*
+	 * mac80211 passes a TX power limit set on the interface only here,
+	 * not in the power level of the hardware configuration.
+	 */
+	if (changed & BSS_CHANGED_TXPOWER && conf->txpower > 0 &&
+	    conf->txpower != dev->phy.desired_txpower) {
+		dev->phy.desired_txpower = conf->txpower;
+		b43_phy_txpower_check(dev, B43_TXPWR_IGNORE_TIME |
+					   B43_TXPWR_IGNORE_TSSI);
+	}
 out_unlock_mutex:
 	mutex_unlock(&wl->mutex);
 }
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
