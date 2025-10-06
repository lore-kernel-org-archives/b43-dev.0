Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB0C7CCA470
	for <b43-dev@archiver.kernel.org>; Mon,  6 Oct 2025 07:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p1NH1Ushot1OXjBEFfKGEpYpUcgKvNHEutlvWmnJEI8=; b=dc6vzWz6UAJKzO
	NJIXbK5/MKqbA1k3/R3HlPXUbxNqvQNkkvgb+/T/2/DD+NC/SNyQTW4Ywh4EwVVuIopnyz7iswHcV
	JU1zFb5jbcgdAVD48P4mpi/vTRWAf45+JCPcZnani79Q4Cnp8oHpK49fsVZipyZFe9sFjKZ1pO19O
	Q1c/Yro5ub6llUK7VaRvYFrvkYF08q8YyZ7Gp9LI2YJSbDNWhSLv8I3kqc5+78eBz/b6ipexcDC7Q
	ZdF5d7VSPrZs3ThscFpTE/es91XJc2r5myZskM29RR8nmu22gKgKIm3e0ElD5cCVI6/RcIr0oEWQp
	d3KPTgA07Y2okXXrdf4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5flH-0000000H622-2Y8A;
	Mon, 06 Oct 2025 07:35:59 +0000
Received: from mail.biznator.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5flF-0000000H604-0SFm
	for b43-dev@lists.infradead.org;
	Mon, 06 Oct 2025 07:35:58 +0000
Received: by mail.biznator.pl (Postfix, from userid 1002)
	id 8B3CE268F5; Mon,  6 Oct 2025 09:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=biznator.pl; s=mail;
	t=1759736148; bh=JvuWKFUQUJpOJ2bAkrqaCtACbxZAO0avZaBH++nQ1CI=;
	h=Date:From:To:Subject:From;
	b=TBsDO58T5HfT8j5o22LR+Rm43at4493pXEyvWg1Ztn30orQ7JHBV1p4JDoTSY16GE
	 XdDQytNn8fuMuUF8ozjF67kkSpf3eUv2PDLqof+HYlKFBMDOoa0w8ie/9EIPXz+mtf
	 ydR/a4RIk1oxmYcI2aErH7bTLQzhsf54HObaJta6CMIsEIxAa9wQtEvoce6olWUlTE
	 PdphxmYdia4hgEmB/ZlXr3D/biaXN7uXdMujgUf0gZTI0rtWe8DgZ1Mqy9y5ag2e6u
	 2aRUWG6KKjenfQAnnNhQunwk22s5RQOTj/i3IQxGn6XnywyfsaljZ9OVz3DfclmsTC
	 z+8wW81ONL3dQ==
Received: by mail.biznator.pl for <b43-dev@lists.infradead.org>; Mon,  6 Oct 2025 07:35:33 GMT
Message-ID: <20251006084501-0.1.k3.24fu6.0.apuqm30b01@biznator.pl>
Date: Mon,  6 Oct 2025 07:35:33 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@biznator.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.biznator.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_003557_440010_22949FA3 
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

RHppZcWEIGRvYnJ5LAoKY3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIG5pZXpvYm93acSFenVq
xIVjxIUgcm96bW93xJkgbmEgdGVtYXQgZm90b3dvbHRhaWtpPwoKSmFrbyBmaXJtYSBzcGVjamFs
aXp1asSFY2Egc2nEmSB3IGluc3RhbGFjamkgaSBzZXJ3aXNpZSBuYWpsZXBzenljaCBqYWtvxZtj
aW93byBwYW5lbGkgc8WCb25lY3pueWNoIG5hIHJ5bmt1IGNoY2lhxYJieW0gcHJ6ZWRzdGF3acSH
IHByb3BvenljasSZLCBqYWvEhSB3c3DDs2xuaWUgeiB6ZXNwb8WCZW0gcHJ6eWdvdG93YWxpxZtt
eSBkbGEgUGHFhHN0d2Egb2JpZWt0dS4KCkLEmWTEmSB3ZHppxJljem55IHphIHdpYWRvbW/Fm8SH
IG9kIFBhxYRzdHdhIGN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhy4KIAoKUG96ZHJhd2lhbSwKV29q
Y2llY2ggTXJvY3prYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
