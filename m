Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2053EC61DA4
	for <b43-dev@archiver.kernel.org>; Wed, 15 Mar 2023 09:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SzyCZG1zo4U6201eVs4ZTMswTiJR4jdEMYM5rHcOJKg=; b=LZz8QVtkcr2kZ9
	IwuEku4sAEfCneMbQbI09zpnLjpHNjnQHdW0etRfuKjY5WoLR0vmXDhOzqE/hDPJXBhBfJPrWkFlE
	AAUEdccoBAY/aZ7fm4TGwDfRIH6NeA9zbo6uC6tSOVZ2qA8oj50xfzMG4bzWZUUxvKyvzwOcAtM+i
	c/Mcu6ptZv/K296FWkNph+lx6DdRFuIzio/Y/Ia2CPLABgK1SPiZIa1Bj+G+25SPzQj6b0JNDfi6Y
	IboPNhDWFwPruNEFSoeuSFH21kxmLGe+4tcFdl/gO5Qx68sI/DtHeqDgyknRcbxyP5/hm2YKf9EeQ
	tNYjVgbnlj5CWmrlhZjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcN3l-00CsBl-2o;
	Wed, 15 Mar 2023 09:04:37 +0000
Received: from mail.seiont.pl ([94.177.238.30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcN3c-00Cs2R-2G
	for b43-dev@lists.infradead.org;
	Wed, 15 Mar 2023 09:04:31 +0000
Received: by mail.seiont.pl (Postfix, from userid 1001)
	id B9DCF827A0; Wed, 15 Mar 2023 09:02:05 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=seiont.pl; s=mail;
	t=1678870967; bh=0RBr9VZWoVDHl4huLrLyFadxMoVuqc/Wg5mabCfPKaM=;
	h=Date:From:To:Subject:From;
	b=FopT18xHq1k3w0VMopS2HOAphI7u0qGZdtYXeXT3WcAjRWTvNyNZF/kwdZZ8qFj8i
	 s0CZskO37Sa8WYxC/9Mq4qgwGYl3M3or1JFWdNWsAD4+KRpnokW8aHwwbroZU0k/Nt
	 S7kGggZc1bW0dgSsCFC56rXsVY73YMUE+LkWCYx+rsECZs8XZ5SMICYLVkceOOYKOL
	 buVzDDfl51X3LoxdXnvkr9wK4ob4dT9aDEOLfOzCMhIOKVi9ft/AnZ6miEYXHodWRi
	 qqPHUQVk4fm0pKxXr+fVywzEJDOAbCp4u1sWCJRc8hNi8ARpj17Qtu58bNXw/G7PqY
	 K226kiGEg+YmQ==
Received: by mail.seiont.pl for <b43-dev@lists.infradead.org>; Wed, 15 Mar 2023 09:00:37 GMT
Message-ID: <20230315074501-0.1.4b.1oy8m.0.l8nu1goir1@seiont.pl>
Date: Wed, 15 Mar 2023 09:00:37 GMT
From: "Jerzy Maciejewski" <jerzy.maciejewski@seiont.pl>
To: <b43-dev@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.seiont.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_020428_943752_902F7D37 
X-CRM114-Status: UNSURE (   2.28  )
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
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCgoKUG96ZHJhd2lhbSBzZXJk
ZWN6bmllCkplcnp5IE1hY2llamV3c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMt
ZGV2Cg==
