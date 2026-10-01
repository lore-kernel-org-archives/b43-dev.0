Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 455C7CA5FC5
	for <b43-dev@archiver.kernel.org>; Thu,  1 Oct 2026 07:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RU2hdnNAzR/G3gTBqAXFnwatu1fWagVGqbN5OVNZMVs=; b=PHqAzfen+0vEeq
	+jDS8E7q/J1AnMiatyYxy/k98X5uHcrq8RzTNcJIY0XEoINir9egnhjWHJ1RE2mo/kCl8FTrWAmaO
	B/YvPw7FpsihI/wPKVdgWs33/QiIREscSPPfxwVM1b03Lr4fXSbh7F28zYrGRcvyvRVsoOaqIcM3E
	MzcBCVmCSVW2CE4KloGE+tCfsMREFuwNZNTnudbyuC5jdpeYQBQQE/fdGmqzi/0pt37Z9YCoYYqrM
	BtJ6vFdV9s3MgrAUCJ3ucVxhfZVPNsNqENk2KFWiD72omegRSb1HlKn1KxSgXgkKj/rBUdz/IiBM5
	fdXy3spSEcuEAu+HqBKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBMY-000000081JC-3Ufj;
	Thu, 01 Oct 2026 07:37:54 +0000
Received: from mail-ej2-x24.google.com ([2a00:1450:4864:34::24])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBMW-000000081Hz-2HDM
	for b43-dev@lists.infradead.org;
	Thu, 01 Oct 2026 07:37:53 +0000
Received: by mail-ej2-x24.google.com with SMTP id a640c23a62f3a-c2e27d11f43so83262566b.0
        for <b43-dev@lists.infradead.org>; Thu, 01 Oct 2026 00:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790840270; x=1791445070; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=OAi7fW4JIXTaTIa0/z3chJgYpw360FBeTuGIpfI5tbI=;
        b=DFBcF3FzT/o3NmbONXvvT2WwNcdaclI669A/ly0PAqwlGONYgKbF0DrBVGmddbdydC
         NtcmD5rggKKZ+9NHvoAg6C+6ncuaf+7jjb4apDWTBLKI4jp3gVlQQciTw8TnaEVH3dXn
         MQvtsTDyIDwDhdDGiicwTiiHmbVCScMamlgz6glnPsiHyS4JgK/5skFtCyrnDnmaxkOa
         O5JnaXMYwVKkE9Bx3aMF+biZ/Oz6Lfsw/qrSTCd7Qcq95zvi7ris7FRfk51k2N4opQCf
         orI41q5qmNDldcjOPM8nHhSCqoj6jGqxe9SmvyDVQ094JT926hreZ5xMw69K9Gdeq9Pu
         xlmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790840270; x=1791445070;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OAi7fW4JIXTaTIa0/z3chJgYpw360FBeTuGIpfI5tbI=;
        b=LYKi0okx0XGgiM329sfod+odHeuu2eMca1w1JrXV3wqkDMyMN0caZbpLlvRClzqn3s
         QSG6vo5+iq/wHyQ3j7eocyUIO7g5AM8YlL5b75dHYagkzVQ1ong+VuGtFQ7/rnKoIhyK
         Eff9fgASSOQt+ybR/JNZ2T8UIvxVcSVTcrPBnzfmACQi98Ig4qmsRItp7ZYN+sco+GxI
         Dxzvch4+HLIvwC5zvHrGbIdRMFUnWGsu2E4rEc4IuYitT5Gy0HNic92pn+C5V9FVbupQ
         5gNusw6qLrDDh1VHZFWpwif8yvk3maGPaBQSA18oW4KcsXAdbT+Rfql4QidQcDGFzfcd
         hlZQ==
X-Gm-Message-State: AFuF++kgJ3dJqGYl7nZu+ltZIrsFfnWUeEJXZ/jkiOEeCr1f0K5ptfes
	CnO4VdzuK4xFu1866QnixY31+fWgICWxiXSS7WxlfudpSqrcgsUxTsO+0MZMFASzqs53nQ==
X-Gm-Gg: AYBFou0xcRKEIvjz2tCV2fIqApYm6v5lZMhW9F9D37FhM6mVoSvM4sV+bN5UnObKNSM
	OUn3FoAvZjjImncdosmq1vxYIYgWu9NF76NQmo3tDOan19SA54RyhAUG2KiOVKomie2R40hRrrN
	lSKKUvMmfuMux/wH2QSyeYdr6Wb7YAnwMURqh7Kf8UyAs0L1eQGfCBsd8PbiG8xpwifZCKyGIrx
	JuoFIpS1V5P7JFjIrY351ZGcnSI52FnlHAk4CM6shxwOD1RNPaGN+Ly7xNDiJrsQ2ofTyC7xxqo
	VY0xeP3fgTIng6NwsDaFz+8mL9BM3XXGy9DMyZ0mlvIM1dOmVY4PtSq/dD0LlB+IMYPN5kGEdM1
	uiVCI05rM7bHeEZuMZfntyMBt0huWdfCV5QyZDFGYvm0xEmW6l2A6zCf5qJVm9Wxw/0UweaSoI7
	WcwP9N8lu46mKW0fK7YD5E+zemuXpqPt6g5FWMXq2LIRvMaDKZBtxSZRpgRG3qirgPdSyT/lPB9
	8VHvQ==
X-Received: by 2002:a17:906:c14c:b0:c25:f7db:4bef with SMTP id a640c23a62f3a-c2e33e7d4f3mr162862666b.21.1790840270349;
        Thu, 01 Oct 2026 00:37:50 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e31c8edfesm100394566b.15.2026.10.01.00.37.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 00:37:49 -0700 (PDT)
Date: Thu, 1 Oct 2026 10:37:46 +0300
From: Dan Carpenter <error27@gmail.com>
To: b43-dev@lists.infradead.org
Cc: "David S. Miller" <davem@davemloft.net>, linux-wireless@vger.kernel.org
Subject: [PATCH 2/3] wifi: b43legacy: debugfs: NUL terminate string in debugfs
Message-ID: <909ea7a88658b5e7c183bf0fda31687a91d73818.1790839793.git.error27@gmail.com>
References: <cover.1790839793.git.error27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1790839793.git.error27@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_003752_585841_261B8821 
X-CRM114-Status: GOOD (  15.58  )
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

The "buf" buffer is PAGE_SIZE and allocated with kzalloc().  We store a
string from the user in it and then pass it to sscanf() in the write
functions such as tsf_write_file().  The buffer is only used to store a
number so we never come close to filling up the whole PAGE_SIZE.  Reserve
the last character of the page for a NUL terminator.

This is debugfs so it's root only.

Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices")
Signed-off-by: Dan Carpenter <error27@gmail.com>
---
 drivers/net/wireless/broadcom/b43legacy/debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/debugfs.c b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
index a04d90d7307c..7ce8bcf12f0a 100644
--- a/drivers/net/wireless/broadcom/b43legacy/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43legacy/debugfs.c
@@ -259,7 +259,7 @@ static ssize_t b43legacy_debugfs_write(struct file *file,
 
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
