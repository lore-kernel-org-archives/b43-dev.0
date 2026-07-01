Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71764C43458
	for <b43-dev@archiver.kernel.org>; Wed,  1 Jul 2026 16:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYLfpzD6EphseVELuRNHpN+stZPpx9AnABxSOuKOvuE=; b=KHN9ccHKHNW+AQ
	HCt8plWD2+S3FskKaVLHBEe2uCD8o4l+VyUnTml0VFoL2bvDTVOddIeVdst9VPse6CzQBumNNdu/C
	qVG97hl/r78lJhg3CsorSSDHwVRe0KXd2temE0dY6rUz86UWNXs9WqfIKzV3v5VhCPESMeP/SHPs8
	d3ZL+vL7e8MvQccDIq1kpbN68VW4HGCuOq/Z2IgZzY+DTdGg+1pYs6YEWxvAIsytVpZrp3pd3IGe1
	lZCdjKcnrEtydvkNdsD5co3JiI+6HtwwqQLUFlQB6svDSkK8yXucdeme7EZ7g9nhoXRZFUCsVSjrC
	5wAM+vBbdf68BD/9kf8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wexjZ-00000002Wm1-401e;
	Wed, 01 Jul 2026 16:24:21 +0000
Received: from mail11.truemail.it ([217.194.8.81])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wexjW-00000002Wl8-2U5f;
	Wed, 01 Jul 2026 16:24:21 +0000
Received: from francesco-nb (2-224-25-112.ip168.fastwebnet.it [2.224.25.112])
	by mail11.truemail.it (Postfix) with ESMTPA id 893E0228E1;
	Wed,  1 Jul 2026 18:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1782923051;
	bh=j9BoCiRz+jTMzZ774GPA0gBs0cqXHfYMScxVG2VZtj8=; h=From:To:Subject;
	b=jnTiTMoL2sl59fl3xrOn7icJksQ1c1zAouKZ6ZN1of6J9D+7GiPp4teflbxHaMEQr
	 rMesX1MgeXn8rGclp21gk+OXT0xQE0ZTxSuFKYp5fBa1elg63QcS9skrryY7iGJNqB
	 F+VLwuUevm3RXeRI9/VGBcHWbyedu0qfQQ9Sx5J4U7Yld6SydBWwV3WoRjZEtx4lZb
	 CrAB6jB72BBRv1PxJ9GnYIQsm3pM+ZXeCz82ey1/7ArYu5oKTodRdQYIaZe/xaiJud
	 tVOhbYJ8JkyUtmNVR+VgsWRb7T8NiLxaedru0BzkmvJmWoJiVP4b/GnhrYCEXX9FT2
	 d7odGKWJv/lHg==
Date: Wed, 1 Jul 2026 18:24:05 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: "Mike Rapoport (Microsoft)" <rppt@kernel.org>,
	Jeff Chen <jeff.chen_1@nxp.com>
Cc: Johannes Berg <johannes.berg@intel.com>,
	Brian Norris <briannorris@chromium.org>,
	Francesco Dolcini <francesco@dolcini.it>,
	Jakub Kicinski <kuba@kernel.org>, b43-dev@lists.infradead.org,
	libertas-dev@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH 3/4] mwifiex: debugfs: use kzalloc() to allocate
 formatting buffers
Message-ID: <20260701162405.GA38581@francesco-nb>
References: <20260701-b4-drivers-wireless-v1-0-60264cdf2efe@kernel.org>
 <20260701-b4-drivers-wireless-v1-3-60264cdf2efe@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-b4-drivers-wireless-v1-3-60264cdf2efe@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_092419_691624_F67169A9 
X-CRM114-Status: GOOD (  11.83  )
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

+Jeff

Jeff: this is relevant also for nxpwifi.

On Wed, Jul 01, 2026 at 04:59:12PM +0300, Mike Rapoport (Microsoft) wrote:
> mwifiex debugfs functions allocate buffers for formatting debug output
> text using get_zeroed_page().
> 
> These buffers can be allocated with kmalloc() as there's nothing special
> about them to go directly to the page allocator.
> 
> kmalloc() provides a better API that does not require ugly casts and
> kfree() does not need to know the size of the freed object.
> 
> Performance difference between kmalloc() and __get_free_pages() is not
> measurable as both allocators take an object/page from a per-CPU list for
> fast path allocations.
> 
> For the slow path the performance is anyway determined by the amount of
> reclaim involved rather than by what allocator is used.
> 
> Replace use of get_zeroed_page() with kzalloc() and free_page() with
> kfree().
> 
> Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
> Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
