Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA5DBD5AE73
	for <b43-dev@archiver.kernel.org>; Thu,  7 Nov 2024 08:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=uG7ADqMs4HeJC5
	zfppsgAIOnSYKMpY0Mw719ehKOzFUPnxDT0QgjpgouMndLHc2tRLxnBjgo8cXyLFuMeL05CLw30/b
	Rr503k3NHGJ6PxSSOFsJyVJ06FO2Hr1WPSEh9mNqtmUBq1llPIjXmNfJ0am2aJKqqzgog02odfVmV
	vQmMufJqOxJgP5miHrh6rU1mUMK0gwx2SP1y1WtKGPKfAyHF2BFNmfVXaoKLmsxHsFpy5PDEP0/Qk
	+86ffx1Nngf+8TWZVwygopumJrg65I4/qw1iEEYkMxj1dr6NkcmROVQFpzhO4mFu1OM8mxBiBQamW
	2UDFiQbu4bJ4ghUOG5NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yEq-00000006CIx-41fn;
	Thu, 07 Nov 2024 08:51:36 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yEk-00000006CIP-3i5E
	for b43-dev@lists.infradead.org;
	Thu, 07 Nov 2024 08:51:33 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id B0D5D26081; Thu,  7 Nov 2024 09:51:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1730969485;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=a+XLteD4z6dIIvuCtptYG+0qp7mtYmej2inI02qX4JskXasMpST1eS+Fj0DH7Y9Nn
	 K4ZMc/iUoUw/uiz0/XTHX2kkiG09wpP4zZJZLZkfPSzSp6ZApxPNzq/xuesoawQpSF
	 VEYFnfdIM86Ya7893KfJGEc+y17Jp5LlSnutgmX40ZCLphqPF0h1a4iG8+U1CavJ/+
	 QO2nqBDGZ1dmiajZSkeubXLj/RS5Xge0WYkk8IL5jENkeAdADI5+6liGzIvn98X0aK
	 R3Ts2w9nYlw9NUcVnQ5j/HcT0F17msdw9M0b4t85sht/MbYc+VzLV42hmEGJzZa8Xg
	 efOO0W9fe/6Jw==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Thu,  7 Nov 2024 08:51:17 GMT
Message-ID: <20241107084500-0.1.dr.iqf9.0.3i605ncq98@venturebloom.pl>
Date: Thu,  7 Nov 2024 08:51:17 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_005131_637854_6A995027 
X-CRM114-Status: UNSURE (   2.06  )
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
