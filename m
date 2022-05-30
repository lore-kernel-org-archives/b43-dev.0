Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEF97C433F5
	for <b43-dev@archiver.kernel.org>; Mon, 30 May 2022 13:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fphXInYHIpJngyL+OPFaiKYW1u5dT/wqnIdsPdBjz+M=; b=LqkFbitQOrlWLq
	1WsVBXf2NMY+om9gQGwi9RVJkKVVO8iuwVd6oFjYuKj+XAXtdslGwvdYb+fTvpPBPd6cR8W02+YLy
	L2bS5qdU+4iCt3azZnAx8Wf8mqF/tkWsvXsXPQRv3wEeQEFB5f95n5vxZGAmey/UJDzjRmviS9uqF
	V6o7GzpGdOuZBpfhgXvd1lUmFPZjnJ35WvieyaBXxSrMT3Oq7+FjCAxgTU/92OzA5fTrqm/GZsFU6
	lw7V9aPKNJqNGx0fMh1aWp1esRXx/PNhW64nNiEs3uhsRZCtmrer9sMurv1Yu8HoGXcNqkBTRD88a
	/DRXxH+z2XP1/szyI5ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfb8-006mxl-1Z; Mon, 30 May 2022 13:38:18 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfV7-006jcK-Fn
	for b43-dev@lists.infradead.org; Mon, 30 May 2022 13:32:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 272BDB80DB7;
	Mon, 30 May 2022 13:32:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F3D8C3411A;
	Mon, 30 May 2022 13:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653917522;
	bh=NCZ8ENLCATeP2GIJLaAP/xz+MzB5wHdRUTpcdOOL+I4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NXOLiU6BEY53MPdh1Dmwu4OI1O6AcA5JMMW2b63XVfmjSmSIUicxyhSluGB+3wAFb
	 VL0cLsiB7OXAcITHcO6+HrQmrYVLui57rhMBoa9gTWT3SlGrZalx61Vl2W2cQAzL7v
	 0Yf5cd5QY41TVKCGtAhUZtgdrIoYKM+P3IOcwcSggbj6SToscMdpSb24eeAy9798rp
	 wJ8ECVk7TsfC+sPrbHKylNb00qT/ylwrowBseQdkbstaBO8+LyBp81wGoD7CQF0bG1
	 ir1kwXj45QoxlgY7IzmOcAPix6L1g8S4TQrak+nrVQsxN03ALJN4/839+5qNSdGtKH
	 RMnxCcmyndW9A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Haowen Bai <baihaowen@meizu.com>,
	Kalle Valo <kvalo@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	thunder.leizhen@huawei.com,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org
Subject: [PATCH AUTOSEL 5.17 010/135] b43: Fix assigning negative value to unsigned variable
Date: Mon, 30 May 2022 09:29:28 -0400
Message-Id: <20220530133133.1931716-10-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530133133.1931716-1-sashal@kernel.org>
References: <20220530133133.1931716-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_063205_697168_E69CAF23 
X-CRM114-Status: GOOD (  12.01  )
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

From: Haowen Bai <baihaowen@meizu.com>

[ Upstream commit 11800d893b38e0e12d636c170c1abc19c43c730c ]

fix warning reported by smatch:
drivers/net/wireless/broadcom/b43/phy_n.c:585 b43_nphy_adjust_lna_gain_table()
warn: assigning (-2) to unsigned variable '*(lna_gain[0])'

Signed-off-by: Haowen Bai <baihaowen@meizu.com>
Signed-off-by: Kalle Valo <kvalo@kernel.org>
Link: https://lore.kernel.org/r/1648203315-28093-1-git-send-email-baihaowen@meizu.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index cf3ccf4ddfe7..aa5c99465674 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -582,7 +582,7 @@ static void b43_nphy_adjust_lna_gain_table(struct b43_wldev *dev)
 	u16 data[4];
 	s16 gain[2];
 	u16 minmax[2];
-	static const u16 lna_gain[4] = { -2, 10, 19, 25 };
+	static const s16 lna_gain[4] = { -2, 10, 19, 25 };
 
 	if (nphy->hang_avoid)
 		b43_nphy_stay_in_carrier_search(dev, 1);
-- 
2.35.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
