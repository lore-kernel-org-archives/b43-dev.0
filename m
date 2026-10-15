Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03AA8C2D0A6
	for <b43-dev@archiver.kernel.org>; Thu, 15 Oct 2026 17:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qfd6DnQJJvhBRx1UltPJGRqz9E97R4mw7mMr6dVzEDE=; b=NXHiKu1m5eUAE2
	LIFeCGRqysGkNOAzVrOFXEmkUnRY2Am381Q3WocVEjR4nhiRIpNPoNbP4n8rBWEmzQp83l/P/r0rA
	+8IPstpmQ/0BX8Vc8DfB30m7kEY5BaTj0IOONrJZ2/Xc72HrXcosidl55GzYnIwvAzQ6ChHYeeqgT
	DEjw7ZwtafhQVOu6O/b+mQO+MgiT2Bb7MrawOJK/6CvCTVoeSpxQRj3e2+k9PC/ZNV2QZ/RW/vKoz
	zZ6XqG2Jtmvt1NwHItTl62lACsIO5DlzrRuIrOQws0EcpcKdnnlgSpoY8lISHmVJ3vd2fkNR5Tg5J
	nR3wlOVGOV+4o/Dys8lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHPjv-000000014rG-2CJB;
	Thu, 15 Oct 2026 17:59:39 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHPjn-000000014qL-2oMx
	for b43-dev@lists.infradead.org;
	Thu, 15 Oct 2026 17:59:32 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-3a8adb68d8bso4098953a91.1
        for <b43-dev@lists.infradead.org>; Thu, 15 Oct 2026 10:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792087170; x=1792691970; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=8tNWr37CC42Ka+uvECNVbGDgTVEoQtysQmgz0bCFrXs=;
        b=Tv5KAPDbQZ28/IauEEZvGKN2QWn1UYsatAVENGGSSkCFTdB9ObuL6SotmDAU80lov2
         eyjYiVtLPWPFmqOEtBE+L/ZqD2YU4kUUJcUsKhdz3cfCM4ms/fetEAXsr800Kmb5VBiV
         HmGNxTGeCsGA0BYlvd1Bgg4V/8z5njBkzrQ9bYBoE9/NKkqyevwvX2qKtGqzoQuLll66
         1c67Y/fwt/zgwWslKoArpLQVNTjOEDajFWIu5p5fIN+qhEcDB+Y/wTwnjre6RqBWsETf
         cc7k1jlItULAzqqtrorNADgCPZIgQoNEFHSckPXYSd+DNq/7Js9HQtgGR3+FfLC1NTyx
         7adQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792087170; x=1792691970;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8tNWr37CC42Ka+uvECNVbGDgTVEoQtysQmgz0bCFrXs=;
        b=pD2Q3EIDYI0Qz4XOyw8S8veAJKj8FBMtpnkFNnk6glDyIzG2uKVyFUvsXaQCl2kNJ/
         hHjdkgqn7ilhVTvcuK6y/K09xbn+RFKSMoQuAxyFaxPEevSDwioa2MtAAKcTqsVyskRv
         1JIEy6oZYP9Pc/fnIB2roiP2ejLBjRlENvEJVtKVwG7SioIDuVu1MS0B+7MqubNZHEos
         5IPG010NJ27dnm1orT9NWr0MMZ6HfaLdyyBKtQsIM1f2BM0CR8hFhxAcTZDpzRDsQoeX
         GHivyGkpmzvoyNipZNFK5hcduo5td3Win311GML6zxtwwdOvUztMzZtRmYzY4YRxF86G
         dIYA==
X-Forwarded-Encrypted: i=1; AKwUvBzFTv1LlUavxMveHc8KR3rzWR+2emnNYW2dOj534K8BwxBSdNM5KDC5P3HApmR06CJbOH2kDPF/@lists.infradead.org
X-Gm-Message-State: AFq9FYJxrufDQ0aQ91w/WgHF1W84A3zC76F8DMlrNPCfqdXh1mcOLsMH
	eKHgpslr5ZdX1050/5t/w08boRg+YXGTIOzvlA6bwSkCjQ5Gp7rmhv6w
X-Gm-Gg: AYBFou39REZJ8cTrGT2a7k9g0IUC5RcvDOBeqArVE8RVQdZzIU62c9LS3R+C89q6hQu
	dNrX1XDUosEsUG3QE0YdjcJE6JfOc5fnLF0nBMswWsq5StgB1KHybclpD7f36N82evqcK7biCpw
	ca9YXVKOwOgPEGN4AbbWK0mP5DSRbVBu2fd3uzMHxzI5k6qEHLgji+c7cUP7kL2u38hpAKLbPnT
	EaamFyxKzZD6FKFhdkyRO2iGFwruo6IhzXjU6t7y4mybTIa/2gcADi9gFj4RhwQsIKv/nwC8z59
	6jGhj3wlarSh2346bcyqmDdiVoyxY+jn6quAh8FmHUd0pqPZ8P/pAuSIhZjGkgHvyEZ+3hKdgUJ
	16dsWDbO/QX9Nz6zdDNOu2Wp4WKND3U0Pe+YikSxQkmU6yOYavH87VvhlRBdvOUXpqPr1+LSsAz
	RN6j9swqOvUyyQO3YdUkC9UlGFNDBIHI7JPi+lILqIA6GxRk3ZYFlLHx2RaJpbVqm1uGEVhML7X
	FQMBIkWSbarcL65yZMP/WFO/MxJkWI3oMXU/sA6RK/9Dmzar2/B09gROyjTLz7bTFQr6NOeONc5
	i/nMzaowxpxLQuph/oN/bUSmjan51LQ9FgvBh90VGemHI6i5
X-Received: by 2002:a17:90b:1a87:b0:3ac:a6a5:5743 with SMTP id 98e67ed59e1d1-3aca6a55a10mr2003749a91.32.1792087170220;
        Thu, 15 Oct 2026 10:59:30 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e36])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ac947928b4sm5075835a91.11.2026.10.15.10.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 10:59:29 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH wireless] wifi: b43: back off the N-PHY TX power per rate
Date: Thu, 15 Oct 2026 10:59:28 -0700
Message-ID: <20261015175928.3558057-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_105931_718294_E663110D 
X-CRM114-Status: GOOD (  14.66  )
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
Cc: "open list:B43 WIRELESS DRIVER" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, "open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On N-PHY rev 3+ the hardware TX power control aims at the highest
per-rate target, and an adjusted power table backs each rate group off
from it. b43 fills that table from nphy->tx_power_offset[], but never
sets the offsets, so they stay zero and every rate is sent at the power
allowed for CCK.

The SPROM power offsets exist to avoid this: on boards with external
PAs, OFDM and MCS rates have to be sent a few dB lower than CCK to
keep the PA linear. Sent at full power, 16-QAM and 64-QAM frames are
too distorted to decode. On an ASUS RT-N16 (BCM4718, N-PHY rev 5,
radio 2056, ofdm2gpo 0x66666666) the router could only send at 6-18
Mbit/s and MCS 0-2, even at -50 dBm, and 24 Mbit/s and up or MCS 3 and
up delivered nothing.

Set the offsets from the per-rate targets b43 already computes from
the SPROM, as brcmsmac does, before the table is built.

With this, the RT-N16 sends at 54 Mbit/s, and at MCS 7 with HT
enabled, and TCP from the router to a client goes from 9 to 17-18
Mbit/s.

Fixes: 8615eb2870f1 ("b43: N-PHY: support setting custom TX power")
Assisted-by: LLM
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 22359bd9db47..c9b2b7496983 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -5834,6 +5834,7 @@ static enum b43_txpwr_result b43_nphy_op_recalc_txpower(struct b43_wldev *dev,
 	struct ieee80211_channel *channel = dev->wl->hw->conf.chandef.chan;
 	struct b43_ppr *ppr = &nphy->tx_pwr_max_ppr;
 	u8 max; /* qdBm */
+	int i;
 
 	if (nphy->tx_pwr_last_recalc_freq == channel->center_freq &&
 	    nphy->tx_pwr_last_recalc_limit == phy->desired_txpower)
@@ -5868,6 +5869,16 @@ static enum b43_txpwr_result b43_nphy_op_recalc_txpower(struct b43_wldev *dev,
 	/* Make sure we didn't go too low */
 	b43_ppr_apply_min(dev, ppr, INT_TO_Q52(8));
 
+	/*
+	 * The hardware power control aims at the highest per-rate target.
+	 * The adjusted power table backs other rates off from it, so that
+	 * e.g. 64-QAM isn't sent at the power allowed for CCK.
+	 */
+	max = b43_ppr_get_max(dev, ppr);
+	memset(nphy->tx_power_offset, 0, sizeof(nphy->tx_power_offset));
+	for (i = 0; i < B43_PPR_RATES_NUM; i++)
+		nphy->tx_power_offset[i] = max - ppr->__all_rates[i];
+
 	/* Apply */
 	b43_mac_suspend(dev);
 	b43_nphy_tx_power_ctl_setup(dev);
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
