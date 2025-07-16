Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B618C83F1B
	for <b43-dev@archiver.kernel.org>; Wed, 16 Jul 2025 08:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mIIBTenXovQ6Tk58knu/GlBKvs3jsWw44YZWWo5XCBs=; b=Y+t4Q8xeoyqtvJ
	s/Tv4GvhetxIY+2j1isJmSpIXj8hYu4//XZ+XyI+hvJWYsbWSUAUo/GZWpW0NDk1sYrwcgsKquTOG
	SOcdS8xXIAuxFxLL5FCeVqYrDsydLnEzDIt6FbRfS9gCDChwt1FGcyxg0/Cw/bjM3WFXZUDsFx/1C
	v0GXxy20ophz4xxXHE21i2Ce53DiSEsLhlYr3i/aiOqgF0OKg1b9ucxUBSQb7LDdsEnyW9nWUkTD0
	spPnYq0ENSLVGVdowF9pkdZwcL2X2weKymUV/oO3NJJd+M5xB09g8dU0tKosDUKoiHwnke+6gL0Ou
	QPngq45298EAI2nWxY6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubx6R-000000076es-2g3L;
	Wed, 16 Jul 2025 08:02:59 +0000
Received: from mail.stratzo.pl ([217.61.16.219])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubx6O-000000076eN-1mcs
	for b43-dev@lists.infradead.org;
	Wed, 16 Jul 2025 08:02:58 +0000
Received: by mail.stratzo.pl (Postfix, from userid 1002)
	id 4A6FB871AC; Wed, 16 Jul 2025 09:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=stratzo.pl; s=mail;
	t=1752652602; bh=Tfu4fEDwFmODeRk6mZzPa1SSmjYivOhl9BirwQmtVOY=;
	h=Date:From:To:Subject:From;
	b=GdbLJW2uuZu5gMtKbtDOxOxGBeGsle61EJrR1Vk2pRs5skKlI1qsqrAGZyM6f3aaN
	 Rkmf+uc8aX6soUcIqypn2GrpxEgguIN5kI8YqT3MgdSVhGH9CfsHMpE6rsd/F8t98y
	 JVColLbvdjNuWNu5D1oSoHlD3Xjhb1wGwfUDnFcXYjZHuAmciL7EmfIlSUSPbPnZgj
	 yErD1AETtVheP8iTz6osERrl//d8rid6nsKjFbMxYj6+YgvxZpPhsJxeJ+wncmnJEH
	 5luKEM4qLC77JELhULb+ZN8rgxBezQSaOZ+/kLFJ7tf+4RieZFgNsh6rNNsBNjtYo7
	 RZcr607n+53yw==
Received: by mail.stratzo.pl for <b43-dev@lists.infradead.org>; Wed, 16 Jul 2025 07:55:35 GMT
Message-ID: <20250716084500-0.1.2g.hppb.0.2ds52kaa7c@stratzo.pl>
Date: Wed, 16 Jul 2025 07:55:35 GMT
From: "Kamil Brunatowski" <kamil.brunatowski@stratzo.pl>
To: <b43-dev@lists.infradead.org>
Subject: Wsparcie programistyczne - termin spotkania 
X-Mailer: mail.stratzo.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250716_010257_134348_0DBB728A 
X-CRM114-Status: UNSURE (   1.34  )
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

U3phbm93bmkgUGHFhHN0d28sCgpjenkgdyBQYcWEc3R3YSBmaXJtaWUgcm96d2HFvGFqxIUgUGHF
hHN0d28gcm96d8OzaiBub3dlZ28gb3Byb2dyYW1vd2FuaWEgbHViIHBvdHJ6ZWJ1asSFIHphdWZh
bmVnbyB6ZXNwb8WCdSwga3TDs3J5IHByemVqbWllIG9kcG93aWVkemlhbG5vxZvEhyB6YSBzdHJv
bsSZIHRlY2hub2xvZ2ljem7EhSBwcm9qZWt0dT8KCkplc3RlxZtteSBidXRpa293eW0gc29mdHdh
cmUgaG91c2VtIHogMjAtb3NvYm93eW0gemVzcG/FgmVtIGluxbx5bmllcsOzdy4gU3BlY2phbGl6
dWplbXkgc2nEmSB3IHByb2pla3RhY2ggaGlnaC10ZWNoIGkgZGVlcHRlY2gg4oCTIG9kIHphYXdh
bnNvd2FueWNoIHN5c3RlbcOzdyBBSS9NTCwgcHJ6ZXogYmxvY2tjaGFpbiBpIElvVCwgYcW8IHBv
IGFwbGlrYWNqZSBtb2JpbG5lLCB3ZWJvd2UgaSBzeW11bGFjeWpuZSAobS5pbi4gVW5yZWFsIEVu
Z2luZSkuCgpXc3BpZXJhbXkgZmlybXkgdGVjaG5vbG9naWN6bmUgb3JheiBzdGFydHVweSBuYSBy
w7PFvG55Y2ggZXRhcGFjaDogb2Qga29uY2VwY2ppLCBwcnpleiBkZXZlbG9wbWVudCwgcG8gc2th
bG93YW5pZSBpIG9wdHltYWxpemFjasSZLiBEemlhxYJhbXkgZWxhc3R5Y3puaWUg4oCTIGpha28g
cGFydG5lcnp5LCBwb2R3eWtvbmF3Y3kgbHViIHZlbnR1cmUgYnVpbGRlcnp5LgoKSmXFm2xpIHN6
dWthasSFIFBhxYRzdHdvIHplc3BvxYJ1LCBrdMOzcnkgcm96dW1pZSB6xYJvxbxvbm/Fm8SHIHBy
b2pla3TDs3cgaSB3bm9zaSByZWFsbsSFIHdhcnRvxZvEhyB0ZWNobm9sb2dpY3puxIUg4oCTIGNo
xJl0bmllIHBvcm96bWF3aWFteS4KCkN6eSBtb2dsaWJ5xZtteSB1bcOzd2nEhyBzacSZIG5hIGty
w7N0a8SFIHJvem1vd8SZLCBieSBzcHJhd2R6acSHIHBvdGVuY2phxYIgd3Nww7PFgnByYWN5PwoK
ClBvemRyYXdpYW0KS2FtaWwgQnJ1bmF0b3dza2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2I0My1kZXYK
