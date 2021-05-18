Return-Path: <SRS0=0Y2N=KN=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C26C433B4
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 17:49:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DABA361154
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 17:49:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DABA361154
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6KZwF6+NsyL7kmFt7UX2ywCN4ozNnToh1hsYrYdCUHs=; b=MXVQN/TaUlJORMpASbRxPWIpb
	top+fLN8OjlQg9djRETgkMmJldm/+TN4j6QoYkvFfXdrlFO74Ag5q0OR412K0SCYnNswKGfYt/7EH
	eGXkYZEVgO2DUwz9T2PgJLzPgu6vAFv5kGDbphslEMGOa4/vVDVB4cDoFI2Ya9UoGSjlP3ngT7Mc3
	0TImnj16hH+TMRCcFi0yHXszhC+9+vlWHBtgdugFThjWQSCYG+fOX/Az0HkcXkXIzcV/PlUxzPS0t
	SkB5Qk0VvmE6VKNQn7SfgXGWqbXHqQe+6LG4g/gmUq6JCrXTNG58Vn+ZmDMJqkzMqqkitleKRFD6k
	C16mo6U3w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj3px-001Wmu-7V; Tue, 18 May 2021 17:48:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj3pu-001Wmc-3x
 for b43-dev@desiato.infradead.org; Tue, 18 May 2021 17:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3YWst4AdCVXIc6w9Pje9d25FR37N7LqTf27SEUIDspw=; b=rr8oN0/hzhCp4+MtUw9SB2lJ+v
 PjmwBApgUwLTonOovbJiluQXlVardksRSd59LWyOQSKqW58m8Mhzg10SZIOfqKg/IfZsXAwiPVBOp
 WcZTp5FhvCuDTfIFDzzIAxAodksNoMcdWyjvIvtGxZE3GQNd3/laxDLMih4ecsZHGqooWp4eB+KPv
 oYr/eIvuiSWLgQArA0DysFULbZ7Hxs/Um8mWH1CjmYfNnGkp5Cp+ECsTGrh146JvWFV/vreAnFLjB
 OlU5x4/cTpCf1/tjCrw5Sgs4zi4yF8njgA1vj49+MjxC3jRXEy9wnH2zNI962OGdXgovp5CCcNtsg
 uq967/lg==;
Received: from so254-9.mailgun.net ([198.61.254.9])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj3pq-00Eqo8-3z
 for b43-dev@lists.infradead.org; Tue, 18 May 2021 17:48:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1621360131; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=3YWst4AdCVXIc6w9Pje9d25FR37N7LqTf27SEUIDspw=;
 b=WWKJ/68GJnfu0+xSTKXluiJ+PUE6P/A9yCP8vaAvuojMT7SEEv46/InJtPR6rMQEMmOVoJjO
 l6vl9nw7xlWirrYIEMBO2xJrg8zNuq3rff1JCOirkR9szfA5ac+ROzrnVTLGOg+EmA/UvT/E
 LpZiQZtAKt+aHdYs/Vs+cf4w+f0=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 60a3fdfc063320cd134c5a84 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 18 May 2021 17:48:44
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 47FBAC43460; Tue, 18 May 2021 17:48:44 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DBD93C433F1;
 Tue, 18 May 2021 17:48:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DBD93C433F1
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] b43legacy: don't save dentries for debugfs
References: <20210518163309.3702100-1-gregkh@linuxfoundation.org>
Date: Tue, 18 May 2021 20:48:39 +0300
In-Reply-To: <20210518163309.3702100-1-gregkh@linuxfoundation.org> (Greg
 Kroah-Hartman's message of "Tue, 18 May 2021 18:33:09 +0200")
Message-ID: <87zgwsgcg8.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_104851_445205_0E945AFA 
X-CRM114-Status: GOOD (  18.14  )
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
> Cc: Larry Finger <Larry.Finger@lwfinger.net>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: linux-wireless@vger.kernel.org
> Cc: b43-dev@lists.infradead.org
> Cc: netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  .../net/wireless/broadcom/b43legacy/debugfs.c | 29 ++++---------------
>  .../net/wireless/broadcom/b43legacy/debugfs.h |  3 --
>  2 files changed, 5 insertions(+), 27 deletions(-)
>
> Note, I can take this through my debugfs tree if wanted, that way I can
> clean up the debugfs_create_bool() api at the same time.  Otherwise it's
> fine, I can wait until next -rc1 for that to happen.

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
