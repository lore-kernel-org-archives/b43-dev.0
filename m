Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF206C43458
	for <b43-dev@archiver.kernel.org>; Tue, 30 Jun 2026 11:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7LRRhAyN3AOH9LUf7kxCSMVZqO7ezPHBM7EKutGVH4=; b=s9Mq4SDqXDvGhN
	RhabHEgQ2FYjnuyA9zm17JqM4SYS1dUnjQzMD0If3pwD3eESfBi/Uhenm7YX9GFu9yqB8sOENr/k4
	2kIOJheY75sdd/9UBvtmr23ax+Xya9ijEtBI5px/XQA7Nir4MfKMdW7ZS+tnUm04H6BLTNO9Z+ZC1
	zs23Wp4yiTFkbZwdDMi8TDJBEdst1rHzr/gIgFU9/Qs4sBsIxMDKAV/h6rX41/fh8ywmoM9ijHqfR
	KCzzeSnLlj4Ye6AXTIRDvBAQ8Nbd4OYJqdDwDyhL93ctNx6dVqgKwc33TKy5EITDUX5a/FpyL0/Ql
	wpfPqD0WD7xs+fw6v3qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weWC7-0000000Gkax-1bV3;
	Tue, 30 Jun 2026 10:59:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weWC6-0000000GkZk-3FYC;
	Tue, 30 Jun 2026 10:59:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 371AA600FC;
	Tue, 30 Jun 2026 10:59:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 617C81F00A3F;
	Tue, 30 Jun 2026 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782817197;
	bh=uoX4qX+FZWfnshgsq0X7cWNdSoKNRRVi845f4JIWs1M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Z+l60L7wn/PShGQKOVf1uhUaR8+VJHm56bmboZldAjfa5+rWFzL+mzZyxkjjooadV
	 wsf1HlrnDhCLt1VCQhMO057gNkL4/ki0eS/5OYX9/9ZwvhGEhpKb29+Gm8Remz6d1B
	 Rmw9MS+PDoCRERuT8V6DQMMADlSyqJGDnomFNnSdgDlNF3cRw5cFcdPMrzAFDKnEAH
	 0XRtlJyBXyq0BuiKqcIxChmIVmPvNkYVA6aM/GsMSFtH6N7RDP/AuEG4GPSkJoO8uY
	 mpbzYCwoD5Pw010DnINlP+QgJtqiDzrYGbzBGVg3vPImYTt0vDejn1AmTXPB2q2pgb
	 nqljjBe2Hkszg==
From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Date: Tue, 30 Jun 2026 13:59:25 +0300
Subject: [PATCH net-next 6/8] sfc/siena: use kmalloc() to allocate logging
 buffer
MIME-Version: 1.0
Message-Id: <20260630-b4-drivers-net-v1-6-672162a91f37@kernel.org>
References: <20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org>
In-Reply-To: <20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org>
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

efx_siena_mcdi_init() allocates a logging buffer for MCDI firmware
communication diagnostics.

This buffer can be allocated with kmalloc() as there's nothing special
about it to go directly to the page allocator.

kmalloc() provides a better API that does not require ugly casts and
kfree() does not need to know the size of the freed object.

Performance difference between kmalloc() and __get_free_pages() is not
measurable as both allocators take an object/page from a per-CPU list for
fast path allocations.

For the slow path the performance is anyway determined by the amount of
reclaim involved rather than by what allocator is used.

Replace use of __get_free_page() with kmalloc() and free_page() with
kfree().

Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 drivers/net/ethernet/sfc/siena/mcdi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/sfc/siena/mcdi.c b/drivers/net/ethernet/sfc/siena/mcdi.c
index 4d0d6bd5d3d1..048c1e6017c0 100644
--- a/drivers/net/ethernet/sfc/siena/mcdi.c
+++ b/drivers/net/ethernet/sfc/siena/mcdi.c
@@ -7,6 +7,7 @@
 #include <linux/delay.h>
 #include <linux/moduleparam.h>
 #include <linux/atomic.h>
+#include <linux/slab.h>
 #include "net_driver.h"
 #include "nic.h"
 #include "io.h"
@@ -73,7 +74,7 @@ int efx_siena_mcdi_init(struct efx_nic *efx)
 	mcdi->efx = efx;
 #ifdef CONFIG_SFC_SIENA_MCDI_LOGGING
 	/* consuming code assumes buffer is page-sized */
-	mcdi->logging_buffer = (char *)__get_free_page(GFP_KERNEL);
+	mcdi->logging_buffer = kmalloc(PAGE_SIZE, GFP_KERNEL);
 	if (!mcdi->logging_buffer)
 		goto fail1;
 	mcdi->logging_enabled = efx_siena_mcdi_logging_default;
@@ -116,7 +117,7 @@ int efx_siena_mcdi_init(struct efx_nic *efx)
 	return 0;
 fail2:
 #ifdef CONFIG_SFC_SIENA_MCDI_LOGGING
-	free_page((unsigned long)mcdi->logging_buffer);
+	kfree(mcdi->logging_buffer);
 fail1:
 #endif
 	kfree(efx->mcdi);
@@ -142,7 +143,7 @@ void efx_siena_mcdi_fini(struct efx_nic *efx)
 		return;
 
 #ifdef CONFIG_SFC_SIENA_MCDI_LOGGING
-	free_page((unsigned long)efx->mcdi->iface.logging_buffer);
+	kfree(efx->mcdi->iface.logging_buffer);
 #endif
 
 	kfree(efx->mcdi);

-- 
2.53.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
