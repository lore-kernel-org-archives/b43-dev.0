Return-Path: <SRS0=/5zT=K5=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB0D1C47082
	for <b43-dev@archiver.kernel.org>; Thu,  3 Jun 2021 09:32:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9A2B613DE
	for <b43-dev@archiver.kernel.org>; Thu,  3 Jun 2021 09:32:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A9A2B613DE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkPNj9giH1QlkZWdqgCry0M5EQzRkDa0nJMPbpB3z00=; b=LK71AgeRBh/yrV
	fjC4H/RQzIgYNGHvR94AEGMuZJS03/So7I3tLF+5QEYsk4WihjtWqAZzBrGwmVa9N/Ikv8FDFjmVf
	Oeul4VexBazFCJKVPvWBeA44EWGlxjl8L3QY7f0S3ntExjudeMcX4jJXnKmLccuXYp49I1Wf4h4oJ
	q267ZAby0aO2U+YuIVi2BpEy0qrPyB8PMkpUwGXrOykmF0ZHKOiPF+MKcTRGfh+Qk8CHtZ28UKw9o
	8y0B29WSVuq2hmonIJ9Mv+28BIYAjgMyjk36dMNeGpBherxeKqdqPP22GQhLM5vtXrZHZd0cpqJxn
	8hw7JVcsRKsOg6gegGwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lojhh-007sAA-Jz; Thu, 03 Jun 2021 09:31:53 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lojhc-007s7b-Q3
 for b43-dev@lists.infradead.org; Thu, 03 Jun 2021 09:31:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1622712710; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=04FY2EG0f7DDNMgCEhcMYX12ljjPnhGTWflAQQerQQw=;
 b=xhjqOTu0PPP9/XVVA1TrELAT84rrrR24VXSP+x54/sFedmdTN9PuDbaowpSETTdR57Fz+36a
 uVjzSwg4Zv3pcFquZBzP5kOxTb5BkadBStgxe15U8kS3D4NL8YsOK93kS9vnPmf5+/+CPPcc
 0rBWTdoFLGZDfFzHMx+Sx0+4qF4=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 60b8a1738491191eb3caa983 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 03 Jun 2021 09:31:31
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9F35BC4338A; Thu,  3 Jun 2021 09:31:31 +0000 (UTC)
Received: from tykki.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2272CC433F1;
 Thu,  3 Jun 2021 09:31:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2272CC433F1
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] b43legacy: Remove unused inline function
 txring_to_priority()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20210529115131.6028-1-yuehaibing@huawei.com>
References: <20210529115131.6028-1-yuehaibing@huawei.com>
To: YueHaibing <yuehaibing@huawei.com>
Cc: <Larry.Finger@lwfinger.net>, <davem@davemloft.net>, <kuba@kernel.org>,
 <gustavoars@kernel.org>, <yuehaibing@huawei.com>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-Id: <20210603093131.9F35BC4338A@smtp.codeaurora.org>
Date: Thu,  3 Jun 2021 09:31:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_023150_677462_27FDF062 
X-CRM114-Status: UNSURE (   6.34  )
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

YueHaibing <yuehaibing@huawei.com> wrote:

> commit 5d07a3d62f63 ("b43legacy: Avoid packet losses in the dma worker code")
> left behind this.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Patch applied to wireless-drivers-next.git, thanks.

d1dbaa54191e b43legacy: Remove unused inline function txring_to_priority()

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20210529115131.6028-1-yuehaibing@huawei.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
