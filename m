Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 230A3C87FCF
	for <b43-dev@archiver.kernel.org>; Thu,  7 Aug 2025 07:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ikefElddZtVsDT64pJ8G91l46nTf0yWkFOKxQ952Oms=; b=e4lrsY9GiTEf5Y
	fgJMf4JNYm4gZkuMVfSQ0ptmL/I9McyXTn/2X8BlxyZR/AOMBZzf5/qL63rHWSWaU2QDo/XbbuSdR
	kKq+vBKAWLlG/cs3b4+oNhhPD/4eoD12CWzvwF4UaPjaPLQ6EhZvcRHamUi5pC88jyRKunZ3yPfu6
	lcLZVodmxX73JK3yufWRLoU421oY4R5xX9hXs6cq4lkN8TAk5ve/cs8T1hxHzkBBfTvGjewt9NDt1
	WrbqUfxLMF/sWxMVUMC/SrlRSJxHUyf5lhM30O/uYmxM8NK9lQ4x3dIRxOPLrHemNPwBdK2AHMl9S
	fa/2INvabi249nNoIVfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvED-0000000HTxm-1ZHL;
	Thu, 07 Aug 2025 07:39:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujv7h-0000000HTQg-02Wi
	for b43-dev@bombadil.infradead.org;
	Thu, 07 Aug 2025 07:33:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=h3k5zkAZf6tEpPtEQC0QHe2u0TTQ7ZFRjUanCKLrdLo=; b=Q7uS+LBPF8mOuthD9CTh5Yd2ti
	qYQQfUXnBwonH58VxG/B9ndc7wzgBoiQB/wbB41/tMdUFzVU6bQdG12OP5Q69HfeMxuIX3GoEzuMY
	gYqfvHMmjAdYf5ibrjOOqEfg8a7rS21OX+w/uJ48xWmcJ4fiehpFqKmDzMkJGukKvTw+waB2RpViq
	B2TdCem6ijWgUpG5mAETSAWJg+G5q1sdushQ9tC4K+adQdYEsvoHZH10SrBmUWsBnLAgagqjMmAPp
	1Jv/Ro0NZY2EN4WvXwZC5/AOtl2fx8QNFgVgXUb4omaqd6iq4+iy38M+/sDRDROYvEtuMpFgbaJCj
	nuQ2ikhQ==;
Received: from mail.biznator.pl ([162.19.205.13])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujv7d-0000000EcaE-3ss9
	for b43-dev@lists.infradead.org;
	Thu, 07 Aug 2025 07:33:11 +0000
Received: by mail.biznator.pl (Postfix, from userid 1002)
	id 8B9FA26FC8; Thu,  7 Aug 2025 09:31:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=biznator.pl; s=mail;
	t=1754551980; bh=h3k5zkAZf6tEpPtEQC0QHe2u0TTQ7ZFRjUanCKLrdLo=;
	h=Date:From:To:Subject:From;
	b=HjK7DeS+brk/rlT8G/FLxm3wHKtU5CJ51qi52rq9upqO90FKdh0JhO0tqxAOJOVt3
	 3eKwXYerYrXI1/7vXnKwmUSY46oePdpT5Js/+nyCaXW3XcqFYE/4gHAklaFeM78s42
	 qGealaJ2CaR/wSlW3WCZMpYV0yoSafBvH5sZLT0w9D78h8RyJu/5yNy1jf8Tm4bavm
	 N1TbRnqDSH2mBQcB2reKKHHjowLpr25hZLKQIJlANFcKrntSl0qUa3yOOJrdW67TJW
	 72NT9TLxZfftAxvAEVDcaURXR6Y3PKCuN0gHVuU3+7OTrrUKkLMYLPhVRRtCKXkoc9
	 iZqZCxYJrk3Uw==
Received: by mail.biznator.pl for <b43-dev@lists.infradead.org>; Thu,  7 Aug 2025 07:30:49 GMT
Message-ID: <20250807084501-0.1.ix.1fmxg.0.0npzepf5p0@biznator.pl>
Date: Thu,  7 Aug 2025 07:30:49 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@biznator.pl>
To: <b43-dev@lists.infradead.org>
Subject: Fotowoltaika dla firm
X-Mailer: mail.biznator.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_083310_176886_2E8DF265 
X-CRM114-Status: UNSURE (   1.07  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKcG9tYWdhbXkgbWlrcm8sIG1hxYJ5bSBpIMWbcmVkbmltIHByemVkc2nE
mWJpb3JzdHdvbSBvYm5pxbx5xIcga29zenR5IGVuZXJnaWkgZWxla3RyeWN6bmVqIGR6acSZa2kg
bW9udGHFvG93aSBpbnN0YWxhY2ppIGZvdG93b2x0YWljem5lai4gCgpBa3R1YWxuaWUgcHJvcG9u
dWplbXkgYmV6a29ua3VyZW5jeWpuZSB3YXJ1bmtpIHdzcMOzxYJwcmFjeSwgb2QgcGxhbnUgcG9w
cnpleiByZWFsaXphY2rEmSBhxbwgcG8gc2Vyd2lzLgoKUHJvc3rEmSBvIGluZm9ybWFjasSZIGN6
eSBtb8W8ZW15IHByemVkc3Rhd2nEhyBwcm9wb3p5Y2plIGRsYSBQYcWEc3R3YSBmaXJteT8KCgpQ
b3pkcmF3aWFtLApXb2pjaWVjaCBNcm9jemthCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
NDMtZGV2Cg==
