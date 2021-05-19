Return-Path: <SRS0=5THX=KO=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCDACC433B4
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 05:05:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A63A46135B
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 05:05:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A63A46135B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B6TWOcwQEI5wFr76iXUNA/p+bUnYcO76XBkk6Zos8fM=; b=L+a5lxtC5Z0fgA9GmFYtryLAj
	C2U/ZrVdbXcIqC6dj4pX/tEl26ttHAMOUSTIMho8yYQbzdn/ghxkq4SpOrlDDrsT3bePolnORb/QR
	XPne7qUBgY6KW5PDR18LWYgTsWPgJ3rjPPVKzTvoROwyuyfV8iqXCjF5sFJI/X/h3ttG3Wk3AI27m
	Qu9ikhK7m8DBykzsDtZMsNgRkaP1PJ1n12N+K16oSeCiLyezrGBiXOXdi+rxvZHAKSkQYkBwhYWcq
	PmgchH+FYVr8yeADG+t7vTLhHpBPf0k0O5rPLf1tgiy6iFQErMvUUuqNTBkMiSsdt92t1Ivf1ICiu
	fppcWf2Tg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljEON-002o19-Hb; Wed, 19 May 2021 05:05:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljEOJ-002o0Q-8g
 for b43-dev@desiato.infradead.org; Wed, 19 May 2021 05:05:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Q74XFfN7I00nkeAA3Gm4B6jFCRAm/m9QCYLiOs7Bwhk=; b=LfrzkYfmUXpXBYyb3Yv5bIYTIR
 wadHyoS3mObAwzva2kEyeFc396SFMw9Un6ysEAx9XkgGasEnvqWefe6ASApIuJ2hlQ8Z5fqiK6sjn
 Cs8QXJjoiGLgaEb3AA+/DgBlLITP3l6fKwAqXn/LImEpcJHvzF1xk1J8rDFFLE+LJBw4UKYvY9+Hu
 HpWnRI0cAlElHqkv2qJP9Z+TZGxIhblHEjxOzEI4VTBewMi6KNbZifgO70SgtSImT2WZQ+SsT6zLs
 pbi6GXRBYSA9b4qytKpUMPukZDT1GqUWyjGHyLjovMLotwXiFqk1pY4v+1Ieag9TW8K8zoSnJlJmw
 nkg7KlDw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljEOG-00F8Xf-GB
 for b43-dev@lists.infradead.org; Wed, 19 May 2021 05:05:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 92D0E6135B;
 Wed, 19 May 2021 05:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621400703;
 bh=wYYX9ZqE8MzuuAZRGsD7NWSnysXuKB8JlIKz2SrZG7Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jDTLUdYDPOqGsBMcGlgqJPnqMyaL+6ZyGBbXTrwd5gxKE34zpNCuAW3q48aS8oBCE
 jVXiydajtZ29294JvxkwdUKOzRZV+CreV+bh8Sqqf2YYgUivccXwr1eshu/5M54dld
 n7oqYbFPbYfTTEIoA6QBTEOQTIwmguh/aG6WnvO0=
Date: Wed, 19 May 2021 07:05:00 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jeff Johnson <jjohnson@codeaurora.org>
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu <chao@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jjohnson=codeaurora.org@codeaurora.org
Subject: Re: [PATCH v2] b43: don't save dentries for debugfs
Message-ID: <YKScfFKhxtVqfRkt@kroah.com>
References: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
 <891f28e4c1f3c24ed1b257de83cbb3a0@codeaurora.org>
 <f539277054c06e1719832b9e99cbf7f1@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f539277054c06e1719832b9e99cbf7f1@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_220504_586253_FB51A32D 
X-CRM114-Status: GOOD (  25.04  )
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

On Tue, May 18, 2021 at 03:00:44PM -0700, Jeff Johnson wrote:
> On 2021-05-18 12:29, Jeff Johnson wrote:
> > On 2021-05-18 09:33, Greg Kroah-Hartman wrote:
> > > There is no need to keep around the dentry pointers for the debugfs
> > > files as they will all be automatically removed when the subdir is
> > > removed.  So save the space and logic involved in keeping them
> > > around by
> > > just getting rid of them entirely.
> > > 
> > > By doing this change, we remove one of the last in-kernel user that
> > > was
> > > storing the result of debugfs_create_bool(), so that api can be
> > > cleaned
> > > up.
> > 
> > Question not about this specific change, but the general concept
> > of keeping (or not keeping) dentry pointers. In the ath drivers,
> > as well as in an out-of-tree driver for Android, we keep a
> > debugfs dentry pointer to use as a param to relay_open().
> > 
> > Will we still be able to have a dentry pointer for this purpose?
> > Or better, is there a recommended way to get a dentry pointer
> > NOT associated with debugfs at all (which would be ideal for
> > Android where debugfs is disabled).
> 
> Answering one of my questions: The dentry passed to relay_open() comes
> from debugfs_create_dir() which is expected to return a dentry.
> 
> Would still like guidance on if there is a recommended way to get a
> dentry not associated with debugfs.

What do you exactly mean by "not associated with debugfs"?

And why are you passing a debugfs dentry to relay_open()?  That feels
really wrong and fragile.

Ideally I want to get rid of the "raw" dentry that debugfs returns to
callers, as it has caused odd problems in the past, but that's a very
long-term project...

thanks,

greg k-h

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
