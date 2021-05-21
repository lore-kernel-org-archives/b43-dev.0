Return-Path: <SRS0=5UeH=KQ=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A2E0C47076
	for <b43-dev@archiver.kernel.org>; Fri, 21 May 2021 18:45:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6A5661175
	for <b43-dev@archiver.kernel.org>; Fri, 21 May 2021 18:45:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B6A5661175
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ODNMRVczeptTlvMe2IQ4ZNyqmIF9n8aSWnUqKpOMuO0=; b=W7KM5s1M7eV5sYB6AFbB/zlSWq
	Y1OOPaBDHXEI3Hp+wpiIuhv6mJ7jXqGBtTnYoH+VvtnX7bS/jq5bJBgGa3shaqxqgHJrJBdaG1CUU
	TNu1AmhqSCMLX+TVC2qgoptraRroPdZ2eS1VCIaPVqRrOOroi1b1UyRQaI1czLSAwZEEUYbCS3wZV
	H3WQmIMh6UVvDBJxoNnU/9bEXGovR24H3GE6+nijwNgG8JmIB+fs0PCyLWgB6ZLFiKLjj4onYLkV/
	opbzoIC8uLx9sbf/YSLIhrS8i61N5T8tizSG3A4a6CQt0FXSfTSWqc1/MvH/S0+kCYHI1f1RSAq3d
	zBGJXxcQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lkA8Z-000lyA-RZ; Fri, 21 May 2021 18:44:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lkA8S-000lxI-BL
 for b43-dev@desiato.infradead.org; Fri, 21 May 2021 18:44:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=4XlQC97ZpftvlRGNVD8M1PcYdOjde/toFG4EAmR1v7M=; b=J2Xwirza/pMJnZJhMtwYVqJq7u
 ZeHHkm0BZ6u80Rtciq34WEZgluCyUPwQxucE9gNshpb3bYDTfmNRJ7S/S21ZzcDffqwzQKpNSD9UO
 KYLu1q5dHjAZcO/i1kzem7YK4Ip2swq7iRdG7896OlDeSKuVPktK1BuMmeZyNmZJ8MSi3X5nCCHje
 ioyUHlaMJ60KkVl2ciS7yxZNQnuceOqJmXMGXT4zF1SeNtlUdy+1WpTqHp5mOcW0HF7lvg7cjuCYS
 i+Yh4dCiSLSqIolXiIRTjVHZEAYV38dASPqtrZtw4rVgnjOF0bhNN+P7GEhxB4CtADMKhdzHSnnW9
 25CTD1jA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lkA8P-00HMZH-Rm
 for b43-dev@lists.infradead.org; Fri, 21 May 2021 18:44:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD96B61175;
 Fri, 21 May 2021 18:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621622673;
 bh=rogtdmYs9DKusvh+ciLKdiZ1+ttLoM5pHfLA67Ozc9A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dy38Gr36usmMnfpYJPzMBAylWa32LFN5dCDbZSJ26dUMeDBZQ+CsEEAtf3Z8Io+Pl
 CbQGY9qm2zfEIgfS8N1DnlRhHxQM1ekwPAQkqMaGZH77CwtmneH8jkn/WQnw5xeQs0
 NSR40HSOkovFKQv7l3q/OQuisvKsLQ4C1XhNVVgw=
Date: Fri, 21 May 2021 20:44:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] b43legacy: don't save dentries for debugfs
Message-ID: <YKf/jw59Zd5xswij@kroah.com>
References: <20210518163309.3702100-1-gregkh@linuxfoundation.org>
 <87zgwsgcg8.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zgwsgcg8.fsf@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_114433_938429_03C6B63B 
X-CRM114-Status: GOOD (  17.57  )
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

On Tue, May 18, 2021 at 08:48:39PM +0300, Kalle Valo wrote:
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
> > Cc: Larry Finger <Larry.Finger@lwfinger.net>
> > Cc: Kalle Valo <kvalo@codeaurora.org>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Jakub Kicinski <kuba@kernel.org>
> > Cc: linux-wireless@vger.kernel.org
> > Cc: b43-dev@lists.infradead.org
> > Cc: netdev@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> >  .../net/wireless/broadcom/b43legacy/debugfs.c | 29 ++++---------------
> >  .../net/wireless/broadcom/b43legacy/debugfs.h |  3 --
> >  2 files changed, 5 insertions(+), 27 deletions(-)
> >
> > Note, I can take this through my debugfs tree if wanted, that way I can
> > clean up the debugfs_create_bool() api at the same time.  Otherwise it's
> > fine, I can wait until next -rc1 for that to happen.
> 
> Acked-by: Kalle Valo <kvalo@codeaurora.org>

Thanks for the ack!

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
