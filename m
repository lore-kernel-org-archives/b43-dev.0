Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DCD9C433F5
	for <b43-dev@archiver.kernel.org>; Mon, 30 May 2022 14:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=905X4v0uujbGQQqiEkLdIp2qZLY+bXOvwFihtwNN0ZY=; b=lzSFV/Dqt/JtwG
	Xjgo0m9NgKEA5qnPbGc7xgGx4V0LaWXYjsMsi+jOnvGov02G8+8Zo58P3nkwSz/iFj/ng+LjV+tgK
	BOtOoW0xXeojY6g015KQmEQGx7WTNp3UpVXfEo7g3l8nK8QX05KvQQMfGxGcK3Xv2ilpXrPwv3YZi
	ISeeljaHcnyX3YGDBFfxfJ3XXLHaWMEC6YbHUbV7Z5ztjE76XBNcnpAPo+0UrF+iP9hEjIixGvfqv
	rLHyN84zwl84lsqq6/+iVdsHLSN1r5sTk1TzM0pKqwhKSH8avbzggK+hQAOgJtjeWBPIN91XYK6xT
	hY4IIquRmCdXc6ZRBXYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvg1W-0072lJ-BA; Mon, 30 May 2022 14:05:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfh0-006qel-Dr
	for b43-dev@lists.infradead.org; Mon, 30 May 2022 13:44:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DD0B260FD7;
	Mon, 30 May 2022 13:44:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AD43C385B8;
	Mon, 30 May 2022 13:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653918261;
	bh=Bkd23sX7Gv/V+UyqdUT5JU9g3D19EXhrLTVzmu+pFg8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ny9dOUZhzWWbWqsiwY4buRX/4viG4SEskbutNgaGfrltRbr/hombcTr3ygGYwN2Tl
	 LYkkSfcJBk0zic1saUDRW6AoKNqOeelnQsR7IsZ7sZXP7Z7eVUFZiQ6aGFD/Nc5yU8
	 VLT3Twmr0wp9hbFfiqqvVUIuNBtpJZ1Cr7ebe4a1nkt1jf/vgMpg8nH0zfVY2pWvWs
	 QYwRnUJ3IyzidJiqg7djrrEpFTEZQ/IpxCUrDGVW8TLLsKL5MYG/5r9aoxnFCpj0O9
	 Jtn1mT5mR4M/SwGD/JR8jqp7KnyBn4o2t91ihS0Fiu0aqKsSuWCqIMYee4oBROl1k6
	 rVs7BAj9JWutg==
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
Subject: [PATCH AUTOSEL 5.10 06/76] b43: Fix assigning negative value to unsigned variable
Date: Mon, 30 May 2022 09:42:56 -0400
Message-Id: <20220530134406.1934928-6-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530134406.1934928-1-sashal@kernel.org>
References: <20220530134406.1934928-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_064422_655425_B6B8256E 
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
index 665b737fbb0d..39975b7d1a16 100644
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
