Return-Path: <SRS0=0Y2N=KN=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B89CC433ED
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 19:30:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CD38D6112F
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 19:30:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CD38D6112F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xKWqRrm2b22w9/PCMQdnbDw+aQ+eEPQFBWpiMbJ7uU8=; b=SfpoHHp9WVjwmbRSdap1VA5yT
	QgafpezlurBjnqZWp6p9AsGiVYWndvdOMBi8lEXVXYNXVQlqyFFm/QovaZVRHmvaPran7UbHj8EvO
	dgrWgNL8e+C8JW1UIXhBqQ3wvvRVVJwMF6RFKws0T6WvHn3RV81p6JvjdKcXiXjVn0mP0hcPtcSxC
	LRiYaBgLCfz1SFiR9dr7x38YCK8oXIUpqMvya62L1+4sGiXq1uLpvkghGAOe1CyHeuIsfJBqPthPH
	DiZ10H8dbFhtLRQfUQWcRAcTMwiufb3VDDY5DKUdzclGgM9cS0/4m7NPVLdvJsXux+dN0oZ+fdW7V
	uQn2mChhQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj5Px-001jif-Dn; Tue, 18 May 2021 19:30:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj5Po-001ji3-Fh
 for b43-dev@desiato.infradead.org; Tue, 18 May 2021 19:30:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-ID:References:In-Reply-To:
 Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=xImqkEVhZ7NBDDa6rAwINqmmjR5AFYmB3VNpZQ5pQL4=; b=uoJLwaAzjgl3d9QktdFVsU1sax
 6FfNHnNs0yS6F+8MWmK47Mv7fTHs7z09BMpRKzGrC65EIwvJriZmWacmk6a0KcjjaeS+tPj4dw1E0
 VGK2PZJ5aJTMlQl8ompay3cuz4J3NCjBDYU1KQtN2NFglw6NTaBA+vbzbyNtX4mqT5C/s82ak29iC
 fpJaXmlbVOCfu9Br3xpGDrcSoSLGyPVLgRCZv/pSCc7rqNaUddCArXWBOhMRw7DsMu/jRJQ+4jvHI
 8qBjdpwQbwG6+OQTrreDInefLexB8By/qZubAVo12Z3gCid4/sBtkAi7jV6a5aiMa5kZLzYolRGoT
 83Jph0gQ==;
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj5Pk-00EuqI-8p
 for b43-dev@lists.infradead.org; Tue, 18 May 2021 19:30:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1621366201; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=xImqkEVhZ7NBDDa6rAwINqmmjR5AFYmB3VNpZQ5pQL4=;
 b=kaS10V/Kd3oclumDkrDJBA2hpUWp/sa6+1tvHiF045Wxq6rPH8D4DJgUC+GRc2tShBgDD/eJ
 QspTbzsCRCT+M5xhTAMHYv1QaCUekW0qvDbD0Nsuiih6FDoxniU0okn9Qdr4KQNAx3Cax/Iy
 fGr24+Lg7TA8LDxsCwbfjnptESs=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 60a415a9b15734c8f953d5bd (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 18 May 2021 19:29:45
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E5023C4338A; Tue, 18 May 2021 19:29:44 +0000 (UTC)
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: jjohnson)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 675B4C433D3;
 Tue, 18 May 2021 19:29:44 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 18 May 2021 12:29:44 -0700
From: Jeff Johnson <jjohnson@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu
 <chao@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] b43: don't save dentries for debugfs
In-Reply-To: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
References: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
Message-ID: <891f28e4c1f3c24ed1b257de83cbb3a0@codeaurora.org>
X-Sender: jjohnson@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_123001_878179_2D831B00 
X-CRM114-Status: GOOD (  18.20  )
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

On 2021-05-18 09:33, Greg Kroah-Hartman wrote:
> There is no need to keep around the dentry pointers for the debugfs
> files as they will all be automatically removed when the subdir is
> removed.  So save the space and logic involved in keeping them around 
> by
> just getting rid of them entirely.
> 
> By doing this change, we remove one of the last in-kernel user that was
> storing the result of debugfs_create_bool(), so that api can be cleaned
> up.

Question not about this specific change, but the general concept
of keeping (or not keeping) dentry pointers. In the ath drivers,
as well as in an out-of-tree driver for Android, we keep a
debugfs dentry pointer to use as a param to relay_open().

Will we still be able to have a dentry pointer for this purpose?
Or better, is there a recommended way to get a dentry pointer
NOT associated with debugfs at all (which would be ideal for
Android where debugfs is disabled).

Thanks,
Jeff

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
Forum,
a Linux Foundation Collaborative Project

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
