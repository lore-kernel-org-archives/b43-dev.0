Return-Path: <SRS0=ewyC=KF=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE12C433B4
	for <b43-dev@archiver.kernel.org>; Mon, 10 May 2021 20:03:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 27BDA61466
	for <b43-dev@archiver.kernel.org>; Mon, 10 May 2021 20:03:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 27BDA61466
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7d6rnRMZiXvrIQuFSn1WWef0S71wryt9MfylH5jQFWs=; b=QUz6Z4/bC5KjB7F9YjCfIlz9i
	n+bzKDsMvpALIm2kBLydZy+EdVe8ufJg8ozN+wBpJDewQlBaMRpDavXvprwoN3OulWCqLRtIiQ7cA
	cm2GsmTsLE/vKgM2nmpe8bEGJmMkEe+eMhOmfIrH6bJqCUV3doeYtExbXDsb4fr386qXcL9oeFC/r
	+u+plgt3JOjxmjsWB3+v1lZ7KUxNZ8NbjRmGiSII8yhamLk12xfRCOZkompiZ+06Dpi1wgxk0MCAB
	wfL1LoGJVB+udoztInov5UCmod7nNs+iqQ7bq0O4Ohl6sntvt7KKaDYnOkHEdVUsoG65jDOdTSC6E
	MUr/1RN9g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgC79-00Fd7p-I5; Mon, 10 May 2021 20:02:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgC77-00Fd7a-2w
 for b43-dev@desiato.infradead.org; Mon, 10 May 2021 20:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bJVPp8Oq76w+IrO5IiCTQeRbtmZHcczJWi97wQoWyQs=; b=x/23HJVs44FKa1t6tU04u0CqsN
 Pl8RWpShiroD8SFigP1BvsUwrYS1H1E9Xf99qfZEvlseQrmFhuNqr/YNGLqjxRALFjeA133ogbuDY
 Hr7NVj10C/KhUzH9oaHARCAFUK+bDLKGdE2ejcM6lW9E02Lqs3dp9Tf2vB+7EKagHsLt2J4/KqSCA
 5wyFohc2Nw8EH8KO35GWRfwwhhhSDOxPyi6rU5haodXs3MiVcj2lZpbaiJi6qIB5M9yhT5Gx2cRZ0
 Pf8ublit/tG/MaIMDyc8bpM2G194/VWI0hTtm8ARwDWYJ2UpcLwCOTa2RmLzXNS1cMkRS0IJzq76O
 k0ELD/MA==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgC72-0095mb-Vd
 for b43-dev@lists.infradead.org; Mon, 10 May 2021 20:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bJVPp8Oq76w+IrO5IiCTQeRbtmZHcczJWi97wQoWyQs=; b=adcZzuq65bieyZdrPS+QJAGZE1
 2edNmy2XxL+twllMKz2Yvm1g+7WDvevFz4h/sXNDn5VQjz8CSw5qeSFVCsW6UfcyXUh9cmHK1TpVd
 wkoWn3EPNx1sxUuQ1GcAJBQSfy8mpX9c/xAPNCYjjzmlhLHKaZKNIczdjOajMT1FsWFw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1lgC6j-003d4I-Rb; Mon, 10 May 2021 22:02:25 +0200
Date: Mon, 10 May 2021 22:02:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Zhen Lei <thunder.leizhen@huawei.com>
Cc: Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 b43-dev <b43-dev@lists.infradead.org>, netdev <netdev@vger.kernel.org>
Subject: Re: [PATCH 1/1] b43: phy_n: Delete some useless empty code
Message-ID: <YJmRUQwPPDE+hWiN@lunn.ch>
References: <20210510145117.4066-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210510145117.4066-1-thunder.leizhen@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_130245_035607_FD19971F 
X-CRM114-Status: UNSURE (   9.01  )
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

On Mon, May 10, 2021 at 10:51:17PM +0800, Zhen Lei wrote:
> These TODO empty code are added by
> commit 9442e5b58edb ("b43: N-PHY: partly implement SPUR workaround"). It's
> been more than a decade now. I don't think anyone who wants to perfect
> this workaround can follow this TODO tip exactly. Instead, it limits them
> to new thinking. Remove it will be better.
> 
> No functional change.

No function change, apart from the new warning?

Does your bot to compile the change and look for new warnings/errors?

     Andrew

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
