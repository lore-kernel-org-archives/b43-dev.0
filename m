Return-Path: <SRS0=0Y2N=KN=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2582C433ED
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:32:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7578C611CE
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:32:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7578C611CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WNez/6nVd56aKeKGmpXwcXkkZtyUY3osEY5s1nRuYv0=; b=HYS6ZJHV5g58zeWSVpbouFjIv
	WP4O1gqmyfFAOhqrWrs7AqXHCAiOhX6QA2mQQWJ196JFGPYSv4/FV21xAMqdKu/dfsD/6y5SLfgGf
	j7pvIBHZEVwk8FuTDGM99T6DoMtFs74aPdtj8OecJdUQBL2YZNQlNsaxj/HlPexSNfagXZ4rXdC0I
	BXDwP3o63oYSRAnAbFNCGkftCW74pojhz0WG4cEWuk9BmUVKQv0u4Vw0nmSZudr6UNvSongWV5r1H
	TjjRlV4BheyqJp1KDtG23Alhs3CcV1kr8QN5pRgqji6NvJ3Lccv6+DpmIciA4gudyrle0amDCTvCP
	3G/hUKPKQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj2dL-001KfZ-EI; Tue, 18 May 2021 16:31:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2bs-001KJm-Ip
 for b43-dev@desiato.infradead.org; Tue, 18 May 2021 16:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bMvTVIkKpofHKtANBPYVCxestFFc3XwbvBpiGFoz+Xc=; b=xMoY2kxfd5VX5aT60kBsyMVbwc
 PdT+UpxrapE6A/FlviaOKk0obyeVupYsDNNAb1RosJSxNx/WYp6OYxe4/dYmR79sNYO4tiT6PpmuV
 ygYKGHzxw5evuFb0btBhicpltwiVL/U1zIVbVrkdQ/h+ANT3ZuEELZt89FGWgoqXn3mKrk5SNoaO8
 qELhqOigsVtaTIat75+Ms8HRsZWUY0iPd2u0Lo93J1GYzHVXI8u/MSdgMwopE6mh5wd2KzwPoXuU5
 3MJCB/tTIyC8orAgvVL9xYqAcHU//Pen/bWgvm3yMyTjwH7twtDOul+d56REHrxJgn4BTh9QWy6gd
 wcqco9eA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2bq-00EnqY-2K
 for b43-dev@lists.infradead.org; Tue, 18 May 2021 16:30:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3413361209;
 Tue, 18 May 2021 16:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621355417;
 bh=YckrPGCMRi5xRHYk9b2uFa4S/R3nnuBOYtdce+YJpLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FhpRVkefRVsMaeMd0RsIQoRZpoxPFvVemAQsUtk4iyBkbrrKFuJNjERhnzsgP94/g
 RjA1ob+YABMK9iXdCBaaEe9qwp9MJg4NuOwiYlVTnuFO1W+2+TFHL3kAh+3978LHQS
 /nivFU8z+Le3XLGN7BKBYT1o+VilFiKXzEH2yqBM=
Date: Tue, 18 May 2021 18:30:15 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-wireless@vger.kernel.org
Cc: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu <chao@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/9] b43: don't save dentries for debugfs
Message-ID: <YKPrl2NXL6EP7uJx@kroah.com>
References: <20210518162759.3700269-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518162759.3700269-1-gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_093018_147845_6C058D97 
X-CRM114-Status: GOOD (  14.66  )
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

On Tue, May 18, 2021 at 06:27:59PM +0200, Greg Kroah-Hartman wrote:
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

Bah, got the subject wrong, will resend...

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
