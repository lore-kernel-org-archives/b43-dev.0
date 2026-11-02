Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB0D606A326
	for <b43-dev@archiver.kernel.org>; Tue,  3 Nov 2026 00:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DZo41inv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=dQwYhtnx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=loUCqZu4+R3XNPhTEWix5eoyZLvr53wYrrmI6+8fAyA=; b=DZo41invG2pHJkeRF3zBHdJFWw
	U/nQ+aLid6gb7SJPdgFJVbdg8Bmhwda8mqT5zU2ug5+dzXH+lT0wNFCtkZ07rg4klQscAJ5Lx2iSt
	WqDuOithq2A0Taw0jWpcl8SkA+Lb++PmDe25SfpMZ8LMXGzehDPHNTI9cqA/dB3Zz57ubbRihpBKG
	u7QicY+B61dP1oWWtGVmd3ncWAL/pwAPxdPauL1WSsLfHVhiOHovErNoOuLKG8AqAUwpf5ye1pis7
	tJyhKk/PMC3RPdiHcT+KxKcgBTAWtINZ97jUB4bBXbVJCd7075WOdLqLu4dx4npcwRADTckXglxAS
	YPmUz2uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO1yw-00000000iir-3AKe;
	Tue, 03 Nov 2026 00:02:30 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO1yp-00000000ii4-1bYL
	for b43-dev@lists.infradead.org;
	Tue, 03 Nov 2026 00:02:24 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-48c4649b35bso3415970f8f.3
        for <b43-dev@lists.infradead.org>; Mon, 02 Nov 2026 16:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793664140; x=1794268940; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=PEieUWRDCjwpppauDb9b292JwszGMt/MN7eT0Sz8qIQ=;
        b=dQwYhtnxLblyRhofb7PyzwAV/3zjsiUc3YDKoRsWySWae9FkssRdCbRf7aH8nGVfTv
         7Fg5qJPPPcjaghZEOqngHwt5LsxRlG/l+JCXUOv74nfmMZ5/X0e+7w/FoPGu9FQ1zDEA
         i9gQkQl5T3kTd1Ch7pdeCtBgUyjVc+H1/Tlj7mcX2gMI7sj/ms3P3XoKKJXXOxD2OIt4
         mURgXH9fUPNQLRZ18SswMfvPWpsIsKwKozI2+OexzuPN5/GKA1D+Vfvrgp1v+UeI2AyT
         3R9kzsTfwRL9n4Wzbk5YnE/1iMPzlUi5hFqaU/L0QoW/cxUHYGtVq3xI7GCcI8+zMWJ7
         Y2HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793664140; x=1794268940;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PEieUWRDCjwpppauDb9b292JwszGMt/MN7eT0Sz8qIQ=;
        b=nCe1q5xFja9Vv45No9rZU/xq7F69OQkNT5VimN76tBeJ3uh3tZ4OvaX06Jw/+fk+Qd
         h6hdbJMwx8za9Wi73coiXrTFPO8lHzNEw5F3MKrNQk0E0ZrkLxB2jN4Ve3koQYk8ucZN
         qogs2zigWBSE7vDPleAgGSiv821dh6bFG4uG7/PUiUKqxgU9TN5/xSiuThuNwMIRB1bj
         H8QvE74lV6d5d40cp900JSBCnUSrwCqBLUInWWkH4aOhWEO1Q198GGHx4W5WVLyEveX5
         cdVk0odxhfOgqfbysJoiS0+YKc+8+yfSPTIIFwSSIY25Umq4j1IOqF20iKN/HYpaI+pa
         /Sbg==
X-Forwarded-Encrypted: i=1; AKwUvBygEz/qopVAYddigpnIoZsR7zuO7Ly2gC5A1zccN9sBOAOv9sOWCLCxVhUGEy+3Lkw8uaz4zUxB@lists.infradead.org
X-Gm-Message-State: APuU4Z8fMTWeSe1ggkmp688pb14QBor3c44zJBnXWyK1KYcu2wKRKqy3
	nR8cTkCxYBoKU/xPETKaQNWcBGS8XykYj2f5XoDx5HUMiRtRaMRVSGy3
X-Gm-Gg: AYBFou2d+mpUuuJujOTByr7K0qNV1C6I6uaT/yzXTFpkU2oQc9nhI83hgzuHMPdXqJe
	U12H11+DOoBCDN5BgbeyTMNLaiomflLpJAH2n0pwFLjon3p+oeFoZMd08r1Cc5tfKuNwb3mwcOY
	+gQEhYZRZYL0NZrzPfuVNnBrDQOuZLgEva3tV7Aeq1Qc5IlMya54ZjXG/MYOcunSMW4C1IiiseR
	GDoUA9EYggcVA0xBfUwAushPgYPKoAFNoZdfFCogQV1oSK2+zIjTBVlHJUB7vNi4TDg0sAvETzk
	ItSGi9wm7D1hD512atrHy9ihYs5t7NkcYcEn1oJ2XcNHjqkuwbKpzQ1oQLKtg81cnG2KXWnUu1U
	wXf1Pb/hLuFs/t1s+5+/1vQFOk0q92mDBNvkucNBsnl8utS2YSxytdx5kWMRWmcUpHtsL2iL9w6
	bWcaC9hj0vzNsiOVNlu5FYdF51YhqwRrwZqTLcvTR+nqLzS+fiN2obs3bNd039/+DpcfOovp3QG
	gvjZIFi/XxhacflkyWdnef5dk7dm5f63aS9AV7kbS9vJNIddJ+Uhct+8j/LcY+rfQX09Y/e49Ex
	+2G0+RJ1OByWEPlCZgzOT9Cp+485FuGyfMYC4pOuXIxLp2T9F/n9xXD+XZMipIksr+BeieKePei
	VkO+a355HTkhcCGVafY026V1/iNq/PgU97fqhsPRYSrQ6rn98CTy3J1ZmzhHaTw==
X-Received: by 2002:a05:6000:4a19:b0:48c:4442:54e with SMTP id ffacd0b85a97d-48e6e4f4405mr24090280f8f.30.1793664139625;
        Mon, 02 Nov 2026 16:02:19 -0800 (PST)
Received: from DESKTOP-D7IGS5L.localdomain (123.20.61.94.rev.vodafone.pt. [94.61.20.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b78c10sm21748687f8f.25.2026.11.02.16.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 16:02:18 -0800 (PST)
From: Marco Martins <marcomartins86@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: Johannes Berg <johannes@sipsolutions.net>,
	=?UTF-8?q?Michael=20B=C3=BCsch?= <m@bues.ch>,
	b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH wireless-next] wifi: b43: fix missing beacons by starting at the next TBTT
Date: Mon,  2 Nov 2026 23:59:39 +0000
Message-ID: <20261102235939.156522-1-marcomartins86@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_160223_447326_C39F50B3 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -1.9 (-)
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

b43_set_beacon_int() programs the first TBTT one beacon interval after
zero, as if the TSF started there. The hardware compares it with the
low 32 bits of the TSF. Up to 2^31 us past it, it moves it on by whole
intervals and beacons. Further past, it leaves it and sends no beacons:
on a BCM5352 (core rev 9, firmware 666) the TBTT stayed at 0x19000 for
over six minutes while the low 32 bits of the TSF ran from 0xd1d508fa
to 0xe7f71356.

Without beacons there are no DTIMs, so the frames held in the multicast
ring for stations in power save are never sent. The ring fills and b43
stops the queue of the frame that filled it, best effort for most
broadcasts: stations still associate, but get no DHCP lease.

The TSF is not reset when beaconing starts, so an AP that starts with
the low 32 bits of the TSF in the upper half of their range does not
beacon. With one interface, starting the radio resets the TSF, so this
needs beaconing to start again while the radio stays up, or a TSF taken
from other stations in IBSS or mesh mode. The first was tested: hostapd
stopped and started again on an interface it had found up, which it
leaves up, with the TSF set to 50 minutes in between by b43_tsf_write().
The TBTT stayed at 0x19000 and no TBTT interrupt came for over 20
seconds; with this patch the TBTT was just ahead of the TSF and the
interrupts went on. IBSS and mesh were not tested.

This was found with an out-of-tree patch that runs a station and an AP
on one b43 radio, as a repeater: the station interface keeps the radio
up and synchronises the TSF to its AP, and an AP restarted beside it did
not beacon whenever it started in that half. With this patch it did, in
the same half.

Where the hardware does move the TBTT on, the beacons go out at
multiples of the interval in the low 32 bits only, which are not the
TBTTs once the TSF has passed 2^32 us: 2^32 us is 4 TU more than a
multiple of 100 TU, so they are 4 TU off for every 2^32 us the TSF had
run when beaconing started.

Program the next TBTT from the TSF instead, as ath5k does.

The bug was found, and this patch and its description written, with an
AI coding assistant (Claude Code, model Claude Opus 5.5), asked to find
why phones got no DHCP lease from the repeater after its AP restarted.
It read b43 and mac80211, added debug hooks to b43 that dump the TSF,
the TBTT registers and the DMA rings, and ran the tests on the device.

Fixes: a82d992261f7 ("b43: Beaconing fixes")
Signed-off-by: Marco Martins <marcomartins86@gmail.com>
---
Tested on an ASUS WL-320gE (BCM5352) running OpenWrt 25.12 (backports
6.18, built for MIPS without warnings) with the out-of-tree station and
AP patch: as a repeater, and as a plain AP with one interface.

Not done: no build or run of wireless-next or mainline itself, only of
the same function in backports 6.18; IBSS and mesh not tested; the
single-interface test set the TSF with a debug hook instead of waiting
50 minutes; beaconing resuming when the low 32 bits of the TSF wrap
around was not observed.

 drivers/net/wireless/broadcom/b43/main.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 3825b6a..5fa3cd9 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -1852,10 +1852,22 @@ static void b43_update_templates(struct b43_wl *wl)
 
 static void b43_set_beacon_int(struct b43_wldev *dev, u16 beacon_int)
 {
+	u64 tsf;
+	u32 rem;
+
 	b43_time_lock(dev);
 	if (dev->dev->core_rev >= 3) {
+		/* Start at the next TBTT, the next multiple of the beacon
+		 * interval on the TSF. The TSF need not be near zero, and the
+		 * hardware sends no beacons for a start more than 2^31 us
+		 * behind it.
+		 */
+		b43_tsf_read(dev, &tsf);
+		tsf >>= 10;
+		div_u64_rem(tsf, beacon_int, &rem);
+		tsf += beacon_int - rem;
 		b43_write32(dev, B43_MMIO_TSF_CFP_REP, (beacon_int << 16));
-		b43_write32(dev, B43_MMIO_TSF_CFP_START, (beacon_int << 10));
+		b43_write32(dev, B43_MMIO_TSF_CFP_START, lower_32_bits(tsf << 10));
 	} else {
 		b43_write16(dev, 0x606, (beacon_int >> 6));
 		b43_write16(dev, 0x610, beacon_int);

base-commit: 991a73f4909f1348ffb4b38765cdb522a775e4c2
-- 
2.53.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
