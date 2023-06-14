Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5220AEB64D9
	for <b43-dev@archiver.kernel.org>; Wed, 14 Jun 2023 07:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hVinTVJ0yY7NLK/o2M0nFiERlIRZiYAZIm6YfOwdmUg=; b=blWI9cjKB6D5XiDC/CIYFjWzqH
	F8DRhOrzC82OO/TKOjU6f+pqaTLJV5XfxPLyO9FCjCkW9AmC2iA0Qn3Dd2gNHqSHcSrG/gh6HQ/s1
	u+ThTZEpcuaXKTF//2u8Eq1+Y49iVggqShDeIk4L1SbZoYA25kEzfvKP800BoSm1vX+UQyqE93dYQ
	dUzYrxB1vO+MiCQocI/lkGH2mLoFW8G/+Vpz85WUdgvS4q0xtEm4joI/zRGK0AQfdm9IVN6lrda28
	Hx0eMIi5ZWP73hGlTMwNi78M43mzzttydZy966Vl52/Skpr7LF7CcPCf26BYb4KDIyD7a9wT+nfTH
	RmFtFfLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9LM8-00AmLE-2Y;
	Wed, 14 Jun 2023 07:55:52 +0000
Received: from [183.242.55.162] (helo=mail.208.org)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9LM2-00AmIY-1S
	for b43-dev@lists.infradead.org;
	Wed, 14 Jun 2023 07:55:48 +0000
Received: from mail.208.org (email.208.org [127.0.0.1])
	by mail.208.org (Postfix) with ESMTP id 4QgyQT6FRGzBQJZQ
	for <b43-dev@lists.infradead.org>; Wed, 14 Jun 2023 15:55:29 +0800 (CST)
Authentication-Results: mail.208.org (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)" header.d=208.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=208.org; h=
	content-transfer-encoding:content-type:message-id:user-agent
	:references:in-reply-to:subject:to:from:date:mime-version; s=
	dkim; t=1686729329; x=1689321330; bh=dS8vnxgH8gji4XEQkFCndZks/HB
	FYJuzJrwrDwTtmrM=; b=M5/nEMjpHsBJXwdr954RZPBFmxqyoQgG1vDUjkZrqg9
	1Woh99laCh/B2o5W8oACSMJ/3DdcZ2Q1j9YcAt4fK3nW4ImrC6Mr27Bj+L86Njt5
	IXsmop9e6d8DX+wDNGPCBVPomEr1ihr/tlk7wkTtZDzv+d37dccr8RZN4vneEmLc
	sEdvYlEfx6vD09Hag3MCiGH7Ph7yRvQzsVISvIeJ9swXV3jpf+CmDXMXu4u+lkRO
	fY9uxdHw2TqLp02X8ylE11VUvwJ9Zw4nCG/SwGH4fBQLEx3ZL0tpalJ97PzSFuCU
	J0jzlUhh/KX6oRNpZ5ckggYETN1MFMAoWpaXCdGrwhQ==
X-Virus-Scanned: amavisd-new at mail.208.org
Received: from mail.208.org ([127.0.0.1])
	by mail.208.org (mail.208.org [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id AYoZ1LftAABD for <b43-dev@lists.infradead.org>;
	Wed, 14 Jun 2023 15:55:29 +0800 (CST)
Received: from localhost (email.208.org [127.0.0.1])
	by mail.208.org (Postfix) with ESMTPSA id 4QgyQT3m39zBQJYq;
	Wed, 14 Jun 2023 15:55:29 +0800 (CST)
MIME-Version: 1.0
Date: Wed, 14 Jun 2023 15:55:29 +0800
From: wuyonggang001@208suo.com
To: Larry.Finger@lwfinger.net, kvalo@kernel.org
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] b43legacy: Remove unneeded variable
In-Reply-To: <20230614075250.29097-1-zhanglibing@cdjrlc.com>
References: <20230614075250.29097-1-zhanglibing@cdjrlc.com>
User-Agent: Roundcube Webmail
Message-ID: <194e8e87fda5f02664fcfac3717458f2@208suo.com>
X-Sender: wuyonggang001@208suo.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_005546_716047_4DBC22DD 
X-CRM114-Status: GOOD (  11.64  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Fix the following coccicheck warning:

drivers/net/wireless/broadcom/b43legacy/debugfs.c:68:9-14: Unneeded 
variable: "count".

Signed-off-by: Yonggang Wu <wuyonggang001@208suo.com>
---
  drivers/net/wireless/broadcom/b43legacy/debugfs.c | 9 +++------
  1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/debugfs.c 
b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
index 6b0e8d117061..184b0b4bdd94 100644
--- a/drivers/net/wireless/broadcom/b43legacy/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
@@ -65,7 +65,6 @@ struct b43legacy_dfs_file * fops_to_dfs_file(struct 
b43legacy_wldev *dev,
  /* wl->irq_lock is locked */
  static ssize_t tsf_read_file(struct b43legacy_wldev *dev, char *buf, 
size_t bufsize)
  {
-    ssize_t count = 0;
      u64 tsf;

      b43legacy_tsf_read(dev, &tsf);
@@ -73,7 +72,7 @@ static ssize_t tsf_read_file(struct b43legacy_wldev 
*dev, char *buf, size_t bufs
          (unsigned int)((tsf & 0xFFFFFFFF00000000ULL) >> 32),
          (unsigned int)(tsf & 0xFFFFFFFFULL));

-    return count;
+    return 0;
  }

  /* wl->irq_lock is locked */
@@ -91,7 +90,6 @@ static int tsf_write_file(struct b43legacy_wldev *dev, 
const char *buf, size_t c
  /* wl->irq_lock is locked */
  static ssize_t ucode_regs_read_file(struct b43legacy_wldev *dev, char 
*buf, size_t bufsize)
  {
-    ssize_t count = 0;
      int i;

      for (i = 0; i < 64; i++) {
@@ -99,7 +97,7 @@ static ssize_t ucode_regs_read_file(struct 
b43legacy_wldev *dev, char *buf, size
              b43legacy_shm_read16(dev, B43legacy_SHM_WIRELESS, i));
      }

-    return count;
+    return 0;
  }

  /* wl->irq_lock is locked */
@@ -125,7 +123,6 @@ static ssize_t shm_read_file(struct b43legacy_wldev 
*dev, char *buf, size_t bufs
  static ssize_t txstat_read_file(struct b43legacy_wldev *dev, char *buf, 
size_t bufsize)
  {
      struct b43legacy_txstatus_log *log = &dev->dfsentry->txstatlog;
-    ssize_t count = 0;
      unsigned long flags;
      int i, idx;
      struct b43legacy_txstatus *stat;
@@ -166,7 +163,7 @@ static ssize_t txstat_read_file(struct 
b43legacy_wldev *dev, char *buf, size_t b
  out_unlock:
      spin_unlock_irqrestore(&log->lock, flags);

-    return count;
+    return 0;
  }

  /* wl->irq_lock is locked */

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
