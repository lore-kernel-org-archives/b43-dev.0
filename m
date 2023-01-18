Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22BECC004D4
	for <b43-dev@archiver.kernel.org>; Wed, 18 Jan 2023 09:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+GySC2YtGvmPRhOP2p8TgtEAozTlWNK3H7MR3m9+sog=; b=jk+lTOISr588Q+
	t2evvfaW0eeYDd1uhVFDCuRXgAINcsnSkqgd9Z628iG5SvVO6pKZn069P19saEc8y9lmnY0sU8hiP
	oA4QcTWIjo8tA5iJ/YM84eQNU2Ioxm/UKwHYM6Cg3cGxAvCGSjRkMphoqDyIiTKtEBSCL43LXh4vB
	uuCvTy1xvak42zmsYyTactOVjAxKAY0OORb0JF8y/A9EqQ0fmZHdN3Pd0irY6/KohcpPRC0+1zuPG
	zP+6VAB7rUDSn3Rrkx3PIZP8yxxghP/QxLpL14R2JsbR1klqFjNbADt/jmgU166KD5at0qXrCc6EM
	/7f1E2FgYG4Ccqtevl9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI4Yi-0002nH-5E; Wed, 18 Jan 2023 09:16:40 +0000
Received: from mail.craftsplex.pl ([162.19.155.126])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI4Yb-0002mo-8F
	for b43-dev@lists.infradead.org; Wed, 18 Jan 2023 09:16:34 +0000
Received: by mail.craftsplex.pl (Postfix, from userid 1002)
	id 68452245AB; Wed, 18 Jan 2023 09:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=craftsplex.pl;
	s=mail; t=1674033391;
	bh=PdkZ+v+vYeToqxHIEU5QY3nYNmj0rMl2wCVGcXJWjrM=;
	h=Date:From:To:Subject:From;
	b=VW/8ztfz+i4jABN77y9IIMqHQXIQ56XQNymQoWxzDA0wD7kLClcy3gnb/ngXYOnl0
	 BeVoG0UC4NZVOVp9YW8yCulQ7Wl5h9DzWxBahjeP/vCgOG6NFAI3ABv0TNtf1kuPZU
	 s/DbV+TUWoiG4GUVLqcN7Qx/e+c+CkCmEdf108l4efvPYA6XO+yYmbku1axXN8mMsJ
	 6L/uhKqgVw+EnB78K9Nk6yOc+SPKTQEj99EBGnCwMrcCUHtMM7+CKVFtCs2/Qpec/B
	 9hq/A0DrA9JR6EGQ3z/BWs8mSs3MxZBuX7+2GDfptlgvBkxX72TR97QtViafPLxzHD
	 bZ0tqhrDNrqHg==
Received: by mail.craftsplex.pl for <b43-dev@lists.infradead.org>; Wed, 18 Jan 2023 09:15:33 GMT
Message-ID: <20230118074500-0.1.3s.8kxi.0.l2tkpp9czu@craftsplex.pl>
Date: Wed, 18 Jan 2023 09:15:33 GMT
From: "Kamil Tralewski" <kamil.tralewski@craftsplex.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Zwi=C4=99ksz_zyski_poprzez_pozycjonowanie_?=
X-Mailer: mail.craftsplex.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_011633_472346_425466D7 
X-CRM114-Status: UNSURE (   2.22  )
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

RHppZcWEIGRvYnJ5LAoKY3p5IHdpZWR6xIUgUGHFhHN0d28sIMW8ZSBvZHdpZWR6YWrEhWN5IFBh
xYRzdHdhIHN0cm9uxJkgaW50ZXJuZXRvd8SFIEtsaWVuY2kgd3lyYWJpYWrEhSBzb2JpZSBvcGlu
aWUgbyBtYXJjZSB3IGNpxIVndSA1MCBtaWxpc2VrdW5kPwoKT2QgbGF0IHpham11amVteSBzacSZ
IHByb2Zlc2pvbmFsbnltaSB1c8WCdWdhbWkgU0VPLCBrdMOzcmUgcG96d2FsYWrEhSBuYXN6eW0g
S2xpZW50b20gb2JzxYJ1Z2l3YcSHIHdpxJljZWogemxlY2XFhCBpIHdlasWbxIcgbmEgbm93ZSBy
eW5raS4KCk1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgbmFqYmxpxbxzenltIGN6YXNpZT8KCgpQb3pk
cmF3aWFtCkthbWlsIFRyYWxld3NraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRl
dgo=
