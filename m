Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69F22CA0ED1
	for <b43-dev@archiver.kernel.org>; Mon, 18 Aug 2025 07:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=km5db6cBi7Qw9t0AwFE6fYXi+ARkCQS6t8B66ukRa5I=; b=jyN2BDFjcYeluO
	yMNfCCT8k3zEE+8lFk2hnOa7r3aSaE2cwJK5iNwYhLJkng/G+mI7TY4vq4PinyHNvq+U7cl8gOf8B
	yfJc9HOiwUor/ogpqGphCWp1iHMifX4UDk5wQkIDhyyR41L2mc6cqE1h6Tm1IyjvLHPEx9a/EjJMm
	xkw5e+DBeNRzzEPBIBJD2uE78okzna5rGAiNoxYMpeMl5xw/eZL12AYPtt+ry2HSIwBob86HtlhD/
	R22xc6QPSYXnsHgIFluaw0+RCFtJUoySPrOdTO7PaTpVHRDx0jX+FGP3y00vPH1LA9KbvCm3nvGha
	p1G40apJjerUSQD8c5+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unufI-00000006qmS-3eYl;
	Mon, 18 Aug 2025 07:52:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unuNV-00000006nKS-2doh
	for b43-dev@bombadil.infradead.org;
	Mon, 18 Aug 2025 07:34:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=MUVKqSfvoSrfQwKLxkBkNcMeAPDaW/uXn4tfyNXsF2Q=; b=OuIQlgOqv5D4fe8nRk5dW/q02W
	yZKOx+3kwDqMY/Pd/lexP3gqFVhqokMWeISzcS3H3M7vYB1a31zWQdwZvR6lYyZQ0JF/2qAz5Z8HG
	CMVzLmdH4UxHcD424PtpptkdcjEFM/Y+xg7z/KtP+/J5IzsOiAGxNWmxoF8BSQairsgfY+IxRkoEC
	Fk15WySQY0Uwt5+//5bQPQi0iv0nTWg0MfJ0EJfkrWl1Rd2H/FFsLLdtb6nb0VlliJYZxqNv58yUI
	f8wCu0YZkDBIexwOPU0I1ymM6fIGtXApRpWfXXtE937mVpc+o+lNRU3cKdeVT/Gvz1q/I2pcWPf0U
	XVXSJtHQ==;
Received: from mail.primefinix.com ([141.95.160.218])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unuNS-0000000HIiW-2zSA
	for b43-dev@lists.infradead.org;
	Mon, 18 Aug 2025 07:34:00 +0000
Received: by mail.primefinix.com (Postfix, from userid 1002)
	id B23AFA4167; Mon, 18 Aug 2025 09:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=primefinix.com;
	s=mail; t=1755502354;
	bh=MUVKqSfvoSrfQwKLxkBkNcMeAPDaW/uXn4tfyNXsF2Q=;
	h=Date:From:To:Subject:From;
	b=o39325z+h0QqSZ+8g+K8Iw4R6UxN8fYcBK+YtEATORt0b5lftMaiQjfLn8CJ4niV+
	 Q1nlZl2kQcfqRW5Y6pPHAvJMIJGYCmmS8RTm60zNNxl3r5YVE+bFikuZJAPPlp3DeP
	 S4sHUBBDKQw+GOq84PCp4rRRNLtAFc5bQ60kGFZeaJE/EpdKIpH7RxlowEPu8Zjo63
	 H5i4Hj43Js2WK1YZ/fDfdNk9C+fkPfQZOiylM8p/7E8YUAdo/400gcacJOsgnJi7vm
	 zhPKzklQgT+oIKnHwFTvwbXGQU7TiJe4HrFEZOyrRAGNymrOWTLUJhUnVSd9NnNsLA
	 gh7JL1+YfrMVQ==
Received: by mail.primefinix.com for <b43-dev@lists.infradead.org>; Mon, 18 Aug 2025 07:30:30 GMT
Message-ID: <20250818084500-0.1.me.3fi1t.0.sd5f6h7x9h@primefinix.com>
Date: Mon, 18 Aug 2025 07:30:30 GMT
From: "Brendon Roy" <brendon.roy@primefinix.com>
To: <b43-dev@lists.infradead.org>
Subject: New Sales Model
X-Mailer: mail.primefinix.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_083358_919050_42FA8612 
X-CRM114-Status: UNSURE (   3.09  )
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

SGksCgpJJ20gd3JpdGluZyBiZWNhdXNlIHdlIGhhdmUgYSByZWFkeS1tYWRlIG1hdHRyZXNzIGRy
b3BzaGlwcGluZyBvcHRpb24sIGFuZCBJIHRob3VnaHQgaXQgbWlnaHQgZml0IHdpdGggd2hhdCB5
b3UncmUgYWxyZWFkeSBkb2luZyAob3Igd2FudGluZyB0byBleHBhbmQpLgoKTm8gd2FyZWhvdXNl
LCBubyBwYWNrYWdpbmcsIGFuZCBubyBzaGlwcGluZyDigJMgeW91ciBjdXN0b21lciBvcmRlcnMs
IHdlIHNoaXAsIGFuZCB5b3UgZ2FpbiBhbiBhZGRpdGlvbmFsIHNvdXJjZSBvZiBpbmNvbWUuCgpJ
ZiB5b3UncmUgaW50ZXJlc3RlZCwgbGV0IG1lIGtub3cuIEknbGwgc2hvdyB5b3UgaG93IHdlIHdv
cmsgdG9nZXRoZXIuCgoKQmVzdCByZWdhcmRzCkJyZW5kb24gUm95CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMt
ZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iNDMtZGV2Cg==
