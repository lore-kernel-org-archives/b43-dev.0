Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00270C36014
	for <b43-dev@archiver.kernel.org>; Wed,  2 Apr 2025 07:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7WQn4VdqYDh9HBg7DkkDPv9jRLSxVyLWIJVwGzhEJr8=; b=JtyqsDGkNBD9GH
	8l9Bowj+k5LU8UeL9NFnGhdwUX5iGbFQslEDYxInYjX6ibEVIOfSzvgRNo48+Xw0WDQMTWdyGUfw7
	PBIr+kWxY1BDgqWq5A4wmOocLdm+j/rxyCYn+jbhfchqT22W915Cmcn4Dna737L4N8yJM+Ch5EyTY
	bQ1iFZV1ekgxLrJsUv+w6lrqpEme5TP8VG7sC80zcr9t+BnyKv8wf4yiZSzHCsyicCuo/cSiyWMMm
	HmOcx+sdkLGZ3k6SN6Y4gy5V/BW8JcapptJ6XuBrr0DsNPV+ULj3gEodyLJkJDkD4vD9f7Wg7xe8j
	VHT9/WV9AbXZ8N0zl/7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzsdo-00000005Ose-199s;
	Wed, 02 Apr 2025 07:36:04 +0000
Received: from mail.primefinix.com ([141.95.160.218])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzsdl-00000005Opz-0iMP
	for b43-dev@lists.infradead.org;
	Wed, 02 Apr 2025 07:36:03 +0000
Received: by mail.primefinix.com (Postfix, from userid 1002)
	id 0E743A5064; Wed,  2 Apr 2025 09:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=primefinix.com;
	s=mail; t=1743579356;
	bh=eTw/Ga5/N6mVrc9xwMpMFYxdgBp3YtFvnyozeSy1je8=;
	h=Date:From:To:Subject:From;
	b=bKbFMHVxC8d97dEAP0wk3vo14CIf5efCCgxhECmyYakWFg6Niw4mjaBz4f1MEkQOF
	 Ll4ZZnLjyCQHI6szcLcK97Bz2uLRcKWxFIz7LMY856S/16PzuQzC6WzEHBCdO3Ln22
	 hb05i6zZlp3ASRN5Owb1I79sv1dwZuJ7GHgd2eopSEGNJuQRUQjZYY+isNoPWJsz/T
	 xEF/XvAJb1DBNnzAbtERmSA9RwSfwBhlPwYSlj3wTzrwoxacwp6DbRbpthRfUdJ8Bi
	 J+4CLFbzT8+zj+USMyJ8xz6FiE7bYxtkOFupU4lfR7zaHIeECpIMoatw8OQ9lSwl37
	 n/0Q/GPAHh+Qw==
Received: by mail.primefinix.com for <b43-dev@lists.infradead.org>; Wed,  2 Apr 2025 07:35:37 GMT
Message-ID: <20250402084500-0.1.jt.1xsqu.0.nnhupsgdq5@primefinix.com>
Date: Wed,  2 Apr 2025 07:35:37 GMT
From: "Brendon Roy" <brendon.roy@primefinix.com>
To: <b43-dev@lists.infradead.org>
Subject: Mattresses - collaboration
X-Mailer: mail.primefinix.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_003601_890019_BB4CD8F0 
X-CRM114-Status: UNSURE (   2.59  )
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

SGksCgpEcm9wc2hpcHBpbmcgb3VyIG1hdHRyZXNzZXMgaXMgYSBzb2x1dGlvbiB0aGF0IGlzIG5v
dyBnYWluaW5nIGEgbG90IG9mIHBvcHVsYXJpdHkg4oCTIHNpbXBsZSBzYWxlcyB3aXRob3V0IHRo
ZSBuZWVkIHRvIGludmVzdCBpbiB3YXJlaG91c2luZywgbG9naXN0aWNzLCBvciBzaGlwcGluZy4K
CllvdSBzZWxsLCBhbmQgd2UgdGFrZSBjYXJlIG9mIHRoZSByZXN0LiBXaGF0J3MgbW9yZSwgd2Ug
ZG9uJ3QgbGVhdmUgeW91IG9uIHlvdXIgb3duIOKAkyB3ZSBoZWxwIHdpdGggc2FsZXMgYW5kIG1h
cmtldGluZyBzbyB0aGF0IHlvdSBjYW4gc2VlIHJlc3VsdHMgZmFzdGVyLgoKQ2FuIEkgcHJlc2Vu
dCB0aGUgZGV0YWlscyBvZiBvdXIgcGFydG5lcnNoaXAgcHJvZ3JhbT8KCgpCZXN0IHJlZ2FyZHMK
QnJlbmRvbiBSb3kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
