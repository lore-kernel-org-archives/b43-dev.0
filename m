Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61BF2CA5FA5
	for <b43-dev@archiver.kernel.org>; Thu,  1 Oct 2026 07:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B8Bq4DW1mwvpGrw3CAMtLS+68n5WNPSJ6ZsPoWzuh3s=; b=ueFDpFGiLGg8Po
	mkGcsZrh8AXa7fIRx/C6fvingxwvEcYXxCbS4/3L7vGeTxDhDtl+fV0lvqyb8/aioqYWSduoPwm4/
	to0t/cE8dyDEg3lX2YLNJE7RxXy3S74MjksiNcf2IIAAH5zhIrQDvPYugPjTMUcLhi5AWdI8cTxWm
	Vc/wXL/1fyOq8OHXuz9U+lUXLf6v5byfPUtpHYYWXzmZYMs2HxD431m9XLUZS5oXRPKDXE21e5i9v
	rZ7g8KzGmrr0HcGPBfh+1TKJmjCLfz2IgSqwrd41bHgEdOF4LROQWgGEi9O13gWArf2yeZhWO74CR
	x82Ou6obEz4GRbnLk4Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBMO-000000081Fj-2geq;
	Thu, 01 Oct 2026 07:37:44 +0000
Received: from mail-ej2-x0e.google.com ([2a00:1450:4864:34::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBMM-000000081F9-0C2R
	for b43-dev@lists.infradead.org;
	Thu, 01 Oct 2026 07:37:43 +0000
Received: by mail-ej2-x0e.google.com with SMTP id a640c23a62f3a-c2afe9fa8e0so735558866b.2
        for <b43-dev@lists.infradead.org>; Thu, 01 Oct 2026 00:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790840260; x=1791445060; darn=lists.infradead.org;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WF+NPJiXy9Vnmi5WHh+QYbvLk/ut+YzrNBY7oFb/Eyc=;
        b=lji/uA33I3tDmYa/D99ULTmw95fWUeNjzJTgePsGNbX6a5UmyFeBxhHIkWEB3Mwpn9
         dsZbFPrxIM4kJkO6T71FFr634NHaC+CUSjwdOPVg8ru1DGr1zoVCycdEf4bB/rSVN6e+
         WCCbdsFKOBJpWjFoRD5fXN7934Sptkzflyy9/+pFfvKb3OpD/WNBN/s1B/urgJBE0Rqc
         m/FFWp7Bn1R+N110gVHL/b3w72oFFZDl5Uo6TlW1MOm3qDtqUUMtq1Z+gvH3+c83WK2b
         PSyPXwEavhYGEELVYLXkF5aY2Gqs/59Qw5yR/HKvq1xCLq/uRDkSDb4WCXqVeHTE0gb4
         sy3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790840260; x=1791445060;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WF+NPJiXy9Vnmi5WHh+QYbvLk/ut+YzrNBY7oFb/Eyc=;
        b=CYlx7B3uY5OEY/MTe8pSc62itrP4GqT0O5BJOL8/jRY64oR/TtxvB3MtcWngNEjlkl
         YlWcaUpxP3CERhIn9Iex+jF3G5SfaVNrJlEtfFhDMjQh5zYfDhNOyNOEsbgGPx9C2I1L
         58ZZ+rCsu2+zuknJw2cP1zkV4FNJyuVx1upPbCeK5OwDpuWvjHROO2NpzF2FB0W+pQ0S
         PqHMruR7rdINTpV5jFW6gkFIcfltaw9lKTWIafV8sQnnNWNMqVsod3P4fOB3C73I6koR
         y5tBOP00FtyZjf9aMKlYDhu3N0EL5eGHW2YktIMKYUsj/Csa59rCcB6LhNzs911NbsFM
         JcSA==
X-Forwarded-Encrypted: i=1; AKwUvByoeHD7fsBIhNU+jIbeIqAFWVZ7C7yQbw1wNNAbZut801i59pGYCbUAjv3Xc8Emw4Obq/UvBcRC@lists.infradead.org
X-Gm-Message-State: AFuF++mVv20M0sunGOGmO2AuoovjraymmrcoDTkj/tuPQbw663jx8EW/
	gmXcWTyihy8PKCMnnm2tKIpoZy+X66BxvJhwYTqoq8F7XCbG385IA8rC
X-Gm-Gg: AYBFou23EH5hpyPTy3SSOdJAraSqpQDZiFxqvmwLaf4k+Bmlkcr6xwmHAOmM1VmVxXy
	CLSbgf+SPoLBD7KOUXNCMbyBEu9KNaJgtfBnJEle6MOBQZzpO/JCVJeSG8y0w/bJe4QvElSao2G
	UtoCzkzGTtW/TwSbudbyHr+ro8k/1Hjhy4ZkpfAX8VIYmBXMmBjg0FvcqaApWufnH0EMfjubAqw
	S6n9827UrVQcafQtCR++wf/R4wLS2S0dDX5V4lBKiHNU359a4HBAF7HQWJ5ver7qtuUiAHK1JAy
	R0PgVVe+cns10xQUBNxCa9DUIt+hWsqapAZnvJqdikIc2Y5+I9Sn38LQ3mVTXe9bZXBDupFQ9lg
	LlJstZ/VkAyBqzDMdoozU4QIM4Jkpyw2fW2Oz2VHOmoAMP+FsWWE+AsJgRKljfxN/Q9OKCz9lHM
	dXTCXy+gXpCFCnvd85KNPJU+1zS2mU9gLnW2qtG6aH2DVrma2sRWbkkp0B+xF1UiY9fOM=
X-Received: by 2002:a17:906:478d:b0:c2d:fc0b:551a with SMTP id a640c23a62f3a-c2e233cc313mr310528166b.0.1790840259645;
        Thu, 01 Oct 2026 00:37:39 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e31d36795sm97826266b.38.2026.10.01.00.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 00:37:39 -0700 (PDT)
Date: Thu, 1 Oct 2026 10:37:35 +0300
From: Dan Carpenter <error27@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: Christian Lamparter <chunkeey@googlemail.com>,
	b43-dev@lists.infradead.org,
	"David S. Miller" <davem@davemloft.net>,
	linux-wireless@vger.kernel.org
Subject: [PATCH 0/3] wifi: NULL terminate some user strings
Message-ID: <cover.1790839793.git.error27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_003742_093718_54F435B8 
X-CRM114-Status: UNSURE (   8.95  )
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

These strings come from the user and they need to be NUL terminated.

Dan Carpenter (3):
  wifi: b43: don't pass unterminated string to sscanf()
  wifi: b43legacy: debugfs: NUL terminate string in debugfs
  wifi: carl9170: NUL terminate string in debugfs

 drivers/net/wireless/ath/carl9170/debug.c         | 5 +++--
 drivers/net/wireless/broadcom/b43/debugfs.c       | 2 +-
 drivers/net/wireless/broadcom/b43legacy/debugfs.c | 2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)

-- 
2.53.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
