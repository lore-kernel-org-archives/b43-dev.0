Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F5E1C4707B
	for <b43-dev@archiver.kernel.org>; Thu, 18 Jan 2024 08:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Y6TSlvSn9+ivWry5PJWQ1lmYcxnI0BlXDPhVWlu3R4=; b=3xBNVxIFqZRyXf
	YRMTlddOmzDFg682hnSAiJdCCVzS1sssA9vCs34ycQxj92DU5ex0r9RHtNGUEy2rYMulxKyvjktU+
	Ik7FfFltTOORU92IfdlZAJ7R+DZLPuhLHV149184X0ASDF4U9Xe7C2+/v6EnLtH64FIo4ecX7919T
	fg0ZvoRch4BoVz78/b2/wHu2WGP2yaXV/Y5x21rFZrUzKAdlHW9mtYslyKP7vQiC7CW+AGDqbRvbW
	u9F1Oe4dsGzm1YDPm39PszlsF1NRSR4u9so84W/AcxuzsGGR5m2+pjPEPK4S8JvkICYQxwsyy8Mig
	ux9g6fi8OayIQQeQ54Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQNoB-0027ho-1b;
	Thu, 18 Jan 2024 08:31:31 +0000
Received: from mail.raportygospodarcze.pl ([51.195.117.175])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQNo4-0027f5-2T
	for b43-dev@lists.infradead.org;
	Thu, 18 Jan 2024 08:31:27 +0000
Received: by mail.raportygospodarcze.pl (Postfix, from userid 1002)
	id 66CD4A2CC6; Thu, 18 Jan 2024 08:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=raportygospodarcze.pl; s=mail; t=1705566677;
	bh=Q787bUI8wqiKELAtyWRvCTxaBwNaZfpooGhkyk63cfU=;
	h=Date:From:To:Subject:From;
	b=QXkGKmq0NL5S1kGEWBc46kZBdsqnua4AhBaCsMajlGlGpXsoJTzfbax1p38Iok6n2
	 tz30cPG3jFb7xuvi4VEuSyh81dwhalZyAMzCAQ2qt7NRa9mDYMnWmBK+8fbsKFrP7S
	 xXMYSnWzofmQ81GY/f3GKsNNVY2WfL2uYa8t7xkpetUbTRVIfdZOJIHBvpXC1btc4k
	 kfsa5Lrkqyoh+QEFnbLTXrGIQfld0gcDOyL2uMr+kqSHmPdh3K9NPZDm7BJthSjsOI
	 NE3DxQh4UFlTTuAIvfT4Q3eIGPZ9MTevMIfkKC+zRCHpaXyR9dfekpwyr/qrfaDdDC
	 urS4RiDi4TL5g==
Received: by mail.raportygospodarcze.pl for <b43-dev@lists.infradead.org>; Thu, 18 Jan 2024 08:30:32 GMT
Message-ID: <20240118074500-0.1.cr.1t6ed.0.7yqw6ir3df@raportygospodarcze.pl>
Date: Thu, 18 Jan 2024 08:30:32 GMT
From: "Maksymilian Ciszewski" <maksymilian.ciszewski@raportygospodarcze.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.raportygospodarcze.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_003125_561419_5920A9A6 
X-CRM114-Status: UNSURE (   1.64  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpNYWtzeW1pbGlhbiBDaXN6ZXdza2kKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBs
aXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
