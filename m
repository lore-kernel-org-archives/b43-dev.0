Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95F9606A330
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 21:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PZuCZ5XI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cfluCFCk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=qD7PL/Sv4igvXBx1+zrgyjQM+CBEl8Ks2h1aUm8n8CI=; b=PZuCZ5XI6EtzNR2RRI+bZIy+45
	MkbX9sD9IcXgZZVAJ6ipqp4BbcwUaTIR0g0Celg8Cil63+ZDnQB9zM7m4yst7DVpNPpuFbMVYlF4C
	bTYEdFzE3TChPEmpv/1RGtT0S/2FJVbSaRwuvrslAiKZTov0IukAmGIwUhO76ca6oA9EqgjGrk3tx
	TodZGePV8H6YjwJn9sdXCIUM+cPEiqBcsKm2+/6z6OLqFFp/D+hW5booxX9aevwvG3Ncndi2Xv83J
	eOtRHZRTLYmUmFvHrtXfypmrtQIyvEkcHZn31UuWQFnXQtaK5R0m9krjIKSKQqfU2/6WbbT6ZwP8X
	w5+tiMgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHY-0000000DfTa-2ZHH;
	Fri, 06 Nov 2026 21:15:32 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHV-0000000DfSL-0eZX
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 21:15:30 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4a60f9474c4so12944305e9.0
        for <b43-dev@lists.infradead.org>; Fri, 06 Nov 2026 13:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793999727; x=1794604527; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6naSlAMDyL51g5pW+eqNc/yHcEcBIZZizLKc9xizVlc=;
        b=cfluCFCkiWygOau6THWuDJtIhVvwJthrrnPeQ5HwMYgP1tcbHWu/cr4Q9aaT3oEgr9
         6HbJYKSa1/o5sevA8yhtW5bQ3NrFR92ZyqqXfAMtOJkAeWCvFyyQV3RUWrvtUvWZJxBG
         miYzSYRVoVrrEVoOwVDAKK8hgvjBw3uEkt4vfLpSUScIKvVC8rbyE6SlGiCALDShTXLi
         0ffe2U0LssJR3GBrvFk0OypWriZGWReyoy6+YuXPO+EFqHr8LH9tUGyyu8OfKAiTLSS0
         xM0/uena9/hZfOZfDxuXXOyvB2w/FiF8Fn0ZCum296CR2rMWS0/FrWBO08yeqNDsmFnv
         i/+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793999727; x=1794604527;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6naSlAMDyL51g5pW+eqNc/yHcEcBIZZizLKc9xizVlc=;
        b=wnyM6JZAl6aQ2/VYhWndDvZ2XtIML8DsiikncfTpmH3YTeEaU4xC04olweRqGemEhN
         4Bv7Ol6hT8hu/PxUib7w/Gby4Yj2hxKQVHuVzfoD4TJ/zSVnzw7QpuhnQnT/10ThLYN+
         9ZY3WKVKKiqfX2bHxSWLYbz8Oj+XHQw7ZTLKZW+dcjq63OjbciW133gnCLFqx/xGeFPI
         kKHjdPmkAL7JvwpwPY4O/VkAIFUEXvBZkONMWBNq+hwjcv0cBShV1QMefFF9eGMJf7np
         iGbxJl8cTaq5FuVkchTUrZqrqa5RSUdGaVOWMfkjHuH/Wg8pBQ+hP5KhYkCpWJeJ5/dS
         IDcw==
X-Forwarded-Encrypted: i=1; AKwUvBzuUCXK2P+Pb8+2PqKTgMq120FoeW2kISKCaUaSeYfa+RIAB1Fwmqnqi+tZoPcS4Z1J4Xwg99Mx@lists.infradead.org
X-Gm-Message-State: APuU4Z9uuYFKYxfWKhtSI7+gQzh7j/u6LiV7AVkcsS2Ff7tEaI2rJkgt
	g4WHBMvLDQBEjKGzC3ixf60ZH7FRVYPm2hksrVZ1wNhXLEs/Y/iKEkXx
X-Gm-Gg: AYBFou3pAoXlo3hZtmvRMRL5UX4mKb4318KE/B/REHICaBnPixMzT2r0M/Okx8Hrq/1
	g8YDjXy9xXl7Bl0vuHCU+nxzVKA01Me5ZsmwDt6aDaBvHnuk6hDK26hMpBfaa36QNRi2gVFP+hK
	vyc8LtQNDY0LOj2+Flk+MvfR452nmBKwJC2VN9wvgXZYZ+ZeGU3VoiYYKszb3+5pc1wl/eP1a31
	UiwvvPozHtzm1QwMQDahATY0CrGwUO18rj92UYGuNvlNroyIl2HR4iqfb4l7ylIAMqEJhbC4N5x
	SUpStoOQsqCP/0NpDirg/CwTG+/cdCN3+lUNxdjiyqBU77tZ3jga2MZGyq7DqmtLMYg1v2hCtgP
	m9GFVW2rNUrSdivd3Ki0dWBlEgSBRNmr9kyxetDa+Q+57UCHkGoQ0qmKB0UhKK0tMcz0SUjQEPn
	f6W+GiSxs4TLVxJYKUkavI00JjeIC6gJCKJS8GhircayYHXOquheBbggENJ1hK+mHMThj8pdChL
	rXbQw3SutMazIjw2r81uQxC3qfDV+BKw5rVBzbiTTE4RKVRUGMkvIvqKzlPPv62f8nJdbuvSiSj
	22DESGGzpcRRLIIa/fu03au4CJne5RF3vuR+PR9tVZplq/EPixfQA5oNV10BYsUPRrnUeSxp
X-Received: by 2002:a05:600c:1d1d:b0:4ad:5e09:ae43 with SMTP id 5b1f17b1804b1-4b6e0171346mr62096525e9.29.1793999726719;
        Fri, 06 Nov 2026 13:15:26 -0800 (PST)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:970a:d82:3e9:48ec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b7e32ad610sm18070765e9.3.2026.11.06.13.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 13:15:25 -0800 (PST)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless-next v2 0/5] b43: N-PHY: fix calibrations on rev7+ (BCM43228)
Date: Fri,  6 Nov 2026 22:15:11 +0100
Message-ID: <20261106211516.273791-1-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_131529_222752_5E89BAFA 
X-CRM114-Status: GOOD (  13.85  )
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
Cc: johannes@sipsolutions.net, Luca Casati <luk00casati@gmail.com>, arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On a BCM43228 (14e4:4359, N-PHY rev 16, radio 2057 rev 9) b43
associates but transmits poorly: high retry counts and low rates.
Comparing mmiotraces of b43 and the proprietary wl driver
(6.30.223.271) on the same card, together with brcmsmac, turned up
several bugs in the N-PHY calibration code:

 1. The TX tone sample table was loaded as all zeros, so every
    tone-based calibration ran without a signal.
 2. TX IQ/LO calibration: inverted busy poll, reversed final copy,
    and missing rev7+ cleanup that left TX dead after a cal.
 3. RSSI calibration: wrong VCM written on rev7+, wrong distance
    formula, wrong rounding of negative offsets.
 4. 2057 RC calibration: every delay was about twice wl's, so the
    first run was stopped while it was running and SCAP read 0
    instead of 8, detuning the TX low-pass filter.
 5. A missing field in the rev7 TX_PU RF override.

The traces, and excerpts of the operations behind each patch next to
the same operations from b43, are at:

  https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/README.md

Each changelog links its excerpts.

Patches 4 and 5 and the cleanup parts of patch 2 only affect rev7+.
Patch 1, the poll and final-copy fixes in patch 2, and the
distance/rounding fixes in patch 3 also change code that runs on older
N-PHYs (rev3+); I could only test rev 16, so testing on other N-PHY
cards would be welcome.

Tested on the BCM43228 only (2.4 GHz, 11g/HT20), on v7.0; the series
also applies to wireless-next. With v1, throughput to the internet
went from about 5.7/4.1 to 11.1/5.2 Mbit/s down/up, with fewer TX
retries. That number is limited by the line and noisy, so take it as
a rough indication; wl reaches 21-32 Mbit/s down on the same setup,
so there is more to do (PAPD and TX power control on rev7+).

Changelogs refer to wl where the fix was checked against its register
writes. If citing the proprietary driver is not acceptable here, I am
happy to reword them.

The bugs were found and the fixes drafted with the help of an AI
coding assistant (Claude Opus 5.5), working from the mmiotrace diffs
between b43 and wl and from brcmsmac. I reviewed and tested every
patch on the hardware above.

Changes in v2:
- Dropped the comments the patches added.
- Patch 2: the changelog said the coefficients match wl's; they are
  close, not equal.
- Patch 4: replaced. v1 waited for the first RC cal run and explained
  it wrongly: wl stops that run right away too, just sooner. v2 uses
  wl's delays throughout the cal instead.
- Linked the mmiotrace excerpts from each changelog.

Luca Casati (5):
  b43: N-PHY: fix the TX tone sample table
  b43: N-PHY: fix TX IQ/LO calibration
  b43: N-PHY: fix rev3+ RSSI calibration
  b43: N-PHY: use wl's delays in the 2057 RC calibration
  b43: N-PHY: add the missing override to the rev7 TX_PU command

 drivers/net/wireless/broadcom/b43/phy_n.c | 115 +++++++++++++++++-----
 1 file changed, 90 insertions(+), 25 deletions(-)


base-commit: 028ef9c96e96197026887c0f092424679298aae8
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
