Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AD69C19776
	for <b43-dev@archiver.kernel.org>; Fri, 28 Feb 2025 08:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZHYpP1tgfFoCcJqWzq5Ujp33P+jj5zIGk3/8H9Yj5h8=; b=JWVdRZam5EqDSm
	f2NUJNaEo2S6IeRyYAe+I3XaM0K+XYAAbCAtCgILeRtux8DFBt28hTU+LOkOdk54xIjejqdo1TfkH
	JW7s5w39282G+iZ/AlzyO3OU/sQvouOCAbDDnZFL+I77vW0A2hEy1GmpsOJpfs5/WqxW5T9UKjc7r
	deHNVNi8sbTN3MuUjWO+TPKwJNbv2dKHBR3bpbVSLvWX0ruPNHQqEAPNlzodQdemqivBlB3gBrsIF
	JT30jhV6lUBO64MQs/IxVYAiz4bnXJpp2gHc5/2vjCMKrkItYVpMqsRx5LdpaFFRdxz2StEVu6Vuf
	SOD/eigFMTYc5sg0YxcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvoL-0000000ACTQ-3AyS;
	Fri, 28 Feb 2025 08:33:33 +0000
Received: from mail.commetrax.com ([141.95.18.165])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvme-0000000ACCR-0OEf
	for b43-dev@lists.infradead.org;
	Fri, 28 Feb 2025 08:31:49 +0000
Received: by mail.commetrax.com (Postfix, from userid 1002)
	id 5C81A257E5; Fri, 28 Feb 2025 09:31:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commetrax.com;
	s=mail; t=1740731499;
	bh=5Ag/W9YjfbFJOGLdiTXWgO7Nle+kHbv1rgCfGcU2GBw=;
	h=Date:From:To:Subject:From;
	b=VMyQpgJuBARIc9copJYKgnh1WQcySDl4FTl27MvhP9/Ci8PWjqSku8isBNBMejNvE
	 jzi9B5oV9FiLz9JyJ+hy2gh1IY5mUOVtscqvCfXbYCJFsOfznShyGEWC4INLKUzAIX
	 icqTAXXJT+DLaTlLwvr7fOZLUvJmnizG2SxdxfgW6PeXk8585ZYjp6nTD7hpi8zXO6
	 B6lxBpU7k2RCtPJVOO2s+VWWTE9b779IeyOCoCugHpU+ZcWwY7wkco7nigppDLKV5t
	 QHUAs0+mu9yBp6euPYn4Pa+/oDED/yViY6e/bqUMiW9Pmm4ni3CkEshNpipZtxBpMY
	 BtOfaNg2Rf2ZA==
Received: by mail.commetrax.com for <b43-dev@lists.infradead.org>; Fri, 28 Feb 2025 08:31:11 GMT
Message-ID: <20250228084500-0.1.85.mkd1.0.a06m6puckw@commetrax.com>
Date: Fri, 28 Feb 2025 08:31:11 GMT
From: "Vincenc Turek" <vincenc.turek@commetrax.com>
To: <b43-dev@lists.infradead.org>
Subject: Message from production
X-Mailer: mail.commetrax.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_003148_281199_84E29279 
X-CRM114-Status: UNSURE (   1.39  )
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

SGVsbG8sCgpXZSBzcGVjaWFsaXplIGluIG1hbnVmYWN0dXJpbmcgcGFja2FnaW5nIGZvciB0aGUg
Zm9vZCBpbmR1c3RyeSwgc3VjaCBhcyB0aG9zZSBmb3Iga2V0Y2h1cCwgbXVzdGFyZCwgYW5kIHNh
dWNlcy4KCldlIGFsc28gb2ZmZXIgc29sdXRpb25zIGZvciBob3VzZWhvbGQgYW5kIGNvbnN0cnVj
dGlvbiBjaGVtaWNhbHMg4oCTIHBhY2thZ2luZyBpbiB2YXJpb3VzIHNpemVzIGFuZCBzaGFwZXMg
dG8gbWVldCB5b3VyIHJlcXVpcmVtZW50cy4KCk91ciBwcm9kdWN0cyBhcmUgZHVyYWJsZSBhbmQg
cmVzaXN0YW50IHRvIGRhbWFnZSwgZW5zdXJpbmcgZmFzdGVyIGFuZCBoYXNzbGUtZnJlZSB0cmFu
c3BvcnRhdGlvbiBvZiB5b3VyIGdvb2RzLgoKSG93IGFib3V0IGEgc2hvcnQgcHJlc2VudGF0aW9u
IG9mIG91ciBvZmZlcj8KCgpCZXN0IHJlZ2FyZHMKVmluY2VuYyBUdXJlawoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QK
YjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
