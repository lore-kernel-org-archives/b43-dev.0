Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E539AC3271E
	for <b43-dev@archiver.kernel.org>; Mon,  8 Jul 2024 08:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M0GXBtHJr7nhVQCi6jQZEXsQl4wkehKu0WSEFPDUNdc=; b=4+a19ph/E11/VV
	ZcVGMpgtTArJqB7OydySZRr1krdvj5TwGhmYqxs93MmryKV2OBZMaXlxIlLlIknQggmkeY5dIopGv
	LDTHtljG6zGFNpvFpWtS5HnKSWcsK8pjOIh1upslvX/phFx7sW7BpBNTHMZn+nmPdgSFomFEcypY7
	rGMAAHVMMXccCLVB26gihYvl6OD8fmOdU+q0C4AMxPAtTJs5bplGmbR+y9sUcfRoWO1NPmU+L2uTn
	49JgOVCkatCfSOIgPZGyXbyb093XEsVUPWzV398p8Xo5cmEFhN+e6btnS/eCIcYW6jHQXPG/2d79/
	0MI+ZRiuE9eEglReubbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQjQM-000000037vN-0R7F;
	Mon, 08 Jul 2024 08:08:38 +0000
Received: from mail.interestingperspective.pl ([217.61.97.94])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQjQG-000000037uo-3HX3
	for b43-dev@lists.infradead.org;
	Mon, 08 Jul 2024 08:08:34 +0000
Received: by mail.interestingperspective.pl (Postfix, from userid 1001)
	id 22A8384E0E; Mon,  8 Jul 2024 09:06:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=interestingperspective.pl; s=mail; t=1720426013;
	bh=EywM+E+OIUr7RnYatSz3YfoNTVB6dOfImeA7tdj3yJA=;
	h=Date:From:To:Subject:From;
	b=t5Vl01+vx4Muag5deFA7/cQke540k+Wm2KtksOKVik8NZ9fR3xjbWUj1L+7R6a+QD
	 1NAPoJ0hxoaZbqPyHHNuIUk83Ca6MZdJpkqnGv4oD2CUHFVlRpLmwzR+E2io6vuigE
	 g1GswFDUCi16mmjRdaEIQ2uG8ZiTqf6dUvzBasUR1UFTG026P/jV3He9OGhcQsuU0O
	 N8UdndCz8T1WmOGgFKDaC0/ATPnH/PLyrYZU1JV2RZPJC1fgZWARGTV7MzRf/8zCnC
	 vNHxTZ0/WfnIuyDuPaPgym5co92CGmro3GYQyE7976zYfc57oiGB+1Cyf+ZqdaRnPK
	 l7SrpGj4oqVXA==
Received: by mail.interestingperspective.pl for <b43-dev@lists.infradead.org>; Mon,  8 Jul 2024 08:05:31 GMT
Message-ID: <20240708074501-0.1.dt.1f0t2.0.ce5pcq8pn7@interestingperspective.pl>
Date: Mon,  8 Jul 2024 08:05:31 GMT
From: "Kamil Tralewski" <kamil.tralewski@interestingperspective.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.interestingperspective.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_010832_971355_33AEEFEF 
X-CRM114-Status: UNSURE (   2.76  )
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
