Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BEF606A31A
	for <b43-dev@archiver.kernel.org>; Mon, 26 Oct 2026 18:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=199lu7qJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=ShtrGmnN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8jOksQcGjc667Q3g6zCGE8DpAcIR99y66KIumvwk340=; b=199lu7qJqkiyr4lqcKGUTeqiVc
	99xOmReqH/95YDq/C7FJUZDg4dJ0oULrmiE0dy7BUTTN/wapNCnWQQkBDTzJO2D9nHrFFsMQjIPyQ
	1j8d8/IEaWFmlUkkewPP//A/UaiVZ1esZiim+8JvhM6GfH1wzI0aLZcUneDmwR55fFecUNurJtmQn
	A5prOnUIcLgn0MO2ubR9kAonWhFE3R4LZGzQLGQnLbCZOWFFLJY/+nu1QhDHX7vfiGFecUH3vkShx
	qJWDR4zXqO4XwCI9cgX1ra6zyLsApX86CSTCIzDH4feZLfi4QU2F98/tUcFjDcjt/GmHT2MGVxDHA
	NXmuQmsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEl-000000033KM-2zOY;
	Mon, 26 Oct 2026 18:15:59 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPEg-000000033Hm-0ffU
	for b43-dev@lists.infradead.org;
	Mon, 26 Oct 2026 18:15:55 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-48c45111bebso1508521f8f.0
        for <b43-dev@lists.infradead.org>; Mon, 26 Oct 2026 11:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793038552; x=1793643352; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IXiEUIeYZfm/Z+uDz/6gAhnO088xmqngV8ebCTTry2o=;
        b=ShtrGmnN1/vDaPVbsjt5L8Dnjeixwrd14p9JRIPut5Vsppv2mb5MCqXw/kt106E0zD
         uXznn4Z6v0HXfeGptJAXJud8ftz8BOPDb6e80Vd9Uv9N3qBtim3Vznpg8s3iSppJ+TuK
         vdwkHoYeV+Nx9L84KyniONCdXq0wwxW9nMrPApKgdAeZu5KpTeZ7sRmSKeixtkH6DyoA
         pFK4jpWAzkjDkAX4xBsxAEf339j9IOHeBjvhVgNWBYQhiaZQh/Eh7MIVdrAW/e/0ErPI
         UjQcrs2uakgGtDu+69CiHfFk79kwLXB/Z7Ooly4gz5xQeOhHgYDSblOXFAEMKKp9FyDi
         0TnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793038552; x=1793643352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IXiEUIeYZfm/Z+uDz/6gAhnO088xmqngV8ebCTTry2o=;
        b=CcEKlhDRVa2KS/sXUpJQSIVi4B2qCOTaIS9MP/AQCogotUHaUcAPAS6HwIiw11uuyx
         62GZJ2obOeaXUCF6mPoyIuRDO3MOZ5JD+CLmXynD20HIGR1IFSWrQ8k5Lzm2ji5YRRhE
         dAMKL4+GBZifQb/k6Z41Gvc+gC8B/954HiUqEhs1V8fheA7GiXEFxiObIy57PVZjy9fS
         WYD7ezhAXYwTD/DJnikpqneQxgWcARn5ek6s6WMdT53DBu293A4rJ07KcFJA2enpO0s8
         f5Vl8PpczIh1uGaGuO9Ue39Y94IY+1A9x+AN/AM2/CVP94ExmI6XToxNWPVYivFnbRJA
         WQPg==
X-Forwarded-Encrypted: i=1; AKwUvByFxK14CP7ymof9HOfvbK6Vx2H/zbXICfShcW9vRhflXTurvDuWnGFNxkvu23/Bs1d40+RLPARa@lists.infradead.org
X-Gm-Message-State: AFq9FYKd7ILjjBUcVsWAKPgB5oxfzpvi+WvxfdebH5pk9JzoaUDJUDAd
	UbmnZUm6gQH2EqzKyHMLx5zEfAS1cKIeyH2v4kaD5hUvBNy2B32CTQStx71U/hAa
X-Gm-Gg: AYBFou3EQ+6+v48dbFI4sALVQyPlhDM6QdfmqPBHgqrqWUklkc5PKsBgOgh7cVGKVNl
	cso4GnuPuUaxA5670tPp8Nc1+ehWaY6eMkhSEYsY2INg6ekeJ/gGtJslrpqmIRossXZylchXFUt
	TS8lBlY4+2KunyvnybORotujV9Sc5GxLqy1k4ETCJ82KfGMTBpEpc6+jMOn1MbkfymA1F0pdhdk
	RHHRaKaPpr6x3VBz7RwOLERPpL8iNQ6psaar4f22puSMxEh/TzGWYfPbk9ZI529R69koyO3BKtz
	SpELwxSFZFtORj50s21GR5EVzFa/79jw8V+nAMDypbgg8YOVDeeni06Fmojy+mP6uZLb4euQ+V1
	OOlHxKXYz2WYEyoUHFbaXIrHA6WoQeZx+ldT8Bv5+06UAVkR9QrfsHEl91qv7p7K34XA0WPIYm6
	kdGfx7z2sr7XJm7Keif7VpVSlE6AnaZK6D44zT8sVXuIGc8bcmCzySZJCrL/Ofe/POtFPns2jIT
	AdCTnASjS/JbZrPl3gdPPkkKWRsZ0J6vnEM7CfaPWMUdgiU0+wRCHWftdRvNPSYNfYQIR6Vb+pj
	2swT
X-Received: by 2002:a5d:5d10:0:b0:48b:1a0:5630 with SMTP id ffacd0b85a97d-48e3eb9e397mr12917817f8f.41.1793038552064;
        Mon, 26 Oct 2026 11:15:52 -0700 (PDT)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:6c42:b004:d90b:d191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd3705sm20967847f8f.45.2026.10.26.11.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:15:51 -0700 (PDT)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: johannes@sipsolutions.net,
	arend.vanspriel@broadcom.com,
	b43-dev@lists.infradead.org,
	Luca Casati <luk00casati@gmail.com>
Subject: [PATCH wireless-next 3/5] b43: N-PHY: fix rev3+ RSSI calibration
Date: Mon, 26 Oct 2026 19:15:41 +0100
Message-ID: <20261026181543.77763-4-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261026181543.77763-1-luk00casati@gmail.com>
References: <20261026181543.77763-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_111554_231182_CA069128 
X-CRM114-Status: GOOD (  13.74  )
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
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Three bugs in b43_nphy_rev3_rssi_cal():

- On rev7+ the selected VCM was written using the loop counter (8 after
  the search loop) instead of vcm_final; the 3-bit field turned that
  into VCM 0 on every rev7+ PHY.
- The distance used I*I + Q*I instead of I*I + Q*Q (brcmsmac
  wlc_phy_rssi_cal_nphy_rev3()).
- Negative W1/W2 offsets were rounded as -(abs(x + 4) / 8) instead of
  -((abs(x) + 4) / 8).

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index cabf61870..44769dbb7 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -2167,7 +2167,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 				continue;
 			for (vcm = 0; vcm < 8; vcm++) {
 				currd = results[vcm][i] * results[vcm][i] +
-					results[vcm][i + 1] * results[vcm][i];
+					results[vcm][i + 1] * results[vcm][i + 1];
 				if (currd < mind) {
 					mind = currd;
 					minvcm = vcm;
@@ -2179,12 +2179,16 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 			results_min[i] = minpoll;
 		}
 
-		/* Select the best VCM */
+		/*
+		 * Select the best VCM. (This used to write the loop counter,
+		 * 8, which the 3-bit field turned into VCM 0 on every rev7+
+		 * PHY.)
+		 */
 		if (dev->phy.rev >= 7)
 			b43_radio_maskset(dev,
 					  core ? R2057_NB_MASTER_CORE1 :
 						 R2057_NB_MASTER_CORE0,
-					  ~R2057_VCM_MASK, vcm);
+					  ~R2057_VCM_MASK, vcm_final);
 		else
 			b43_radio_maskset(dev, r | B2056_RX_RSSI_MISC,
 					  0xE3, vcm_final << 2);
@@ -2219,7 +2223,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 				if (j / 2 == core) {
 					offset[j] = 232 - poll_results[j];
 					if (offset[j] < 0)
-						offset[j] = -(abs(offset[j] + 4) / 8);
+						offset[j] = -((abs(offset[j]) + 4) / 8);
 					else
 						offset[j] = (offset[j] + 4) / 8;
 					b43_nphy_scale_offset_rssi(dev, 0,
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
