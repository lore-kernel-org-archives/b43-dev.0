Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EC81CD4F5B
	for <b43-dev@archiver.kernel.org>; Tue, 19 May 2026 19:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:Cc:Message-Id
	:Date:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qaLDT/6rlcU2FuOsFSy3XPNVuNGkQX42EysPlt7/or4=; b=fq2VxiqYZj9E4hQ5h2k0rRjCXm
	G7FoOP2749Ipp+3Q5CnIUeUaKi5oWxGWNTOzNny0me/A9JEyyp8ZyqCSJ0XiGdDHLhEhFAU1djnc4
	oEx2L2Zm6V000W1Z0LafNi9ZuWai6akxvjWrM14FWTY8rLexmBK15TdVFW7+y3PqN/XI8OuEl+rXm
	Fx4PPhDKQl+v+rgd2Z2DURSJg/HAXMCXrGkw3Y0lE8jhNAQhAJH7Vf8bBEce09BBS+DTYSfd4xbmq
	ZRtbuxdE1jwaPjFk2nczb17DgKEPHIkVOm3gX5HQhtDv/7JJCoh0Cikvxt9Unu8Xotzk8kj7HBdfm
	BeM83LKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPQBV-00000002csP-3Xb4;
	Tue, 19 May 2026 19:32:57 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPQBS-00000002crO-0rDk
	for b43-dev@lists.infradead.org;
	Tue, 19 May 2026 19:32:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=In-Reply-To: References: To: From: Subject: Cc: Message-Id: Date:
 Content-Type: Content-Transfer-Encoding: Mime-Version; q=dns/txt;
 s=fe-953a8a3ca9; t=1779219172;
 bh=TtM2W9AwNWKVP95jJPXeNWdZKkI7gPqVnCltipJQpbM=;
 b=akCew3s+F8yoX1yE4/ow0RTWBa5v832uFq/ZXBosEK/9n+N9savRObVOlZEe9AxjMHVJR/f75
 iAqIJviFOmHMB7hTYwb8LvHPh4c9GC/8Wse2UIpUhb2BtRi8op9NMZ0CKhcsnPtHZPlYMLHvp5i
 dsjgTqzwT77ZwofQCr0H98zMfi8uN+y8vQxnd/Lzg4jch2vj+RyIqHSvk/0dxEpf40Wq2Ey39ZI
 Sx+14JauyZbN5FGIWxyiXa9B4nbaKGprbL56T0Is5QyycAdHdC2qEUgt/YFOzSmA+F93+p0n1sM
 bSSpRBrxjtmirUZcuxpiInPbuRkiluTybL3CMqUpw80A==
X-Forward-Email-ID: 6a0cbadd1469872a31cd8465
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Tue, 19 May 2026 15:32:44 -0400
Message-Id: <DIMWK04RLFCG.17KT0R0YCUMRW@ubuntu.com>
Cc: <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <kvalo@kernel.org>, <linux-kernel@vger.kernel.org>, "b43-dev"
 <b43-dev-bounces@lists.infradead.org>
Subject: Re: [PATCH 0/6] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: =?utf-8?q?Michael_B=C3=BCsch?= <m@bues.ch>, "Alessio Ferri"
 <alessio.ferri@mythread.it>
X-Mailer: aerc 0.21.0
References: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
 <20260519175812.7ce97ba1@barney>
In-Reply-To: <20260519175812.7ce97ba1@barney>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_123254_327155_07B763FC 
X-CRM114-Status: UNSURE (   9.90  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="Flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

T24gVHVlIE1heSAxOSwgMjAyNiBhdCAxMTo1OCBBTSBFRFQsIE1pY2hhZWwgQsO8c2NoIHdyb3Rl
Ogo+IE9uIE1vbiwgMTggTWF5IDIwMjYgMDM6NDk6MzMgKzAyMDAKPiBBbGVzc2lvIEZlcnJpIDxh
bGVzc2lvLmZlcnJpQG15dGhyZWFkLml0PiB3cm90ZToKPgo+IEluIGdlbmVyYWwgdGhpcyBsb29r
cyBPay4KPiBGcm9tIHRoZSBzdHlsZSBJIGFzc3VtZSB0aGF0IHRoaXMgaXMgQUkgZ2VuZXJhdGVk
LCByaWdodD8KPiBJZiBzbywgY2FuIHlvdSB0ZWxsIHVzIGEgYml0IG1vcmUgYWJvdXQgdGhlIGlu
cHV0cyB1c2VkIGZvciB0aGUgQUk/Cj4gV2hhdCBpbmZvcm1hdGlvbiBpcyB0aGlzIGltcGxlbWVu
dGF0aW9uIGJhc2VkIG9uPwoKU28uLi4gYXdrd2FyZCBxdWVzdGlvbi4gV2Fzbid0IHRoZXJlIGp1
c3QgYSBjb252ZXJzYXRpb25bMV0gYWJvdXQgdGhlCmZ1dHVyZSBkZXZlbG9wbWVudCBvZiB0aGlz
IG1vZHVsZSwgdGhhdCB3YXMgbGVmdCBvZmYgYXQgImRvbid0IHRvdWNoIGl0CnVubGVzcyB5b3Un
cmUgZ29pbmcgdG8gdGhvdXJvdWdobHkgdGVzdCB0aGlzIiwgYW5kIG5vdyB3ZSBhcmUgZ29pbmcg
dG8KaGF2ZSBhICpMTE0qIHdvcmsgb24gdGhpcz8KClRoYXQgYXNpZGUsIEkgZG9uJ3Qgc2VlIGFu
eSBvYnZpb3VzIGlzc3VlcyBpbiB0aGUgcGF0Y2hzZXQuCgpbMV06IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2I0My1kZXYvREhUWUpGR0xLUFEwLlJZSklESDJWTFYzV0B1YnVudHUuY29tL1QvI3QK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYg
bWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
