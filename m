Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC35C3DA5D
	for <b43-dev@archiver.kernel.org>; Fri, 19 Jul 2024 08:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M0GXBtHJr7nhVQCi6jQZEXsQl4wkehKu0WSEFPDUNdc=; b=W8QOfG2/xlRqp5
	4M9msF990d8q7dngCVq8VxAHiEQBC5sZrTC1HtDVJTYEgQ9mdNU3OR12pKbHevvJCqNJAJXGlZ1Uq
	iWWlfsECTf8mR5y7muZIwvoafBthbxZZ0cELGUhbaOwJQQexGMUfu/RFf2JP1yO3P/uNF5QjJYkCN
	CNVByEy9OW3HAkTYulB3hwJmpizaZIq+fVmVvAXNrMDSWySKSzHQjG74m2arKZwEujwruvS6nFbxq
	dtuglVmsPLUc0LtZSOmkzPEhE4Eedw05AdQ/toqylCgX+6+pqgJVHWsDQmtrekobHTKk/P+M2t+La
	9bl4ba2tphTLDAHkuRGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUidv-00000001zvc-1hgL;
	Fri, 19 Jul 2024 08:07:07 +0000
Received: from mail.originateinc.pl ([217.61.97.94])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUidp-00000001zv8-3qNO
	for b43-dev@lists.infradead.org;
	Fri, 19 Jul 2024 08:07:03 +0000
Received: by mail.OriginateInc.pl (Postfix, from userid 1001)
	id 12F3C86951; Fri, 19 Jul 2024 09:06:50 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=OriginateInc.pl;
	s=mail; t=1721376420;
	bh=EywM+E+OIUr7RnYatSz3YfoNTVB6dOfImeA7tdj3yJA=;
	h=Date:From:To:Subject:From;
	b=QdmNYXR71xGAG8QM9lFIBk2RNLu5aWTds85ihLYsf6F8YhYH+q8o0oiZjSfHtR92n
	 M8/t0vr64qoXtKG/DAwpTT+Rk15XAE7S4q1B3QXRHrrN4YA5w8G/WFBNv7sCJ67j7S
	 XaholF6VVOJgyHn0If1Jl/+KZaPwMY5Zsdrw//qLmhJrsKnr3sHas2917Ontp2Y1dL
	 FkFeMjYSPlp+gGFYJOZMfmykPITezirueaYJGGd0ZBs9CGoJ0w2p0SbnnK4UcbSmDu
	 f0nHiBF7h7FReYv2rApQfl7C4rXj+JuET8DCUe/pfQh0pHxkYv7qQKXp18nqY6hxpQ
	 CAhc0H4gCX9tg==
Received: by mail.OriginateInc.pl for <b43-dev@lists.infradead.org>; Fri, 19 Jul 2024 08:05:53 GMT
Message-ID: <20240719074502-0.1.e2.1f0t2.0.pwqn38j7hc@OriginateInc.pl>
Date: Fri, 19 Jul 2024 08:05:53 GMT
From: "Kamil Tralewski" <kamil.tralewski@originateinc.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.OriginateInc.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_010702_107712_5029C112 
X-CRM114-Status: UNSURE (   2.72  )
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
