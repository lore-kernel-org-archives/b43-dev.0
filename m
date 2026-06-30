Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC615C43458
	for <b43-dev@archiver.kernel.org>; Tue, 30 Jun 2026 10:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cztqaLk6Gxr6ADiKvAcNnEwM6Tht+BCnOM+JkU6uyzw=; b=ckhZT7zAM80HYF
	Cu+N0uFBidbMKD+oS/FoNebOUfwnqJFFPHVjG32qfI1H4Gd81q/VOOFfL33M/IMOAx7fcn/FXopJi
	b2lsqF7WYH/K87461uZ+gIOIDbiiW+AkdnxvlLRzSMJmzRWATH4ZN/5t1qcYme1+dwkgvnwoyKZTx
	PSSXQhGFxFICI822AIAsxShRCqcmcIZ9+8zxCOQbduGbkAO1p1vQQuKPkBzBEyFyMKp6FwDTW8uIh
	YrhATlbqJsEZuFSgVSL6pf/OjB5UVE7uXzzavxt51Sqg5VXSqj22bkpa2smAtV7x3utt9zdO3VmSI
	5VWETo4qMepBehjQekag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weWBf-0000000Gk8M-2HIB;
	Tue, 30 Jun 2026 10:59:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weWBc-0000000Gk7e-3HMo;
	Tue, 30 Jun 2026 10:59:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 053D1600C3;
	Tue, 30 Jun 2026 10:59:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C4A31F000E9;
	Tue, 30 Jun 2026 10:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782817167;
	bh=/60oaCW2BQae8L1Ed3jr0q0Fd1+merS/wb25bNKYVmA=;
	h=From:Subject:Date:To:Cc;
	b=b9bL17tgX9g/0VWgldenTIgpoi2fQRFDuEHc7FExVmS+6DkVl65hZBJImOgYFJX+b
	 YJO18n/S4id56u9kjbmBjTHiscZwwq3pQL7DcehaGvyp5PmPxTvIPjMD1ZUtGMp/Hk
	 tS8+tmTA+wc0TXD6U9QAorrRL7GRWN72GGJ0ziqgp91Sa2+l38toe7uxR6Y3gy5AW+
	 WQVZ9yPo7tiHLFokWgMD0t2Sb1Etya7v78Q+6IFfOdPfQDcQc+IhRChSZ9lvmpCmz7
	 10Llg8Ddec0qLa+tZnjZlnkUMGYQgmjcbTGtBt3K54SCLkjnwhH3RPIpJTs0ET4Pp3
	 2Kv+U1cljNjKw==
From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Subject: [PATCH net-next 0/8] drivers/net: replace __get_free_pages() with
 kmalloc()
Date: Tue, 30 Jun 2026 13:59:19 +0300
Message-Id: <20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIehQ2oC/yWMQQ7CMAwEv1L5TERahVTiK4hD7DrUHAKyS1Wp6
 t9J4Li7s7ODsQobXLsdlFcxeZUa+lMHNKfyYCdTzTD4IfrYR4fBTSorq7nCi8s05guO7FMgqKe
 3cpbtJ7xBAwpvC9z/i33wybQ0X2MxGTvUVGhuFYazkQkcxxdv1FOalgAAAA==
X-Change-ID: 20260616-b4-drivers-net-fc7f5b7e0a4c
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: Brian Norris <briannorris@chromium.org>, 
 Edward Cree <ecree.xilinx@gmail.com>, 
 Francesco Dolcini <francesco@dolcini.it>, 
 Manish Chopra <manishc@marvell.com>, Mike Rapoport <rppt@kernel.org>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sudarsana Kalluru <skalluru@marvell.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, b43-dev@lists.infradead.org, 
 intel-wired-lan@lists.osuosl.org, libertas-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-net-drivers@amd.com, 
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org
X-Mailer: b4 0.15.2
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

This is a (small) part of larger work of replacing page allocator calls
with kmalloc.

My initial intention a few month ago was to remove ugly casts [1], but then
willy pointed out that Linus objected to something like this [2] and it
looks like more than a decade old technical debt.

Largely, anything that doesn't need struct page (or a memdesc in the
future) should just use kmalloc() or kvmalloc() to allocate memory.
kmalloc() guarantees alignment, physical contiguity and working
virt_to_phys() and beside nicer API that returns void * on alloc and
doesn't require to know the allocation size on free, kmalloc() provides
better debugging capabilities than page allocator.

Another thing is that touching these allocation sites gives the reviewers
opportunity to see if a PAGE_SIZE buffer is actually needed or maybe
another size is appropriate.

For larger allocations that don't need physically contiguous memory
kvmalloc() can be a better option that __get_free_pages() because under
memory pressure it's is easier to allocate several order-0 pages than a
physically contiguous chunk with the same number of pages.

And last, but not least, removing needless calls to page allocator should
help with memdesc (aka project folio) conversion. There will be way less
places to audit to see if the user was actually using struct page.

Also in git:
https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git gfp-to-kmalloc/drivers-net

[1] https://lore.kernel.org/all/20251018093002.3660549-1-rppt@kernel.org/
[2] https://lore.kernel.org/all/CA+55aFwp4iy4rtX2gE2WjBGFL=NxMVnoFeHqYa2j1dYOMMGqxg@mail.gmail.com/

---
Mike Rapoport (Microsoft) (8):
      b43, b43legacy: debugfs: use kmalloc() to allocate formatting buffers
      bnx2x: use kzalloc() to allocate mac filtering list
      ice: use kzalloc() to allocate staging buffer for reading from GNSS
      libertas: debugfs: use kzalloc() to allocate formatting buffers
      mwifiex: debugfs: use kzalloc() to allocate formatting buffers
      sfc/siena: use kmalloc() to allocate logging buffer
      sfc: use kmalloc() to allocate logging buffer
      wlcore: allocate aggregation and firmware log buffers with kzalloc()

 drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.c    |  6 +--
 drivers/net/ethernet/intel/ice/ice_gnss.c         |  5 +-
 drivers/net/ethernet/sfc/mcdi.c                   |  7 +--
 drivers/net/ethernet/sfc/siena/mcdi.c             |  7 +--
 drivers/net/wireless/broadcom/b43/debugfs.c       | 12 ++---
 drivers/net/wireless/broadcom/b43legacy/debugfs.c | 11 ++--
 drivers/net/wireless/marvell/libertas/debugfs.c   | 39 ++++++--------
 drivers/net/wireless/marvell/mwifiex/debugfs.c    | 62 ++++++++++-------------
 drivers/net/wireless/ti/wlcore/main.c             | 14 +++--
 9 files changed, 73 insertions(+), 90 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260616-b4-drivers-net-fc7f5b7e0a4c

Best regards,
--  
Sincerely yours,
Mike.


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
