Return-Path: <SRS0=/5zT=K5=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1659C47096
	for <b43-dev@archiver.kernel.org>; Thu,  3 Jun 2021 09:32:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1C8F600CD
	for <b43-dev@archiver.kernel.org>; Thu,  3 Jun 2021 09:32:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A1C8F600CD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Izg8VEI+owgEn6tZesUchS7pdkUOaOpXpRxsqNEwgM=; b=fMZTxjpNTrPxi9
	uAvqTT1to7QPZuUC5QKofsZbghD5COwPJ1bygcK70XUZzAwImKS+LGKbkZzqQfiA7c/dUvh6ibLG4
	A7VCP8oaXzaiqx7Z0XDYCFVMGeeyzLhXlE0xsj7+LD6WyKfGJsoJjoFlj9leOB/aiEHzsLzXYoq1g
	ZQrqf9dTuT9XD3Ap8e/xN+4mmGhQhQBSdF9q1/ELjeIyurISLR2nCo2zlAZf+wYWeszu90cOfDTYz
	MDtdnJjMsgS5jALJSoFPQKPYUxqVUgbo6VqeqLitgSSxFiXoe5lr5Kg94aBFCgr+/+gNEt+I7yTmG
	daCwG1s7/yMV8jjdc8AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lojhO-007s86-0N; Thu, 03 Jun 2021 09:31:34 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lojhG-007s7b-RR
 for b43-dev@lists.infradead.org; Thu, 03 Jun 2021 09:31:29 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1622712688; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=c5xIgrlxWshRfO3bg2y2nyBdTH28b2MQ4/Vkjfk0pLc=;
 b=j7rQs7ZMwOmx7+SpKjs40wTzGJs7Xu4ED5Hzr8EoZAry+s7jomdkVDly5Km3DYxXWY2ZetAh
 yPDaoCUrty+sXBwg90JUn1akDSlp6F99nv0LLxyWL40Bfcnewnvosre3k8T4Nvi9to7TkXuH
 XzD2GW6U3/0fRyXqJn4hI2m17yQ=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 60b8a157e570c056198013f4 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 03 Jun 2021 09:31:03
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 45E8FC43460; Thu,  3 Jun 2021 09:31:03 +0000 (UTC)
Received: from tykki.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BFBD6C433F1;
 Thu,  3 Jun 2021 09:31:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BFBD6C433F1
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/1] b43: phy_n: Delete some useless TODO code
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20210511034203.4122-2-thunder.leizhen@huawei.com>
References: <20210511034203.4122-2-thunder.leizhen@huawei.com>
To: Zhen Lei <thunder.leizhen@huawei.com>
Cc: "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 b43-dev <b43-dev@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Zhen Lei <thunder.leizhen@huawei.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-Id: <20210603093103.45E8FC43460@smtp.codeaurora.org>
Date: Thu,  3 Jun 2021 09:31:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_023128_375910_16AE1EBB 
X-CRM114-Status: GOOD (  11.21  )
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

Zhen Lei <thunder.leizhen@huawei.com> wrote:

> These TODO empty code are added by
> commit 9442e5b58edb ("b43: N-PHY: partly implement SPUR workaround"). It's
> been more than a decade now. I don't think anyone who wants to perfect
> this workaround can follow this TODO tip exactly. Instead, it limits them
> to new thinking. Remove it will be better.
> 
> No functional change.
> 
> By the way, this helps reduce some binary code size.
> Before:
> text    data    bss     dec     hex
> 74472   9967    0       84439   149d7
> 
> After:
> text    data    bss     dec     hex
> 74408   9919    0       84327   14967
> 
> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>

Patch applied to wireless-drivers-next.git, thanks.

da16f5be45d0 b43: phy_n: Delete some useless TODO code

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20210511034203.4122-2-thunder.leizhen@huawei.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
