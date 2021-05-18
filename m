Return-Path: <SRS0=0Y2N=KN=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1702C433ED
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:32:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6291A61261
	for <b43-dev@archiver.kernel.org>; Tue, 18 May 2021 16:32:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6291A61261
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=svNya3ukY5oe2hkq6EUHhr8ke/cxOcb6+m+9X+x70ww=; b=SHgR8XQsAs7ryxX5tNa2bZNsc
	M73GLf2iolvZkgCHfOboRGURIuFDnZFcwxmU3E/nh51VFVNtkTcBx+nweeO5siz7e7sup+xEXHc76
	mxB0igLTOcummy88hI9xy7gW74dKY4dHOS2js3Bu81E8/693lOScvFB+VLW95iLPg/RhsQ4KoJBP8
	IR692CogCpWYrtzsVcXp5uRU5xva/ldPZIwBzE3++ac9YXpmur9jQqFtecBSw1b4/iB+QEjSxHyRm
	no0lzyn6tlQblKdEnEjWb1OgHBx0DGmAVFARtB270dC6h8Wg8MWFEXRigy5Cr1umNa2NccHXlmyLs
	V9JaNZkuw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj2dY-001Kje-RG; Tue, 18 May 2021 16:32:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2c3-001KLt-6p
 for b43-dev@desiato.infradead.org; Tue, 18 May 2021 16:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+Q0jXDylhRWul85T7ObAFmL4vWZQklSYtMiwgUWdvCQ=; b=tlEfKL/FcamhDn4FpCnQ7SdyMg
 xDOC+djVDEORS4/x1515km1/UpRYrzJFTsHKjDVH5CzuYHwpvt1Ny+e+D3Y6PBrPO11lrnnlC0yXZ
 f3PU4f+ESWVXmcMRAknNrqQp9rPwQKk2IK7OMB5bJ9sSx3JFUX4w0BDG924Kj5OM7Iy9TZX5VTcnB
 YypOLXGGGL9Key9G20niAFWgjiGef6CrGGbA4v4BDdvSaNyidBoJxW0GRVlTV0tyeTbbBwZwp0G8M
 skHR1cBjLK/MY9oePoUeC2UrtGKmP/FLic8RNn74V4LCXzQWgalb6JHjSnL80XTuGvLGioXSlOx8F
 xqWMdnDw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj2c0-00EnsD-KP
 for b43-dev@lists.infradead.org; Tue, 18 May 2021 16:30:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D6C07610E9;
 Tue, 18 May 2021 16:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621355428;
 bh=4ZBRrXcWPCCVuVPJ6n2VmLfCXKEO/hfmErEmuYLiqYg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rhI4WS+UO/sZkToGAtj/hM5uQPgOBn3jhrRhSDN3AVke6J8j2xrDIxDcSqLplA9/c
 /4xLttZwGMYmz3e7/EL9hJ1YVycfGjoyLpv9x0wyJobFj6KLTyk02E3yqAS6ClYLCY
 +ouIuKf4PX5xh1alLeVA8H0ej9gHuGuLNYcKq48Y=
Date: Tue, 18 May 2021 18:30:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-wireless@vger.kernel.org
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
 Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 8/9] b43legacy: don't save dentries for debugfs
Message-ID: <YKPrognSduymsPBC@kroah.com>
References: <20210518162805.3700405-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518162805.3700405-1-gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_093028_710654_45AAE88B 
X-CRM114-Status: GOOD (  14.35  )
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

On Tue, May 18, 2021 at 06:28:05PM +0200, Greg Kroah-Hartman wrote:
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

Got the subject wrong, will resend...

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
