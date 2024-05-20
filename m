Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45744C04FFE
	for <b43-dev@archiver.kernel.org>; Mon, 20 May 2024 07:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ShiyLQKtp9pnQZxjrr+6iKlYDvb33Z58UWlL4UqPWU=; b=1IJys4hWgvY9Vi
	VD4NvWQRkIDDLXx/KDhYip55klznac25SqrNEVNifSagPDMGt4ALncgWj4r43fulkqQZzmBrx6Xwh
	6kNkrgh9sz1+JUMLysFRIEH11onP8AZhLCdWvVYIj3Lnm5vS2bQ8e9p65an57PdN1VJhkz50+c/PO
	8WGD8+j90rifqDSqJig8RQGDsVYS64NQwej6Og5Ru32JkLgeIJs7xq4BpVwZxwbKVJplUubNaHlQx
	kd5JB9v55i/D+HKPhUAM2NaJ3bcpwH+DyUgHsFBDru3JCyR287YBiLXe9MFjeci/v6kF82fg2MjRs
	2wzGnXRQwZviBc+oNorQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8xUU-0000000Dm4O-1Szp;
	Mon, 20 May 2024 07:31:26 +0000
Received: from techtrek.pl ([89.46.78.144] helo=mail.TechTrek.pl)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8xUN-0000000Dm3F-02L3
	for b43-dev@lists.infradead.org;
	Mon, 20 May 2024 07:31:21 +0000
Received: by mail.TechTrek.pl (Postfix, from userid 1002)
	id 562E48273A; Mon, 20 May 2024 09:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=TechTrek.pl; s=mail;
	t=1716190271; bh=FxyPhH2l2BxQItEGwiWL4QKUB0I2gcfDxdaj0IeciOg=;
	h=Date:From:To:Subject:From;
	b=cPY676NfuLlqSiugnsyAIuJb4v4hlYl8Zfx+mLVSYkf8BXfdXZOq7pA9oYRBbC9S/
	 kpfU+PWgaEj43SnMSZvhD+Z1SDCuB0h190ya+urgymEBamFv8PimEyQZS2c7Qfjher
	 hRw4VPD8yTT90d3wRza4VS5W22hmTtcRItRWWKFPlsiBZ4A5weTUUsg0RWR5kRznBc
	 YoYfuVqCO9zglQQpqqvaSnkMUeSUmbScIqWU32hezfbn3RTR78i8OzGLxwV0VThk7X
	 QiANLVSXXBlTuch2zv3FErnNfLiWOkfkECy5PU9wGgwepLbWa45e+301BiTfpWMEd+
	 5F8Seu9TES0eg==
Received: by mail.TechTrek.pl for <b43-dev@lists.infradead.org>; Mon, 20 May 2024 07:30:20 GMT
Message-ID: <20240520084500-0.1.c.17q9.0.41i49mrzq6@TechTrek.pl>
Date: Mon, 20 May 2024 07:30:20 GMT
From: "Szymon Jankowski" <szymon.jankowski@techtrek.pl>
To: <b43-dev@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.TechTrek.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_003119_891144_877F23AC 
X-CRM114-Status: UNSURE (   1.44  )
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
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8KCgpQb3pkcmF3aWFtClN6eW1v
biBKYW5rb3dza2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
