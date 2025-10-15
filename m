Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE648CCD185
	for <b43-dev@archiver.kernel.org>; Wed, 15 Oct 2025 07:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cYNNo6uGdni4VI9OjdLxTj7GEemTfhrKHB+3yosqUVk=; b=KQobJebFWmQQe/
	PT7WClh5rd3m74nnF4JFdpjoCTy5FgAecCSuY1MzDjWCyzP65heAOsL77Nt1IQgVgahTRskgAJFC5
	lr22aIEvGz6JG7YCJh35GEtAZLWK2dVUYyP1tZo7aFWVf9qm2B9qkW2Fh4BEq2qp6hu+lDZB1go7X
	7fTKv9NWVKS3aOC9jNh43Jrhe+zweMemUgv43XA4g4jqch99FuSXj01wZFzmXB91JWigFOvStleEZ
	Qpew2u+bkb19CIybt6e+l62SbeCd0zd8Zn3G+lZ/jZSfaIt/Jp7xhtOueDID/+HBdkVTWv8PRgSno
	RsVk7nt5XxmsaBZeYqPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w4C-00000000lxP-0l7n;
	Wed, 15 Oct 2025 07:37:00 +0000
Received: from mail.commetrax.com ([141.95.18.165])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w46-00000000lw7-3Yh7
	for b43-dev@lists.infradead.org;
	Wed, 15 Oct 2025 07:36:56 +0000
Received: by mail.commetrax.com (Postfix, from userid 1002)
	id D95F324503; Wed, 15 Oct 2025 09:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commetrax.com;
	s=mail; t=1760513809;
	bh=M2z+nFeXqIRcbI6rcgrOtIQjqLLid9ZQ1XheJsIeFLM=;
	h=Date:From:To:Subject:From;
	b=agsLGb1I1IBWiI+asBxfW4dqwZvPkJGeV1Y7KOmunRVZUgltjcHd9dZ81QhyPXibv
	 h1kmCVrZcfLlUuQ7ckZVnCo5LAyfR4pXSlAPuVg7W2U+O/lbHAA1ul+sbmoSxrDB0M
	 wWu/4ZxOpNzqs0dIOLJ55JtOPQTJrxlqP8u1BZf7RW13mZ0Q86+G3jA42iyUAv7Pua
	 BlD09V3DyCGP7qvZtPR227igpiNYF+RNv3L2uSGBcVG1zhOeODpzhdRE9ML/WeuwYE
	 5tXH2PO7L1CprMTALQsGtavyH43tcbokO+ttleWMQznMQDj158s1aqOoYhN35mXzwi
	 9hb20PE15zRfQ==
Received: by mail.commetrax.com for <b43-dev@lists.infradead.org>; Wed, 15 Oct 2025 07:35:54 GMT
Message-ID: <20251015084501-0.1.ca.16t62.0.9d1rrlbcgq@commetrax.com>
Date: Wed, 15 Oct 2025 07:35:54 GMT
From: "Luke Walsh" <luke.walsh@commetrax.com>
To: <b43-dev@lists.infradead.org>
Subject: Welders ready to work
X-Mailer: mail.commetrax.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_003655_174220_0B2F7AB6 
X-CRM114-Status: UNSURE (   2.38  )
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

SGVsbG8sCgp3ZSBzdXBwb3J0IGNvbXBhbmllcyBpbiBjYXJyeWluZyBvdXQgaW5kdXN0cmlhbCBw
cm9qZWN0cyBieSBwcm92aWRpbmcgd2VsZGluZyBhbmQgYXNzZW1ibHkgb2Ygc3RlZWwgc3RydWN0
dXJlcyDigJMgYm90aCBvbi1zaXRlIGFuZCBpbi1ob3VzZS4KCkluIHByYWN0aWNlLCB0aGlzIG1l
YW5zIHdlIGVudGVyIHdpdGggYSByZWFkeSB0ZWFtIG9mIHdlbGRlcnMgYW5kIGZpdHRlcnMsIHRh
a2UgcmVzcG9uc2liaWxpdHkgZm9yIHByZXBhcmluZyB0aGUgY29tcG9uZW50cywgdGhlaXIgaW5z
dGFsbGF0aW9uIGFuZCBxdWFsaXR5IGNvbnRyb2wuIAoKVGhlIGNsaWVudCByZWNlaXZlcyBhIGNv
bXBsZXRlLCBzYWZlIGFuZCB0aW1lbHkgZGVsaXZlcmVkIHN0cnVjdHVyZS4KCklmIHlvdSBoYXZl
IHByb2plY3RzIHRoYXQgcmVxdWlyZSBzdGVlbCBzb2x1dGlvbnMsIHdlIHdvdWxkIGJlIGhhcHB5
IHRvIHRhbGsgYWJvdXQgaG93IHdlIGNhbiB0YWtlIG92ZXIgdGhpcyBwYXJ0IG9mIHRoZSB3b3Jr
IGFuZCByZWxpZXZlIHlvdXIgdGVhbS4KCldvdWxkIHlvdSBiZSBvcGVuIHRvIGEgc2hvcnQgY29u
dmVyc2F0aW9uPwoKCkJlc3QgcmVnYXJkcwpMdWtlIFdhbHNoCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iNDMtZGV2Cg==
