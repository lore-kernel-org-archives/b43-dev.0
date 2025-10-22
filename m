Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6184DCCD195
	for <b43-dev@archiver.kernel.org>; Wed, 22 Oct 2025 07:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9yun16+909I2SpJAJmQEuCP/PotcCW35XoC/LznMaHU=; b=HBLrVzuxapx2Nt
	KBe7CnMPxtXf2PnDCb8qluByY+YMcB/WlLcRJ0SVPB74RuUb0VSbFRPUzM3hXjzBRRFye1YMTaF36
	GfRnp5JV2g1uAEA0j5I52oj2qrAl80kFf5vimDMAZyLVb8SjH8B2k1QyS2lIvnc6uZrVFZSTfkxe5
	IBQXgpvS2ybNDfhxy2ivjVZpby+hG0JdlvXqsCpMfXUoqvy31xwETCewVkep5r9xadeKrFZQRCNh2
	JZBSU0vd5YiDVcy5aRUFm7jxfVqjfl069G7uTqcPGvdhN45soGtAf+/CiJaF+ChPQ5wq9YlpvzbsV
	HIzYeKPEvZKts8+uni9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBTel-00000001xd0-3qwq;
	Wed, 22 Oct 2025 07:53:15 +0000
Received: from mail.dealiq.pl ([51.178.24.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBTej-00000001xc2-2jXF
	for b43-dev@lists.infradead.org;
	Wed, 22 Oct 2025 07:53:15 +0000
Received: by mail.dealiq.pl (Postfix, from userid 1002)
	id D87232A90E; Wed, 22 Oct 2025 09:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dealiq.pl; s=mail;
	t=1761119490; bh=Z+4grIbAkZYYjwTXdp4WpEHUwrNfDmjCfVVao4jIQdw=;
	h=Date:From:To:Subject:From;
	b=PjWIJlrySoZaBucR0QYdh7wijk55Gwzg8nTeXDK5vkXnjW8piFJJamN1sg4TVnQgZ
	 o/S+VU6i7ruDX50UXIl3YmxI/PLWTAqQkTrzWUcZUqawfPlTPKJF1iAoFGzb49E3f+
	 fbWbL3ucphzokHJh5+IXzZPv4wB49XR+LcBmUbmcmF0bHSyQs8mEzppNHREV0R8ubm
	 3TyVckEmLj9ITcwsRP+LnDQxzEVNhm+rpP6vLuRVMSNymGGNiPHy7ASKyMivZYV/Y/
	 yQ6IJ31c+/N6L1MetxsLk3X/UPAmlkDWRqSseXeTEyHacB3jVqDF+mfX66gl2Se/km
	 2A7puNoy54IZw==
Received: by mail.dealiq.pl for <b43-dev@lists.infradead.org>; Wed, 22 Oct 2025 07:50:15 GMT
Message-ID: <20251022084500-0.1.kk.1goiu.0.l1d4jbib0d@dealiq.pl>
Date: Wed, 22 Oct 2025 07:50:15 GMT
From: "Robert Gonciarek" <robert.gonciarek@dealiq.pl>
To: <b43-dev@lists.infradead.org>
Subject: Dofinansowanie fotowoltaiki 
X-Mailer: mail.dealiq.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_005314_027241_3E3EC9E2 
X-CRM114-Status: UNSURE (   0.98  )
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

RHppZcWEIGRvYnJ5LAoKdyB6d2nEhXprdSB6IG5pZXVzdGFubmllIHJvc27EhWN5bWkgY2VuYW1p
IHByb2R1a3TDs3cgaSB1c8WCdWcgLSB3aWVsZSBmaXJteSBzdGF3aWEgbmEgcm96d2nEhXphbmlh
LCBrdMOzcmUgcG9tb2fEhSB6bW5pZWpzennEhyB3eWRhdGtpIHp3acSFemFuZSB6IHByb3dhZHpl
bmllbSBkemlhxYJhbG5vxZtjaSwgYSBqZWRueW0geiBuaWNoIGplc3Qgd3liw7NyIGluc3RhbGFj
amkgZm90b3dvbHRhaWN6bnljaC4gCgpXc3p5c3RraW0gb2RiaW9yY29tIHN6dWthasSFY3ltIG1v
xbxsaXdvxZtjaSBvYm5pxbxlbmlhIGtvc3p0w7N3IGVuZXJnaWkgZWxla3RyeWN6bmVqLCB3eWNo
b2R6aW15IG5hcHJ6ZWNpdyDFm3dpYWRjesSFYyBrb21wbGVrc293xIUgb2JzxYJ1Z8SZIGlud2Vz
dHljamkgdyBmb3Rvd29sdGFpa8SZLiAKCkpha28gamVkeW5hIG5hIHJ5bmt1IGZpcm1hIHphcGV3
bmlhbXkgMTIgbGF0IGd3YXJhbmNqaSwgYXVkeXQgcG8gbW9udGHFvG93eSwgYSB0YWvFvGUga2Fs
a3VsYWNqxJkgb3N6Y3rEmWRub8WbY2kgcG8gbW9udGHFvHUgZm90b3dvbHRhaWtpLgoKVW1vxbxs
aXdpYW15IGxlYXNpbmcgeiBvZHJvY3pvbsSFIHNwxYJhdMSFIGkgYmV6IHdrxYJhZHUgd8WCYXNu
ZWdvLCBnd2FyYW50dWplbXkgd3NwYXJjaWUgdyBwb3p5c2thbml1IG9kcG93aWVkbmllZ28gxbpy
w7NkxYJhIGZpbmFuc293YW5pYSBpIHBvbW9jIHcgcHJ6eXBhZGt1IHduaW9za293YW5pYSBvIGRv
dGFjasSZLgoKQ3p5IGNoY2llbGlieSBQYcWEc3R3byB6YXBvem5hxIcgc2nEmSB6IG1vxbxsaXdv
xZtjaWFtaSBpbndlc3R5Y2ppIHcgUFYgZG9wYXNvd2FueW1pIGRvIFBhxYRzdHdhIG9iaWVrdHU/
IAoKClBvemRyYXdpYW0KUm9iZXJ0IEdvbmNpYXJlawoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYjQzLWRldgo=
