Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97D8FC43602
	for <b43-dev@archiver.kernel.org>; Tue,  7 Jul 2026 14:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsMNPuXRnXL+mGW2yME8UTaafZk5UR/gk8/Rjy/Tni8=; b=BzerMoVOVkxZki
	/vtWQgl/INuy3MJR76zZ9nJoerQV3d6Hr4oNm5xrblmT/dOaOsF61dJrmkQnOK5HdTFc7jwKe/qZe
	liXwSvmK5eU15vlRflHHTlyGwKVetTHLuom9vwI2/lKTSIED3OJjdZ9SP4XixGmpbFP69mxx+lbPz
	BLtdp274YC4rhUioLHA4R2zn7FP1zUZzYbI5bU+rrUjxdE99Po7bbE+5WAdWDaFQ87z8Qc327kURC
	2rKifGW71cs1XzlUmpvyaUJyAClowOAiKyu335+kNT6VpI3nFn5Lubk/tP644846JcvnnvaDFien0
	4OBJnQ5qTb7GSJ2oaDyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh73s-0000000FCLJ-3iDA;
	Tue, 07 Jul 2026 14:46:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh73n-0000000FCKY-0uV6;
	Tue, 07 Jul 2026 14:46:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 876DB60018;
	Tue,  7 Jul 2026 14:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2066F1F000E9;
	Tue,  7 Jul 2026 14:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783435566;
	bh=38uJr8hVPGVJpV7RT0QtVixAplTyJQKOmyP/3Wvejkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BpkPQxRVjX7WXA/JEprOiZavYtpKUwCoXkGlay8OFTxOO3pBbm4Srga6ztyH+1G9J
	 lK186j+V1CMVof8L6JnsbKESfM9aIozW2Fx5vLrzsSg8fNxMP82rXmD1RvGKwxmWTR
	 toZSpjPZFfeMKf8ftXcFnxIWjZ59vBwOUbLfRcTdXK9hM4AdfUY23GHcs17g8mi4Km
	 sYOaH1qvo7ncsQHtpLwY+T5IIOGF8UlSyExgMxbNm0iIpp7tzTLzlWINFiO2aFZki5
	 mTuTothfBivZ9KvlFwlGUoGRccKPFG9tF5Q8RAWeV0x0tDP9G04KiXwRTm3QUUMy9E
	 m4/nOvrkforfQ==
Date: Tue, 7 Jul 2026 15:46:01 +0100
From: Simon Horman <horms@kernel.org>
To: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Cc: Johannes Berg <johannes.berg@intel.com>,
	Brian Norris <briannorris@chromium.org>,
	Francesco Dolcini <francesco@dolcini.it>,
	Jakub Kicinski <kuba@kernel.org>, b43-dev@lists.infradead.org,
	libertas-dev@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH 0/4] drivers/net: replace __get_free_pages() with
 kmalloc()
Message-ID: <20260707144601.GH1364329@horms.kernel.org>
References: <20260701-b4-drivers-wireless-v1-0-60264cdf2efe@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-b4-drivers-wireless-v1-0-60264cdf2efe@kernel.org>
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

On Wed, Jul 01, 2026 at 04:59:09PM +0300, Mike Rapoport (Microsoft) wrote:
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
> Changes in v2:
> - split out wireless drivers from a larger set 
> - use kzalloc() instead of kmalloc() + memset in b43legacy
> 
> v1: https://patch.msgid.link/20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org

For the series:

Reviewed-by: Simon Horman <horms@kernel.org>


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
