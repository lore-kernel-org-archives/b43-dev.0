Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C790C2D0CD
	for <b43-dev@archiver.kernel.org>; Wed, 21 May 2025 07:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=Uhh9ETVCl6uGFX
	b1jNyep2IgLKKArZUis99SJH64TUpDKYkjgkUKFtpCArwfoUtcZl2oZr7Ls+SuSBSG+GYYL3v5UD1
	6LpTgJbiDbICGT0reWsefuJEbVlm7+x5lLKSixgACtjyJq9aDasHoiNIv7WURjIQnKe1vm1Ofb4Ja
	MHD+dg29z9WeHDEsoZJ0QC72NdrfcnKTe+thVNinb2qSrmY1WdzCNstY71oTPyQLNGJPHOY8ALHxu
	93hdpNvECd1W9F4HF5YjPav5pKYmaEIvEiboXHGNWEXQF5OfNvTjZncjfxyxCo6k2BQC98ixbHvCW
	HDd0r1GH0cLoXX+RRCVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHe2l-0000000F58c-0Hni;
	Wed, 21 May 2025 07:39:15 +0000
Received: from mail.biznator.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHdzd-0000000F4k5-12SV
	for b43-dev@lists.infradead.org;
	Wed, 21 May 2025 07:36:03 +0000
Received: by mail.biznator.pl (Postfix, from userid 1002)
	id 9DF0625F2E; Wed, 21 May 2025 09:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=biznator.pl; s=mail;
	t=1747812955; bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=K8KR8ycjk2qBJoE6lLYVYMpUViFR/IAlqkNS8cLMz8IWP8OBxAj4jh/m7KfHAykc0
	 lD4RexVQsVYm6Din7GVVLEjAh3judMVco8Yfip7/BwuOO9t+GIDgZCbl9bnd7COmuY
	 LEFGBgOZZlyRat1ZRvx/34N1UvVA2fjT1BDRrZSx++Hot4N4LKl4ILt0Vk7+1pHoXk
	 w5sHUPi6j5QzhAlMgAzaAWqPPQ7ODnnlBzJAbcjDkhtToy/HSz1X2ik3fSlV90SmQ6
	 /hfSVmkjtDlmGPDHrUdRY+xm84qWA1dH+dfVg4Rycc3OykJjbjr3EbfpMzCbDCuKDh
	 5CDX62H0YD5wQ==
Received: by mail.biznator.pl for <b43-dev@lists.infradead.org>; Wed, 21 May 2025 07:35:54 GMT
Message-ID: <20250521084500-0.1.he.prkv.0.o1arrvg2s4@biznator.pl>
Date: Wed, 21 May 2025 07:35:54 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@biznator.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.biznator.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_003601_977370_37092316 
X-CRM114-Status: UNSURE (   1.27  )
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
