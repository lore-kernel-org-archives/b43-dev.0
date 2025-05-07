Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A355C3ABC0
	for <b43-dev@archiver.kernel.org>; Wed,  7 May 2025 08:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=lMrEqxws2KjWQc
	3QuQT2apFnrIKUU3RhAxVsLsnMA74+v9bJqRUTRR/S6qfsjj4LWcObGXG454uxyOttklTyraHHlNz
	0TdexJlJIVipirQsXvcPKElMHjppX1F1pK3oVBKcccje5YLqjjHGIjxxep7ygyFVnV2AFVwn/z2Zm
	kyPUPBjo1DyV2jqoyfUL0BxyJJB56EsjtQNXlrpKQeb0GM5qkaQrrNsf+0WcQOqJQrfEwCr4JDE9x
	9FG/LT41F0sI5wZoR/LTVBMlWIzOiM6bdWt36yW/ziUoswt0PSdLZHCEVAVEK1iIDASnyl25ZsCtr
	FSaV46bdJQdFKjNj40wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaEP-0000000EkkL-1D5V;
	Wed, 07 May 2025 08:34:21 +0000
Received: from mail.biznator.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCZGF-0000000EXqj-173J
	for b43-dev@lists.infradead.org;
	Wed, 07 May 2025 07:32:13 +0000
Received: by mail.biznator.pl (Postfix, from userid 1002)
	id 6C89E2603C; Wed,  7 May 2025 09:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=biznator.pl; s=mail;
	t=1746603109; bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=ArsiKxTAO6yD/8S/j9V45ejrHKCCmiztv3g7YjvGTkCdRnmuLO/Zbek8t2T7OHSMZ
	 XO2PAU9axwzyfEaHMuAtPx78G74uteDwwe7i0y8lL1+7Kz9eezoLTu7OJZNwaDUvdh
	 Hn2DTEMXU+5ciVdBfON/eJ/3ucg+u7DGXdVlRu0c1Sq0ywIBRpNxjZ2Bf08yMZHJp0
	 uZ1+vmEpgmz4K9pGMs0DxRjeU/vaaCifCLRcuPmr69AsL8RtbELlfxYKRK+EvsKmnk
	 eHgO91nwUxj6xNixW7EKjNwsTcw9GfvRR0d7xJSS/mHzZgKRlqgC+u0BbnUEmgI9hn
	 1M4pZe5vBZ4hg==
Received: by mail.biznator.pl for <b43-dev@lists.infradead.org>; Wed,  7 May 2025 07:31:09 GMT
Message-ID: <20250507084500-0.1.h4.kry9.0.facbpui7o2@biznator.pl>
Date: Wed,  7 May 2025 07:31:09 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@biznator.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.biznator.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_003212_001889_F3BB7000 
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

RHppZcWEIGRvYnJ5LAoKY3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIG5pZXpvYm93acSFenVq
xIVjxIUgcm96bW93xJkgbmEgdGVtYXQgZm90b3dvbHRhaWtpPwoKSmFrbyBmaXJtYSBzcGVjamFs
aXp1asSFY2Egc2nEmSB3IGluc3RhbGFjamkgaSBzZXJ3aXNpZSBuYWpsZXBzenljaCBqYWtvxZtj
aW93byBwYW5lbGkgc8WCb25lY3pueWNoIG5hIHJ5bmt1IGNoY2lhxYJieW0gcHJ6ZWRzdGF3acSH
IHByb3BvenljasSZLCBqYWvEhSB3c3DDs2xuaWUgeiB6ZXNwb8WCZW0gcHJ6eWdvdG93YWxpxZtt
eSBkbGEgUGHFhHN0d2Egb2JpZWt0dS4KCkLEmWTEmSB3ZHppxJljem55IHphIHdpYWRvbW/Fm8SH
IG9kIFBhxYRzdHdhIGN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhwoKClBvemRyYXdpYW0KV29qY2ll
Y2ggTXJvY3prYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
