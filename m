Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DAD7EB64D9
	for <b43-dev@archiver.kernel.org>; Mon, 19 Jun 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u4JsqMaLC7XXCV2777rJQtnn0l6mgUQNDGZG9VDbwtQ=; b=w4EUaF9IkzslRY
	f7H0eeaiLSnvLXu/t/FR6Xbt3ubRkekNHiaDKx0rZ/o98SSPRg7Dx0wGpmIH0sW2FLeORPXUAfabM
	7FBE+SlT6KTy6fjUSQqdaXiVBIRU4XlpYW/ciizVrLke0PwX5XscT5ZPAPSqi26tIGL6suM3VCsfN
	0jYF04uP1/V8QG3Igl5cN5UBESrARh8AamHNtEbKOQJC0/keE7EleX6hwzNa4vs0p7E9L/hvM8Acy
	6evqnK/tjWnrIMKEmfd5eaqvNgJytVVABFvc1xJN4Nfe5jm2HVL8iwcRpc54JVX1O2Sl5m/pEfFtt
	epIDDwZ4JTR1w4Rgpn2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qB9zL-007mn5-1a;
	Mon, 19 Jun 2023 08:11:51 +0000
Received: from mail.sayblast.pl ([51.68.191.154])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qB9zF-007mlw-1F
	for b43-dev@lists.infradead.org;
	Mon, 19 Jun 2023 08:11:46 +0000
Received: by mail.sayblast.pl (Postfix, from userid 1002)
	id 6A5D8A35E5; Mon, 19 Jun 2023 08:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sayblast.pl; s=mail;
	t=1687162267; bh=q8IxNbavXIq8RjJbsN7cVOB0yFuMbjX2Tq8i/XIxWAs=;
	h=Date:From:To:Subject:From;
	b=nbr9l6dk42VwVfICosUsj74H11bpscGSF1hJjL2xIyMpGcgVXZNqlSiOdcRiEsy0K
	 m+xFPkPBWpPHX+ppZbFWjQHmIoINIGMTt8RH8F5pJvd12B71v2SFQ/tQ/rJReC7P5P
	 p9G1/b/MdT/dI3qAyLuVQm1AhnrkjpbMoHibnYZCRZmLYY/bvnSPEH2yi50ph3SPhM
	 zyocqnjJ+bn3AbngYi5cgUtozLxqhC13s7XMwqKCJ1vF/3R+GEsGWvdJ5UnIJ8OwYL
	 aH9N8n4nMiTdX6yyNp6eESj4jzvV1D+R82Rm6QLG8bza3gT1vh/OLDuwnpvRLPgnUm
	 RKN3MhasA9U+w==
Received: by mail.sayblast.pl for <b43-dev@lists.infradead.org>; Mon, 19 Jun 2023 08:10:41 GMT
Message-ID: <20230619064500-0.1.au.2czo3.0.3wpvfqd674@sayblast.pl>
Date: Mon, 19 Jun 2023 08:10:41 GMT
From: =?UTF-8?Q?"Karol_G=C3=B3rka"?= <karol.gorka@sayblast.pl>
To: <b43-dev@lists.infradead.org>
Subject: Kredytowanie na podstawie obrotu z terminala
X-Mailer: mail.sayblast.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_011145_600515_86A2DABB 
X-CRM114-Status: UNSURE (   2.20  )
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

RHppZcWEIGRvYnJ5LAoKaW50ZXJlc3VqZSBQYcWEc3R3YSB1enlza2FuaWUgZmluYW5zb3dhbmlh
IGJleiB6YsSZZG5laiBwYXBpZXJvbG9naWksIHphxZt3aWFkY3plxYQgaSB6YWJlenBpZWN6ZW5p
YSwgeiBiZXpvYnPFgnVnb3fEhSBzcMWCYXTEhSBpIGJyYWtpZW0gb2RzZXRlaz8KClphcGV3bmlh
bXkgcm96d2nEhXphbmllIG5hIHVwcm9zemN6b255Y2ggemFzYWRhY2gsIGt0w7NyZSBvcGFydGUg
amVzdCBvIMWbcmVkbmkgdXRhcmcgbmEgdGVybWluYWx1IHDFgmF0bmljenltIHogMTIgbWllc2nE
mWN5LCBhIHJhdGEgemFsZcW8eSBvZCB3eXNva2/Fm2NpIG9icm90w7N3IC0gZ2R5IHPEhSBtbmll
anN6ZSByYXRhIG1hbGVqZSwgZ2R5IG9icsOzdCB3enJhc3RhLCBmaW5hbnNvd2FuaWUgc3DFgmFj
YSBzacSZIHN6eWJjaWVqLiAKCsWacm9ka2kgd3lwxYJhY2FteSBuYXdldCBkbyA3Mmggb2QgesWC
b8W8ZW5pYSB3bmlvc2t1IG9ubGluZS4gU8SFIFBhxYRzdHdvIHphaW50ZXJlc293YW5pIHRha2lt
IHJvendpxIV6YW5pZW0/CgoKUG96ZHJhd2lhbQpLYXJvbCBHw7Nya2EKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0
My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2I0My1kZXYK
