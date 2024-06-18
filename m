Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0E16C2BA15
	for <b43-dev@archiver.kernel.org>; Tue, 18 Jun 2024 07:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M0GXBtHJr7nhVQCi6jQZEXsQl4wkehKu0WSEFPDUNdc=; b=miAwbyQVXRtNcd
	/Gctfe2qa3UcgU+7tcGxCACu52gpkoR57JhqMb4KkilRKuc2g7RBI99mT+Wc864+Cw56KeXKLAheI
	iyQmE5i0dV6xV7Yzx21x6vbaDoLBlt6Oz6Y/XYL2MHnwr5b+Sz1TdxNf43KaAErYz2LUQhIJ6CucU
	Dz8HkULXXNCyP9jWb3FCg+Z8G3oWjMTszmFzlwAG9skWbJerleP5oATlRYzPKQaT/vz8yLR7DiquU
	JPO27Rco57D0ubED6Lsfap+LwbkRj76MGONO1ZKKSlPpuyWIAjBcko10eWReBBXmnxZY8H6tnff1Y
	CKOreFPfG7Kin2iOE8bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTP9-0000000DyQU-3FGT;
	Tue, 18 Jun 2024 07:37:23 +0000
Received: from mail.suavjarvi.pl ([195.231.81.125])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTOW-0000000DyPC-1gJZ
	for b43-dev@lists.infradead.org;
	Tue, 18 Jun 2024 07:36:46 +0000
Received: by mail.suavjarvi.pl (Postfix, from userid 1002)
	id B772282A9C; Tue, 18 Jun 2024 09:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=suavjarvi.pl; s=mail;
	t=1718696200; bh=EywM+E+OIUr7RnYatSz3YfoNTVB6dOfImeA7tdj3yJA=;
	h=Date:From:To:Subject:From;
	b=dUf8UzJM2KV4BokMzHkKdxtknOSzvAJ+vZq2pjWkvVZnXofldWIljNSa1QJ7DEOOG
	 nJAPr8+4NsAlyJ5zNSMugucQN73z54t8rf+Q55eHkxozrF7+5E3UHue/9o/FRc31hx
	 8ZD2M77uLhP0/eEgjoigtyh93YpjNlR5frb4dATuyL76zU+lJnS91ofJr2f0/ublf8
	 mMOda40d3nY9pb0OJxQAAlngXVdI0O68LwKkFNaytK1UIr+2p+t83SA7vw7wcsh9PF
	 2i6JTn8iAcsA7LSAXYPD4kde1EiUvryjjM+ox+Uc4krb8pH8Nqxg2Fz3pCddFmbkPk
	 Bo0+f3MG80wsQ==
Received: by mail.suavjarvi.pl for <b43-dev@lists.infradead.org>; Tue, 18 Jun 2024 07:36:25 GMT
Message-ID: <20240618084500-0.1.47.am64.0.ea76pje5ih@suavjarvi.pl>
Date: Tue, 18 Jun 2024 07:36:25 GMT
From: "Kamil Tralewski" <kamil.tralewski@suavjarvi.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.suavjarvi.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_003645_073153_04F0E901 
X-CRM114-Status: UNSURE (   1.29  )
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

RHppZcWEIGRvYnJ5LAoKemFwb3puYcWCZW0gc2nEmSB6IFBhxYRzdHdhIG9mZXJ0xIUgaSB6IHBy
enlqZW1ub8WbY2nEhSBwcnp5em5hasSZLCDFvGUgcHJ6eWNpxIVnYSB1d2FnxJkgaSB6YWNoxJlj
YSBkbyBkYWxzenljaCByb3ptw7N3LiAKClBvbXnFm2xhxYJlbSwgxbxlIG1vxbxlIG3Ds2fFgmJ5
bSBtaWXEhyBzd8OzaiB3a8WCYWQgdyBQYcWEc3R3YSByb3p3w7NqIGkgcG9tw7NjIGRvdHJ6ZcSH
IHogdMSFIG9mZXJ0xIUgZG8gd2nEmWtzemVnbyBncm9uYSBvZGJpb3Jjw7N3LiBQb3p5Y2pvbnVq
xJkgc3Ryb255IHd3dywgZHppxJlraSBjemVtdSBnZW5lcnVqxIUgxZt3aWV0bnkgcnVjaCB3IHNp
ZWNpLgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKClBvemRy
YXdpYW0KS2FtaWwgVHJhbGV3c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2
Cg==
