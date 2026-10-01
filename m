Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1961CA5FA5
	for <b43-dev@archiver.kernel.org>; Thu,  1 Oct 2026 07:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiYDEKU1EZjDusiegQ2n9mLA7r++4XZf8tXgmX1yTnY=; b=ABt7ymeHl2/ALm
	Fn2xQW2nwyOezYFWmVT1gPy+awAU8jmopR6OADKr3HB7ESmNL1tM+JwZ+xS2bGnyxuMkwpaGpgzJl
	aI0HInopr2YHCgki1jyHcSR8Y9mtd7OjQ3QTV5VPCy343+c0cAoaGkH/IKzf2FfzKKiLTBQGgtplL
	RP0jHwdRJt5o9j0duJnwIQioOwxmu/C2PY5HE0EVt508wUr3HFnlRwn2iN4fn/6qh3A70C0UfDsEH
	J0vZwdMemBDGaodZzo4aBFfGRDAW8L6249vx9RX3drLbudHTA/GdO4yBVfTTfRrpzgAK9zLO4lXgP
	nSzLoLvQ/Hqg6UwyG2Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBMS-000000081Gs-34dS;
	Thu, 01 Oct 2026 07:37:48 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBMQ-000000081Fq-1XMM
	for b43-dev@lists.infradead.org;
	Thu, 01 Oct 2026 07:37:47 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c29703cb796so870390666b.2
        for <b43-dev@lists.infradead.org>; Thu, 01 Oct 2026 00:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790840264; x=1791445064; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gsL3ia+o/1e43RyZen5AJRoAaq5/bgRELxN/6vFLbTg=;
        b=J5eQrajo8NYVE3thosvcN5WsCgD1V/PlFKymQRdwP1lRrxd/UL/GHPBTTKgic31m94
         xIo6fF2S9MOv3aLAkSfOxaQ76v03j0aCaAhQ5wSoLoZFls3bH0Jvhb1iAWjHIdA3h5vU
         6HbvhtcSc/5ix9izjii5OV5LlruI1rRakAuTYYWOOWU4iZv651N/9Mn+Eu/oPwoyo/M5
         o0sCD4aZOoHdfCuANJc25DuD1pylvATkz5ly+rbxIK6Hr8xBzyISz96yV0ffdF0yO5bU
         PjpIYUGptaOXmM/RnGWGkmSFourHW4pKy7AcGJuNnn2sdmpHFhCfNsYvuAVjfLgtfhjW
         CqiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790840264; x=1791445064;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gsL3ia+o/1e43RyZen5AJRoAaq5/bgRELxN/6vFLbTg=;
        b=MgysIBUIuMMsExpXP01ZGDW39KOaIr5pV33mhhi/NSC9D8LXFdC8Ae0p4+bv1rFgof
         PhRLnUDYS7ttOGS7O4ZzI6wksaJLhSqi735dJ5xnNpG98I6DOS6UZY9sReYNuTebVDox
         knQMtK7f/qBv+WKOJ6fD+x5K3x4UhNINDwUR9xVMeutLG4bHB3IJq6HSVaJUmIbeKYjT
         GXMh5Mz3jbkQx6yisR9G5MSlBTnJUsUaR6m8izZbnwF4Wy25RziqjHa4J6mXWo/a7YW3
         /uL7DeXoYDzoOmjIdNVtaXE+78fLAXw31djTEwCoQgnxUG0C+FJVABs8Sle1lN0OLC1a
         I9xw==
X-Gm-Message-State: AFuF++n/iJyyJ+xe3Yv4yeUIISuB//1HvOgdUdcWFbWALtL/SjvQ8jaI
	Ob1YBpOEh/SY0/uGcc0n1LlyTjg4oklJBZKRctvl4GMSRusYvtoLBUr1JXFOCCIM+Qz65w==
X-Gm-Gg: AYBFou1J7CujHwnbXc/L2Tb6XC8VVrB4E7K04jvxCAD7JL4NyAbANyOdbaZeyrzS90N
	3/ifS1O8rc24fvWS2WDRnwp3SnR/TkuwvBG1dIlU7OEbB+eK7NR1+OpclDSzLAWtcrQc3zFFbkt
	u1hrOd/5LIGEAfdlWj+C41AhRu1Wbp49LD+invX5wGgxpkfapPy8jX2ufVAfRE7yZ8ppjIv3fnU
	VWZsfIJdvPXR3IGUux36kkLsca0t8Qj+9n0QULijPg69ClKa4rEmNyCOdLTG6XC+sV5kKzuwv5U
	B2wELeAfDnk8jVYCP4VIx7PYnENZwQJElPVYhtfQ5tyko56YFsft/XzhB+2G9x13oDixEuY/sOI
	ZnqDeLBjyjQ3+PqDjUY4exD0fWYc+D66odXLnLHihgjBE36djrElmrGoDqt/RqAKDQQoKn7kFna
	oD6FSR9WuzbRVg3UWarEtO+i3qsq2oMEaLXVZ2+3RnrYigAjjMgyhbWzpXVE0jAcT7jzg=
X-Received: by 2002:a17:907:d8a:b0:c26:1648:a065 with SMTP id a640c23a62f3a-c2e23d94c70mr325917166b.32.1790840264416;
        Thu, 01 Oct 2026 00:37:44 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e31d4297bsm101151566b.45.2026.10.01.00.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 00:37:43 -0700 (PDT)
Date: Thu, 1 Oct 2026 10:37:40 +0300
From: Dan Carpenter <error27@gmail.com>
To: b43-dev@lists.infradead.org
Cc: "David S. Miller" <davem@davemloft.net>, linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org
Subject: [PATCH 1/3] wifi: b43: don't pass unterminated string to sscanf()
Message-ID: <b396713e697c7411b23a2157e2102c347ac900bc.1790839793.git.error27@gmail.com>
References: <cover.1790839793.git.error27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1790839793.git.error27@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_003746_446126_60D6FEB8 
X-CRM114-Status: GOOD (  15.72  )
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

The "buf" buffer is a PAGE_SIZE and allocated with kzalloc().  We store
a string from the user in it and then pass it to sscanf() in the write
functions such as shm32write__write_file().  Only a few numbers are
stored in the buffer so it never comes close to filling up the whole
PAGE_SIZE.  Reserve the last character of the page for a NUL terminator.

This is debugfs so it's root only.

Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices")
Signed-off-by: Dan Carpenter <error27@gmail.com>
---
 drivers/net/wireless/broadcom/b43/debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/debugfs.c b/drivers/net/wireless/broadcom/b43/debugfs.c
index 31a1ff00c1a4..173ef5db90fc 100644
--- a/drivers/net/wireless/broadcom/b43/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43/debugfs.c
@@ -557,7 +557,7 @@ static ssize_t b43_debugfs_write(struct file *file,
 
 	if (!count)
 		return 0;
-	if (count > PAGE_SIZE)
+	if (count >= PAGE_SIZE)
 		return -E2BIG;
 	dev = file->private_data;
 	if (!dev)
-- 
2.53.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
