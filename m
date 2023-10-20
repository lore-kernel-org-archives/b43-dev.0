Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE344CDB474
	for <b43-dev@archiver.kernel.org>; Fri, 20 Oct 2023 09:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VtjfXMKaAbCzUy+q2qQWLhYDtNU0mdGQN+jE2d7KIwY=; b=FpKzGVODxxaig8
	ElVTrmY4j8FOG4nqimj/VlFnekJKQCOedEBX4LAq8bA63W92vOMk5OWPriIF4J9XXCw07yoILSTmt
	uKXJroO83DT/H0iZD4u3AKM9FVd5F0BlU1BfWTgy/EYpYyLqf6yqazksp0L2ML0r/YFYUEXFgXwgz
	t1U0f5et2iniSDWdEUb3IWEkvIlfQ0lwYrkdulrikgXAyCwGCI9lHGSoy6VaNwRd/PsGm4j2Yr6kt
	qbOptCJbKA5xW0jH8secJ0qYZ5IZj0sdZvAv3tvvwuiKFOEu/+bAr0Eb7GsME8IJc27kZrhtKx3rm
	kIpEO+1q6aje++LJhDeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtlnJ-001gKW-10;
	Fri, 20 Oct 2023 09:27:49 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtlnF-001gHx-2O
	for b43-dev@lists.infradead.org;
	Fri, 20 Oct 2023 09:27:47 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1ca6809fb8aso4457745ad.1
        for <b43-dev@lists.infradead.org>; Fri, 20 Oct 2023 02:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697794062; x=1698398862; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JB3fxO2mMO19Xlf/r34jd/yfK5QtzNwJph3CXQR1Z6M=;
        b=T7BZnXrBG7CTrn0mhjedpBfis1g4W6zQSyzP+Be7QoJDg6XGcdI4GtumWbIXJuvSVf
         qbw/NTSe/3JYHhw9d5Y+XI/MIeO/OipjyZT5vxcnzGg1v536L9iNnWA45VGhUAW9MulW
         W935YNaCoYnWVbcIVL/DxJjwuwD3Higiz1c7BKEsp3dwUrJCurTX3hcbp+XFzjdtBD91
         zLTFVgYWZpef62bp3tixGaq2XMbtXm+BsFU0cx4VnOU0UWIhBpMqXQ19wDsGeS62gT2R
         PZn3uCVZwtQOLAkCv0LurOwnuXAizSJaL9R4CjZSjvdVeOGjeTlM3Rk2QRBpQekQWdET
         jMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697794062; x=1698398862;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JB3fxO2mMO19Xlf/r34jd/yfK5QtzNwJph3CXQR1Z6M=;
        b=Ms9PKm4DIaUpu4Sl0SW/sCyBlW7l8khr7gYRH4+o6oW3+7Z2zpTCFvtzQyZGfi42hu
         F5Ch5he4YaAXp1+ujz6aEkbd1GYF9RiXotSH6aCXxfPtounEuUyiEWwFgU4i1YJIYcsG
         V88rDK+W186JV1c8g9Jh6u+5EfypU5dFgRw2qZswSvqmQOvLqKpFn0YCxAyo3+GUqPyX
         WSY5+bNJb01O9l173LpV/rzUr6LZvzu2hx6eH1AkRgpos2xyaW4mTEqIZIR+F3xA21PM
         IV4XeEgkzNOJSHHM5hhKidnXSfYlXgZ5+DZXj4aMu6XKAUgvzZSee9qcas8/ebW03orJ
         7pOQ==
X-Gm-Message-State: AOJu0YziJKqbf38BlV3a+Pb5VZaRy908yRceyM125VB9C9bSVuSYb3DV
	WqljLGJR/0ACyxPECen8D3I=
X-Google-Smtp-Source: AGHT+IEbfA+/ZX8gL3S93KhB/qdw24YwWGgUJzP5euruthpeBkMm0GYMS9JN7bc1IaxPSsGaLqVx4A==
X-Received: by 2002:a17:903:1251:b0:1c9:c01a:e9c7 with SMTP id u17-20020a170903125100b001c9c01ae9c7mr1412192plh.28.1697794062209;
        Fri, 20 Oct 2023 02:27:42 -0700 (PDT)
Received: from brag-vm.. ([59.182.194.226])
        by smtp.gmail.com with ESMTPSA id e12-20020a170902ed8c00b001c60c8d6b4asm1086071plj.149.2023.10.20.02.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 02:27:41 -0700 (PDT)
From: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
To: Larry.Finger@lwfinger.net,
	kvalo@kernel.org
Cc: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] b43legacy: Removed unneeded variable in debugfs
Date: Fri, 20 Oct 2023 14:57:35 +0530
Message-Id: <20231020092735.2565-1-bragathemanick0908@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_022745_777518_0BBC8DE1 
X-CRM114-Status: GOOD (  12.32  )
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

Removed unneeded variable. Issue identified using Coccinelle semantic.
No functional impact

Signed-off-by: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
---
 drivers/net/wireless/broadcom/b43legacy/debugfs.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/debugfs.c b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
index 6b0e8d117061..184b0b4bdd94 100644
--- a/drivers/net/wireless/broadcom/b43legacy/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
@@ -65,7 +65,6 @@ struct b43legacy_dfs_file * fops_to_dfs_file(struct b43legacy_wldev *dev,
 /* wl->irq_lock is locked */
 static ssize_t tsf_read_file(struct b43legacy_wldev *dev, char *buf, size_t bufsize)
 {
-	ssize_t count = 0;
 	u64 tsf;
 
 	b43legacy_tsf_read(dev, &tsf);
@@ -73,7 +72,7 @@ static ssize_t tsf_read_file(struct b43legacy_wldev *dev, char *buf, size_t bufs
 		(unsigned int)((tsf & 0xFFFFFFFF00000000ULL) >> 32),
 		(unsigned int)(tsf & 0xFFFFFFFFULL));
 
-	return count;
+	return 0;
 }
 
 /* wl->irq_lock is locked */
@@ -91,7 +90,6 @@ static int tsf_write_file(struct b43legacy_wldev *dev, const char *buf, size_t c
 /* wl->irq_lock is locked */
 static ssize_t ucode_regs_read_file(struct b43legacy_wldev *dev, char *buf, size_t bufsize)
 {
-	ssize_t count = 0;
 	int i;
 
 	for (i = 0; i < 64; i++) {
@@ -99,7 +97,7 @@ static ssize_t ucode_regs_read_file(struct b43legacy_wldev *dev, char *buf, size
 			b43legacy_shm_read16(dev, B43legacy_SHM_WIRELESS, i));
 	}
 
-	return count;
+	return 0;
 }
 
 /* wl->irq_lock is locked */
@@ -125,7 +123,6 @@ static ssize_t shm_read_file(struct b43legacy_wldev *dev, char *buf, size_t bufs
 static ssize_t txstat_read_file(struct b43legacy_wldev *dev, char *buf, size_t bufsize)
 {
 	struct b43legacy_txstatus_log *log = &dev->dfsentry->txstatlog;
-	ssize_t count = 0;
 	unsigned long flags;
 	int i, idx;
 	struct b43legacy_txstatus *stat;
@@ -166,7 +163,7 @@ static ssize_t txstat_read_file(struct b43legacy_wldev *dev, char *buf, size_t b
 out_unlock:
 	spin_unlock_irqrestore(&log->lock, flags);
 
-	return count;
+	return 0;
 }
 
 /* wl->irq_lock is locked */
-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
