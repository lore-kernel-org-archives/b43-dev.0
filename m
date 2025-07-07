Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CD44C83F07
	for <b43-dev@archiver.kernel.org>; Mon,  7 Jul 2025 08:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=ruGMPAYu4f1idF
	Ty1C+thwJsSNejFaqUly2Bi1sha3H56VV8YMW7UjfjYRMWTrdQD3iL37gcFJY02GlqgI45Nteu8VM
	50m8XhH1Bo/DtKbVngykSRrWCIWUAkBO3N9PLpCTtXlfIE5qgCdrwc6pUHZnPgFFGUXscmG4n71IV
	VKCbrXZszvvNTg69kfhMKkD2odjZ8wgLDb6m/GhTORN6u6THLP9wZHeubv3brHHkUSJ24unxg0/hy
	M0AEBeEvAh7ksvxU3TifRG2SU0JADm02qrF0hgP+x+a1CJ49w/80gznaCjELizwrUrUcT8F6YLCpu
	Cr3UBF+LTwYi0qpuPnHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYgyv-00000001pBf-32fq;
	Mon, 07 Jul 2025 08:13:45 +0000
Received: from mail.biznator.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYgPD-00000001iFs-2tw8
	for b43-dev@lists.infradead.org;
	Mon, 07 Jul 2025 07:36:53 +0000
Received: by mail.biznator.pl (Postfix, from userid 1002)
	id 7B33A269A9; Mon,  7 Jul 2025 09:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=biznator.pl; s=mail;
	t=1751873763; bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=lyxwnVvfyAb5xHuLgxbTijiDqEzl80rt+V6cqXC2OqFL/XnBr0F4OjB9Jg8e5QwGI
	 JOI98a0on+++K0s+sqkmsgzkgG23nfoLgietuoEF6kDc1TlCWDL/q4mnrcehWt01tL
	 BlcMMx3pztww5DkfZWq8bcQMDC3LU1ZyrHOU01l/0WT5VC11sGEV1i7D6RObdUheij
	 5bAHXepNyu0KpErck+CDmvN159p+/PQPG9R4YzU2H3Bsl9FbOJ9BsTK35MOnoN9REl
	 xB6S2LK+NeOropu9N/pRP8lowNDNi0bi52nOUl5EjXN0jbAOM7Okjga5N4JqvzaYXU
	 E26HZKZHN+iZw==
Received: by mail.biznator.pl for <b43-dev@lists.infradead.org>; Mon,  7 Jul 2025 07:35:20 GMT
Message-ID: <20250707084500-0.1.ia.124tr.0.iv3dd08fmb@biznator.pl>
Date: Mon,  7 Jul 2025 07:35:20 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@biznator.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.biznator.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_003652_419787_0EB2DC53 
X-CRM114-Status: UNSURE (   1.39  )
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
