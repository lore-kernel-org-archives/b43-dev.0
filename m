Return-Path: <SRS0=m+ae=KG=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14C9AC433ED
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 10:22:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5097610C9
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 10:22:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5097610C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jk+GVPHKkv75RLJFN3/E9N4v40u3s9O/P4Dv0n62Y2A=; b=PfZ7hUU3br53YzkF2b3xx7xpwa
	+VciN6Bym0LfAEIix3R3jrpj3kdbGPEuAfTCmhCH1BLY92ZzStUdN+NRdrGSRLpYt7aqDwkvUyMh9
	WE5gjvcXmia+iy8nsXukJVE3C7LN32Pk2JSqI22KplQHACGPIH48uAw3cAEUewkjflho5zw413UMB
	rOXgocWppj3GNYxdPhfcUsxrHzm0S9HLfEpngic/8Et0fA/o031fmcfnX1ppcFH6T01Zxv/nqDEPY
	v7o5PglMXhAbtHRGPDlQaGEmdGWL0I4jkcgJ1KwJeT8SVvQAkuIk+DNy+iZ9xO9QKlMp+E0lulzlz
	sOvlG93Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgPWl-00Gtv9-Lf; Tue, 11 May 2021 10:22:11 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgJHq-00GCi1-13
 for b43-dev@desiato.infradead.org; Tue, 11 May 2021 03:42:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From:
 Sender:Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=QZGTNGB4Qjn97TWm0ROfZAweO2FNOqZep5V5BxnfyR8=; b=ZaeumIxRUNYXrVVjChWj1LzWm6
 tT2R/ae5k8IH2uJwEE+BcBxYP0s0XhACP+ZwYkvCYzb6VZrfbatOiuyA8fa5nhoU4TK0ne/k5UVy4
 drmKS/lL57bIeTsRNS8WjXPM/G287kg+Is+UpD6uI9vtvEQLem8L/OH7JyVr9i2oKfKesv/qqIn2P
 RKOT9XxrY7wOCrpZSdsT4kFsjO4xefpUQKLdekbpSU3JFpFBNCprsfVaewVw4G1Thg4qcwc2jWQax
 x+NVhgj3A8jnDh5opqt6gPS5SZwTWT7NBnQrF+4y0yjs8Ll5MyxCTZt9Ld11PctldDK6Fe1BbeR0i
 3TkgvpHw==;
Received: from szxga05-in.huawei.com ([45.249.212.191])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgJHm-009Hav-Qw
 for b43-dev@lists.infradead.org; Tue, 11 May 2021 03:42:20 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4FfNtz2LxmzQlQq;
 Tue, 11 May 2021 11:38:51 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.498.0; Tue, 11 May 2021 11:42:06 +0800
From: Zhen Lei <thunder.leizhen@huawei.com>
To: Kalle Valo <kvalo@codeaurora.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev
 <b43-dev@lists.infradead.org>, netdev <netdev@vger.kernel.org>
CC: Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH v2 0/1] b43: phy_n: Delete some useless TODO code
Date: Tue, 11 May 2021 11:42:02 +0800
Message-ID: <20210511034203.4122-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.177.72]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_204219_054151_5E3D173F 
X-CRM114-Status: UNSURE (   3.67  )
X-CRM114-Notice: Please train this message.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_204219_054151_5E3D173F 
X-CRM114-Status: UNSURE (   0.12  )
X-CRM114-Notice: Please train this message.
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

v1 --> v2:
Fixes "W=1" warnings. That's because after removing the todo code,
the local variables 'noise' and 'tone' are not referenced.

Thanks to Andrew Lunn for his review.


Zhen Lei (1):
  b43: phy_n: Delete some useless TODO code

 drivers/net/wireless/broadcom/b43/phy_n.c | 47 -----------------------
 1 file changed, 47 deletions(-)

-- 
2.26.0.106.g9fadedd



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
