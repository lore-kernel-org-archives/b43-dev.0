Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C96B606A329
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 21:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wCHHlqki;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=dJi1EaXK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UH66K+7wDBq+xUrNKtas/WPKZXqQ/G0DI4l8AVvCJYY=; b=wCHHlqkiH3OXwJhZC/iItjDhuM
	Mss1Sd9KBM8MO4wKS3Owm7NOD+aJij6TY5KvQM8av4sN8CfNallz6xE3MILwPcnkXakstkFdez5Nm
	L2iOSkEStI9BRwkQrv0nA27V8nrU8xcm+wEeQG1wjAH5MxpXTPUCuJRRhTy2tDceWhS8LeO5nUVhE
	4lG8aLXC8huvgu/RMqt17/fJUbijlA/vjBxpozMME7IkJy7lolC6pVX6uEYv9RnZkxO9whXxHOiXN
	4vfiDtVYsmysdM3VuQ6XemrUK4H8oSkMrukNOwHqELQf0i/pdB+exOlXpwg6ZL5QOsNR/VvFTUKVN
	GX/sSYzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHi-0000000DfZR-0ZnY;
	Fri, 06 Nov 2026 21:15:42 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHf-0000000DfVa-33Gh
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 21:15:41 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4a549cd7fd2so637905e9.0
        for <b43-dev@lists.infradead.org>; Fri, 06 Nov 2026 13:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793999738; x=1794604538; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FE9Jx3Oce5/DrcXeSeUgKLEZbdD4bTE8lYWFSeIC14Y=;
        b=dJi1EaXKdlbKP1dEYMpEt4OBvfeZAnHD71NebL+iGacSvD7K3lNqD/zNZWfUg/jnkG
         06R0BtLgABIpiT0k6gMxoOH9+5qGMlqLjqt/XT3/sBdF50LVM+19k082NhqnPGPBHIRF
         VThc7Oom2fFx2YCp+gjpUo+MyyHkNgIRjG5D8vs2QAjlOcthxmSt/Y4iC51Txw8MpWHL
         0kTWeDIDE2VMrNwnxSuvY9xfL+fZn99H7ucMP4ly/xZrJ/kX2K087Ok4NACe6s1EGEaP
         4Ex5TsFWNdAgBibrGz5LYKJZmXaCtb7fiChHVRHLPA2JNtw4EhQvEMKGUwdRvIZPKXR1
         hb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793999738; x=1794604538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=FE9Jx3Oce5/DrcXeSeUgKLEZbdD4bTE8lYWFSeIC14Y=;
        b=r6kUtgEOzcSYV7cUvOOPdKrUcazrdTX4C1k2DKCSPZEnQA2x1QkA/4bA0YFSNf5dS/
         VktPYUO/X3g5wrdIThvE4fWyL+ah0e/rB3560aXihqmJl+jKoD9VpLctTsbJ1ZFYS3Ep
         z1WoHJGKr46a5xK+h8//+3gW9Yu1Jls5+Gze/BJU/VRBIHD+8ejxoZ5y4v1mohGsQ7GE
         GYfdZq4vsdLEBnxB4HDTzvtAcW7CoQwdHA6tzzUIKJHeNB3t0lUtmX8wrqeFfXYI+SB4
         RtiHeQpCXe+R0cEvyf0E7A1HlTClsJ24XtB/QnBIrBheasftxeYRip06sc2bcov/8Vod
         7vug==
X-Forwarded-Encrypted: i=1; AKwUvBxG8WvVonZOf2IIkXnXNQxPwW8Ln0hk878zSrqf1yO0RIfiKMWQ8F6xIgFRUz5eYToQo9SISdHd@lists.infradead.org
X-Gm-Message-State: APuU4Z9owhogRMLa0iEP9J86r5Qaseyl0NgPygMOUzeyHyS2zBXhViSf
	Az02ca/tCL/b6KbrKSrYJxyDFylpQN1VMQ1DthP0+5+LG4/LaymuQ7ic
X-Gm-Gg: AYBFou3Zo10+taQhafTi+kt/1FE7J1E3ldfTiLaSpNTYy3H1BVYUip6gwEJS5KXYNDs
	03H8DKAXiasQOL+BbGdzh+VTeBuj88FBLZiR73WqKYiIsHLdfjSCiLVRdaKb3E78aIiz950vfHp
	LtL4zwfTfgivCP7dHU1tdqB1QsO5/tE+ObjEZiOf1iNmnq16JZSLfOSPrZiuEYiulsw6U6scKlU
	fFkInqt/jK7ceLow8NMjZWwhxESCWwfi5iYeyE6xmhd2sVQRF9OXBy5DMGUKSosmAnHPD0w8Wtg
	62VgYgZLHL1AruqiUtIJVnr1uh5do2FQD1ixUP5/fgYwnyXcvqyLmNuPgg0jDLY5+P1OBPm52tJ
	n8h/n1u8hocX7aEEiU+B73wYpnKapBp2PYPqBQ7SGSmegsKQH+G5FHv3JnRgFNrDiqeKcp915Oz
	VXPMaLH3XfZftKc9qnk6pmUpIDcaF+aiwlaf/fq05X6JD3wSRyp28KlBjbw0E3l+Ihqg0u8NGl5
	VrVSlNpllc9rHlCyYVHCtbN2O65l/Psph2qnOlH6LSg3gUbaMbQ5npL7giBrIZysG/PE/qJuc9J
	0Ff16UgNwVZ3k1wYiLJKGkWOdf7EPOTpM9K7lQOLuypT67iLLPc=
X-Received: by 2002:a05:600c:64c8:b0:4a2:18c4:61a5 with SMTP id 5b1f17b1804b1-4b8190f42aemr3302375e9.6.1793999737652;
        Fri, 06 Nov 2026 13:15:37 -0800 (PST)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:970a:d82:3e9:48ec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b7e32ad610sm18070765e9.3.2026.11.06.13.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 13:15:37 -0800 (PST)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless-next v2 4/5] b43: N-PHY: use wl's delays in the 2057 RC calibration
Date: Fri,  6 Nov 2026 22:15:15 +0100
Message-ID: <20261106211516.273791-5-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261106211516.273791-1-luk00casati@gmail.com>
References: <20261106211516.273791-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_131539_804681_42DAD3A2 
X-CRM114-Status: GOOD (  13.40  )
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
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

b43_radio_2057_rccal() follows wl's sequence, but sleeps with
usleep_range(x, 2 * x) where wl waits x us, and polls DONE every
500 us where wl polls about every 30 us. Every step takes about twice
as long as in wl.

That breaks the first run. Its poll comes straight after the start,
while RCCAL_DONE_OSCCAP still has the done bit set from before, so it
returns at once and the run is stopped. wl does the same, but writes
the stop about 40 us after the start; b43 writes it about 85 us in,
while the cal is running. RCCAL_SCAP_VAL then reads 0 or 0x1f instead
of 8 on a BCM43228 (radio 2057 rev 9), which detunes the TX low-pass
filter set up in the rev7+ workarounds. With only that delay fixed it
reads 7; with all of wl's delays it reads 8, as with wl.

Use wl's delays, with udelay(): the whole cal busy-waits about 2 ms,
as brcmsmac's version does.

mmiotraces: https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/excerpts/patch4-rccal.txt

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 26 +++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 36c07d891..ab8fab018 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -940,12 +940,12 @@ static u16 b43_radio_2057_rccal(struct b43_wldev *dev)
 
 	/* Start, wait, stop */
 	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
-	if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 500,
+	if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 30,
 				  5000000))
 		b43dbg(dev->wl, "Radio 0x2057 rccal timeout\n");
-	usleep_range(35, 70);
+	udelay(35);
 	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
-	usleep_range(70, 140);
+	udelay(70);
 
 	/* Setup cal */
 	if (special) {
@@ -958,15 +958,15 @@ static u16 b43_radio_2057_rccal(struct b43_wldev *dev)
 	b43_radio_write(dev, R2057_RCCAL_X1, 0x6E);
 
 	/* Start, wait, stop */
-	usleep_range(35, 70);
+	udelay(35);
 	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
-	usleep_range(70, 140);
-	if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 500,
+	udelay(70);
+	if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 30,
 				  5000000))
 		b43dbg(dev->wl, "Radio 0x2057 rccal timeout\n");
-	usleep_range(35, 70);
+	udelay(35);
 	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
-	usleep_range(70, 140);
+	udelay(70);
 
 	/* Setup cal */
 	if (special) {
@@ -980,18 +980,18 @@ static u16 b43_radio_2057_rccal(struct b43_wldev *dev)
 	}
 
 	/* Start, wait, stop */
-	usleep_range(35, 70);
+	udelay(35);
 	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
-	usleep_range(70, 140);
-	if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 500,
+	udelay(70);
+	if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 2, 2, 30,
 				  5000000)) {
 		b43err(dev->wl, "Radio 0x2057 rcal timeout\n");
 		return 0;
 	}
 	tmp = b43_radio_read(dev, R2057_RCCAL_DONE_OSCCAP);
-	usleep_range(35, 70);
+	udelay(35);
 	b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
-	usleep_range(70, 140);
+	udelay(70);
 
 	if (special)
 		b43_radio_mask(dev, R2057_RCCAL_MASTER, ~0x1);
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
