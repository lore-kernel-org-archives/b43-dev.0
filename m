Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54E94F433CC
	for <b43-dev@archiver.kernel.org>; Wed, 15 Apr 2026 22:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fG3K3S8MzGWNeZyxETNXGDsIzG51H6IyapVEV6yU0ZY=; b=FNMNKexBk94Rcq
	oJ2lfhuykIvpdf9UI8rTIqGWnA6cftXxc4JENbs9eYfx8IbaX+bfVYiZi7HPQ2b7mm59k1bQ+QpQZ
	kZlEXXEl72zLD51l7CwFY/kXryi2GbH7bFwcvShQwhhCaDNnehc6KBYBGgTRgsV5X507bTzg9Zsmq
	E7eCxinNomPlRar481tz4fRdcst3HtWEav+hxvyl44u9mhJ7k8mqgO4u/ax1TqSPICNar5MYI1fVi
	2M1eRZRTzW+RYia2PwsX27VuJ/0u6F2Pkx0U67RBO0hWkwTt54/ll++psN7eBgt+tkmbnrDWCxO8R
	ZyW/Pquk+vzP+/3Z0psQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD8eu-00000001grG-31xx;
	Wed, 15 Apr 2026 22:24:32 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD8es-00000001gqG-0rb9
	for b43-dev@lists.infradead.org;
	Wed, 15 Apr 2026 22:24:31 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-488971db0fdso72529455e9.0
        for <b43-dev@lists.infradead.org>; Wed, 15 Apr 2026 15:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776291869; x=1776896669; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZElen3Z4amwm0t0XWaoxOdcRPl3srZ97suuS7VwNhjE=;
        b=sF45zQGA2Lx/lheIu02ac9tVj1XD6/rRO0+Bpy4uwPy6yxk7BTj3hZ6iLnW6IwTIHG
         pUdjMYzMO/QCUdjaec/cIzdlNJh3SGqM+LvsZ80tZdIoFDn4lhVj6QlSYJJ9g0K7LFw8
         aAayRvv7HtKgAiMN2+CAALtWTKtvjum25uzCHprUuX5NTRTUgpDQ7afP4g/Ba3hIpG0m
         4m+Lr30lnla1VbBBL5Ks35LokMajV78r6goR5+ix+pJvrHWCUJOAOQ1rwXyOS6TBM22K
         BqbXd3VwqsbZTiGnKRnPwoQIYlq4H0CWWvbtJuDaZprWtUyuTCkgkV162KP2uGITKhCP
         FfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776291869; x=1776896669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZElen3Z4amwm0t0XWaoxOdcRPl3srZ97suuS7VwNhjE=;
        b=nVXaS6Cp9VXCdnK4wW8Qdd1KHdXLcsYSARB9JaVqSEBHIhZHUYGqErk9Hq0UmiCQH0
         +soLd96oEc3vt5Cm32cc64pe/B3E+UdqMpmQ4hEabTtkusXf95VT9dzvd6LPQFXV1Eln
         5rE5j+ytmG/uLS9w/s9a/IiDs6EYZIAYkBk5pTT3cT0r8EemnGiKzkz4XpecYxz6nuXB
         wgt7rkYHoUlidmo4SAOsENKr4OGGj6fL1EW4ezp8Bt4zlMUunSy3G1WoKsKbfJ1XqSgG
         zuoZaBVT1NPdrUz+N14OvXvU7ioIS5L/upzP8k1V7DUAtZG7CIWFi5ekYHdNLVb2mTzH
         IaWQ==
X-Forwarded-Encrypted: i=1; AFNElJ8Tf/dAINFzcgafobmGS5kak/cg+qFHPb/hR2smpmYUsOfydW611hPGpMa66Qe0R2ObIv02yb/a@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2oSNbQeBx297NM/hMPOcwmX2Wnqyw+af1DAbBiSu/gJByEh9V
	BZ5Q4/mxVam7ESw8a0R3JLjbYL0zefyliOxYhY3Z/haplw3+nIzQa4o=
X-Gm-Gg: AeBDiet7caC1tRg+2eZbYk7dqaX2ebcC8z6zK987+s8sdq4VFL813GB0PZXp/uZDfuc
	zplVm0GWZ7Vl/6qmYGts6cZe/OgQ/vgiKZwb3Bss561SSUwFXpHVXgNzKe9ZKILpEe+YyqwxTwO
	wnEyYHaAx7blzSeXHstYQl5aowG8mruTaa7NfYdkeeEwKAbUJ/2ukLnAQQRypXmtyzFb7e9dl3I
	CPXnWZWrDElEYWU4mTaEC7KU/xmzFMVuxj+MrKtc2FLn3deYtuGUanqpGVvqv77D9bUJ7GQD3uv
	d2ePgyq3kCvdXGErECSkckaNACV6WgDZSEvzUNN1IlnjslNOOgG9UDjXF69id2gPr0ck+zqo3am
	Tzy9J3YrjI6LxoD5K/tqgB+qqTnqK1z1f7nulliL+3PgFDGTnIUZ4xpVYuHSzxa8gh9GJFH12Sw
	zFXyY=
X-Received: by 2002:a05:600c:64c9:b0:488:c40b:c8b9 with SMTP id 5b1f17b1804b1-488d67b8d4emr344470555e9.3.1776291868489;
        Wed, 15 Apr 2026 15:24:28 -0700 (PDT)
Received: from debian.. ([2001:41d0:303:db6b::])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488f5813954sm1896615e9.3.2026.04.15.15.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 15:24:28 -0700 (PDT)
From: Tristan Madani <tristmd@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] wifi: b43: fix OOB read from hardware key index in b43_rx()
Date: Wed, 15 Apr 2026 22:24:25 +0000
Message-ID: <20260415222425.1544638-3-tristmd@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260415222425.1544638-1-tristmd@gmail.com>
References: <20260415222425.1544638-1-tristmd@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_152430_251517_BCFB2BD9 
X-CRM114-Status: GOOD (  12.66  )
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

From: Tristan Madani <tristan@talencesecurity.com>

The firmware-controlled key index in b43_rx() can exceed the dev->key[]
array size (58 entries). The existing B43_WARN_ON is non-enforcing in
production builds, allowing an out-of-bounds read of 1 byte from struct
b43_firmware. A non-zero OOB value causes RX_FLAG_DECRYPTED to be
incorrectly set on un-decrypted frames.

Replace with an enforcing check that skips the key lookup for invalid
indices.

Fixes: e4d6b7951812 ("[B43]: add mac80211-based driver for modern BCM43xx devices")
Signed-off-by: Tristan Madani <tristan@talencesecurity.com>
---
drivers/net/wireless/broadcom/b43/xmit.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wireless/broadcom/b43/xmit.c
index XXXXXXX..XXXXXXX 100644
--- a/drivers/net/wireless/broadcom/b43/xmit.c
+++ b/drivers/net/wireless/broadcom/b43/xmit.c
@@ -704,7 +704,10 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 		 */
 		keyidx = b43_kidx_to_raw(dev, keyidx);
-		B43_WARN_ON(keyidx >= ARRAY_SIZE(dev->key));
+		if (keyidx >= ARRAY_SIZE(dev->key)) {
+			b43dbg(dev->wl, "RX: invalid key index %u\n", keyidx);
+			goto drop;
+		}

 		if (dev->key[keyidx].algorithm != B43_SEC_ALGO_NONE) {
 			wlhdr_len = ieee80211_hdrlen(fctl);


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
