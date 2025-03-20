Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26F8DC28B30
	for <b43-dev@archiver.kernel.org>; Thu, 20 Mar 2025 08:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gJbl+hZwj6XyJnIISd6odV4Otgf+EiKLZ6/vlxJohWU=; b=C5kyTomXvsURhA
	X84WN6TO98ZZZRmrh2mEdwWMH/3gEDuDtFkSdLmMrbuylsdG9XTLaNrUCV2paTisY/LI1gXMLkEkv
	PDbMVFfB88zEQPWnoRBTvt0aDd4mUcUvFUPStZ/gbaedDoGneBEZDulo0dm1qfGBbR+VP2cJCe5xZ
	NtmOQexfHc/BJfAQ8JlzFNWh8gkEBdELPfsKt7+tmwtl77dOKdesqNJJ01IxnTsWyCbMVQ0oo0Zap
	Oa7ADS9EWs6U+1PLttcZhLUX3OuC5efwAQ7DmIhYAkd093oX4skg8ZpV5MyB1nlx9yMZGeIJkP1XG
	AbBXM2JTl4RI9hiG90iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBRP-0000000BZCB-3hVN;
	Thu, 20 Mar 2025 08:39:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBPG-0000000BYob-2w1e
	for b43-dev@bombadil.infradead.org;
	Thu, 20 Mar 2025 08:37:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=kRFyF5IqcbkY6iIzjZrZ2MrYZFacmXII8t02DtySBB4=; b=C+j4KN15clDwSni6SYMbI3zK50
	LnqlViwlRUXPvJJOwiQf+lFBpYnzGym3BNWANxdNyfei9ZwkLGpYItqVk3rXeX0eON6H8mdg9HxiL
	jKehfdcjBOMF3voLo5gRj6LFDZZiQJDxfVxXBOvxBbjQFlgwa9NY0szUlmL4GJQSVkQzAAc/VCpom
	nVk/BwpXn5UHJqwPs/3BbzS4PJq8pvVyBm7PwliJIQ+IvKNiMjL/NfFY649KyA1MX4iXaWvH6sCUx
	PoGwjuj5Cqhikm5g/FyvIkr4eGa8somZ5isC+KKRaIwImcO179BefRZBAKXRo2gZhs+rvwHCtFOtn
	txvKWo2Q==;
Received: from mail.grablo.pl ([51.77.231.136])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBPD-000000046E6-0ROp
	for b43-dev@lists.infradead.org;
	Thu, 20 Mar 2025 08:37:37 +0000
Authentication-Results: grablo.pl; arc=none smtp.remote-ip=127.0.0.1
ARC-Seal: i=1; d=grablo.pl; s=default; a=rsa-sha256; cv=none; t=1742459842;
	b=g1gIwgTK/JMOD/AdwVFcGhFyCdTrUG5+0GH+pSjyQI9aoOO4S8JYrY7n5wGKMLR9+/2W
	 XuaJXwwJb3QafZgoN/PYv/WDLpp+7L7l/zXVORxzlBY0gh5b8/Itq49QPDp1h7Plk8EAa
	 4DB5v+PjhKMw7mhG7R0byfBUpGx/1m39wmMSF+ub//7iEKzeHDakdtBbqUmEPohl6679g
	 fg4boPANR8uAmL4ku5XUWqp6Vg8pErQGf+iJmNpZpm5ndj+JikR/P/TFJSL1xPIuRGETC
	 0zh4UyE1zCCzxSAlRps0rrGdqmpjI3PMcRc+DX+qvic2G4C5Q2oWp+Aan/d+lgjRXGg==
ARC-Message-Signature: i=1; d=grablo.pl; s=default; a=rsa-sha256;
	c=relaxed/simple; t=1742459842;
	h=Message-ID:Date:From:Subject:From;
	bh=kRFyF5IqcbkY6iIzjZrZ2MrYZFacmXII8t02DtySBB4=;
	b=OZL5LenWSSvxGtc6IvfhqZxVb03zPRzLrXUp/8CLjsesDMf3+Z7kmnJpjDRLj2hmCwUa
	 v/eqvh/9zUO/fxVfVPcg5/rjMgRDanYStekuMxMv6G4LkwWe6Hc7vhfK4JnLygRAiGCRc
	 o/52CFK91yRxVlrddcq1i04c0M1LTcZmdX9iErEeJtFRt272wJyM+69cnqhHbQUR1W3Mg
	 eYeqJqSY4YgQTFfYDfoDSYWqOm0TqTuPDJ5ITKfmE1UUkDZhRZcFetwop2siQ9hDn71WW
	 mt2u/sO3CA1zBybrl7/VTlD3o6s86eGdWUoLSZ/icI+tcEqM1bn97kKQzqzcPXGFAbA==
ARC-Authentication-Results: i=1; grablo.pl; arc=none smtp.remote-ip=127.0.0.1
Received: by mail.grablo.pl (Postfix, from userid 1002)
	id 9A9D423F33; Thu, 20 Mar 2025 08:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=grablo.pl; s=mail;
	t=1742459842; bh=kRFyF5IqcbkY6iIzjZrZ2MrYZFacmXII8t02DtySBB4=;
	h=Date:From:To:Subject:From;
	b=tEuOa5YNbjth5rh63MHw+iwMNLiTIDIZgRXCQDX3KXLLI5BwFTfdJEruaPbCxKQIG
	 2BkpBdmjQ6pkUNPq8gljZowyal/GKALhv5vzdJPNsYoNstuBeF1i6Rqrujwdr2FH6c
	 Err7IHLIhVtreUEVk4mO8K4XTJ48T0Yz+sud3Z5iP1bD90C0LP6+FMN7By8WiZpwHH
	 zZcsi7DH0hfAUsaUWrO0NFiCjxwpQFJn7sUPU3zE2LGruW+B1z4X4va1xIbxmCehsP
	 85Wn4twqHyEFQ2hpdX6mkESPTH+ROnGmXJTIV6/pek4TdiFSLz65C/qg4ZjjYVYG0b
	 8D5YTTqFMWmbA==
Received: by mail.grablo.pl for <b43-dev@lists.infradead.org>; Thu, 20 Mar 2025 08:35:18 GMT
Message-ID: <20250320074500-0.1.1d.ee0n.0.y95oqkvjkd@grablo.pl>
Date: Thu, 20 Mar 2025 08:35:18 GMT
From: "Tomasz Biegun" <tomasz.biegun@grablo.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Wsp=C3=B3=C5=82praca?=
X-Mailer: mail.grablo.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_083735_594425_A5DE29E8 
X-CRM114-Status: UNSURE (   1.92  )
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

RHppZcWEIGRvYnJ5LCAKCkN6eSBpbnRlcmVzdWplIFBhxYRzdHdhIHBvenlza2FuaWUgbm93eWNo
IGtsaWVudMOzdz8KClpham11amVteSBzacSZIHByb2Zlc2pvbmFsbmllIHdzcGFyY2llbSBmaXJt
IHcgdHltIHpha3Jlc2llLiAKCk5hc2kgcGFydG5lcnp5IHp5c2t1asSFIHN0YcWCeSBuYXDFgnl3
IG5vd3ljaCB6bGVjZcWEIG9yYXogemFtw7N3aWXFhCwgYSB0eW0gc2FteW0gendpxJlrc3phasSF
IHN3b2plIHd5bmlraSBzcHJ6ZWRhxbx5LgoKQ3p5IG1vxbxlbXkgcHJ6ZWRzdGF3acSHIHN6Y3pl
Z8OzxYJ5IGRvdHljesSFY2UgemFzYWQgaSBtb8W8bGl3b8WbY2kgd3Nww7PFgnByYWN5PwoKClBv
emRyYXdpYW0KVG9tYXN6IEJpZWd1bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRl
dgo=
