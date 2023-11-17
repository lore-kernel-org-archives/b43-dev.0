Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AECC7C197A0
	for <b43-dev@archiver.kernel.org>; Fri, 17 Nov 2023 08:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Y6TSlvSn9+ivWry5PJWQ1lmYcxnI0BlXDPhVWlu3R4=; b=y/Fw/NkTCes8zy
	9IrlSV4SXUblyM+n+2UscBcxxgnRvVNjz59ACDZjLYKby0pKzqDvr5eyRywLrVhTh5mXqscK4pHEU
	9KI+zqE3i/FUoQaULu0EI61oy0EZGq5Ow7VKqOhiYwBGZIHXg4gFhJsrqXb8VxfB2XKjdiDZB7ocT
	YoSzXPA9g3NhV+FisC0eNO5cy8+GCHo+K+LX6GYLwQ2sjkgap+LEsXgLgIjysTnFwJ/5ORIRLtlU2
	s/qxHXrYqxKPJEYs5Da3htNwXqIan3I7rF/zEzykH8JFjoWdhp1YlGZemg4qspf7SjQnnMGYm5Tp6
	e7sdB16UxuPG4I6YgM9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3uPf-005xmY-27;
	Fri, 17 Nov 2023 08:41:19 +0000
Received: from mail.raportygospodarcze.pl ([51.195.117.175])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3uPZ-005xkh-1H
	for b43-dev@lists.infradead.org;
	Fri, 17 Nov 2023 08:41:15 +0000
Received: by mail.raportygospodarcze.pl (Postfix, from userid 1002)
	id A0B45A32D2; Fri, 17 Nov 2023 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=raportygospodarcze.pl; s=mail; t=1700210464;
	bh=Q787bUI8wqiKELAtyWRvCTxaBwNaZfpooGhkyk63cfU=;
	h=Date:From:To:Subject:From;
	b=cztsUDxXPkSS7ohb54H6xE0650k49zrHmd9Ma4/SXcWPCqlktuUFUzBaqMY8Hjmu8
	 Jzl45PXxOKx9x0u2EZq8VJ58AK7MqaJBCoaKg2ICRo0GBJr8uOV4jfXG/OR0DVKCm6
	 8bbz8Fea8ZANgn2Z4VtCfGlC4v01jhmfBxroYzwMDqCK/or8eNixIOcOwVCRVfQIxc
	 7FKZenAQjVeyR1gKSat6exgJxsZlnsqUq4MZUK8z03g9v7sa5BjLN1gDnTfA6JpqOp
	 APbggwB/5F35rpMzr4Qgkc4fTME8ddzfDEctQdcxT357/vN1DNvjJJkjs/a7giuW05
	 13czw1XKYeOtg==
Received: by mail.raportygospodarcze.pl for <b43-dev@lists.infradead.org>; Fri, 17 Nov 2023 08:40:43 GMT
Message-ID: <20231117074500-0.1.bn.1hylc.0.oi89o3591o@raportygospodarcze.pl>
Date: Fri, 17 Nov 2023 08:40:43 GMT
From: "Maksymilian Ciszewski" <maksymilian.ciszewski@raportygospodarcze.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.raportygospodarcze.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_004114_176787_24D95524 
X-CRM114-Status: UNSURE (   1.81  )
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
