Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9660CC7EE2A
	for <b43-dev@archiver.kernel.org>; Tue, 24 Jun 2025 07:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QhI6HizRpgeIcEVLQ3xVXwvZegZKIcWWyGHlO0FqTF0=; b=gdTGC0D1wdXR1i
	oAIrAczcdKpPOOASWqGh7goigtapHomc/B/bXoLIT0h/6IEM3e1F4N1LDfrkb7VRV4JNEpcjHMS+r
	rqgb0wZs4KhdYm1WaEBA8jTxHTSgMEvONzspJEfqJil3BhqDdUG58oOSP+XoLqWPijgjwyGdHTg7v
	3zwcgZlvjyytGLYyVO+dazRAFuEsBD+wSnasjBvhKjaU2uXHNwiw8+vn1YHCjpKAn0lsud+uz8vjw
	gKDGZNIdb0HdNkOprfCqISTwqzyLZUreTs8ER969fhtpX0xrexjZUnWGZ+CuqrdEX9Y/1twUtcWr4
	D2XMRje2vgnsy6HzWv9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyMs-00000004vZ9-2TtJ;
	Tue, 24 Jun 2025 07:46:58 +0000
Received: from mail.bizoster.pl ([141.94.21.238])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyCW-00000004tKN-1TxV
	for b43-dev@lists.infradead.org;
	Tue, 24 Jun 2025 07:36:18 +0000
Received: by mail.bizoster.pl (Postfix, from userid 1002)
	id 3CE9846F47; Tue, 24 Jun 2025 09:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bizoster.pl; s=mail;
	t=1750750571; bh=b4Y/uED+WyLuT2rTeGzzQXSKSDM/RGK4Ds0Afwjv4gw=;
	h=Date:From:To:Subject:From;
	b=j2cZhQrSngHHXvUdeMHBvTf3Oc3INZ381mGiN7D88nTB2ul3YVNDnMarJKe8kpAKo
	 M1upGF5+FMKjesnq530ZH2O/q1Y/sPMMRNgsuNqy0XZ15fzAssondC/PLF+sKKiJ09
	 n/q1ttCLyIilPmILNRS8hAsFMFpaHOe69ZntQ1+2zEJp4G+b0q9kDwsA8j0PKMfTQG
	 78i6uqEGIwK/s73/vjji4+fbibtJW6yN7J7xOGreiqO5D21ZqDBBy1yCB+ywDLIHmr
	 jAYXYZsdrzw3VrM1Y+BaXPIUL3pfbI1PHoh1AYHbIfgIpOCAitLtZxnkn0eCLAYGeC
	 MCkR55oxpSXKA==
Received: by mail.bizoster.pl for <b43-dev@lists.infradead.org>; Tue, 24 Jun 2025 07:35:34 GMT
Message-ID: <20250624084500-0.1.e5.42mps.0.1j2jq90wfq@bizoster.pl>
Date: Tue, 24 Jun 2025 07:35:34 GMT
From: =?UTF-8?Q?"Tomasz_Bia=C5=82ek"?= <tomasz.bialek@bizoster.pl>
To: <b43-dev@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.bizoster.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_003617_071352_21E85D62 
X-CRM114-Status: UNSURE (   1.18  )
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

RHppZcWEIGRvYnJ5LAoKUG96d29sacWCZW0gc29iaWUgbmEga29udGFrdCwgcG9uaWV3YcW8IGpl
c3RlbSB6YWludGVyZXNvd2FueSB3ZXJ5ZmlrYWNqxIUgbW/FvGxpd2/Fm2NpIG5hd2nEhXphbmlh
IHdzcMOzxYJwcmFjeS4KCldzcGllcmFteSBmaXJteSB3IHBvenlza2l3YW5pdSBub3d5Y2gga2xp
ZW50w7N3IGJpem5lc293eWNoLgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgY2VsdSBwcnpl
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8KCgpQb3pkcmF3aWFtClRvbWFz
eiBCaWHFgmVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
