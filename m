Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 954D2C3DA5D
	for <b43-dev@archiver.kernel.org>; Mon, 22 Jul 2024 08:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=07ePDtOxqhRe0oTZQsG6vjRZsQNlB5ZQuKsRyAUy98A=; b=ULAfn+7Wcw0L09
	RKs3KbEVzokDKX+kt5baDAdBv803tQ/jwcSREg3vcSZ4pgpWOsuWJ6EEJFtBOFwl53XCC5SCCDvJ3
	rQ0o7RRmqfA/PK4qU9DLNQNbR5ucHoSF8LDQ7bEQvmeg0/RY9g9RJar0zqSBAPknb4nH3iKn2bh7g
	sRZu9rB1XtXiqRkdfBhu1OE07YB5CBFgrjRFOoebml9cjhUAGOHs/kXhqUn3Vu7o5d7bD6Ww0E7hh
	fLgzBOzp0Y/opjmnPpxHAAsRGcF0SuuperYVhJMCdAjrYqjwjRvl3tKF3xbDDkPnwvU5zx92P/RqR
	Mph0+9odCKM1byBZh24Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoLy-00000008sJJ-1CkI;
	Mon, 22 Jul 2024 08:25:06 +0000
Received: from mail.amguid.pl ([195.231.81.127])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoLr-00000008sFb-3vnW
	for b43-dev@lists.infradead.org;
	Mon, 22 Jul 2024 08:25:01 +0000
Received: by mail.amguid.pl (Postfix, from userid 1002)
	id 69A7A82B5D; Mon, 22 Jul 2024 10:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=amguid.pl; s=mail;
	t=1721636141; bh=nK3HJCWtGqKma5JWHBvPCRnge7G8/Jda5vEhHlXUwlo=;
	h=Date:From:To:Subject:From;
	b=Yz0UxfW9HHqDYTb5c+mOfRV6GbhugumQbfGRrBOzUofT9Hwd+o4BkkWGONtJPUpiM
	 PCBCq9p0Eb9yz4V/AfDnlBC2xtNRmo7AX96N1OPgNT/XqFL2PqHxDRlATo3rDLLwpd
	 i6UTYJLff8yMO96hJoNFeSh2wtzM21NH3GdKYVDZq3rYvCrA5aWpD6WfJfxGNyLxfx
	 aDcQmpkaigo1C/RpqnrKQIXjCryPyvgSoI7IVc+NCRQ1QILhwOMF1AQIKJ5tjSxpd/
	 qyPK9jU85pX6inlckWz2GpkjSv3lNnOJZJnEgula/eJ+ACDZIRLUoeifP5zq18C3HI
	 BGLoAuUUYAFyA==
Received: by mail.amguid.pl for <b43-dev@lists.infradead.org>; Mon, 22 Jul 2024 08:15:36 GMT
Message-ID: <20240722084500-0.1.5b.c27y.0.7ffjorkc38@amguid.pl>
Date: Mon, 22 Jul 2024 08:15:36 GMT
From: "Joanna Gruszka" <joanna.gruszka@amguid.pl>
To: <b43-dev@lists.infradead.org>
Subject: Kandydatki na stanowiska
X-Mailer: mail.amguid.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_012500_417994_A5DFEB25 
X-CRM114-Status: UNSURE (   0.61  )
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

U3phbm93bmkgUGHFhHN0d28sCgpwb3NpYWRhbXkgYmF6xJkgMzAgd3lrd2FsaWZpa293YW55Y2gg
a29iaWV0LCBrdMOzcmUgc8SFIGdvdG93ZSBkbyBwb2RqxJljaWEgcHJhY3kgbmEgbWFnYXp5bmll
IGkgdyBwcm9kdWtjamkuCgpQcnplam11amVteSB3c3plbGtpZSBmb3JtYWxub8WbY2kgendpxIV6
YW5lIHogemF0cnVkbmllbmllbSBpIG9kZGVsZWdvd2FuaWVtIG5hIHN0YW5vd2lza28gcHJhY3ks
IG1pbmltYWxpenVqxIVjIGtvc3p0eSBwbyBQYcWEc3R3YSBzdHJvbmllLgoKT2JzxYJ1Z3VqZW15
IHcgdHltIHpha3Jlc2llIG1hcmtpIHRha2llIGphazogQW1pY2EsIEFsdXBsYXN0IGkgU3VwZXJp
b3IgSW5kdXN0cmllcy4gQ2jEmXRuaWUgcHJ6ZWRzdGF3acSZIHJlZmVyZW5jasSZLgoKUHJvc3rE
mSBvIGluZm9ybWFjasSZIHp3cm90bsSFIGN6eSBzxIUgUGHFhHN0d28gemFpbnRlcmVzb3dhbmku
CgoKUG96ZHJhd2lhbQpKb2FubmEgR3J1c3prYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YjQzLWRldgo=
