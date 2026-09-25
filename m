Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A037BC9830E
	for <b43-dev@archiver.kernel.org>; Fri, 25 Sep 2026 13:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oEIxcx6fEhXW8IfphdMNp27lS34XDRMKG85542Ped6s=; b=z/vcHkAnRYJi72
	nzYrbvl2jQYBtxMYO2sKLoPIWe+DSXpjyL4Zj/S9eWyi4WERDM5/6uMKxrBRfk48XPPF9gq/Z8yuS
	KAkLTzSmIJ0GeeBNemfL5fFvGxYRwBrs1H5fCE32MZ+QHv9mJj4INK/gP9EW3zTt2CT0bVSWjuMFN
	i0JeLa7UKOVrrzbxZP9krPinHILCSeFslXKgQTVspy4HKkIHWpetkt/sDEwvAnnUmLQaR1KyeqotY
	J9Pq/KLQB1YmToU04vzRzP7U6pi5jzIDh+TDh/fyqRuKxdW8mJNzzGkmOarh07gBl+KJ05SLr5SPa
	TKSCLu73ijHs1Tt3n/MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5ei-0000000DP1n-0UsK;
	Fri, 25 Sep 2026 13:08:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5ed-0000000DP1d-3CD8
	for b43-dev@lists.infradead.org;
	Fri, 25 Sep 2026 13:07:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1D2AD60136;
	Fri, 25 Sep 2026 13:07:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9D231F000FF;
	Fri, 25 Sep 2026 13:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790341674;
	bh=y6HeMqcgnpiyhqJXKT+dnKLk1cRC+3OCnQckuwNGxjs=;
	h=From:To:Cc:Subject:Date;
	b=IO8Gg6utasdzPe12meDEN/aTWLHsNO2hsV5UYcZwj4kvCNqZvQvNDNiuvb7yBizdv
	 MGuLNs/DLgVdZHJ11NffT5OUIyKuZbhEob1qdkrwtBf7U5I9KfaCAWG4dWwHmrG2a/
	 7UEfbDYK5QVXF1tGqgq4cBmKF2lEFrx4f9ky8fty+o1GyJWACwpCLffD3lVp6hIPa1
	 S8anPhWE17L1Oe8IWiYReNxBHZFMskxPQIcMuASJgmShtCRaK6S6ci8YYom92LnSKu
	 FabXkqjHxjgxpe/9BP4qDlPQAKr5jz/Fo2tZofZNSkV3JhN+1SW8u5Ioq8KHBwfNYa
	 /+EQgHNsxf33A==
From: Arnd Bergmann <arnd@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>,
	Kees Cook <kees@kernel.org>,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev
Subject: [PATCH] b43legacy: work around stack frame size warning
Date: Fri, 25 Sep 2026 15:07:36 +0200
Message-ID: <20260925130749.4191347-1-arnd@kernel.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
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

From: Arnd Bergmann <arnd@arndb.de>

I came across a rare warning in the b43legacy driver while building
randconfig kernels using clang-21.1.8, with KASAN enabled:

drivers/net/wireless/broadcom/b43legacy/main.c:3250:12: error: stack frame size (1392) exceeds limit (1280) in 'b43legacy_wireless_core_init' [-Werror,-Wframe-larger-than]
 3250 | static int b43legacy_wireless_core_init(struct b43legacy_wldev *dev)
      |            ^

There are no actual large variables on the stack here, just excessive
spills, and the code looks fine otherwise, so this is really an
optimization quirk in the compiler. Marking the prepare_phy_data_for_init()
function as noinline completely avoids the issue, with no function in
this file using more than 200 bytes of stack space, same as without KASAN.

Link: https://pastebin.com/raw/KpV124Ep # .config
Link: https://pastebin.com/CxWfsBN0 # assembler output, truncated
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/broadcom/b43legacy/main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index 6b3e0b2bbca7..dfff3710dea3 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -3207,7 +3207,8 @@ static void b43legacy_wireless_core_exit(struct b43legacy_wldev *dev)
 	ssb_bus_may_powerdown(dev->dev->bus);
 }
 
-static void prepare_phy_data_for_init(struct b43legacy_wldev *dev)
+static noinline_for_stack void
+prepare_phy_data_for_init(struct b43legacy_wldev *dev)
 {
 	struct b43legacy_phy *phy = &dev->phy;
 	int i;
-- 
2.53.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
