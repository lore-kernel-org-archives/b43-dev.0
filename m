Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F364FCA9ED0
	for <b43-dev@archiver.kernel.org>; Tue, 13 Oct 2026 00:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BdMyD+jXW7LLwYqiMTgZdDpsa9KjS8c2lWr3MnLEIBU=; b=ubDphJMpVZMOS9
	F6WgASSgR2yiry87kwUdSCAPU9u1W/JyWf31geRwd+rWRzKdfAzI8pmBWHaNAadirEyN4EHqWHtrw
	4pI0VSsa+XHyk4H/YBzPIwKpQlIwpE2ca7Qwsu4Wo+/u5cVWjWb4xtxhvyrShkfLRQu+sfBIqLsUh
	sBZ1BamDKCJMCmIgZBhAGPXH8SLsPt+U5+gw6a+NRGYJ0Q6t2AOuMgURGPdLeE69M0cFhJsRaLP+R
	WBSHVGOivsoymFLM8PKihNUdVxyYcIwoRjHRwbRaRsk9A9I82uoDPffghSj3gBwkDfzUUC+ohFFjr
	SjBQB2iOy02To8CHClcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGPyB-0000000Bh6A-32T0;
	Tue, 13 Oct 2026 00:02:15 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGPy7-0000000Bh5i-24KG
	for b43-dev@lists.infradead.org;
	Tue, 13 Oct 2026 00:02:14 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-c31a34de844so354882166b.3
        for <b43-dev@lists.infradead.org>; Mon, 12 Oct 2026 17:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791849729; x=1792454529; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=tXW/owfqKGVcmAOIQp0k47hmuuHXvmL9jkkhytfXhXc=;
        b=aeh+514V9Y7gJmYDS/+V5ByP9EPueSw0qLAl9WrBycrXGspHoLm8lpzq9Hm6cTcG3W
         9K8ZjyXOdpYAuHW/CzZ24ccZGoz6RwMB+tkKmXTzZMWXJNU/J5ikczkxMDP5Qmix8kuj
         C4+blx8Hab4+lLOL245Bix//fKzoT7vX+0mvzxiDtxUJK594VqeBLSkqN8MvXNj1YnBj
         DxCPiSaA/CksFtcxfHgCSiSfHIichfljOs3DHNnRWrb/QY/g7zOuajELFvzxqz5GEUhk
         AqQn8AOGzYOTs8xlcjTq/Y1KoNjgFFYBwOfjromhfNy5mkrpXdWCMv45arkL3CZ8Vo8w
         V+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791849729; x=1792454529;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tXW/owfqKGVcmAOIQp0k47hmuuHXvmL9jkkhytfXhXc=;
        b=cQz9ni1G52bqQ5J1gVtP0HBSKKGW64wOZT5D7gkBFo6eEFXxzSqH7Y+xnxQfQN3YQS
         1/dPMUOMV8kegVtrCODoQxTNkmu4GJiMpSNWmMGlt4PyyvVCQ86qX330hrkn+tzz5crp
         U3mXeBoyUdneBslVXNAgvtzr4GFZVXSJQtDWrLprDRDkNhw4Rlzl1cLrJRJJLontyrfN
         xtWlMVQCCsfPjNtVFVDuIC557oksFWLsi9ITk34IB/2eaP0dVx5u6Z3R+7lFa8HLzwFk
         nDspNXdZgZXphvRVP329w2h3Mlj75avJ/StNlJ3w2xFw8OZAdJri6YOfKhZj3HTSrH6V
         M8PQ==
X-Gm-Message-State: AFq9FYLG1LVpd+jwhpd4azVKs3RL3vo6oSQPvG/XNs5WW1mO1tU5NYAf
	MTMZC0k2Foyranp2/7+UYkR3mJEAAEAtkHt5oHCovinR7RcZuCvNi8do
X-Gm-Gg: AYBFou33T9E9V3m7+Bv/gtn2WlFxbhmC9d644ybzIl5zLd/Yi61Q4qLh4IJuYyAIkK+
	ypvivOrKyZuGaHc6hJStIdfcKV7Z/1x8BeCBOxjFgVP8RUpJ7UShEOadyBWundQsCgQrgbj5VjN
	b2UZNZC4bD1OsfCvxZTlHpf4MtO/Vgw4MhJRONUfM+LbIYxpauh4excXT1frUoU0fyWj46BItC8
	lww1IF6bcMxIzp8Cg6qUkUuUvxK3ZQ1b1QREmkGf5458ZkjlEqAMT3/Stxlg7kETAlO4I+HAp49
	w4P/dqWI70Y8bfHTfX6i8uWj8RA7oaLn21t8LZGS8i+0XV1sIVXBOR+mvPT5UBYI3xn2bw44cxG
	kpKzX06EWJCrDzpTkfXnaIVp4K/hBc8qfkpB2Ssp95e2ZSbHs6wR6q4k5Ljrz0fPUnsZWncXASV
	7XhMcZliu1rEwECS3MxjhXwDYsbyqZRghFcfP3L41iDHchMrh9k+9STHxRH2TIesfksXGzEnVQu
	bcALPaNN5a/q8vlWoaGQV2P30Lx1tXVJKC6Wb0uWO1PRrinX0Y8aK4yfnszIHvfdG+t0GS3FbEN
	HtsPvMmeMaWq1cDxLLQkoLpEGcBJARukYTSLz0l3fVS8mmVkWLQRSlThXJi8qeXnw77vEBcEUyl
	FK1fbuy5xuBuoE5E=
X-Received: by 2002:a17:907:7243:b0:c26:19de:9138 with SMTP id a640c23a62f3a-c31aa0c3392mr1079230966b.43.1791849728967;
        Mon, 12 Oct 2026 17:02:08 -0700 (PDT)
Received: from zwetschge.tail45b538.ts.net ([2a02:810d:a1:6000:a55c:f7b9:d145:2469])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-c31a9ac924dsm527221166b.70.2026.10.12.17.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 17:02:06 -0700 (PDT)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	johannes@sipsolutions.net,
	Andreas Wendleder <gonsolo@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] wifi: b43: fix use-after-free in b43_bcma_remove()
Date: Tue, 13 Oct 2026 02:01:24 +0200
Message-ID: <20261013000124.48605-1-gonsolo@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_170211_572249_2EC50DDA 
X-CRM114-Status: GOOD (  14.22  )
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

b43_one_core_detach() frees the struct b43_wldev it is given the bus
device of. b43_bcma_remove() then reads wldev->dev again to free the bus
device, which is a read of freed memory.

b43_ssb_remove() does not have the problem: it takes a copy of wldev->dev
at the start. Do the same here.

Fixes: 96838d61102a ("b43: Fix memory leaks in b43_bus_dev_ssb_init and b43_bus_dev_bcma_init")
Cc: stable@vger.kernel.org
Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 817448e..3825b6a 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -5677,6 +5677,7 @@ static void b43_bcma_remove(struct bcma_device *core)
 {
 	struct b43_wldev *wldev = bcma_get_drvdata(core);
 	struct b43_wl *wl = wldev->wl;
+	struct b43_bus_dev *dev = wldev->dev;
 
 	/* We must cancel any work here before unregistering from ieee80211,
 	 * as the ieee80211 unreg will destroy the workqueue. */
@@ -5691,14 +5692,14 @@ static void b43_bcma_remove(struct bcma_device *core)
 		ieee80211_unregister_hw(wl->hw);
 	}
 
-	b43_one_core_detach(wldev->dev);
+	b43_one_core_detach(dev);
 
 	/* Unregister HW RNG driver */
 	b43_rng_exit(wl);
 
 	b43_leds_unregister(wl);
 	ieee80211_free_hw(wl->hw);
-	kfree(wldev->dev);
+	kfree(dev);
 }
 
 static struct bcma_driver b43_bcma_driver = {
-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
