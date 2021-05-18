Return-Path: <SRS0=0Y2N=KN=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79CC7C43460
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 17:48:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F23D360FE3
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 17:48:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F23D360FE3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hXr0CWejwzmkKzKj1P/DJlHTLoLbmakOt3KODHMMLJA=; b=Sg94D1dn+nwu73h7HpMw4wAI9
	ljicVgeWuH1mMLmnRm8+gE88ZvwOzj9aslQpFZ1E9hcx5FuK0NbM7B4GUx90CT47QxaYNs/q/qJSk
	YSrDjkxznGGtFmpARbHy8GKS4SULqceZ+Qc3wYa4QvEfKyixj1Mk3LE05vGhvXM99dkJe0S/Qwffg
	awVZ4m0JKhtGC/TdSCHnv3Hc/jH7cTF1cI66Sl7k57RawY6jCAspjZZDjOPAiad/BwOwyc3xc8C4X
	QTuhMhxx8EicorhEGZ35/G0pZrzm2SDSAH4KWlj/6W5vt/NgUnURPG9YtfRVvwC3abrAJW5ZamHK/
	3+qYWlOIw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj3pU-001Wjf-8J; Tue, 18 May 2021 17:48:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj3pS-001WjS-4a
 for b43-dev@desiato.infradead.org; Tue, 18 May 2021 17:48:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XmuA3B7GS6TkN5kLEy21D8OBDa8+e9kx9cJtWb8Qq7o=; b=MgXFQKOij+9T0pBAZ16YyRP3+H
 BmeFkrtqMCJtikDmY88rDKqWVZx8d6oWAxvn0rTCkvW6JChRpNS4IU/Vf0HwfEwozRaOkE/Jc1eoY
 2XNnVShmaW5zHIdYQKS8XOLOKrqXa5l5ZqgwMOLy8JOpwvcsv1EFN4+FPMYRRxIDzXQ5lpn6qem5G
 qAvYs4CP2ea+mMFntjHZuUf3RIij+qOX6V99MlgCSntbuVrOvzUyq9KfZuz8QeUi5WgdftjXtIlCx
 V7V/cNg6ft9B1thjb1sVQEj8lPNUNQfHeJk0/Ut9lgnNtVLv3mPI8nb477OjPekNIOOdUdbPENGkL
 h7wMVgVw==;
Received: from so254-9.mailgun.net ([198.61.254.9])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj3pN-00Eqo8-AR
 for b43-dev@lists.infradead.org; Tue, 18 May 2021 17:48:24 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1621360103; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=XmuA3B7GS6TkN5kLEy21D8OBDa8+e9kx9cJtWb8Qq7o=;
 b=NZcANB+Jqsc/LIE6s36UA193+Y+S0xfcF37RthVaBK47XeeQea3XjelUpePYxBRsUAKvAf3/
 ghcDqgVxlpY6FomX07m7VVmaQUk4rYn0uIv0dcuBwdckO76re48a7GFygg9vLA2cQxTRhk7y
 gVHup4LvvI2ERzn4VIfnfPBg5yU=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 60a3fdd31449805ea2aa2586 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 18 May 2021 17:48:03
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 92A30C43217; Tue, 18 May 2021 17:48:03 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3AC72C433F1;
 Tue, 18 May 2021 17:47:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3AC72C433F1
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-wireless@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu <chao@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] b43: don't save dentries for debugfs
References: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
Date: Tue, 18 May 2021 20:47:58 +0300
In-Reply-To: <20210518163304.3702015-1-gregkh@linuxfoundation.org> (Greg
 Kroah-Hartman's message of "Tue, 18 May 2021 18:33:04 +0200")
Message-ID: <874kf0hr1t.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_104823_569168_D73F690C 
X-CRM114-Status: GOOD (  18.75  )
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

Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:

> There is no need to keep around the dentry pointers for the debugfs
> files as they will all be automatically removed when the subdir is
> removed.  So save the space and logic involved in keeping them around by
> just getting rid of them entirely.
>
> By doing this change, we remove one of the last in-kernel user that was
> storing the result of debugfs_create_bool(), so that api can be cleaned
> up.
>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Cc: Chao Yu <chao@kernel.org>
> Cc: Leon Romanovsky <leon@kernel.org>
> Cc: linux-wireless@vger.kernel.org
> Cc: b43-dev@lists.infradead.org
> Cc: netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/net/wireless/broadcom/b43/debugfs.c | 34 +++------------------
>  drivers/net/wireless/broadcom/b43/debugfs.h |  3 --
>  2 files changed, 5 insertions(+), 32 deletions(-)
>
> Note, I can take this through my debugfs tree if wanted, that way I can
> clean up the debugfs_create_bool() api at the same time.  Otherwise it's
> fine, I can wait until next -rc1 for that to happen.

Yeah, it's best that you take this via your tree.

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
