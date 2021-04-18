Return-Path: <SRS0=VEjH=JP=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1745FC433ED
	for <b43-dev@archiver.kernel.org>; Sun, 18 Apr 2021 08:40:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61AA261207
	for <b43-dev@archiver.kernel.org>; Sun, 18 Apr 2021 08:40:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 61AA261207
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kptpTlupo9P1Aa/88P1gngaFOi2KnjljDCUGfmo3y9k=; b=U2QZNEhslBD3yB6AzMIHJhYKmX
	d5op4rMc5suV5LDvVi6PLD8hctYABkN3lkKyX4t7tIuDmVjkX/RiQyNES9o12zxx+M9Y5qSF9wiEQ
	YSV4fe/3XjrZXF62uk2fcUI6YoIKqZYrG3pfi+xAF/LGZgxLSDYwwEhk/CDjpeo5v2jO7KiQvqpr1
	uflsglxyHUjCy9Pcq/QOCkWnvXT8VWEaMqE+V7B53J2szxasvFiXVPauQxZiNMmpCeDmcgm7nv1Af
	t8QgXoyxHAet1Y8DhsoiVG4+E/rbU6AGr7jnzPnc89kZR1BfAfH2ucii1KlOmdkmtf1zfA0g5gBbC
	qrmTaMow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lY2yR-007W5j-4P; Sun, 18 Apr 2021 08:40:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lY2yK-007W5W-4q
 for b43-dev@desiato.infradead.org; Sun, 18 Apr 2021 08:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=k1wDSJjNSGWSCTU5eRsvAHpZuwW/3tmAnj5jy/JDNEk=; b=ev0GqfAZWKo5C6cFaR4rAZZyJ2
 XvduKs28XcyvCO/MXvskDKPcvBbneDwnl3nrfPDbIIbD5MMbiQ9l3YjDzTIPp4Cl/grulW9QMHam2
 6eWspOxtPjToChNiov1i5T0wiaH0j7sZF5hVtV7hRvlgurHKnEpsLXuUloyJO2mZqP//ZviYo9Fyl
 FOFvJDBvdR57sLwwUtoxau3D+JLkb7MjYoEaxAIvcZUHB5XDh1A+ecFMWL5zYoTKrN3X9w3dYZdbw
 sF9E4NNYBbnxgKtmWAgM8SkkKQhQJMkuf9PARQaT5cE/b9Agx6Gg+w7hxkESPwriOg9qLgTQ8Fazb
 2IEqQrzA==;
Received: from smtprelay0147.hostedemail.com ([216.40.44.147]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lY2yH-00AM2b-1L
 for b43-dev@lists.infradead.org; Sun, 18 Apr 2021 08:40:02 +0000
Received: from omf04.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 089F4181D337B;
 Sun, 18 Apr 2021 08:39:56 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf04.hostedemail.com (Postfix) with ESMTPA id 9FD9ED1513; 
 Sun, 18 Apr 2021 08:39:54 +0000 (UTC)
Message-ID: <8b210b5f5972e39eded269b35a1297cf824c4181.camel@perches.com>
Subject: [PATCH] net/wireless/bcom: constify ieee80211_get_response_rate return
From: Joe Perches <joe@perches.com>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller"
 <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>, Larry Finger
 <Larry.Finger@lwfinger.net>, Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Date: Sun, 18 Apr 2021 01:39:53 -0700
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
X-Rspamd-Queue-Id: 9FD9ED1513
X-Stat-Signature: wxh44ewt85uwut8m4fac3o6ad4fbuo6w
X-Rspamd-Server: rspamout01
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+G5UYbcY9U2RzhD4ADj2YOG2tye+AZKYQ=
X-HE-Tag: 1618735194-176317
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210418_014001_191067_B36F884C 
X-CRM114-Status: GOOD (  10.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

It's not modified so make it const with the eventual goal of moving
data to text for various static struct ieee80211_rate arrays.

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/net/wireless/broadcom/b43/main.c       | 2 +-
 drivers/net/wireless/broadcom/b43legacy/main.c | 2 +-
 include/net/cfg80211.h                         | 2 +-
 net/wireless/util.c                            | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 150a366e8f62..17bcec5f3ff7 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -4053,7 +4053,7 @@ static void b43_update_basic_rates(struct b43_wldev *dev, u32 brates)
 {
 	struct ieee80211_supported_band *sband =
 		dev->wl->hw->wiphy->bands[b43_current_band(dev->wl)];
-	struct ieee80211_rate *rate;
+	const struct ieee80211_rate *rate;
 	int i;
 	u16 basic, direct, offset, basic_offset, rateptr;
 
diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index 7692a2618c97..f64ebff68308 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -2762,7 +2762,7 @@ static void b43legacy_update_basic_rates(struct b43legacy_wldev *dev, u32 brates
 {
 	struct ieee80211_supported_band *sband =
 		dev->wl->hw->wiphy->bands[NL80211_BAND_2GHZ];
-	struct ieee80211_rate *rate;
+	const struct ieee80211_rate *rate;
 	int i;
 	u16 basic, direct, offset, basic_offset, rateptr;
 
diff --git a/include/net/cfg80211.h b/include/net/cfg80211.h
index 911fae42b0c0..ed07590bc72d 100644
--- a/include/net/cfg80211.h
+++ b/include/net/cfg80211.h
@@ -5606,7 +5606,7 @@ static inline bool cfg80211_channel_is_psc(struct ieee80211_channel *chan)
  * which is, for this function, given as a bitmap of indices of
  * rates in the band's bitrate table.
  */
-struct ieee80211_rate *
+const struct ieee80211_rate *
 ieee80211_get_response_rate(struct ieee80211_supported_band *sband,
 			    u32 basic_rates, int bitrate);
 
diff --git a/net/wireless/util.c b/net/wireless/util.c
index 1bf0200f562a..382c5262d997 100644
--- a/net/wireless/util.c
+++ b/net/wireless/util.c
@@ -24,7 +24,7 @@
 #include "rdev-ops.h"
 
 
-struct ieee80211_rate *
+const struct ieee80211_rate *
 ieee80211_get_response_rate(struct ieee80211_supported_band *sband,
 			    u32 basic_rates, int bitrate)
 {


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
