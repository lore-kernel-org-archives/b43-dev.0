Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 714CEC5474A
	for <b43-dev@archiver.kernel.org>; Wed, 28 Aug 2024 07:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M0GXBtHJr7nhVQCi6jQZEXsQl4wkehKu0WSEFPDUNdc=; b=a2iCM2R/Fo8h7n
	Nad0i41J3gO4dTH0c48R7mp46mgefE1mijKbia+qHM2mKO5m+lh1YDbfWXhzUk0qkZJLzWe15j+7U
	rvS5idn0K3gqZIfnzfHC9hCjlHpjnNNF+/V3khEAL2+Jff8lLaCLtb4eZustgdV/d5/NLuq33tYco
	VkhqMRwrjqNbkadsNQ4SxH14KoW1u6oygFNJzarvYBN9KY+N/DpaVvq+KA/iMTYj5M+BWmCzXUe/p
	vSVTwAXlBHwrx2suGwT9pXrwm9ckQOGCkiN2mYlK4XaGf7SSdXNmKUbxHBt1u46PX41F7blh8wJh3
	lmpPERXGwLeTnq3EkgDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDFl-0000000EK8J-1tlb;
	Wed, 28 Aug 2024 07:38:05 +0000
Received: from mail.originateinc.pl ([217.61.97.94])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDEW-0000000EJmY-43Tn
	for b43-dev@lists.infradead.org;
	Wed, 28 Aug 2024 07:36:50 +0000
Received: by mail.OriginateInc.pl (Postfix, from userid 1001)
	id A56AC84191; Wed, 28 Aug 2024 08:36:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=OriginateInc.pl;
	s=mail; t=1724830605;
	bh=EywM+E+OIUr7RnYatSz3YfoNTVB6dOfImeA7tdj3yJA=;
	h=Date:From:To:Subject:From;
	b=mnGW11goadSPvu/39UkWVs2+ENHtn1LfSnITdB3UIQWIIXPqVr4hxr92juIjMakZl
	 RrvPn7NjjhmVz0hXonzLj8J7/ffCYfUIu8SJDhSBCmDcZKIB7WBdd/o3Xegia+kuXd
	 zzNsPHnpJnuxXRvfg+H+vrcReykhUPK2n2dpqN5Fdltd1bqOy/6n8ERRrod/TpheGL
	 ApLXut2SQdzehweLu15T9QUf6/6DpxaEm7mw951CWMW4bkCRaIM97gGMK/QPl932qw
	 QJY65Rh1CmgDXsqv0ALaYUU0uY+L4pnmku/wNPLG15zx2aHNNtaUGhSY04QPqidHWt
	 GAybF6SjpQqLg==
Received: by mail.OriginateInc.pl for <b43-dev@lists.infradead.org>; Wed, 28 Aug 2024 07:36:11 GMT
Message-ID: <20240828074503-0.1.et.1lnpp.0.anyhta3iyp@OriginateInc.pl>
Date: Wed, 28 Aug 2024 07:36:11 GMT
From: "Kamil Tralewski" <kamil.tralewski@originateinc.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.OriginateInc.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_003649_149734_D71E54F2 
X-CRM114-Status: UNSURE (   2.54  )
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
