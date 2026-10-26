Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464C0606A31D
	for <b43-dev@archiver.kernel.org>; Mon, 26 Oct 2026 18:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Hi21HURj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=blvU0Hpi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MZ8h0akSCyZU2unZo7B1hxtccw8sOTBozwObP95ZlQw=; b=Hi21HURj3LKcrjnN3uOFmwlNJk
	fzyk8K2PtdeurHgOpJynEQU0m417f1CSvAsKNboRLUHdd1rtgVDXWyjCr4VJ4UPpQrggZchrAXp5I
	Sjg1caTrEBZGaYf1dTDnRchHn50oOK9OsSv/+EIVydqkD8kuHnmm7lU2HtpNzFktG/htQX+XkW7Mn
	1BSVq1+0HOgzCmjJeCzg33Qfm28urX7LZXWaeyGPle939bAjhrWAfbX3j2IKN/V9oWW2FY0o1FyJc
	ytMktZo6JJ3GKSDNDhKV46vwliS81AMjnTTFfE78EL4j3LzkTWVa8xBRxbdDYlIQhypZ9XN2uCcsP
	KvESHAXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEl-000000033Kk-4638;
	Mon, 26 Oct 2026 18:15:59 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEg-000000033I2-3re5
	for b43-dev@lists.infradead.org;
	Mon, 26 Oct 2026 18:15:56 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-48afbd2c386so2031163f8f.3
        for <b43-dev@lists.infradead.org>; Mon, 26 Oct 2026 11:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793038553; x=1793643353; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oA2KSCCZdPSPR7+/ASoZPmv+ibMiLNh4p2Cq1FVXsDM=;
        b=blvU0HpifRipymT0Ycpf0io78oJ5Fcw7tmvwRIaNFXsLih3tP+gurPW5/+Xls3JtRP
         z+ZQGl7lsmQOBPpinFUjIfIyuMIY3ftSSZxiYbvqG0NoREY2ylpE3HQqXX9LWlKFxwnP
         5cfFY2grcCJMXMWDmxhY6S1mDp1cOwjJYucbJR56+tmbtBZDKSSRoXXKWhtdQ8pT3eR7
         eQR6to57X3cONTKAMKIh0ibetB1zxIgdawXwvYSE6LnfmtLpV2C/hCWRWYQGQpfnbgGJ
         COTZMgkqQXWeS9+eyZrIjvIj+syjqXGOjfDUu03saHU3FrvhZmr9Ajv/WD3zgH70I9O7
         cPVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793038553; x=1793643353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=oA2KSCCZdPSPR7+/ASoZPmv+ibMiLNh4p2Cq1FVXsDM=;
        b=QpRk2tVfwyAKj4b9MPfu/CDWXKl6+zY1BSgOFTZ+tO/EXAlRn2Taf3uTw8W0G1ZAMz
         0Nhdlyv0iK63gKBLpD1hhIyzCqUrlch0bMzbSWdfMaM4lEwwW4PVvet/yMzX3yX0boTu
         ylz28GT1/s51J2j+66+I4xX4cRjxmPD2yNOpvFY83R2oqR4BVaBuqPVfBhASnam+EHOj
         f8WYC4/pVu/33kFHT49aYoY37fkQ6N13Kj+p8dYBYNMdmk/+CVzoo6Y58jLmhwx5l0+z
         IIovxTjOSLpDLxXgWJA6bk9PHgWKbpwTc4nwflgNo3BgNlonjWqqR1tm6Gamoh7gf/ca
         7eEA==
X-Forwarded-Encrypted: i=1; AKwUvBy0rNRHJ1kRxdz8IUpLwBoZ0uuC5ociMxH+uphqDAY2G+5u3K9IwJNtZQpBu/tXRe0fmyyhFZY8@lists.infradead.org
X-Gm-Message-State: AFq9FYJt2KnAoYKVsWEgh9Ei1nGoGKGXGKdIW2ZUot3Vfwc/7swk/h8H
	wn67Rs9glX/jUDWxEcixXwj7Rz1JQRE5QrADGXYDDeW5BUhVM18pE3Km
X-Gm-Gg: AYBFou02xql9yw3scJCWKfX7trck+u3/iBYU5IyrDzT/zpPpfXNX7HM1tlplHf7va0K
	sxti31IJZjCtXT7CP/fWP9cqBsuuPy/PVt9rmvxdFSM/bT+EFC+aDq/8LLzjoZdFeOKG9YjCAjx
	swf6lQpVYwtm3d0bcZqa+Il9vJivnGpUAzBbQjP3sOCzxlYlHc3RyZ1UCzqxDZvSqUJwoj3AehZ
	ankwKwPit/buPxFtNT/2M8jpNpt0LgKs4+lppWXNKGbrshl9Qhz4Krkmxq+jaEsaDN6W2FpGi41
	vnQaf+y3084HM/b1y1VMIr7V8tXMV/EWK0/rhKL8eyoH3w5JjRZhd89O3wa+J+CbXXB5buiIQ6o
	vM9lqb7fpFptdT3UJHHr11P8H/2ujC4o/xvonua4DuRL6QgZRKpw/xsgAGkCjI5KpUkiMBSYlAv
	AzUQKu2/1YrOZXVPvZC9M4EgExSVzkZkPf66Xelk7/33dned51GMlqCHZPXLdRRCSlpqsTM7RgA
	ybDkEQKjhLoqLfsEfHFa6fxUkzVpPDLZcEd7SCRbm60xUP4Lnz2hXDgdEcnWLrHrYMbqs9C44LJ
	Uh3c
X-Received: by 2002:a05:6000:188e:b0:48e:3085:7cf0 with SMTP id ffacd0b85a97d-48e3eb989d2mr14700024f8f.51.1793038552780;
        Mon, 26 Oct 2026 11:15:52 -0700 (PDT)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:6c42:b004:d90b:d191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd3705sm20967847f8f.45.2026.10.26.11.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:15:52 -0700 (PDT)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: johannes@sipsolutions.net,
	arend.vanspriel@broadcom.com,
	b43-dev@lists.infradead.org,
	Luca Casati <luk00casati@gmail.com>
Subject: [PATCH wireless-next 4/5] b43: N-PHY: wait for the first 2057 RC calibration run
Date: Mon, 26 Oct 2026 19:15:42 +0100
Message-ID: <20261026181543.77763-5-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261026181543.77763-1-luk00casati@gmail.com>
References: <20261026181543.77763-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_111555_001692_EC195C62 
X-CRM114-Status: GOOD (  12.02  )
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

RCCAL_DONE_OSCCAP still shows the previous run's done bit for a few us
after a start, and the first (SCAP) run polled it immediately, so the
run was stopped before it happened. RCCAL_SCAP_VAL then read 0 (wl
gets 8 on a BCM43228), which detunes the TX low-pass filter set up in
the rev7+ workarounds. Sleep before polling, as the other two runs do.

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 44769dbb7..cd50614ff 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -938,8 +938,15 @@ static u16 b43_radio_2057_rccal(struct b43_wldev *dev)
 	}
 	b43_radio_write(dev, R2057_RCCAL_X1, 0x6E);
 
-	/* Start, wait, stop */
+	/*
+	 * Start, wait, stop. DONE still holds the previous run's done bit
+	 * for a few us after the start, so give the cal time to clear it
+	 * before polling, as for the other two runs. Polling right away
+	 * stopped this (SCAP) cal before it ran and left RCCAL_SCAP_VAL at
+	 * 0, which detunes the TX LPF on radio rev 9.
+	 */
 	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
+	usleep_range(70, 140);
 	if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 500,
 				  5000000))
 		b43dbg(dev->wl, "Radio 0x2057 rccal timeout\n");
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
