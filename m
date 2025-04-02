Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62A9FC28B20
	for <b43-dev@archiver.kernel.org>; Wed,  2 Apr 2025 07:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qBBRq/9NQI5IQJ39s1ghFtFcASTEW6DEdkhkGodoe9E=; b=dP9c2u9429rBL6
	uKIigeat4cqBTTRd6CcPRpAF5JBDgVVfRr+97/f1C6R6uhnSkLNVHPUClZ6378xqTCGfQQfeeyyf8
	Ul/dLRoLpKG0p8yP/Q+qzawPaLIesQ2QOMAS/RlVeRDcUDeLPyfLCGic5kKQIunnURFPO81jddOlK
	0jbllO9TU8kW/7h6peSm4ybPKIZAXJYYPsTXgZIajLEvejW/XGsEe1LLNgIWMc44T6AGdvo50n/+l
	nchRgoDj8TCozLC8LKJi3laBqRM0+HA36FdtjN2BnTQVnUTtutfjH+aDJtaGV5aVeGE1LikX7n3s/
	C+yEikPwCnxbLDBhqRXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzscb-00000005OX6-2H1f;
	Wed, 02 Apr 2025 07:34:49 +0000
Received: from mail.commetrax.com ([141.95.18.165])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzsZi-00000005NlZ-08T1
	for b43-dev@lists.infradead.org;
	Wed, 02 Apr 2025 07:31:52 +0000
Received: by mail.commetrax.com (Postfix, from userid 1002)
	id 4B9662169D; Wed,  2 Apr 2025 09:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commetrax.com;
	s=mail; t=1743579072;
	bh=vdHO8YvBK17Mb+rjnMMMnqrXx61uFtvCNBz8M84xHHs=;
	h=Date:From:To:Subject:From;
	b=hJI0BrZJjEr9h9DDhU0YFr1CX0uPFvCW2jEVKXYBzuuIOLaNXfy8aiZnpMHmYEIOx
	 zb/9mxZf65rAT70ssD1PHYLH4CNjKjluA5XDqDPMxSyD+Ued+v8BoHuGr0HZyuQlX+
	 rNSN7NL1+WpNooPr+GSKVCtQE4mY+1769HVfsAsIiMAurzRjOKRlSL3mWpc0a3WPF2
	 egrlgJmuSVyZ9onmWX+mQ9SjQ/C6foBdnQGcq2SdlKn+dmoDL8DxNlyR+lYj5YDTeI
	 i4mXEyiVmkvfQe/pGqIPpflx73l2TodCBWF6OVdo8uvOhIVHpdCeq0PXdACtYLfubT
	 e/KckLL+iDHdw==
Received: by mail.commetrax.com for <b43-dev@lists.infradead.org>; Wed,  2 Apr 2025 07:30:56 GMT
Message-ID: <20250402084500-0.1.8s.t2kb.0.sg30985439@commetrax.com>
Date: Wed,  2 Apr 2025 07:30:56 GMT
From: "Vincenc Turek" <vincenc.turek@commetrax.com>
To: <b43-dev@lists.infradead.org>
Subject: Plastic components and packaging
X-Mailer: mail.commetrax.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_003150_769307_CB8985D1 
X-CRM114-Status: UNSURE (   2.95  )
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

SGksCgpXaGlsZSBicm93c2luZyB5b3VyIG9mZmVyLCBJIGdldCB0aGUgaW1wcmVzc2lvbiB0aGF0
IHBhY2thZ2luZyBxdWFsaXR5IG1hdHRlcnMgdG8geW91IOKAkyBpdOKAmXMgbm90IGp1c3QgYWJv
dXQgcHJvdGVjdGluZyB0aGUgcHJvZHVjdCBidXQgYWxzbyBhYm91dCBidWlsZGluZyB5b3VyIGJy
YW5kIGltYWdlLgoKV2UgbWFudWZhY3R1cmUgSERQRSBhbmQgUFAgYm90dGxlcywgY2FwcywgYW5k
IGJ1Y2tldHMgdGhhdCB3b3JrIHBlcmZlY3RseSBpbiB0aGUgY29zbWV0aWNzLCBjaGVtaWNhbCwg
YW5kIGZvb2QgaW5kdXN0cmllcy4gVGhleSBhcmUgZHVyYWJsZSwgYWVzdGhldGljYWxseSBwbGVh
c2luZywgYW5kIGN1c3RvbWl6YWJsZSBpbiB0ZXJtcyBvZiBjb2xvciBhbmQgY2xvc3VyZXMgdG8g
cGVyZmVjdGx5IG1hdGNoIHlvdXIgYnJhbmQuCgpMZXQgbWUga25vdyBpZiB5b3XigJlkIGxpa2Ug
dG8gZXhwbG9yZSBzb2x1dGlvbnMgZm9yIHlvdXIgYnVzaW5lc3Mg4oCTIEnigJlkIGJlIGhhcHB5
IHRvIHByZXNlbnQgdGhlIHJpZ2h0IHByb2R1Y3RzLgoKCkJlc3QgcmVnYXJkcwpWaW5jZW5jIFR1
cmVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMt
ZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
