Return-Path: <SRS0=0Y2N=KN=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51975C433B4
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 22:01:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD64361261
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 22:01:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD64361261
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NJlCOnzWiz5DemSHrOSamNq6A+4BszYp2E66XkvD7ag=; b=oPd6q4e8KUT72VcSb9uavvqOr
	UNqcWrP99Au01/nZKhtBTHln404fl2DPey915TNiXg5/QghhJldfidh+UZVXU9qOjT0alxtic+gGz
	V7R22Cbpr5X7fDvU+nqKdDFASgCP3DQeq80MOKc4j+Im+pgRMeCRzPTP/RB66Fj42+fKGxYyYWU8w
	M7f6NKl8j13hjkR74lJKIRhQojHrM5LJnSwiFcMPeWfhS7nTX/8C2r3kM0vRwqli3PNGXQ6YxTy7T
	A+YgA1iqtFEX19sxN3NonILDefOUFQbHazhPlVzOAxxm9SaH40/t6XLnfXoBrzxReCAYS3dcCiwHm
	xjMdFPkpA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj7li-0021W2-TQ; Tue, 18 May 2021 22:00:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj7lh-0021Vv-89
 for b43-dev@desiato.infradead.org; Tue, 18 May 2021 22:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-ID:References:In-Reply-To:
 Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=OcOBQoPHRZwUqgAv23Az6sbpsFYYr9MWtPojMc2GtPo=; b=zkk3lAZRpeL5vYXCUtmAhLf3EF
 cl6bfWbRDJEmlu73yhOKSaZeRp/+fXwQFLxChaEYXBSJBXN/ShSg5OWIrQgXD1Y3UT1UsVEvIhuH2
 bKtzAjGEDo9Dp7wjB/m0Zba75RMnhv6L8uXPS1QvnKlfrso0NDUdXO8Fc95nesEoEf1dKpIKMA+td
 FOGkD+B93PXPLF1AxgMKfKEy+2eBrXoY5S20lgTtVNUII5BfvfbeX+zYZ21aex6K+161TZboeJB54
 A9OeQ1AJRYxcI+9AYrfzN9Q6aN0Vx1S4ijRrsoyxFFnTd5aw9KfoxmVEY45jSPH6LYS3nk/j1xRWc
 sE2E6lFg==;
Received: from so254-9.mailgun.net ([198.61.254.9])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj7le-00EzWx-DW
 for b43-dev@lists.infradead.org; Tue, 18 May 2021 22:00:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1621375246; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=OcOBQoPHRZwUqgAv23Az6sbpsFYYr9MWtPojMc2GtPo=;
 b=mDtASbaIVAxy1B4lMI/dttaZIrYvzPu1MZBaHidIdT+R/5psCXeUgHaDFQ9D3ZqRnauXI4s2
 1m9ASP+LrkChCFYGbEq+dFMMIHhmaygbEuazRakNq7RDICDCMkCVhOPN6FxqaWHtfo3aVpcP
 HI+IrNDEPuRx53w8sfSZGCVsigY=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-west-2.postgun.com with SMTP id
 60a4390d2bff04e53bb28a0d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 18 May 2021 22:00:45
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E0D4BC433F1; Tue, 18 May 2021 22:00:44 +0000 (UTC)
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: jjohnson)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5FB86C433D3;
 Tue, 18 May 2021 22:00:44 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 18 May 2021 15:00:44 -0700
From: Jeff Johnson <jjohnson@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu
 <chao@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jjohnson=codeaurora.org@codeaurora.org
Subject: Re: [PATCH v2] b43: don't save dentries for debugfs
In-Reply-To: <891f28e4c1f3c24ed1b257de83cbb3a0@codeaurora.org>
References: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
 <891f28e4c1f3c24ed1b257de83cbb3a0@codeaurora.org>
Message-ID: <f539277054c06e1719832b9e99cbf7f1@codeaurora.org>
X-Sender: jjohnson@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_150046_535116_B529B5FB 
X-CRM114-Status: GOOD (  20.70  )
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

On 2021-05-18 12:29, Jeff Johnson wrote:
> On 2021-05-18 09:33, Greg Kroah-Hartman wrote:
>> There is no need to keep around the dentry pointers for the debugfs
>> files as they will all be automatically removed when the subdir is
>> removed.  So save the space and logic involved in keeping them around 
>> by
>> just getting rid of them entirely.
>> 
>> By doing this change, we remove one of the last in-kernel user that 
>> was
>> storing the result of debugfs_create_bool(), so that api can be 
>> cleaned
>> up.
> 
> Question not about this specific change, but the general concept
> of keeping (or not keeping) dentry pointers. In the ath drivers,
> as well as in an out-of-tree driver for Android, we keep a
> debugfs dentry pointer to use as a param to relay_open().
> 
> Will we still be able to have a dentry pointer for this purpose?
> Or better, is there a recommended way to get a dentry pointer
> NOT associated with debugfs at all (which would be ideal for
> Android where debugfs is disabled).

Answering one of my questions: The dentry passed to relay_open() comes
from debugfs_create_dir() which is expected to return a dentry.

Would still like guidance on if there is a recommended way to get a
dentry not associated with debugfs.

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
Forum,
a Linux Foundation Collaborative Project

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
