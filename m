Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC1F606A31F
	for <b43-dev@archiver.kernel.org>; Mon, 26 Oct 2026 18:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x989+mfF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=lfu82qJy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=e1fWJfSmwfNDrIml7o/gtpr+muUxiqD9F6Ob2pZwaic=; b=x989+mfF2t2+DqD2x/hUmzeEVZ
	OvuRhhNc2XZJcAlXB32nYJIl/1JbMx1BIY1vFxLoMbZ0pOLMfl3VZlCkVJsI6EVBk9x7zNmMi490l
	aCvozkpyfeuFcGUkpLhJ09dSb4KJKNXoDZ+6ZVIlyddg8V8FmF7nIUcqJzXd2FuuuCoD0brEHXCfR
	oRJna66xB7GrYFhcxXTBBsTuE2ngnmJLJFRkOngm2ZNjx+UCdCHB/czEpYqN6Etk4L1SYwKeXxHBS
	JZ/h3DZeJNkwZTMLVC7e3efcFnRKVRTHwHAmKyaOnF/Q+yCatLZHGjBHxzxbrMmtiSUdIW3sAtTMj
	a6tCewJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEk-000000033Jh-26CM;
	Mon, 26 Oct 2026 18:15:58 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEe-000000033HH-32u5
	for b43-dev@lists.infradead.org;
	Mon, 26 Oct 2026 18:15:53 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-48e20edd106so2883504f8f.1
        for <b43-dev@lists.infradead.org>; Mon, 26 Oct 2026 11:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793038551; x=1793643351; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e/a5UC8LzaHcBIsnAWglDWLOmCzF1reqeK0hBm1thtI=;
        b=lfu82qJyrH6WIqzqA/Kmszi+YXpyjsKFRkBcFwmfedQQoFBMimefL+t2JCjGCiFJE6
         ObLMMG4l7E/+Phsdey2LtQ10777Wzt3tf11rDFSOsdj3FjEzocLLpboVLIdQ+ZwH8cZY
         icrlQYj3lmjHoM7Aon8CFw6MaT2ZIwNkbz1aNIuAk2nxwe1mibmVPrvssBYG56EiaqJw
         8n16WfKOKOFysuqAu4jnooY5UVHs8gIluZt/2t76cZlWNWR0RDnEFqJYE/2CHLEONYlv
         PgMKJ9yx5UMYDRQmqClD/u88UhLT2kHl1XJT5Mlobagfd0WkiYSz7MadpJfmAbGTfTlk
         AzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793038551; x=1793643351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=e/a5UC8LzaHcBIsnAWglDWLOmCzF1reqeK0hBm1thtI=;
        b=cbosioUqeNKA67dIK0+ladvAmu5RBQp2IBo6hqMJUMfGeX+lyK//lP/PyHMwHYcd3A
         8tlDfNAb8ZcFpr7m4QefIsVzVOGr4ualfeAMhK7L/JbgLLXtoyZS7qx+mckKpXe0oVWy
         UdTZ09yHkntiBmUobDBWhxSnjlU5k0UNYKLt0N9JJ8anguA+jBC1+4Sfk1tlg+G/4edj
         HVggQNctLglnbIMgj5tjPJSuirTTCkwtueWm1AekVybbFurTZ5dZ4a9Wbx9N1AYKQSZf
         Ctrucx0va2XVuOOvH2RAdQg9MhA2o3vyHk7QJuj5eOJiQrvcRypW91PPESsWoeG26p51
         oN0w==
X-Forwarded-Encrypted: i=1; AKwUvBwdLT0PoQsarPkcLljY7cLG+wTA+0s+B2vEVfn3QmGlMabSb34CrewQjRpHfyC+M2cu3VjoAq4I@lists.infradead.org
X-Gm-Message-State: AFq9FYKWk6Sgt/GgRsd4b/GPTQLQD46VSU6poAHoMO6IRghPnAAJ2uwL
	nb1/CkHxMq4xeDQfcgdc4M9aCaIkWgwDY61PzcLAkvmpbGr8F7IcXc7K
X-Gm-Gg: AYBFou1irQ6yf+fPU3ZgLD0vkhEJ3YF6wu+zNi3/9JMkYe1CNlYJzrOkKFgj/GISW1C
	dgOMC0Z4bYiPy+ltcd3TOW9OSBGhqqbe6lV4IgRUe96GGq3kn4HLGSDkQreRz3r7QhYrT+RDWon
	evrNC/XuXyQk+wIl3E12T/TSP+ejiCZ8G2CB5zaGWICii39vX3Pba14jyF+5coF21U2f+VXTUwT
	4yz4rjbLfTsF/6QeFbDcN6bhqEspF31deMxP7/mAxmN5vHD8uimcxLWo1bEfxrJfTe3X7FzVuno
	eaMUWdoGju3ht0JK21GkzFaDbq1pi8iFU8KNKrJtwbsQDDU1nM/rtVhfYVGAeFcqSoFF6rrH9yR
	euTrUkUpGpddIYqAbxT1Ch94nR6OJlfG5lAkCUXtOpWuPRWqN7WBBGwYV5hKV41iVbhhsYXmuiA
	T8sSYKPocH/z/gS6b3UDXyo8B7gzc8zUH+M7M5syXZ6aHeR62Jh+MTH1zzUm4yj0/onpNOYsSI0
	zHsnJeVyhYWK01mLyN/Gu0QhbGLkKqVEctbf8sqwGSg4JfCdh9Jgnh+NXAWILWOQh6z1gYCVbp0
	iyrIB1OnA9BWPuLJfxnD6RF2jA==
X-Received: by 2002:a05:6000:2281:b0:48e:4f1e:5e24 with SMTP id ffacd0b85a97d-48e4f1e5e33mr7260221f8f.14.1793038550554;
        Mon, 26 Oct 2026 11:15:50 -0700 (PDT)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:6c42:b004:d90b:d191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd3705sm20967847f8f.45.2026.10.26.11.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:15:50 -0700 (PDT)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: johannes@sipsolutions.net,
	arend.vanspriel@broadcom.com,
	b43-dev@lists.infradead.org,
	Luca Casati <luk00casati@gmail.com>
Subject: [PATCH wireless-next 1/5] b43: N-PHY: fix the TX tone sample table
Date: Mon, 26 Oct 2026 19:15:39 +0100
Message-ID: <20261026181543.77763-2-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261026181543.77763-1-luk00casati@gmail.com>
References: <20261026181543.77763-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_111552_784077_37BA46DE 
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

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index bbc30cbad..66565c14e 100644
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
+	s32 rot, angle;		/* whole degrees, as cordic_calc_iq() wants */
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
