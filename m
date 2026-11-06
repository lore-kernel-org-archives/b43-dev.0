Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE6E606A332
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 21:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xU6RP1n5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Mm10vGkM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vWCgYgVAK349jijwna0rjlmTUgzSNlTlVsUz3HTuyhs=; b=xU6RP1n5ZgwuKqblf+r5c6X5E9
	olZOUPBiiLjDMXQJiVnus/WEwmZ+CkA/vuE9EUekYDLGFxEjvf/8pD6M1Hq53qt3p5W49Ws/LIifo
	Gb4DC/z0hsL/oiABNRbAf/cK0NuLCRUd1t85OD7iTFLy1ra9jjKTslC4n80ONMr77JOYLBSMKR2Mv
	JSy78WAuEv/Q6SrQUkXQz4xB7ngqeFsuS3+EH1JggY7bfjvtNL/U8+7L4Lhsrex7uSed5annxZZMP
	aKIuO+wiqTLnuAZGpEUYmOVeooBe6vmFiwVgixn8fiOBYMWOylHiAPrlSKzPnzblyBy0DUdPyDloU
	ar2jb9GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHf-0000000DfW1-32Da;
	Fri, 06 Nov 2026 21:15:39 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHc-0000000DfUK-38Fd
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 21:15:38 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4b7252a32c8so9637145e9.0
        for <b43-dev@lists.infradead.org>; Fri, 06 Nov 2026 13:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793999735; x=1794604535; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bq+VtsU+O4F9SqeqecyrR8ppADV0Cns94twTt0i97r0=;
        b=Mm10vGkMYNpjxk1089h+YXxJeITJbeVYyG8jXN5zn+HMuu2zGuULT2NPK39rW0ATMB
         Cgevbe7hyzcQcHSL9rrRdZ5PkuCYl/A7EKwa14QSDUif+DWw2IEY3htvVWTcTVzngNhG
         jzP0IFiPfPTjoRngysr6a1tboNAiWd0Xlo1GD1sdbVA+DunaV7dgwHcmOXcJBUAhIr0m
         zwCmOTVac3K9SOGtVuoALGoqvWgaEWEWi44y4czvn3isMTma/v6DMMzuLNwKW3tYkw25
         +h4bFEkqcEhucyMVeyFOqZLV8GEVjdgp80OOBA+e0hsgP54xJ8IrkbIfnKddQoOhVccU
         49fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793999735; x=1794604535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bq+VtsU+O4F9SqeqecyrR8ppADV0Cns94twTt0i97r0=;
        b=tEubmLTfpD00q7lJeTUwo6NvfnA7UKymv1pTpvX9UWVN2oxRBvyaa++wEKlBfH635a
         hjC4oX/aR6zpq4/AJ2CYOck03EbEoH/jWstPIjBfolbWJC7RCiyoiebvJq7KcgNqK4pw
         /UbesLXTTq4TJtYbiA7fL3ajcHuamuG3nWIF1b2wDG2PCNrGN3ypbTMiO+3RRrUvojBf
         QG45zf2wbOezp+yaaUFWByCUuGFuirw1iLlecGQuX6vt7gcXa4UX+2iF7D+LnpKozfiV
         bUle/9SvYmWn15+mtuutOQDp/c01vCwq/Z5yPwQuRCY4/XezcCdyJrd3UWqKaZbXaQH0
         Ojjw==
X-Forwarded-Encrypted: i=1; AKwUvBzm5y0kbNaH04MHSGFNQi1ir62luDNb3cDfHrHaBgGr2wLxlmvZNJa/IeAKwhVVhmBCJb6Gbhp0@lists.infradead.org
X-Gm-Message-State: APuU4Z/sKVlk73xrhiQ3G3/vHIH+AiRYQOwp+U33vH4jkf4tNOU9ggUc
	U2hColvUU81HsyWVJlES+6uAne8+yGMLmND6OS3Vifypn1q8yAvM/Rpw
X-Gm-Gg: AYBFou2h3VLEjUJpFPMKu4fuFWhEuGrEyLyaoIfFRE39T7+s/2nn4s/eptbkE+EdwZD
	X47TBo2kf7Je7Iim9Y4vg8TGqVphZcRoFuweAOirCKZTzfh6jQCwLD/9Omvk/+DeVYD6MMjsVmz
	tU65dAMAVd7E4hRQKoe91lkaHycal+Z70WeunxUcQUqwc2gfyFxhW444/htHvUstFXGjUF7kgrW
	N9bX5SchJyuHCvJSRMI1uV6QYfIBixTu5AgYaEVn9sgN9iAdqY794hBfLYna7YPizWS04cynNs1
	Xtd55kkiGhdLuGkVW2h8xBwM11sapN6ziMhrPZlcWWJNXwPpj5eB3SEINMr4I4OD8Oli5dzAgpy
	+wdsfqUDJgUqMxqUd+h6urJp8SDEPPBaUHzZOWgIizLFaEytpkyWBOemMKllEtvZEwQKBVOz3gZ
	V/UDZPDtiagNefzWVlJAv+lno+KeMMNc2/2vcHYFIC5Gd9a4p5b+bWV+MYgyezW1UeqnxPh67gS
	EDVHJBxJvbSrQJn79x9L7JPhRdFNS1F/8pXr7DSP6i+0ZDPFVIsT10yVBZo1EgmL1zrNx/ZYDQR
	fpA7U03hiA9GQdY/jqKonsLbQMyAO4Dl17G3OBzyK2CmiC2xC7M=
X-Received: by 2002:a05:600c:c10a:b0:4a3:5991:718 with SMTP id 5b1f17b1804b1-4b6e5ab6ebamr48508815e9.16.1793999734673;
        Fri, 06 Nov 2026 13:15:34 -0800 (PST)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:970a:d82:3e9:48ec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b7e32ad610sm18070765e9.3.2026.11.06.13.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 13:15:33 -0800 (PST)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless-next v2 1/5] b43: N-PHY: fix the TX tone sample table
Date: Fri,  6 Nov 2026 22:15:12 +0100
Message-ID: <20261106211516.273791-2-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261106211516.273791-1-luk00casati@gmail.com>
References: <20261106211516.273791-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_131536_803533_759C1499 
X-CRM114-Status: GOOD (  12.21  )
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

b43_nphy_load_samples() masked with (0x3FF << 10) instead of shifting
the masked I value, and b43_nphy_gen_load_samples() fed
cordic_calc_iq() a 16.16 fixed-point angle (CORDIC_FIXED() of a value
already shifted by 16) held in a u16, while the function takes whole
degrees. Together the sample table ended up all zeros, so every
calibration that plays a test tone (TX IQ/LO, RX IQ) ran without a
signal.

Compute the rotation in whole degrees as brcmsmac does and fix the
precedence.

Tested on a BCM43228 (N-PHY rev 16, radio 2057 rev 9).

mmiotraces: https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/excerpts/patch1-tone-table.txt

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index bbc30cbad..c4e6c1ac0 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -1515,7 +1515,7 @@ static int b43_nphy_load_samples(struct b43_wldev *dev,
 		b43_nphy_stay_in_carrier_search(dev, 1);
 
 	for (i = 0; i < len; i++) {
-		data[i] = (samples[i].i & 0x3FF << 10);
+		data[i] = (samples[i].i & 0x3FF) << 10;
 		data[i] |= samples[i].q & 0x3FF;
 	}
 	b43_ntab_write_bulk(dev, B43_NTAB32(17, 0), len, data);
@@ -1531,7 +1531,8 @@ static u16 b43_nphy_gen_load_samples(struct b43_wldev *dev, u32 freq, u16 max,
 					bool test)
 {
 	int i;
-	u16 bw, len, rot, angle;
+	u16 bw, len;
+	s32 rot, angle;
 	struct cordic_iq *samples;
 
 	bw = b43_is_40mhz(dev) ? 40 : 20;
@@ -1554,11 +1555,11 @@ static u16 b43_nphy_gen_load_samples(struct b43_wldev *dev, u32 freq, u16 max,
 		b43err(dev->wl, "allocation for samples generation failed\n");
 		return 0;
 	}
-	rot = (((freq * 36) / bw) << 16) / 100;
+	rot = ((freq * 36) / bw) / 100;
 	angle = 0;
 
 	for (i = 0; i < len; i++) {
-		samples[i] = cordic_calc_iq(CORDIC_FIXED(angle));
+		samples[i] = cordic_calc_iq(angle);
 		angle += rot;
 		samples[i].q = CORDIC_FLOAT(samples[i].q * max);
 		samples[i].i = CORDIC_FLOAT(samples[i].i * max);
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
