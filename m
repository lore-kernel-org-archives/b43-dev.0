Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 978F6D0BB6C
	for <b43-dev@archiver.kernel.org>; Thu, 24 Oct 2024 08:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=iLA+WKRMo+INlB
	rg7iqCrdL8DnUrt4oUvyUfKEHll4EayGjd6VQrfggBP7I0+8j14VTE2jewA52RykaF++ZVgBJhG2W
	a3NlZcS+O2yZuf9zN8uXSk3WtLvqM+5/sYa3QgqVLPQiUMcCAFl/nfVpLch1pSBrzrWxe2brQmrWA
	dF2/1FcPrUlQzIg2fsgP9dJ3VPayQOrxqxqVcEeOM/1oImECbsnlFzpYmF9P8mCT0RIej1hZ8La1i
	d1goIYPePTD2BE41cHMfNZ6TUYA2NTgKBZkTRAv+BXJbWaabqQXEYy/KUJIlR0lOPhrPD9OfFcpWd
	LwO1+zfUT/PwR3ZLqF2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3srW-0000000HDE5-3ZU2;
	Thu, 24 Oct 2024 08:06:30 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3srQ-0000000HDAn-3NWn
	for b43-dev@lists.infradead.org;
	Thu, 24 Oct 2024 08:06:27 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id 4C28326473; Thu, 24 Oct 2024 10:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1729757179;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=csfg44poglcYDQsh5XH9ttrME2Muw0rsw/LHtbcDOozKZ6JyWWiktruNvHBI0C5i8
	 sw3XvrSninYUzxnNph3lomz+/uUeVrxzFEsLE8zVpXHQK+K3dGew60c2nuGdOjz6Zm
	 DVsaEVMihI36wcyRIyq1R97JwK3mXnZUwFLzs5H2m935AvTfz4pt1rgd5V47o2trgS
	 +M2U8QraPmbEzHRG3IMpE2+TGAa7UueAHBN94KsepId9hbnIAfhX33Ylt8k0ChDi8F
	 FDYiOGXuI2I6pFppDlgaR/kS8QX3ijA/Rh2qyx6m2sDqiY9tMFUSNDJD75yFqU+Ggl
	 4iJIlgtXfDngA==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Thu, 24 Oct 2024 08:05:41 GMT
Message-ID: <20241024084500-0.1.di.iqf9.0.h6ig1iiich@venturebloom.pl>
Date: Thu, 24 Oct 2024 08:05:41 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_010625_558579_7182EB3F 
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
