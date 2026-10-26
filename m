Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB4F606A31E
	for <b43-dev@archiver.kernel.org>; Mon, 26 Oct 2026 18:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=w84Sbj7W;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=RZAv+VDV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3UtWauMqnuVRIaUwzBDkvXo5oqbHX1V+Ht25AtxGkbg=; b=w84Sbj7WGYvDPGkmDG2iPGIqkM
	u42r6BG+koTBnIEc2Wb7hInCQTk4Ka6EzMrzYhAao1lptv0JFM6LQLhtIxnbORTeGAfpT/SbJpoOe
	xQU77OKQs0/XDSWCKXzRhvpdg35UDFSayQ9OtsZEKTyUt3fdGp7b5Y2MWjqEZZXG4URL2efGYOxzj
	KxBCKxpX/IqvIT6qDRAOkWUKa8II7wbx2y3fUMUnnJJGE2t4dO0pfy6Al1V7817nnggX0FLw/0YE5
	vSfsT7xGEu/XrZ9tE0e6RgNDPaZH833BDhig5DoJbb8FmvlH+7b6WVyRwmPrTm0FvQoh51fdI5P9E
	puNmSQsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEm-000000033Ks-0MvY;
	Mon, 26 Oct 2026 18:16:00 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEh-000000033IR-2mCb
	for b43-dev@lists.infradead.org;
	Mon, 26 Oct 2026 18:15:56 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-48e4831c028so1767354f8f.0
        for <b43-dev@lists.infradead.org>; Mon, 26 Oct 2026 11:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793038553; x=1793643353; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sfTjKOSajMf1wfY66E+ZCAtL9zvEweN3E+SNMy4fiFU=;
        b=RZAv+VDVgDpNoJ8SKMKIefbC/kcn+8CTHpQh+k/kB6p0S8jBCUVPZUo8Ka1IqmjX6F
         UQoUmiHNfFDYmj6BHyAOdaa/7xjLCrgesw3VYUkwIhCGiTPOTuOTidiJF/3xW8ngIRH/
         PQLuSbgsGXLafuOecJj7FaIEgBG1MEJxjjpNzVrek6rlpwL1fGlALUvFIZZ5rHFAslF+
         EVwnr4Wae3T9DZvbZ9CB8Y3Nf0Hm2IiR3BXaJ0AApw5CeqNWQHoX+qLz7Yx+6TssrRsd
         DM6jnHFlQQCXe/YWOvLF3tMGUxgenxE5jLJcGzenrx9mZKDBqF3GzeXIoOZyFEQ2sYHJ
         wc6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793038553; x=1793643353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=sfTjKOSajMf1wfY66E+ZCAtL9zvEweN3E+SNMy4fiFU=;
        b=Y+pszYtfFuN/RdoMHk2sj20zlZYgEM2kVR7c9gpLOhnEpzeUpel8wCmuZBNLSPEYEX
         U+mxfv5Tw66HAs6MT5zgObFYSrx05iwpBV2nwEkztRBqVn8aMjGVjzpJnk8R/rjCKOsH
         sbHNdw/IuhjuxqI4T504QDEGt1w/dXh9iF6IMuRgJ+CI7juqkVbQMaSZvYe7JuiETwHl
         W4wotCMgq36tQxfmHKmMBwiDOcjMtXXaphmOVG8oJGCHPiOZUFMvLJpVKqzav5MwVuL1
         tNPqFg4BdnnAv40Jn8d3gQnUSKsrKjgi1VMsOPPl4TKYH9EwUC1H9cxwxIPxUISYkPSK
         FmHQ==
X-Forwarded-Encrypted: i=1; AKwUvByfLELQVT41bCyMdiZuFjLlfUIaeynWx6RqpV2KJK1Djvp5z2UFoRAl3ddmTqdjl1TiNmSyhn8Y@lists.infradead.org
X-Gm-Message-State: AFq9FYKXNKiKR6EoODLVZ/BO3GPEcGm1C+YVDV1IMd8JUvEu0FntZALr
	HnrU2GAx0cCXhYp1i5AKNk+aGphz6sU70s7/3p1qRQdu33Wm0ORHZo28
X-Gm-Gg: AYBFou0NrmeyCSetJuTYCnbF0i4l33Uaj1AK60AoXhK31bUcbv2HIdN50cnZs0eqb09
	bpsGMLwS84ycb1wY5brMwJGlsDrueV8kWzGa/21cg5ifBVhtINyH9TEqhUK/RJoodO7Amqg6mJG
	SiSeIcHX8t/Pa1jnKB/OYIlUFXVvpI5JzCpJ2eaJMzHX+ZIq7nK+FFUymc6HG+ax4/6H4KCXW37
	KpqFmBFvPaTVbOUUxspgaJ3NUGU2GMbsN8KQ06JZUqiTd3UCTguN4JJ6BF71ObzD3Yyey5P6UnO
	dNGUfiQd6GcQPZlBvu02FRbDcrr5qlCova945GcLjVgN8zAvvdGv1tMcLzBR+rZuAnwHFMllPD7
	MH4yBoWr6er7lFe5rNgrIZ54IEWvtUD7ZRqiY1FgqRZc4Q4cMZ/gmHD+LdWvzjMs0qRtZ8cJRS9
	DxUct3y2impBPbsVgs9ajxSvDpBAfGciIyoY9nCeCmNYEy+IN7XyevJLEmqUDOyBbdEKL6o8d8E
	WGQeT8JVT0//XY+oYqu+m97+9XNEf2sHVdIy3ZQcKrElLcfLh/2xmvVNdoixrMfh0Qy2oQc0ZXf
	ag2a
X-Received: by 2002:a05:6000:2206:b0:48e:b1a:fa3 with SMTP id ffacd0b85a97d-48e54a0a7f2mr2114417f8f.35.1793038553474;
        Mon, 26 Oct 2026 11:15:53 -0700 (PDT)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:6c42:b004:d90b:d191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd3705sm20967847f8f.45.2026.10.26.11.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:15:53 -0700 (PDT)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: johannes@sipsolutions.net,
	arend.vanspriel@broadcom.com,
	b43-dev@lists.infradead.org,
	Luca Casati <luk00casati@gmail.com>
Subject: [PATCH wireless-next 5/5] b43: N-PHY: add the missing override to the rev7 TX_PU command
Date: Mon, 26 Oct 2026 19:15:43 +0100
Message-ID: <20261026181543.77763-6-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261026181543.77763-1-luk00casati@gmail.com>
References: <20261026181543.77763-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_111555_711509_21B0E7C2 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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

brcmsmac's NPHY_REV7_RfctrlOverride_cmd_tx_pu also sets field 0x4 of
rev7 override bank 2 (REV7_RF_CTL_OVER5/6); b43 left it out. With it,
the override writes match brcmsmac and the wl driver on a BCM43228.

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index cd50614ff..05e8ce19b 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -220,6 +220,7 @@ static void b43_nphy_rf_ctl_override_one_to_many(struct b43_wldev *dev,
 		b43_nphy_rf_ctl_override_rev7(dev, 0x4, value, core, off, 0);
 		b43_nphy_rf_ctl_override_rev7(dev, 0x2, value, core, off, 1);
 		b43_nphy_rf_ctl_override_rev7(dev, 0x1, value, core, off, 2);
+		b43_nphy_rf_ctl_override_rev7(dev, 0x4, value, core, off, 2);
 		b43_nphy_rf_ctl_override_rev7(dev, 0x0800, 1, core, off, 1);
 		break;
 	case N_RF_CTL_OVER_CMD_RX_GAIN:
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
