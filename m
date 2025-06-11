Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E853DC677C4
	for <b43-dev@archiver.kernel.org>; Wed, 11 Jun 2025 08:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zZjneiBtTHphuPhK1hmkrM+meTfSLcyuyARPcU3JvZE=; b=G1NJ4fRNOFhJeL
	wB3rBrcwdGxwo7Hs1LdiPjZrd4H2PSAYEXv+ezGaGdyPZv49vzFM79r3sn1D9W/U6dfCgRhHrCkVq
	IOmXly6KgXDJEzJwBWEYBPw8F5WKAVFj9nfQzAy42ikEEncTrl87isunDr1EX+kDt5tq8sstANa52
	N7ddi0Xn4dKT9TIv8Y6DaLJwkqEnNGxJDCNOSrCF/UopsAqMfnB6IP5OwyJywktENdTIcx1b9LpWn
	/QCSe9c2wKGbjMFJW+G5kYAUNOJtU+A/SabRKkTX5mk5yItSOotNQiBvVOa0ckHER0kC56Vt5sBJ3
	uoAyixwcsvSzFZaPDFhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPGQC-00000009BkV-2911;
	Wed, 11 Jun 2025 08:02:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPG2t-000000097sW-0ziR
	for b43-dev@bombadil.infradead.org;
	Wed, 11 Jun 2025 07:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=AdLbcIxsmZbVLQJvO/zDYc3Y9p7RFt8eMYlzRMLZu+Y=; b=h3+SBmvTuvoZDbbeJ2pjQp3gZ7
	/UtsH9ii+mHn/Rk8lmwuZ/WhAt1ftYKmXzWPGGJeMWqKNVwx2VpPyVLs2DcvSvNmoMtqj8BfEIN5E
	akT2kPujU+0CBOdvZEGGoFrgFf6CXAXoBUrWa7S+mVPpVgFwQHcUgldjNNNkgQnQ1rIQeZJKjkWUO
	gd3uasYVwYvX86ZjHnwY7oEBPhZxDIAduYJr8DdwV02lmpGWzoPfGt39OxkVQ++/2Jj+A5F6NWAHm
	7f8fgmg9/RaFA+xdJbJsPNWMJZ9K5FrAvlNQ4Iz2R23Vw/n9RUVuUlVmNNA8tYARq7mQXwcYkRWaO
	Cl+0ZZow==;
Received: from mail.bizentro.pl ([92.222.170.29])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPG2o-00000002A7Q-2qtK
	for b43-dev@lists.infradead.org;
	Wed, 11 Jun 2025 07:38:50 +0000
Received: by mail.bizentro.pl (Postfix, from userid 1002)
	id 69B542482C; Wed, 11 Jun 2025 09:36:53 +0200 (CEST)
Received: by mail.bizentro.pl for <b43-dev@lists.infradead.org>; Wed, 11 Jun 2025 07:35:55 GMT
Message-ID: <20250611084500-0.1.gj.3pohi.0.jdfifnx5dm@ImagineSphere.pl>
Date: Wed, 11 Jun 2025 07:35:55 GMT
From: "Szymon Jankowski" <szymon.jankowski@bizentro.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.ImagineSphere.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_083846_768739_BED54DF6 
X-CRM114-Status: UNSURE (   1.31  )
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
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbSBzZXJkZWN6bmllClN6eW1vbiBKYW5rb3dza2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFp
bGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
