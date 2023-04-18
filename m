Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E0E1C77B75
	for <b43-dev@archiver.kernel.org>; Tue, 18 Apr 2023 14:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PF+Hom6H5NO8Z3isoYDHFuZ6vP9WHTMiBYT5IzMJd20=; b=Hq4ANLbJUTdb7N
	JP1eRhECczQIKe6poA98y4Or+cBe8MYXkQ06cGO48//3npJ7ml5mBFIHeX10qHHt4btw4ps39txlz
	iXCZlGdc6gScz1YIE+g2yjwsv0RLIP1dOtWubJpJnJpnGvAOyT39oOai4RP6nHo3AX4btNiRHg8T+
	8lbRQMoiPj3eZDDoziM1TkGHGhPRahuBAJ3JyqnQK+Rh/fb/l4W891/pVfBnb23lteaq6MTIn30x4
	xmEZOzSFH+ct06HdDbzGXnHFBHaXSeOD/vqu9hQj4Bc2FhR6uJ4IIeyUqxH7UMOpuDM8Dbnd54D8y
	PIZrJJrOhRVpOyy5xTYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pomKx-002ROt-0Y;
	Tue, 18 Apr 2023 14:29:39 +0000
Received: from e10edge.fintech.ru ([195.54.195.159] helo=exchange.fintech.ru)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pomKp-002RLb-1g
	for b43-dev@lists.infradead.org;
	Tue, 18 Apr 2023 14:29:34 +0000
Received: from Ex16-01.fintech.ru (10.0.10.18) by exchange.fintech.ru
 (195.54.195.159) with Microsoft SMTP Server (TLS) id 14.3.498.0; Tue, 18 Apr
 2023 17:29:23 +0300
Received: from localhost (10.0.253.138) by Ex16-01.fintech.ru (10.0.10.18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Tue, 18 Apr
 2023 17:29:22 +0300
From: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
To: Larry Finger <Larry.Finger@lwfinger.net>
CC: Nikita Zhandarovich <n.zhandarovich@fintech.ru>, Kalle Valo
	<kvalo@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
	<edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
	<pabeni@redhat.com>, "John W. Linville" <linville@tuxdriver.com>,
	<linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
	<netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<lvc-project@linuxtesting.org>, Natalia Petrova <n.petrova@fintech.ru>
Subject: [PATCH v2] b43legacy: Add checking for null for ssb_get_devtypedata(dev)
Date: Tue, 18 Apr 2023 07:29:18 -0700
Message-ID: <20230418142918.70510-1-n.zhandarovich@fintech.ru>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.0.253.138]
X-ClientProxiedBy: Ex16-02.fintech.ru (10.0.10.19) To Ex16-01.fintech.ru
 (10.0.10.18)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_072931_577155_5F9D1742 
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

Since second call of ssb_get_devtypedata() may fail as well as the
first one, the NULL return value in 'wl' will be later dereferenced in
calls to b43legacy_one_core_attach() and schedule_work().

Instead of merely warning about this failure with
B43legacy_WARN_ON(), properly return with error to avoid any further
NULL pointer dereferences.

Found by Linux Verification Center (linuxtesting.org) with static
analysis tool SVACE.

Fixes: 75388acd0cd8 ("[B43LEGACY]: add mac80211-based driver for legacy BCM43xx devices")
Co-developed-by: Natalia Petrova <n.petrova@fintech.ru>
Signed-off-by: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
---
v2: fix issues with overlooked null-ptr-dereferences pointed out by
Simon Horman <simon.horman@corigine.com>
Link: https://lore.kernel.org/all/Y+eb9mZntfe6rO3v@corigine.com/ 

 drivers/net/wireless/broadcom/b43legacy/main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index 760136638a95..5a706dd0b1a4 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -3857,7 +3857,11 @@ static int b43legacy_probe(struct ssb_device *dev,
 		if (err)
 			goto out;
 		wl = ssb_get_devtypedata(dev);
-		B43legacy_WARN_ON(!wl);
+		if (!wl) {
+			B43legacy_WARN_ON(!wl);
+			err = -ENODEV;
+			goto out;
+		}
 	}
 	err = b43legacy_one_core_attach(dev, wl);
 	if (err)
-- 
2.25.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
