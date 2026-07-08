Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05BB6C43602
	for <b43-dev@archiver.kernel.org>; Wed,  8 Jul 2026 08:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xh6LVLl9SIfTdtlc/OEFJUCFli+qfCTE5ot8pv9zp7c=; b=UXHGbH8v4zpTA6
	ZjfdSjHmnsEEwWNiDmq/Gbnb6ehg1E2d3VRn6m///iM0CvWLm5Oxgj96fclZRo126EgTMlP0fQ2yO
	61xtwO9nNaxdmoMsNsMQbVeaw4RD1wE2t+brQobwxYuWAzDDpEA5tgz87SXBbHAWz/gPpnPHbFgGA
	cmpiX6YR3FloxcW9g0zjhP3TTpenSiNNEVFElQA2OZooV+bGJDL2chdOWA0wcHt/m1fjfkPvV1mr3
	pKGA8CrDfOyA008mCsHciwqLs0RHArZJPqyDEsTYpDHyCY8PWg7vbLi4PQtEnRoNntYTxEn9MMNXA
	WMhKNaixRt3YRMGg7BmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whO4Z-0000000GfRh-16u4;
	Wed, 08 Jul 2026 08:56:03 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whO4W-0000000GfQD-0RTu
	for b43-dev@lists.infradead.org;
	Wed, 08 Jul 2026 08:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1783500959;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IbP35j/x3DTm7o/Yn1OIdMEqiWJ44P60wi1DTKxILpo=;
	b=gFAs+lJnsEKGw15vVHxOMwQsbat8gOfDQpft5AyQfl0vfTYrh5X+IE+cQ09Q0D8KqHsAiI
	om71ym15oe1KSk76XkgLrIPk241TSPlrmjEuljXmRac63pAy2EaqCF+omwZryMr3prZOFE
	LRGLL1+LKU0lfyrT1q9Bw+EsSyq9Iuo=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-610-iwXaTVmMOGGobEKMotkwHA-1; Wed, 08 Jul 2026 04:55:56 -0400
X-MC-Unique: iwXaTVmMOGGobEKMotkwHA-1
X-Mimecast-MFC-AGG-ID: iwXaTVmMOGGobEKMotkwHA_1783500955
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-493b0a5e636so7349845e9.3
        for <b43-dev@lists.infradead.org>; Wed, 08 Jul 2026 01:55:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783500955; x=1784105755;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IbP35j/x3DTm7o/Yn1OIdMEqiWJ44P60wi1DTKxILpo=;
        b=RZKwqUneASABpRqLmnYoDdvXFOFTuRPVDCCUnO80bqOWEZisIkQGQacsJMhhQJJCiY
         U0zEG3ZuiS351qs9FeKsJBegN9lCZ5v6oDlno20Ox8wmnFnzKR8e1dVcjfnl7tgiSvqe
         T9PTTUliuVUo6G4cWhircLRqMG7krwEvdYL+JUqs06I49rEK2Rugrw+iIj8QsOYgLYQe
         2cZaWV+c2Nbb0Q2bjNR0OlXzdKsXV6Uy+MYvrgecxCvZ0luvYVXXKC1lBvXVIiOSW5vU
         REt2HYyvxCPvGv4HmRgxOyrYx17kyk+MZgcI8hjZyjEeBA0qyklXjAAaZdXzpT35YeOh
         y7Jg==
X-Forwarded-Encrypted: i=1; AHgh+Rpb2J2DxEOp7mb71XjnL3oyIjvc5IfHxABP342AE74k/P/h8zZkJpfQ8Vdq/9Egpj1x5rSwPERJ@lists.infradead.org
X-Gm-Message-State: AOJu0YxKI16V4qCtA5jiw53wQqXB76+7ea3Cy8wJFWA0WofTiizyVWs3
	iMtUB79cf6uiN6gDgWOvpInp8MXxUprwT3GnRAJDtHM+MnYqzJ/IbAZfiKe8wwSvcn9l8ZZbfLs
	7fGX6O3/Ju183zvYBVieRijlJf1s0vnk48tA9OpsXI01ERM3kRtDDN+0LjP/u0o1f
X-Gm-Gg: AfdE7cl+GKbR5GY4J+qBM69AuPZRNLcbVxfSWXxYMrDHWWDC+hMOosSZ1N6NTL7rkrb
	iqHWKz6ZKDlgF3BblNU7cUBM8PkpT7Ubu9zp6wxIyj4Kc4vLU4+L/tqZ81w4UGYp+YKHtujt3T+
	issjKQDwBHEPpwnJxJLRe/QXYj4H5u2v6CuUhoCzItdLVwoX6dxq0XxVanMME0oQWzWJPZjXqTY
	+410QJyKLR8eaT2ZYBfLKpkyEk6tccBOBO32qaAQbMwLQSNVMYjoVzK4s1dfkp+9UrrtBYDZzn3
	2EisVES4JC6OGp7mJNYc5gc5S8RF+4w07jzes/jX5sqJzoEYFY/8+pZAKivVfOeHP49fU3/WE88
	T035DfBbfJyRr4rI4UTc7t0CA1yS+bcfidFTmWta1qbH1k1o8jXPssjWvrmPLH4FG7OFfR6KqOi
	lkZNdAOmCSzWwD
X-Received: by 2002:a05:600c:548d:b0:493:b8d9:f28b with SMTP id 5b1f17b1804b1-493e68c7f63mr16435285e9.23.1783500954931;
        Wed, 08 Jul 2026 01:55:54 -0700 (PDT)
X-Received: by 2002:a05:600c:548d:b0:493:b8d9:f28b with SMTP id 5b1f17b1804b1-493e68c7f63mr16435005e9.23.1783500954522;
        Wed, 08 Jul 2026 01:55:54 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:5521:6b10:58fd:68f:7756:389d? ([2a0d:3344:5521:6b10:58fd:68f:7756:389d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e5a6240fsm34114935e9.2.2026.07.08.01.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2026 01:55:54 -0700 (PDT)
Message-ID: <3832c190-b5b7-49a2-902d-7f75598b0789@redhat.com>
Date: Wed, 8 Jul 2026 10:55:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] drivers/net: replace __get_free_pages() with
 kmalloc()
To: Johannes Berg <johannes.berg@intel.com>
Cc: Brian Norris <briannorris@chromium.org>,
 Francesco Dolcini <francesco@dolcini.it>, Jakub Kicinski <kuba@kernel.org>,
 b43-dev@lists.infradead.org, libertas-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 "Mike Rapoport (Microsoft)" <rppt@kernel.org>
References: <20260701-b4-drivers-wireless-v1-0-60264cdf2efe@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20260701-b4-drivers-wireless-v1-0-60264cdf2efe@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: E3tY8Rd-klRJsVS2a7Gn2EyzlN4eTLboOCB81RVbpBA_1783500955
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_015600_260868_1FE2572C 
X-CRM114-Status: GOOD (  18.83  )
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

On 7/1/26 3:59 PM, Mike Rapoport (Microsoft) wrote:
> This is a (small) part of larger work of replacing page allocator calls
> with kmalloc.
> 
> My initial intention a few month ago was to remove ugly casts [1], but then
> willy pointed out that Linus objected to something like this [2] and it
> looks like more than a decade old technical debt.
> 
> Largely, anything that doesn't need struct page (or a memdesc in the
> future) should just use kmalloc() or kvmalloc() to allocate memory.
> kmalloc() guarantees alignment, physical contiguity and working
> virt_to_phys() and beside nicer API that returns void * on alloc and
> doesn't require to know the allocation size on free, kmalloc() provides
> better debugging capabilities than page allocator.
> 
> Another thing is that touching these allocation sites gives the reviewers
> opportunity to see if a PAGE_SIZE buffer is actually needed or maybe
> another size is appropriate.
> 
> For larger allocations that don't need physically contiguous memory
> kvmalloc() can be a better option that __get_free_pages() because under
> memory pressure it's is easier to allocate several order-0 pages than a
> physically contiguous chunk with the same number of pages.
> 
> And last, but not least, removing needless calls to page allocator should
> help with memdesc (aka project folio) conversion. There will be way less
> places to audit to see if the user was actually using struct page.
> 
> Also in git:
> https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git gfp-to-kmalloc/drivers-net-wireless
> 
> [1] https://lore.kernel.org/all/20251018093002.3660549-1-rppt@kernel.org/
> [2] https://lore.kernel.org/all/CA+55aFwp4iy4rtX2gE2WjBGFL=NxMVnoFeHqYa2j1dYOMMGqxg@mail.gmail.com/
> 
> ---

@Johannes: just an head-up, I assume this series will go via your tree
(despite the slightly misleading subj)

/P


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
