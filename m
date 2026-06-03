Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D9B1CD6E55
	for <b43-dev@archiver.kernel.org>; Wed,  3 Jun 2026 12:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5X0JZqN1AcLtliIKf4ugPOX4BBKMSSa6E1DZe5GNE4Y=; b=nnEEEGxTq2/LdK
	yxTqGpEHFqFxdR3VsGUdFYGEnOfoZRocL1GcgIUOLc5/hxBm0WLDigIBeH8CMGmlfKF24xEBcAT+a
	w2I5Z73c3mWUhnf07vkel5rCq8NfgHTMfPyI1/wi9ncaeN1O7/XYg9EDOxe6ebN/9vLKg4FWSO7/f
	bsyj7jV3D45EjfhAdJIc7qrTl878YAlFr39bFqKmkbFaA+5Rpyp0uDkXTlye0B++5tKdCz39Dpr0w
	K+u+KViIP54DeXmlCw+ncAcNRMnJC25QZvqkvPzA4J5z4IEAms7eBdl2Am2r6/dSkx7dVRc62ZGxV
	sJjrpGrQKcXvBAlrC+gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUl6m-0000000F65V-0iiP;
	Wed, 03 Jun 2026 12:54:08 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUl6L-0000000F64m-2RL9
	for b43-dev@lists.infradead.org;
	Wed, 03 Jun 2026 12:53:49 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2c0c379e8ffso25575885ad.3
        for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2026 05:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780491220; x=1781096020; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6RUtxi7gFFBB2jFLI9gsgqqsOc9t5I3VJP9BfFAwjBc=;
        b=OBSQWZ7xx861sHIkqATQc+1F8pVM1c/5xe32Lo9K0IntNhdq0xdbbOhnWaiN0qyrIz
         elPPQCVVLYLQrhkMpeaQ13Oe99j5ngtmpOB+HEwGYNDsvwC1qJFqRzisbwV0HjXriVKA
         ZxZWAf3laV25H+hBLmpvIZsOIHSv9HUGBGcqgTJ6ONV8SvwkGraUn/7Xs2eQScgnMiw0
         7rnulcsUKjAc2/1VFPJzYpmK/3O/aDkxNU/0ZhVpTvNJX1CUn0t0o3rhQXVddCKHEWbN
         tLkjeYj+EV4HSvpAftBStlZlN2tmC28ukrb48TWzVnE4VJeG91wMR62Gx3R2qzemQbcf
         8irQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780491220; x=1781096020;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6RUtxi7gFFBB2jFLI9gsgqqsOc9t5I3VJP9BfFAwjBc=;
        b=hsZAFUX45CqXUAhUXlOxVr/E23ehgJWIfLmOzakzs9wdkZ+5UlfLKuhjU6W4ha3SgA
         pPnWewhd4+PqfKaP9XLMh9FCJn/HZi5+0m8xYmQ5IKLvS15KJkLs3uY2ylDZo5G9akqa
         nyxeD9/R/ZHm2yD5xBd8LoObIrDYJYv1YPtODT592zZQCTlzuWNZ/TvgyuAouxCh0Vu4
         mDx5Pn/mrZEd02Oqsm28jRDHtvmjfAyg0y0aw+cKq9jQvVc3siEaI0qBtof27epnrW8Z
         nyH96zVBhK9eCx1p8U/oObPEvbdJDDi5L9cKR3mnp/B30GNWoqbaP0k0Tloq/fRa1hv2
         /vMw==
X-Gm-Message-State: AOJu0YweQYjxwhcMlyoQTohxUufVy7nSRD1NYKssZlzNw5VkCzQVs2fe
	HSRWAXv/7Euz8nqP62p2V1WWPudXVR+OBHnWgVYvQrzMFowc9EwowuJM
X-Gm-Gg: Acq92OEu4ODrEub5TVJaTEcSQtn1iIpkKjMoY2eUELXbqDYkydtIMuKOOsjcJSOpaPT
	1LJ4L4MNwpjG8UnoDReo9wJe6b167HJw6YpQmJonicx4s2oaYKKeiosyfyEz3FD5EXtyjUB+R+c
	cVZ5UdOpKg37U0Hd7YuuG2v+cVJzKrWD82rdbFpr7N5VPjRNPHaxNiIwn3wGrV7GGSR+M1vmk+q
	APcgfaTHorqjFsZVJs91ddSTRfeY329msoSw7iCm8j2EUer9wP4KO+CXaFCCrcS04gQlORytZ7s
	TAAAqnCGaHJBbZqL+NwAfd766oUF1UtbZYIBjIqkqSeQP3BS7oWy9eJsc5mXMvckd9I5RqJcF6C
	mqISgC2CXkYgDeV7gQnCITCFQTSYFSPUvE9mELViV92bcbOkyb/3w/hCKtNMX+DiAtdpBVplZ5Y
	t5UDzmXSHXsdzdEdKAcSXuH7EJytxNPBbzQg74eozSxjW+s3EV6luq
X-Received: by 2002:a17:903:2409:b0:2c0:bb11:19c8 with SMTP id d9443c01a7336-2c1641be73fmr37291035ad.36.1780491219737;
        Wed, 03 Jun 2026 05:53:39 -0700 (PDT)
Received: from jeevaanandh.. ([223.187.113.35])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16649ab01sm24449245ad.71.2026.06.03.05.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 05:53:39 -0700 (PDT)
From: Jeeva Anandh <anandhjeeva215@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jeeva Anandh <anandhjeeva215@gmail.com>
Subject: [PATCH] b43legacy: remove redundant mask bit set
Date: Wed,  3 Jun 2026 12:53:31 +0000
Message-ID: <20260603125331.6310-1-anandhjeeva215@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_055341_860325_337105EF 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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

mask is initialized to 0x0000001F, which already contains
the 0x0010 bit. Therefore the conditional OR operation is
redundant and can be removed.

Signed-off-by: Jeeva Anandh <anandhjeeva215@gmail.com>
---
 drivers/net/wireless/broadcom/b43legacy/main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index 6b3e0b2bbca7..d32bffa6f009 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -1904,8 +1904,6 @@ static int b43legacy_gpio_init(struct b43legacy_wldev *dev)
 		mask |= 0x0200;
 		set |= 0x0200;
 	}
-	if (dev->dev->id.revision >= 2)
-		mask  |= 0x0010; /* FIXME: This is redundant. */
 
 #ifdef CONFIG_SSB_DRIVER_PCICORE
 	pcidev = bus->pcicore.dev;
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
