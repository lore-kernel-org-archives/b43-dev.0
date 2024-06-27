Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC65EC30658
	for <b43-dev@archiver.kernel.org>; Thu, 27 Jun 2024 08:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ARjrC9JhPlPIHvRvD9AM/PN3o/U5xPfNwfXBj0nQnUU=; b=T3slm42tqJQ1YL
	C6kKFa0bSQQkWWuCJzLnz6VqrEQjR2I+5w8SfpAPef1/FfjBEOYwfluDuscqvzoBTevecb1htiGWi
	3/jnDNvsP8y/ot0/XxFD1tmp2RlYYajqbZRPczPXNl2rKvoUgVL6UsDxwD4hOy2BvvKYNGRybDQ3x
	4VZLiSNGb+e978HTBIOBeyJtw4TRRr6t6xvTO9qCYlA8baS2XKNZf10NSuwiv004IndwaZkwflHRy
	xiV1leUs5/DyDqOnXrIwtm5soBNTZa6Yqv4L7BeDbermkzs4Wd4pNXTG+s3miE15cjD65L5e3mwWh
	RkEppCmi0IBCeeEr/U4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMk4B-00000009fFf-3gZe;
	Thu, 27 Jun 2024 08:01:15 +0000
Received: from mail.vendiqo.pl ([141.94.250.71])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMk47-00000009fE3-0mr5
	for b43-dev@lists.infradead.org;
	Thu, 27 Jun 2024 08:01:14 +0000
Received: by mail.vendiqo.pl (Postfix, from userid 1002)
	id 69D65A24EB; Thu, 27 Jun 2024 10:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=vendiqo.pl; s=mail;
	t=1719475265; bh=VmEdqAzLVS0BwuktYQLsY3V1Zi4+XeGotNmh+Ej2Dns=;
	h=Date:From:To:Subject:From;
	b=KDUhtT22VYLSQKILXikuaBbaFw5TYkC2kszLWjz/cjKwgHXekWg7hB2yxd6bxAj/s
	 UUlMa1IYlbFVORdRm3JJu+uQOypzupOBqQQIdg1Fa8sPJqyMYVStUeORSJGWSdrE1+
	 9N3Y0usvjX5O9Faca2XU80qEl7zDQeRTx6UW8fCCIINbHLzAwcvoHd0QyLhx4gN3lS
	 fU1tqoAPPKM/Ltahy2/6H3oVD42t+WvGtM6vWp3/0HQFjDXs/Tlw0PkrWzcc4rJgHe
	 PJgXIwj2ShxnL7Fv57IyfyFXxwPIj0gHLETqwAeP4+0/N5gUQ3nTfzXn9HIFTxHzBT
	 Ffoq8ZurnTIwQ==
Received: by mail.vendiqo.pl for <b43-dev@lists.infradead.org>; Thu, 27 Jun 2024 08:01:01 GMT
Message-ID: <20240627084500-0.1.i6.4dx25.0.33nd8fbgu6@vendiqo.pl>
Date: Thu, 27 Jun 2024 08:01:01 GMT
From: "Szymon Lipka" <szymon.lipka@vendiqo.pl>
To: <b43-dev@lists.infradead.org>
Subject: Ruch z pierwszej pozycji w Google 
X-Mailer: mail.vendiqo.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_010111_951553_ACB696FD 
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

U3phbm93bmkgUGHFhHN0d28sCgpqZXN0ZcWbbXkgZG/Fm3dpYWRjem9uxIUgYWdlbmNqxIUgZGln
aXRhbG93xIUgaSBwb21hZ2FteSB3IG9zacSFZ2FuaXUgd3lzb2tpY2ggcG96eWNqaSB3IHd5c3p1
a2l3YXJjZSBHb29nbGUgb3JheiBraWVyb3dhbml1IHJ1Y2h1IG5hIHN0cm9ueSB3d3cuCgpEeXNw
b251amVteSBwcmF3ZG9wb2RvYm5pZSBuYWpib2dhdHN6eW0gemFwbGVjemVtIHRlY2hub2xvZ2lj
em55bSB3IFBvbHNjZSwga3TDs3JlIHBvbW/FvGUgUGHFhHN0d3Ugb3NpxIVnYcSHIG5pZXNwb3R5
a2FuZSBkb3TEhWQgcmV6dWx0YXR5IHdpZG9jem5vxZtjaSBmaXJteSBvbmxpbmUuIMWacmVkbmlv
IHBvIHDDs8WCIHJva3UgZHppYcWCYW5pYSB6YXV3YcW8YW15IDUwJSB3enJvc3QgcnVjaHUgb3Jn
YW5pY3puZWdvIG5hIHN0cm9uYWNoIHd3dy4KClN3b2plIHVtaWVqxJl0bm/Fm2NpIHd5cHJhY293
YWxpxZtteSwgYW5hbGl6dWrEhWMgZGFuZSBzZXRlayBrYW1wYW5paSBkbGEgZ2xvYmFsbnljaCBt
YXJlayBpIGR6acSZa2kgdGVtdSBwbGFudWplbXkgc3RyYXRlZ2nEmSBTRU8gbmEgbmFqd3nFvHN6
eW0gcG96aW9taWUuIEJ1ZHVqZW15IHNpbG7EhSBzaWXEhyBsaW5rw7N3LCBkb3N0YXJjemFqxIVj
IHBvbmFkIDEwMDAgd2FydG/Fm2Npb3d5Y2ggbGlua8OzdyB6d3JvdG55Y2gga2HFvGRlZ28gbWll
c2nEhWNhLgoKTmFzemUgZG/Fm3dpYWRjemVuaWUgb3BpZXJhIHNpxJkgdGFrxbxlIG5hIHN1a2Nl
c2llIHBvbmFkIDIwMCBrYW1wYW5paSBTRU0sIGNvIMWbd2lhZGN6eSBvIG5hc3plaiB6ZG9sbm/F
m2NpIGRvc3Rvc293eXdhbmlhIHN0cmF0ZWdpaSBkbyB1bmlrYWxueWNoIHBvdHJ6ZWIuCgpDenkg
Y2hjxIUgUGHFhHN0d28gd3ptb2NuacSHIHBvenljam9ub3dhbmllIGZpcm1vd2VqIHN0cm9ueSB3
d3c/CgoKUG96ZHJhd2lhbSBzZXJkZWN6bmllLApTenltb24gTGlwa2EKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0
My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2I0My1kZXYK
