Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54BA0C43334
	for <b43-dev@archiver.kernel.org>; Tue, 19 Jul 2022 07:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnccLqzmP4ZLkbsMUbSTpzlMCXpQQKlxNPGrvU3R0kU=; b=RLQ53GsA8LyH0y
	lDiBck17kSvTrZGCnm1dUAGK9LwoC59h196IjKnqXd0Emvdy8vY3PgWCbgbABkDHdYfGcue9MEpXg
	5SZbtkrjIRPEpeyE4ib8LNTs1rPzIauq0z/nC6lgGhj6ThfefpG9aAb2JsjLxB/mc3/wA+NUj/wnd
	IY7Pyd8KplIaYRu+XEYT6Errz4gX2Sc5m6rmlCUDqdt+LWpxKk6jjzQTsKWhnzQ9PU9O1soRVLTpO
	QzxRvwcpGbIrPmkdpIk59yjINyTajWr178007BI/2dLZYf/kBQ5DjePxlambNrtriXclPUFEpMAI/
	pKano70QAjpfZiea0rjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDhMl-005pPb-0Q; Tue, 19 Jul 2022 07:09:59 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDhMh-005pLb-KY
	for b43-dev@lists.infradead.org; Tue, 19 Jul 2022 07:09:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=/yn6Pg6Bzg+ZpMdpNayFhtNUih4qa9d4cHz/tBIB/do=;
	t=1658214592; x=1659424192; b=EwTlmNa1m+CgFTyxSk6C3VSF8TW4afpRhqZAmojTOZP0EfP
	CKNk6/hw1JYkrMuWcLXr1nkHG21d92lhi5++wHL0000MvfNEfV9+1ZN8hehp9e0SAl3VKwwU3A/1B
	/wiLzaWOmRz4o3YgcP14zOss+R1NbJZ4wCr+f6EUn/VuVVDK2rO28BdXW/mxJBp93awTN9rFptY+c
	Ecx7eH5vhgxCreGTlHp0T9cJx6M5AfVOSjhLp3I0/d6Ns4TS2TkXOKx7d5xWRqs+/0TT7zA4hOVPU
	09vu96YyJFWQ8gsXbSCpxWu85/qWEVKLCLC1ivBgoAmxd/fWoYM8UU5zEwmPhgwA==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <johannes@sipsolutions.net>)
	id 1oDhMQ-002T1l-1J;
	Tue, 19 Jul 2022 09:09:38 +0200
Message-ID: <a103d47bacd9c6e85d5c9bf969cd1bc69194eed6.camel@sipsolutions.net>
Subject: Re: [PATCH -next] wifi: mac80211: clean up one inconsistent
 indenting
From: Johannes Berg <johannes@sipsolutions.net>
To: Yang Li <yang.lee@linux.alibaba.com>, davem@davemloft.net
Cc: Larry.Finger@lwfinger.net, kvalo@kernel.org, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, linux-wireless@vger.kernel.org, 
	b43-dev@lists.infradead.org, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Abaci Robot <abaci@linux.alibaba.com>
Date: Tue, 19 Jul 2022 09:09:37 +0200
In-Reply-To: <20220719004423.85142-1-yang.lee@linux.alibaba.com>
References: <20220719004423.85142-1-yang.lee@linux.alibaba.com>
User-Agent: Evolution 3.44.3 (3.44.3-1.fc36) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_000955_706321_46162B29 
X-CRM114-Status: UNSURE (   4.12  )
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

Subject should be "wifi: b43legacy: ..." I think.

johannes

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
