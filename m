Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50E76C54EDA
	for <b43-dev@archiver.kernel.org>; Fri, 23 May 2025 08:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mmbYU2TIAVrqmwZWfCKkos0uJgTO6nvC6THuI6NOaGk=; b=GS00nSf/TO9Mis
	NR/CdHJXzqyBkaogx2JwaL5jD69lP5iewKyjM5C9eZwW74KJnaVjy2p/KpX8VeVrDItJvIEDqGWhD
	e7Q4P0h1RXB6xtrmOs8VHY3hFqfVu8CVWVroHsMbJ2kPP9OjQShelbwZF0lApFNybHGF0Ws551aJ+
	09VvP6iHj6z9BNB4o8M/f3+Jttfr+nRtExmW5jmoXclubABHfPBw+4/NEvvCbKavlgOQFvUtppWzm
	/2I1lq5cejnqxjRZzfkvHr57TU9dXSUEjtgo4ryWooS9aYi4Z4oUm1KbRA7PF/CJzubLBdwl+ZE+c
	T3r2k8HwgEdBjPtbANlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uINay-00000003HvJ-0ly5;
	Fri, 23 May 2025 08:17:36 +0000
Received: from mail.growora.pl ([51.254.119.49])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uINQQ-00000003GEV-3e6E
	for b43-dev@lists.infradead.org;
	Fri, 23 May 2025 08:06:47 +0000
Received: by mail.growora.pl (Postfix, from userid 1002)
	id 2D71E231F4; Fri, 23 May 2025 10:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=growora.pl; s=mail;
	t=1747987597; bh=sWkcsRLxeXwx/F8vGbB2Q5GXZNUFiM8Q7jbEo0MrvNs=;
	h=Date:From:To:Subject:From;
	b=qbS9Wthz1vKE2eDCjWHNgdfYYCVIOKBYSn2JlpOuOgmFYmr9nV9S4uhqk8iG62kGE
	 HEG0sGHNg6fN/2cFwm1WvjI7QIgrKb9XboLxXvqL689+rW5TyHGGBXEK7p/MVbXF4O
	 6T1aE+Bdpz1MBEKA0RWX2us84zA1gI/MT0KKUJlTljs5x9yefYOnay6SWE88kVT79m
	 H72AFyCG78r/aoXYlrBweTh0EcNRYEj0LSI/U67iq3FZVwjzN5pLAzguaRcXdn4/q4
	 ek4BQCM40qtQa7fKiWumRkcaO6n4lgHhXNAr57Cae4jBOoO3jJDBt4EEj9l4Q4UeZv
	 reWWWLfWl5ciA==
Received: by mail.growora.pl for <b43-dev@lists.infradead.org>; Fri, 23 May 2025 08:06:00 GMT
Message-ID: <20250523084500-0.1.jm.1wzw6.0.t6iavjidm6@growora.pl>
Date: Fri, 23 May 2025 08:06:00 GMT
From: "Anna Trzebiniak" <anna.trzebiniak@growora.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Wszcz=C4=99cie_post=C4=99powania_restrukturyzacyjnego_?=
X-Mailer: mail.growora.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_010643_596606_890A17E0 
X-CRM114-Status: UNSURE (   1.03  )
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

RHppZcWEIGRvYnJ5LAoKa29udGFrdHVqxJkgc2nEmSB3IHNwcmF3aWUgbW/FvGxpd2/Fm2NpIG9i
bmnFvGVuaWEgUGHFhHN0d2Egem9ib3dpxIV6YcWEIGZpbmFuc293eWNoLgoKSmFrbyBrYW5jZWxh
cmlhIHByYXduYSBuYSBjbyBkemllxYQgc2t1dGVjem5pZSB6YWptdWplbXkgc2nEmSB6YXdpZXN6
YW5pZW0gc3DFgmF0IGtyZWR5dMOzdyBpIHBvxbx5Y3playwgdW1vcnplbmllbSBvZHNldGVrIGx1
YiBjesSZxZtjaSB6b2Jvd2nEhXphxYQgb3JheiBvY2hyb27EhSBwcnplZCBlZ3pla3VjasSFIG1h
asSFdGt1IGZpcm0uCgpQb2RqxJljaWUgd3Nww7PFgnByYWN5IHogbmFzenltaSBzcGVjamFsaXN0
YW1pLCBwb21vxbxlIFBhxYRzdHd1IG9zacSFZ27EhcSHIHd5xbxzesSFIHd5ZGFqbm/Fm8SHIG9y
YXogem5hY3puZSBvc3pjesSZZG5vxZtjaSBjemFzdSBpIGtvc3p0w7N3LgoKQ2jEmXRuaWUgcHJ6
ZWFuYWxpenVqZW15IFBhxYRzdHdhIHN5dHVhY2rEmSBpIHByemVkc3Rhd2lteSBwbGFuIGR6aWHF
gmFuaWEuIFPEhSBQYcWEc3R3byB6YWludGVyZXNvd2FuaT8KCgpQb3pkcmF3aWFtCkFubmEgVHJ6
ZWJpbmlhawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
