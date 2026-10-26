Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C016606A320
	for <b43-dev@archiver.kernel.org>; Mon, 26 Oct 2026 18:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SLjKrMRV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=JUnYMQlV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=daI1vUkhGsB1zKkNIcKAZB2ew3lE5cqAxAT7zn78t+c=; b=SLjKrMRVFuKxLhRfHvBJjHximd
	TNMszxGaVo+3oB2wwbEcNsRHnCSpGomMDRRArvMIaNfQvN/83MoNnLvw7Y2Q+MXrqiL7FIbgY0LML
	g916KO8i5OmEmt6xSW0PoNTKtsx3vL/Yxy9xvKm/pshO2mdF/70c0UhXMJxDgpqvoouQ1bRUACKBN
	+tSOl/UGB5I9O7aFUQzY8HmSql0k2EbXowcQPt1e3J8y6Q2uSd61DSSTmzG/Ox1Zc1ITjzp5aMMkW
	zOK5EXwDxnYYFa/NeVNXsQiFMDzknFVloBkeA7AOAU5grmfUdoM2v85G0JeCMarvUxOSnoBeQSfBM
	rONAQbCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEk-000000033J1-1dKI;
	Mon, 26 Oct 2026 18:15:58 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEe-000000033HG-1D36
	for b43-dev@lists.infradead.org;
	Mon, 26 Oct 2026 18:15:53 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-48e00eee27dso2120526f8f.0
        for <b43-dev@lists.infradead.org>; Mon, 26 Oct 2026 11:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793038550; x=1793643350; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IoS1hk0n4alufQMVHtiKS9OzIMlrLv+vxsfijbiQtXw=;
        b=JUnYMQlVB8sgKInmSP9jJ8KV0WPz9zrRZFWDvG6cEUibPkcd7R6SGKZwDK4hz/2HnY
         0kfvTinjiYExzy9ic+oV8QCeUmuuMYhP3v0NLYZe1mChqYiS2KuXJgBdzBEL5UCVkbY5
         3C8AAVMBn0H/JRysYH36c9DsKHOYfZ0vKrv3JW3U/yWMwgT93XbFzAliccvw7KpxfBFZ
         Dw2RTZ8XVcEPkXY67sNUTwHUOOxATgiG6fGrjuJOYECLUrwmefo32ISb3wzcqcUATJMJ
         18Y3Bt2VScQAS30+Hk1X2BtqDSdO1Hy+dyegfJEOlAjl2ap0MaV4H0izeZnek02FL69r
         8iig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793038550; x=1793643350;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IoS1hk0n4alufQMVHtiKS9OzIMlrLv+vxsfijbiQtXw=;
        b=lxYsijhd6L7W88+mkvievaphEc8nAu7JEsHNxRvHjBg5NVujGUcXoHd+6dz1z/am8N
         hekDDT8vW2oUvRa4TP/4viQVDyBWfCwOXd52swc1rFBjlrgDkj8wYo3FvG++d5hEJFi9
         zkUgHL0h2bZyla1x40wrbiEeMxwJbxAEgWrnjqfpao523vdze5stvrgDpA0ml6VQa1VV
         H/SEX+65uRymKetIeXp8y2wulBKW3XTUkGdDJW33h6JVAvd+QAyHDyOyDZ6at0MgsYEw
         hyd7osj4Wua5FkRumETMzrtc0HnFfoDfMV4sAWdYFYuU5NIO2Y+vhqNdY9BOP91ejJjL
         P+yA==
X-Forwarded-Encrypted: i=1; AKwUvBwCgyidQna/lMCe3bSVUfd84CG2zoScl88Cp+mJjDjkS6ne865SZSswMfmn71XG/D7nujvZTmSX@lists.infradead.org
X-Gm-Message-State: AFq9FYIgW22+i4VeZ7rSjmJgsYdw9+h3GZqqCyhJdDWXUVkUkJz9cPO7
	EFVD6kNZLu2lvlUq4sbvfIkNKjs+z3vyGsM7osC1zC00G4ghq2y3o3Jt
X-Gm-Gg: AYBFou0KZ3pWvE6s2oM1rNb5scZuDygcKhkC/90urCfq34i5r9J4NJJVhTB/q0YEfQp
	ip0fpZvO9fxCW/qws9rrCQFtnmb7bTQY5/yA8tQnQ4kirT6MZ4SZFh1haylaUXgIib6CAiLlnGr
	gLk/6I/xcsGY+8EI79DAG4JSaskCE6SEjqDQtUHpx5YxPPRNzDruIF3qHJFyFdP7YBF9yUipIrH
	apvF/PwvtDQPQ0s9OzmOtDzqPQRZzWPJBleVkQqWHIHRALGGhd8G9mcgzPsYFInsRhKAT6VvuCs
	BEL6lWjyb9ZuXLtxNdr7KAo8nDH++Cc47WxVCE5GklyMRv+gBNAI1v4J8jIZkES6Qv010rYQD5c
	zvlqVFrKP0YBB/NbJUoreXlXiU3N4OaROvBSrXtgFWDshrgGv9Vo21nQ2UxPxeQXjZ7M110xAoi
	xdOkwitKy6oBmGoNeUQ6huSNqd1ppCyJ2D41w59yi6niLEIRmGAo5I2JbhgTXPpFkSV4qB09PBG
	rwDN3uVk5zXWJvWUxOohfmFCpZ5g5MUIOuc+afTvAn3MvWP2HUq1NzO8WC1s0qbQMg+4rhNW8ys
	564P
X-Received: by 2002:adf:e889:0:b0:48e:932:aef5 with SMTP id ffacd0b85a97d-48e3eb8bafdmr10513713f8f.21.1793038549855;
        Mon, 26 Oct 2026 11:15:49 -0700 (PDT)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:6c42:b004:d90b:d191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd3705sm20967847f8f.45.2026.10.26.11.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:15:49 -0700 (PDT)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: johannes@sipsolutions.net,
	arend.vanspriel@broadcom.com,
	b43-dev@lists.infradead.org,
	Luca Casati <luk00casati@gmail.com>
Subject: [PATCH wireless-next 0/5] b43: N-PHY: fix calibrations on rev7+ (BCM43228)
Date: Mon, 26 Oct 2026 19:15:38 +0100
Message-ID: <20261026181543.77763-1-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_111552_344486_B2D02997 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -1.1 (-)
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
X-Spam-Status: No, score=-7.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=no autolearn_force=no version=4.0.1
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
 4. 2057 RC calibration: the first run was polled before it started,
    leaving SCAP at 0 and the TX low-pass filter detuned.
 5. A missing field in the rev7 TX_PU RF override.

After these, the register writes for the cals match wl's on this card.

Patches 4 and 5 and the cleanup parts of patch 2 only affect rev7+.
Patch 1, the poll and final-copy fixes in patch 2, and the
distance/rounding fixes in patch 3 also change code that runs on older
N-PHYs (rev3+); I could only test rev 16, so testing on other N-PHY
cards would be welcome.

Tested on the BCM43228 only (2.4 GHz, 11g/HT20), on v7.0; the series
also applies to wireless-next. Throughput to the internet went from
about 5.7/4.1 to 11.1/5.2 Mbit/s down/up, with fewer TX retries. That
number is limited by the line and noisy, so take it as a rough
indication; wl reaches 21-32 Mbit/s down on the same setup, so there
is more to do (PAPD and TX power control on rev7+).

Comments and changelogs refer to wl where the fix was checked against
its register writes. If citing the proprietary driver is not
acceptable here, I am happy to reword them.

The bugs were found and the fixes drafted with the help of an AI
coding assistant (Claude Opus 5.5), working from the mmiotrace diffs
between b43 and wl and from brcmsmac. I reviewed and tested every
patch on the hardware above.

Luca Casati (5):
  b43: N-PHY: fix the TX tone sample table
  b43: N-PHY: fix TX IQ/LO calibration
  b43: N-PHY: fix rev3+ RSSI calibration
  b43: N-PHY: wait for the first 2057 RC calibration run
  b43: N-PHY: add the missing override to the rev7 TX_PU command

 drivers/net/wireless/broadcom/b43/phy_n.c | 120 +++++++++++++++++++---
 1 file changed, 106 insertions(+), 14 deletions(-)


base-commit: 028ef9c96e96197026887c0f092424679298aae8
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
