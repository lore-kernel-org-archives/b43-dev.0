Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FDFFC433F5
	for <b43-dev@archiver.kernel.org>; Fri, 21 Jan 2022 16:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdXBfZWHLYgXWVmlEHyjkuXZxyroypoZAAOSbNrB4f0=; b=MvWGAsrKtKkRUo
	pFr+PL4y43YlxXS9zMv19vneBcMt8QhYHbN47NN44sqmj8CSZT/gMCrqPL2Dg22zahZM3PasZMiXM
	tI8qa2vVaG1HCB665y4my+/jwUn0xYtzNqNyACBHw84M+8WVWKxhW5X7rN3OxulgO79KK389E9ti/
	FFDIQtqDMbXXWhFlrXG2d7h7om0kFiWmxI+dfPmqqSiNEfnmPnoOMbqLrTflft5EfvA+X/JCGS5fN
	ciVm//1b9zcVH9EKPqEctdfRITgK1DE3rctMJaf3gVcGFp9It67vwWHLCXdnz+SYbBpRTcqB7UYgi
	FDt4rKgDQtWz9wDx8MZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAxC4-00FcZg-W4; Fri, 21 Jan 2022 16:55:21 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAxBy-00FcY3-Rh
 for b43-dev@lists.infradead.org; Fri, 21 Jan 2022 16:55:16 +0000
Received: by mail-ot1-x329.google.com with SMTP id
 i7-20020a9d68c7000000b0059396529af8so12495852oto.4
 for <b43-dev@lists.infradead.org>; Fri, 21 Jan 2022 08:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q356TySGpOi9cm8C15uJYgLdKIpPtBrszItNMB5sdtA=;
 b=d08sxUH3eK/+C4ImWey5IwRNyFJty2X4q2Fcg6n7ZHmZN9ctajF8uw1GBf1L5BH5I7
 V/kKVyFpnQavgkZlPTK9Wg7ngEaOyGBjaq09IRMK1VTXfYANVnxMFNgSagNRfAPoAH+D
 fFY6QEbafaDPfAMdRL/B0VVisl/qar+seAQrHGkmlFelczDkuQ0RWymHEGujEWGDcOje
 y3S9LAVnu7DcuX+DlLtdGeeYGobgEUea6WaaNt5Zq0xv1Pwt6Gcu5v1UvbeK3I45x6SX
 AeuEz12eggrSCViDGacZEm47IFancwGQ4otY0iBDgahmOIf5w5EazCIq7c1CRKotuRJh
 eoqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q356TySGpOi9cm8C15uJYgLdKIpPtBrszItNMB5sdtA=;
 b=CAcJJsSU3XJFYKE1zDSuzigKLR83nYGlPF6KpEWfTY9/t53oqtXrI8tLdOwtXL4gMQ
 l6LxcvQSz3oZW3XXEQXkNrj58Ml9Ft6OlkrWYhcDX3WRs3WgnKyAUoCgsHpzyAJiJ00D
 7vNxSaUvMDbFcL/8HjSRWxf0iDOxBKRA88zZQqoM2M+GAu0QeH++QaMRKrWEwy3wdEEV
 c6lW0iCSBL4ynMNXrMdnGdtbiozsGgMyoDYI2ELBDxbmK7zGN89oHsmj74rnUO9OQmev
 tAqsVq+Av6EGQyKnEDEDq2wesjDMmwXgdM057/e2oEVuGGdYdsh99Hh5k8NS5HLAzmei
 JmZg==
X-Gm-Message-State: AOAM532jb1aHy+Z4WVKNVWnDUSO/vg5aV69ppBFxsy1myKdvudjg9oyh
 ELcLkP6gLuj+bDc6i0M5gYo6GUzzpCI=
X-Google-Smtp-Source: ABdhPJxMLXhmV3f3kN56sohiz2YckqgwjTMJ0RtIqk/x215sI8lHLYXhQHyVMgC8DtQbU8bte5FllA==
X-Received: by 2002:a05:6830:1047:: with SMTP id
 b7mr3285242otp.197.1642784113714; 
 Fri, 21 Jan 2022 08:55:13 -0800 (PST)
Received: from thinkpad.localdomain ([2804:14d:5cd1:5d03:cf72:4317:3105:f6e5])
 by smtp.gmail.com with ESMTPSA id
 y8sm1089271oou.23.2022.01.21.08.55.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Jan 2022 08:55:13 -0800 (PST)
From: Luiz Sampaio <sampaio.ime@gmail.com>
To: Kalle Valo <kvalo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-kernel@vger.kernel.org, Luiz Sampaio <sampaio.ime@gmail.com>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org
Subject: [PATCH 16/31] net: broadcom: changing LED_* from enum led_brightness
 to actual value
Date: Fri, 21 Jan 2022 13:54:21 -0300
Message-Id: <20220121165436.30956-17-sampaio.ime@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220121165436.30956-1-sampaio.ime@gmail.com>
References: <20220121165436.30956-1-sampaio.ime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220121_085514_925503_E72E2B31 
X-CRM114-Status: GOOD (  13.17  )
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

The enum led_brightness, which contains the declaration of LED_OFF,
LED_ON, LED_HALF and LED_FULL is obsolete, as the led class now supports
max_brightness.
---
 drivers/net/wireless/broadcom/b43/leds.c       | 2 +-
 drivers/net/wireless/broadcom/b43legacy/leds.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/leds.c b/drivers/net/wireless/broadcom/b43/leds.c
index 982a772a9d87..bdb46168e019 100644
--- a/drivers/net/wireless/broadcom/b43/leds.c
+++ b/drivers/net/wireless/broadcom/b43/leds.c
@@ -59,7 +59,7 @@ static void b43_led_update(struct b43_wldev *dev,
 	 * with the brightness_set handler, we will be called again soon
 	 * to fixup our state. */
 	if (radio_enabled)
-		turn_on = atomic_read(&led->state) != LED_OFF;
+		turn_on = atomic_read(&led->state) != 0;
 	else
 		turn_on = false;
 	if (turn_on == led->hw_state)
diff --git a/drivers/net/wireless/broadcom/b43legacy/leds.c b/drivers/net/wireless/broadcom/b43legacy/leds.c
index 38b5be3a84e2..5803d41185e7 100644
--- a/drivers/net/wireless/broadcom/b43legacy/leds.c
+++ b/drivers/net/wireless/broadcom/b43legacy/leds.c
@@ -66,7 +66,7 @@ static void b43legacy_led_brightness_set(struct led_classdev *led_dev,
 	 * whether the LED has the wrong state for a second. */
 	radio_enabled = (dev->phy.radio_on && dev->radio_hw_enable);
 
-	if (brightness == LED_OFF || !radio_enabled)
+	if (brightness == 0 || !radio_enabled)
 		b43legacy_led_turn_off(dev, led->index, led->activelow);
 	else
 		b43legacy_led_turn_on(dev, led->index, led->activelow);
-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
