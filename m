Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF9BECC6B2A
	for <b43-dev@archiver.kernel.org>; Wed, 14 Oct 2026 14:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3r2sOOxq2C15i3jPjXxB6vQEu0Hq00hXmbaHxJy8NvU=; b=l1XednbfP/Vchh
	u5jmOopO6uh6VMhkewCKcCS9MQsbBKrzjaMvWvnGa/EU2ZcaNdNDMJdNfOz9LsxjyWVE4WrRb8H3h
	A1amP8zWUbtNmmTmgtiCuNnk1R6mhf+VYvx4eXJyUDt+1safNQ3f57Cle48wXjYK7Ad7RMFSglGKx
	s68i4LxHuL3Csz+9yHPMilgCCYMl8PwPxQc8AhSCKzvQwuoE9bGkj/VAJe8lMfUoeMArKFN3wxImv
	/eFAeoz/3oi+rKVGVfyZ3qB7/X8rwQfV3cHDZc39/zvueqMO7ywmB7rS4/5vmSY1z2i4mEADp3Rw8
	U8KqI64wGB3SULpy+n/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH024-0000000Fjgx-1H0Y;
	Wed, 14 Oct 2026 14:32:40 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH01w-0000000Fjg0-3t3y
	for b43-dev@lists.infradead.org;
	Wed, 14 Oct 2026 14:32:34 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a1688d7769so9499605e9.0
        for <b43-dev@lists.infradead.org>; Wed, 14 Oct 2026 07:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791988351; x=1792593151; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=3Vp4nT657Y1gmkh1GAO3l2MeIxGaDsbtKCzwsk3mzmE=;
        b=kHLSGGJdnNPICKvyr5wbDnEUmk7zZ//ZpEjBAVPhM06vbq2yGywnNSiPJFK1nreuwE
         gt2hmJ5CoFjdL5Mi4utIDAM3dX9dIQxjeUIWF5Ti0j+0p0zOqSNStVRnDY7gj5XpkV0N
         0Iua5rW+oYbham2m2oSO1n0Vmkm2iHNKBn7N06EWCjDxHYas72TKitJZj3ih0KJU+7my
         NS0xHFrZDGyNDn5k/xDTKfjG8W6GLuI2+sHaaUwjTkTbZwKtI+5N145FJ5E1N1ZRkKcw
         gqgCGYSiQ93WdospDFcvp0XSXHzcDLXJzh/U7HvrCNeUjClf5jb6lzNvNTJD8LgFblAP
         UlNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791988351; x=1792593151;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3Vp4nT657Y1gmkh1GAO3l2MeIxGaDsbtKCzwsk3mzmE=;
        b=RJTKrqd7avT1LLoA2wzvrR4hCCLu4AzUI30mKYP36sa5PBAiBN61pzy9LmjrpIwvy1
         bC3h81H1r3ltUUsSo0TFUb9hh6b9jL8+h1AZgbg8CjRunKPiCMRCNH44oqHeabXtKURU
         KBEUaWUQkmej5PEHi/lhBNSkMZ+Dr5WOaKvA3TX1E/GaTNWM5CptICP2NeGY1S+3Zhrc
         3ZjdFFrDRW77NSjjLYvFW6hfWCZf683B4kd5v8Nkc/8TPLFXDt7uawY+Wuimmp3B7J8y
         ru69KyIobTtur3yUvpMkOAP0DHajwYcM22FWeIAFho/08agEeWt0AfBKnkWfdB1XXa3Z
         yjgA==
X-Forwarded-Encrypted: i=1; AKwUvBxFkRU8QWm9cAYJNYfOVNnJm6oUBT6kkpZ3OdWr6s68jmjfGzrS+XW9Kw7OBYlEP7bYqkJ1rImU@lists.infradead.org
X-Gm-Message-State: AFq9FYICFuBhZxmakWclw003QHWTo4BeSMWQLTaS992ZbS9i+DumjKyx
	qL6X40cFSaeHEFZj+U6T0ygSWPApbIaWUR62HzzIqB2S7aXZ50M/pmfo
X-Gm-Gg: AYBFou17I5OOUEQzkzGfvAmqtMeX03qdZP4rmYWlSDABoUZGAq0+jhQ7JmMuafur1Da
	jW4vkW8e5xO2QKcqrdpWpka59I8VCGj2vScMxwfJ8YWWxJ1REDtc8ish5tvRfHzICHcLAEfpzPY
	7WzxluXUCJIfj8h2CodxxSRkkdDuOuxlWtzmDcnfBXpWnLO96m0U6UQQwyGlH7rvcBW3JEFIvgY
	Z1WO5all3vmmrpQiStWH0LIenBLLSS1598Fxkf74JoVrvV2LFC/wTanD+uNmcrQ6WKgMmU5PHet
	aq8ODKPKJe2Rsm7B1UgyEACykrY814WLKUeVSm2R5rz34UyLweCNNmRXKb3czmVDjDx8IN4e6jC
	4HDyYacla9K7YLRViQM9U2SVi/Abop7kR5lI+jyGbzuoovZDMmSzIdqXZez0fkW3e8ucQd96YX+
	5av3Qp8z7WbFSo3VITGuycEXfYHOC0TlpO7h7NNScbgn1+LF3Uvz2WatvFeOlpzWR657U29bFkd
	Q/NJyz8zWq9viQZHI68P/rhA5wvtDV/chbf86jNm3flLi3ak/vh1ntUf3XZLsmxc26RFhjwaLDn
	qqJ6XkEoxO9aw7Bf/4WroEYTdLfZf3PHUNSTGkSZpfj3cY705MJXbmmI2CaUxMmS
X-Received: by 2002:a05:600c:8105:b0:4a1:83f0:7c8a with SMTP id 5b1f17b1804b1-4a18e4433d6mr318840825e9.1.1791988350580;
        Wed, 14 Oct 2026 07:32:30 -0700 (PDT)
Received: from zitrone ([2a02:810d:a1:6000:62d3:e68c:3175:a538])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bd068126sm3411345e9.11.2026.10.14.07.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 07:32:28 -0700 (PDT)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless-next 0/2] wifi: b43: MAC filter and 64-bit DMA fixes for the BCM4360
Date: Wed, 14 Oct 2026 16:32:23 +0200
Message-ID: <20261014143225.82149-1-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_073232_975272_A4784D17 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: julian.calaby@gmail.com, kvalo@kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Two fixes found while bringing up a BCM4360 (MacBookAir6,1). Neither
depends on the AC PHY.

 1. After an interface restart nothing was received until some other
    change touched the filter: b43_op_start() zeroes wl->filter_flags,
    but mac80211 computes the change against its own cached flags.
 2. The 64-bit DMA engines of the BCM4352/BCM4360 cores use bus addresses
    in the index and status registers. They are detected by probe, as
    brcmsmac does; engines that keep offsets are untouched.

The rest of the BCM4360 support will follow once these land.

Tested on a MacBookAir6,1 (BCM4360, core revision 42) with the whole
BCM4360 support applied.

Andreas Wendleder (2):
  wifi: b43: reprogram the MAC filter after an interface restart
  wifi: b43: handle 64-bit DMA engines whose index registers hold bus
    addresses

 drivers/net/wireless/broadcom/b43/b43.h  |  1 +
 drivers/net/wireless/broadcom/b43/dma.c  | 52 +++++++++++++++++++-----
 drivers/net/wireless/broadcom/b43/dma.h  |  3 ++
 drivers/net/wireless/broadcom/b43/main.c |  8 ++++++++
 4 files changed, 53 insertions(+), 11 deletions(-)


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
