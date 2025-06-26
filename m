Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1CFEC77B7F
	for <b43-dev@archiver.kernel.org>; Thu, 26 Jun 2025 08:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yNHA9qX6z90QcWXPWJwVbEpM0LI5NG8AnDPXBjKiqV8=; b=vSrGHEQgzTF34T
	nQEbatXaQ4ic36EAqgSglrGCisj/aSuQ0O6x7zpzC9UwdH8TUrX94MJ9xEQO0jyPO6C9JZuMx5OhP
	DLNUWLRshIBtz+oQr2KpD3z6koIkBn7TROkR4GSO4T8PXU0ZKBybmPTOcEI9zyF1qliM9SjGb5jnO
	MuX2eSTqC4/RkBQnTl7DGfTjntb5PqWOqyfxmzJIiJZH/yJmfVb57eS4KK4+YyyloCBpgyANbbmJs
	rkwHpJW4PYByJRIvL5qvPCh5hkIBH3JGl+CmNkS6FivrBND/tmGPqwwuWHNudsJWTBB5a6y45ooPO
	WZdNKIoKYXFepDLyRIHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhjM-0000000Av2T-3BdL;
	Thu, 26 Jun 2025 08:13:12 +0000
Received: from mail.bizterior.pl ([217.61.0.138])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhcs-0000000AtFW-3vLw
	for b43-dev@lists.infradead.org;
	Thu, 26 Jun 2025 08:06:32 +0000
Received: by mail.bizterior.pl (Postfix, from userid 1002)
	id 52D4C8622E; Thu, 26 Jun 2025 10:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bizterior.pl; s=mail;
	t=1750925173; bh=+a+AB8a6e7jdI6en2Mq+SHRmQ0yxHVEkLCkRA7tB3xY=;
	h=Date:From:To:Subject:From;
	b=nnjN3wtHwbZmu3PbSRdANPde75ZQHishgUOb6p0oHnK+PCDNtzpF1CNRklPy+Y+WU
	 kJ8MWKOB6yyQCvcjnM/RZB1NlMLxoIPLIM+EW4u/g0pgup/otR1pjDQIp5vQ2A1BI5
	 fUvbV9tdNMbQMy3rKqXDfb7YShhyDT5ejvSmrKmfDktElHq7SBNQj6cERwFV7e1/hT
	 12TO5qdlEuD5TjFFPjMOCVJJGRUeXwPfNGBPz+Vnz/zrJ5oCr3fPbzYGz/z95+iCic
	 hwXfZIVa/NXY6TDuy8KmK1ZLdXUWEEvVP/fM5BcziK0XJsuCyPmNvT92uRuT1EYT51
	 tPyMsTCBzCDqA==
Received: by mail.bizterior.pl for <b43-dev@lists.infradead.org>; Thu, 26 Jun 2025 08:05:27 GMT
Message-ID: <20250626084500-0.1.3u.w72u.0.bncyf1yw04@bizterior.pl>
Date: Thu, 26 Jun 2025 08:05:27 GMT
From: "Tomasz Gajdek" <tomasz.gajdek@bizterior.pl>
To: <b43-dev@lists.infradead.org>
Subject: Zwolnienie z CIT/PIT
X-Mailer: mail.bizterior.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_010631_649066_AEBF2A54 
X-CRM114-Status: UNSURE (   0.68  )
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

RHJvZHp5IFByemVkc2nEmWJpb3JjeSwKCnBvamF3acWCYSBzacSZIHd5asSFdGtvd2Egb2themph
IG5hIHpuYWN6xIVjZSB3c3BhcmNpZSByb3p3b2p1IFBhxYRzdHdhIGZpcm15IGR6acSZa2kgbW/F
vGxpd2/Fm2NpIHV6eXNrYW5pYSBkb2ZpbmFuc293YW5pYSBtLmluLiB3IHJhbWFjaCBQb2xza2ll
aiBTdHJlZnkgSW53ZXN0eWNqaSAoUFNJKS4KCk1vd2EgbyBwcm9ncmFtaWUsIGt0w7NyeSBtb8W8
ZSBwb2tyecSHIGHFvCA3MCUga29zenTDs3cgaW53ZXN0eWNqaS4gRG9maW5hbnNvd2FuaWUgb2Jl
am11amUgc3plcm9raSB6YWtyZXMgcHJvamVrdMOzdyDigJMgb2QgemFrdXB1IG5vd29jemVzbnlj
aCBtYXN6eW4gaSBsaW5paSBwcm9kdWtjeWpueWNoLCBidWRvd3kgaGFsLCBwcnpleiBpbnN0YWxh
Y2plIE9aRSwgcG8gc3BlY2phbGlzdHljem5lIG9wcm9ncmFtb3dhbmllLgoKR3dhcmFudHVqZW15
IGLFgnlza2F3aWN6bsSFIGRlY3l6asSZIG8gcHJ6eXpuYW5pdSDFm3JvZGvDs3cg4oCTIGp1xbwg
dyBjacSFZ3UgMzAgZG5pLCBhIG5hc3plIGRvxZt3aWFkY3plbmllIHBvendhbGEgbmFtIG9zacSF
Z2HEhyBuYXdldCAxMDAlIHNrdXRlY3pub8WbY2kgdyBwb3p5c2tpd2FuaXUgd3NwYXJjaWEuIE5h
c2kgZWtzcGVyY2kgcG9tb2fEhSBQYcWEc3R3dSBwcnp5Z290b3dhxIcgb3B0eW1hbG55IHBsYW4g
aW53ZXN0eWN5am55LCBtYWtzeW1hbGl6dWrEhWN5IGtvcnp5xZtjaSB6IHByb2dyYW11LgoKQmlv
csSFYyBwb2QgdXdhZ8SZIHJvc27EhWNlIHphaW50ZXJlc293YW5pZSwgemFjaMSZY2FteSBkbyBq
YWsgbmFqc3p5YnN6ZWdvIHJvenBvY3rEmWNpYSByb3ptw7N3LiBDenkgbW9nxJkgcHJ6ZWRzdGF3
acSHIHN6Y3plZ8OzxYJ5IHByb2dyYW11IGkgbW/FvGxpd2/Fm2NpIHdzcGFyY2lhIGRsYSBQYcWE
c3R3YSBmaXJteT8KCgpQb3pkcmF3aWFtClRvbWFzeiBHYWpkZWsKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1k
ZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2I0My1kZXYK
