Return-Path: <SRS0=m+ae=KG=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F83DC433ED
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 13:17:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 09C93613C5
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 13:16:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 09C93613C5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M2TMV62QKGW/rx789an/7xNqXn7SPY280dBF4HDbAtY=; b=DCza5wxjBXKWSYi5tYoD3Dbnm
	z5qWsInsRwAiy1W7NYCAgy+a+PTh0GDRvmtMblNZH8lDh5PPMa/W3E4zS1y5khzzoikKoyTWFJvQx
	zMNUEPEKvf+hKo5xivSYvg8gA5Wkhl7Lco7QtCX9MTS93z5Fb3hL3ptwV3TYH8uHg5OxAqDhGbrVP
	CklzPfrMeBrBUu9z6M9r/4MYI8Hgv1KXk6zYOzFAWnedqh4AIkWaZP7jstKbog3FZf2Oi0y9OL+ia
	pbYAalQVeK3yAFiIXysuLl7PPsw4Z80kccjp6D01wg8Cy5dURgF2VnQ19EMVrARxZlOgZka6YbAZS
	tRv+uhbIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgSFZ-0002BX-Hc; Tue, 11 May 2021 13:16:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgR7y-00HHXQ-Us
 for b43-dev@desiato.infradead.org; Tue, 11 May 2021 12:04:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5u2lW8RKz8/Z3PJTIiHXnNaU9wBSRgfqwolanPIUe8Y=; b=4IgJa1wC5wFcVQmht//glmSI65
 WE50GThF6drfJEid5nznHUMbgvRESzUVZMu9ahWCK1SEpU5YMflI+PajEr5cayeTnZrzOz754szMw
 KC+/w86+My5XPJdl6NSl37XVmqmR25KEXLcb5R6pPHKPWL5asRuWKpkh/uIAIYDYRMS1KzK/GFUGV
 959x/X6l3h2kvdvTF7erMEGyKnPpKrNIAdPOyOfXrctSvL5NWuMpabktBlvz2KYnB52U5RXjlSE83
 VoGzjSXpjdQPvCuBqnYRUWlMNvtmRW2qz/OXPPdrlYxtPJwTv3CZpTYj2jEl5IsXeLQi6gHqLbb2e
 J6pWqmog==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgR7w-009Y3i-HC
 for b43-dev@lists.infradead.org; Tue, 11 May 2021 12:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5u2lW8RKz8/Z3PJTIiHXnNaU9wBSRgfqwolanPIUe8Y=; b=RoAPO8hC9Tz7/mkjSljO3QEuHe
 gSA4/K7SZtCZ5m/cr4u09PjrjVDc56+Ez1S3Uz4vELPR9vkzxoS/ywHTYBOf3OvrdEE/Z4NQfxB9W
 jv4rIu8lEskUxwz99sE+555MaWrn41DzFSbHRPt38gTG95XaP88fcV4vErLP+e5YLA0Y=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1lgR7e-003jM0-8X; Tue, 11 May 2021 14:04:22 +0200
Date: Tue, 11 May 2021 14:04:22 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Cc: Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 b43-dev <b43-dev@lists.infradead.org>, netdev <netdev@vger.kernel.org>
Subject: Re: [PATCH 1/1] b43: phy_n: Delete some useless empty code
Message-ID: <YJpyxtsmj1upSpQE@lunn.ch>
References: <20210510145117.4066-1-thunder.leizhen@huawei.com>
 <YJmRUQwPPDE+hWiN@lunn.ch>
 <1890aa92-ddf2-78f7-51e7-bdc3a58a04c6@huawei.com>
 <c7c7c332-acc3-4907-1c7d-ccf2413ef837@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7c7c332-acc3-4907-1c7d-ccf2413ef837@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_050440_587603_AB9B1F32 
X-CRM114-Status: UNSURE (   6.19  )
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

> I got it. It reported by W=1.

A lot of the kernel tree is W=1 clean now. Networking is. So we expect
patches to also be W=1 clean.

Hopefully this will become the default at some point, or the
additional warnings W=1 enables will be made always be enabled.

	   Andrew

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
