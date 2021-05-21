Return-Path: <SRS0=5UeH=KQ=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F61FC4707C
	for <b43-dev@archiver.kernel.org>; Fri, 21 May 2021 18:45:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C22061176
	for <b43-dev@archiver.kernel.org>; Fri, 21 May 2021 18:45:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C22061176
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7tAoEJYKVkFALDZ4EI7ohB+wSuyR7falPT/LIF7ukE0=; b=Zy35bDuBdSW2iz7pI+wuR2bce9
	DLeklz8aGgofdncBY1IJyHjV3vPdN5oeAnuGPkZCef/QbUaY7OFfR29V9aRrapl5KmMVSB4+dtLt7
	jc7w1hpnxZBPiXOLex2OJwBFiAxDJWh9FtZA2vwFH8UjN0mlY0fK9x2MdmQlIx7EqPDRhADB9jGei
	qqkfOW+4/rVZVKADNF/gerqW30F9lx2M1b3gF+qSK27gloypYVbyVqdR3Gv4nE4DSXpg1qZfDAkty
	UGS3K1NKEq1h234+IvShh7FdwKImVCYZM4nSpr82zGb+DDEFqQwzGTdwbV7SYV4Talhqg9kc4kHMI
	/WaZ2zCA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lkA8h-000m0i-F6; Fri, 21 May 2021 18:44:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lkA8e-000lzt-Ip
 for b43-dev@desiato.infradead.org; Fri, 21 May 2021 18:44:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=qdPiWzsn7Scnl4hNWBBBJ9S3AlrcHOyjVRvuzP08yQI=; b=hpqrrmwYwT1K3JD0qhKK8mseeF
 GGXB93IjbsCgQBacfYNqjCWaMNGeHlTEvrPdU8qm3dtwXbkRtOfSsUX7mQUdVBwoztqwHLnOVMIIu
 /1xe7AvGnfMg4/L44AMhmU4BKpbwmoZQqcA9l9vPDA/srR5MQ2YaCW1slJOxVG1e676WphX974YFz
 BBG3ZNp2G3UgRbZqjWwpbMzZvvscoF7VesnQRI+AJVEu5C8eE16KkKSGEVKIfaVi+UUMpSIj4pcTh
 52hne44WOLd9U81qqY+z7Gzbkeau1rsu4WsBcsOlubkDkC2k7+EzZqj+GkrPjo6B626eQ8hANfwTo
 vR3njfJg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lkA8b-00HMZz-VQ
 for b43-dev@lists.infradead.org; Fri, 21 May 2021 18:44:47 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1A72061163;
 Fri, 21 May 2021 18:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621622685;
 bh=eBKsVhFM7t+531GuI2ga4K2E8LIKpSSLx53E4bHMCtM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BbzUvGr25eQyJgqb7NjzhDZv0Uy8E9XNaa5fXPzFgxYwWTvKd1DwUKy61oNn+N4dI
 gtiId7QMFpC3pDGfMv4AHNf7rf2iyHkzu+ndN3Pll6UwE3KOzE1QUaCO3+hiva2jR+
 sB7wq3/+eJPqhTByc+VjYlJXaRRsdQtFR3W806cM=
Date: Fri, 21 May 2021 20:44:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-wireless@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu <chao@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] b43: don't save dentries for debugfs
Message-ID: <YKf/m0DO66rPA0jb@kroah.com>
References: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
 <874kf0hr1t.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <874kf0hr1t.fsf@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_114446_052491_802D592D 
X-CRM114-Status: GOOD (  18.45  )
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

On Tue, May 18, 2021 at 08:47:58PM +0300, Kalle Valo wrote:
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> 
> > There is no need to keep around the dentry pointers for the debugfs
> > files as they will all be automatically removed when the subdir is
> > removed.  So save the space and logic involved in keeping them around by
> > just getting rid of them entirely.
> >
> > By doing this change, we remove one of the last in-kernel user that was
> > storing the result of debugfs_create_bool(), so that api can be cleaned
> > up.
> >
> > Cc: Kalle Valo <kvalo@codeaurora.org>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Jakub Kicinski <kuba@kernel.org>
> > Cc: Kees Cook <keescook@chromium.org>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Jason Gunthorpe <jgg@ziepe.ca>
> > Cc: Chao Yu <chao@kernel.org>
> > Cc: Leon Romanovsky <leon@kernel.org>
> > Cc: linux-wireless@vger.kernel.org
> > Cc: b43-dev@lists.infradead.org
> > Cc: netdev@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> >  drivers/net/wireless/broadcom/b43/debugfs.c | 34 +++------------------
> >  drivers/net/wireless/broadcom/b43/debugfs.h |  3 --
> >  2 files changed, 5 insertions(+), 32 deletions(-)
> >
> > Note, I can take this through my debugfs tree if wanted, that way I can
> > clean up the debugfs_create_bool() api at the same time.  Otherwise it's
> > fine, I can wait until next -rc1 for that to happen.
> 
> Yeah, it's best that you take this via your tree.
> 
> Acked-by: Kalle Valo <kvalo@codeaurora.org>

Thanks, will do!

greg k-h

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
