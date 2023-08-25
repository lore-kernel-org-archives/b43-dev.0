Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D03A9C71133
	for <b43-dev@archiver.kernel.org>; Fri, 25 Aug 2023 07:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9xmg7i9T+zZtz5/drzi1IvPeNUBCyzuK3SPoEfcgs04=; b=VqH7d+eobUgBIX
	w6srfYSllbkOrbbJUUzGX/dymY2rTHm6IdVEZzgkMrdwLfRlCDC2Jsv9gZIreoOsgIJIPdzUgXoem
	eCBCYyll31qmsxeswi3E9GSYwOBARu53AVeqAzrhSKz+ZTiFQdUbkKYzBMPp4kmr1XMoS9BMt8gXc
	U+iP2VVK31XJA2UfDJaPa3yLPmsUDboVUZTOPyO5gVQKzKUxfyluuYgs85zObl2XqDqZyR/D4LGpT
	w5M40nRliPpm9gdoA7R+Y+DleVTlP9iT95b4yQnaeqEMrxdZNNMXQvCkZcTxngWzSSNfXrabBVIKz
	u/zHkbHiWvpaY16pdxjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZRIP-004Xjs-1N;
	Fri, 25 Aug 2023 07:31:53 +0000
Received: from mail.citycodes.pl ([158.255.215.195])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZRIH-004Xj9-2S
	for b43-dev@lists.infradead.org;
	Fri, 25 Aug 2023 07:31:47 +0000
Received: by mail.citycodes.pl (Postfix, from userid 1001)
	id CE6B81E2A7; Fri, 25 Aug 2023 09:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=citycodes.pl; s=mail;
	t=1692948699; bh=mMhfBvhM53FtUQl1P3lyeSY5aDBQYiR8qQBy6YFQHi0=;
	h=Date:From:To:Subject:From;
	b=h0jpnmZkKiBCQi3Lm412+deAF+MxDG38aOP1v6abpXKBGWiRJrWunltpSGYppDmz3
	 QGXqF+8n0x9WTUYOO1Z6E4NDmr+VJhH12ItZ/L/80nbnTCAXv3XHVqT6q4OGYJV0Pf
	 tn7n2Gtlf58wpG0grIeePffFkiblJy0oNvzLg/W1lO9sG1xRUu0LYQHjMDe7PB5JrI
	 AkdwYEJZZdB8V05WtyaIVN1UZKZafCX7R/LI7w+0se2Gq2/ivw0/rhL1+JDNTbHAH2
	 GuRgWIJ0gPkLYrh09nl4alW9e/UlxtiU550vrlxJ6HswuhXsagMuIjBzR3OXOzNu7i
	 p+E06pGg7VTeg==
Received: by mail.citycodes.pl for <b43-dev@lists.infradead.org>; Fri, 25 Aug 2023 07:31:18 GMT
Message-ID: <20230825084500-0.1.72.efa9.0.o3x8x86hqb@citycodes.pl>
Date: Fri, 25 Aug 2023 07:31:18 GMT
From: "Kamil Lasek" <kamil.lasek@citycodes.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Rozszerzenie_Programu_M=C3=B3j_Pr=C4=85d_5.0?=
X-Mailer: mail.citycodes.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_003146_110883_5333FC95 
X-CRM114-Status: UNSURE (   1.52  )
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

U3phbm93bmkgUGHFhHN0d28hCgpXIHJhbWFjaCBub3dlaiBlZHljamkgcHJvZ3JhbXUgTcOzaiBQ
csSFZCBtb2fEhSBvdHJ6eW1hxIcgUGHFhHN0d28gZG9maW5hbnNvd2FuaWUgbmEgemFrdXAgaSBt
b250YcW8IGZvdG93b2x0YWlraSBpL2x1YiBtYWdhenludSBlbmVyZ2lpLiBNYWtzeW1hbG5hIGt3
b3RhIGRvZmluYW5zb3dhbmlhIHd5bm9zaSA1OCB0eXMuIHrFgi4gCgpKYWtvIGZpcm1hIHd5c3Bl
Y2phbGl6b3dhbmEgdyB0eW0gemFrcmVzaWUgemFqbWllbXkgc2nEmSBQYcWEc3R3YSB3bmlvc2tp
ZW0gbyBkb2ZpbmFuc293YW5pZSBvcmF6IGluc3RhbGFjasSFIGkgc2Vyd2lzZW0gZG9wYXNvd2Fu
eWNoIGRvIFBhxYRzdHdhIGJ1ZHlua3UgcGFuZWxpIHPFgm9uZWN6bnljaC4KCkLEmWTEmSB3ZHpp
xJljem55IHphIGluZm9ybWFjasSZIGN6eSBzxIUgUGHFhHN0d28gemFpbnRlcmVzb3dhbmkuCgoK
UG96ZHJhd2lhbSwKS2FtaWwgTGFzZWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1k
ZXYK
