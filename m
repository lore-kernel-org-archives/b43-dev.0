Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE70DCA5FA2
	for <b43-dev@archiver.kernel.org>; Mon, 28 Sep 2026 13:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBeY5jMV39yvS7uuTB8Lctq1xGrnCTca3AHWASdRWlw=; b=j88YNU2yZxGNT1
	U5VzMVdfjP+fzphSxkPDylDabwbr7ygjIE5+6yfkS2kw8e/QpUZjsVzhGg2heIvKcL+jIWrOMVWhH
	j4fYmA87GytspOnmHBX5bQBHoI0qNFRZMQduTg5NEHtl7auiYjxJmnAI7oQPBglIf9q5FHvmgly1D
	0/ZviEzwjFt5uEmDepwI3IAaRx8T2tyjUX8UrrusAeQZk+2PPV5PAGD4+yaHKET3slgtXM2eVWeBK
	+rkUk+Ovq7Pl4/+CZ7dqX+7MYhdVTYSKGzeq0RW+Qygrw+yZ4chuwnUTWDPzfTFbiEPa0DcCHhBva
	lM5+3NT/PZSkOoAPYnxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBBdD-00000000gdK-0mGb;
	Mon, 28 Sep 2026 13:42:59 +0000
Received: from mail-10696.protonmail.ch ([79.135.106.96])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBBd4-00000000gaX-2XIz
	for b43-dev@lists.infradead.org;
	Mon, 28 Sep 2026 13:42:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1790602967; x=1790862167;
	bh=b5b4nT0lasVhh8LZ17W/xUA0ZetiKOmUcfV0l+PgSaU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=bukzr/ZUPxhIC+nRyefTTXyl9Bu3+rSgNHdf7EGOez+iuBrbah14gvwyfWefC/Q9D
	 ywFmoY3W9srhGzcazQ/4Dw7ADL6Xe1lN0MaLb3tC9U+Fd9t/TWKjWPTjkMmj/ZegMg
	 9M2Z57ag24be+CIuOqZuuDHz8M8gzYrqCN8SqAOwijTM7isEablr08+7K6bXZAuOkP
	 H3gu0IJ5WeuAuF0zjGYxyJc7RgyDAAhcSZMYNNAkeu4k6S/RT2QEZhUo0WpbW1tr24
	 3SAETZCzb+ruZF/IGY+K2upg83g0tB2sOUk5cOp+0SZHthvC1kkc4XfzT7tCHZx/ZO
	 A/h0rJU8eplww==
Date: Mon, 28 Sep 2026 13:42:42 +0000
To: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: =?utf-8?Q?AW:_BCM4360_AC-PHY_support_for_b43_=E2=80=94_reverse-engineered,_seeking_guidance_on_a_clean_path_upstream?=
Message-ID: <ih-lXs5OlHxMhydtcZFtKNhGg3cGlR137CEMZ07_zFQcfCYAImW6MRWPDjkdwy-xK9bIwpDK9ImgerqHmQMsAxX3ckEjsiN8QoCSlpvIsSM=@proton.me>
In-Reply-To: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: f1a41cc7eebde86c161a6d436ac62854c9386129
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_064250_811861_AF6ACEAC 
X-CRM114-Status: GOOD (  10.69  )
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

SGksCkkndmUgYmVlbiB3b3JraW5nIG9uIGFkZGluZyA4MDIuMTFhYyBBQy1QSFkgc3VwcG9ydCB0
byBiNDMgZm9yIHRoZSBCQ000MzYwIChNYWNCb29rQWlyNiwxKSwgc2luY2UgYjQzJ3MgZXhpc3Rp
bmcgcGh5X2FjLmMgaGFzIG9ubHkgZXZlciBiZWVuIGEgc2tlbGV0b24gKGFsbG9jYXRlL2ZyZWUg
cGx1bWJpbmcsIG5vIHJlYWwgaW5pdCBvciB0dW5pbmcpIGFuZCBCcm9hZGNvbSdzIG93biB3bCBk
cml2ZXIgaXMgdGhlIG9ubHkgdGhpbmcgdGhhdCdzIGV2ZXIgYWN0dWFsbHkgd29ya2VkIG9uIHRo
aXMgY2hpcC4KCkkgd2FudCB0byBiZSB1cGZyb250IGFib3V0IGhvdyBJIGdvdCB0aGVyZSwgc2lu
Y2UgaXQgZGlyZWN0bHkgYWZmZWN0cyB3aGF0IChpZiBhbnl0aGluZykgaXMgc3VibWl0dGFibGU6
IEkgcmV2ZXJzZS1lbmdpbmVlcmVkIHdsLmtvIOKAlCBkZWNvbXBpbGluZyBpdCBhbmQgY2FwdHVy
aW5nIGl0cyBsaXZlIHJlZ2lzdGVyL1NITSB3cml0ZXMgb24gcmVhbCBoYXJkd2FyZSDigJQgYW5k
IHVzZWQgdGhhdCB0byB3cml0ZSBhIHdvcmtpbmcgZHJpdmVyLiBUaGF0IGRyaXZlciBpcyBub3Qg
Y2xlYW4tcm9vbSBhbmQgSSdtIG5vdCBwcm9wb3NpbmcgdG8gc3VibWl0IGl0IGFzLWlzOyBoYXZp
bmcgdGhlIHByb3ByaWV0YXJ5IGRyaXZlcidzIGRlY29tcGlsZWQgbG9naWMgaW4gdmlldyB3aGls
ZSB3cml0aW5nIGl0IGlzIGEgcmVhbCBwcm92ZW5hbmNlIHByb2JsZW0sIG5vdCBqdXN0IGEgc3R5
bGUgb25lLgoKV2hhdCBJIGFtIGhvcGluZyBpcyBtb3JlIHVzZWZ1bDogSSd2ZSBzaW5jZSB3cml0
dGVuIHVwIGEgZnVuY3Rpb25hbCBzcGVjaWZpY2F0aW9uIOKAlCBjaGlwIGJyaW5nLXVwLCBjaGFu
bmVsIHR1bmluZywgVFgvUlggaGVhZGVyIGZvcm1hdHMsIGFuZCB0aGUgc3BlY2lmaWMgcGl0ZmFs
bHMgdGhhdCBjb3N0IHJlYWwgZGVidWdnaW5nIHRpbWUgKGEgZnJhbWUtbGlmZXRpbWUgcmVnaXN0
ZXIgdGhhdCBzaWxlbnRseSBzdGFsbHMgY29ubmVjdGlvbnMgaWYgbGVmdCB1bnNldCwgYW4gUlgg
c3RhdHVzIGJpdCB0aGF0IGxvb2tzIGxpa2UgImRlY3J5cHQgZXJyb3IiIGJ1dCBmaXJlcyBvbiB1
bmVuY3J5cHRlZCBmcmFtZXMgdG9vKSDigJQgZGVzY3JpYmluZyB0aGUgaGFyZHdhcmUncyByZXF1
aXJlZCBiZWhhdmlvciBpbiBteSBvd24gd29yZHMsIHdpdGggdGhlIGludGVudCB0aGF0IHNvbWVv
bmUgd2hvJ3MgbmV2ZXIgc2VlbiB3bC5rbyBvciBteSBkcml2ZXIgY291bGQgaW1wbGVtZW50IGEg
d29ya2luZyBkcml2ZXIgZnJvbSBqdXN0IHRoYXQgZG9jdW1lbnQgYW5kIHRoZSA4MDIuMTEgc3Bl
Yy4gSXQncyBob25lc3QgYWJvdXQgd2hhdCBpdCBkb2Vzbid0IGluY2x1ZGUgKHRoZSBhY3R1YWwg
Y2FsaWJyYXRpb24vdHVuaW5nIHRhYmxlIG51bWJlcnMsIGZpcm13YXJlLCBiNDMncyBleGlzdGlu
ZyBnZW5lcmljIGluZnJhc3RydWN0dXJlKSBhbmQgdXBmcm9udCB0aGF0IEknbSBub3QgcXVhbGlm
aWVkIHRvIGp1ZGdlIGl0cyBsZWdhbCBzb3VuZG5lc3MgYWxvbmUuCgpUaGUgZHJpdmVyIGl0c2Vs
ZiB3b3JrczogdmVyaWZpZWQgV1BBMiBhc3NvY2lhdGlvbiwgREhDUCwgYW5kIHN1c3RhaW5lZCBz
dGFibGUgdHJhZmZpYyBvbiAyLjQgR0h6LCBvbiBib3RoIHRoZSBrZXJuZWwgdGhpcyBwcm9qZWN0
IHN0YXJ0ZWQgb24gYW5kLCBhcyBvZiB0b2RheSwga2VybmVsIDcuMi43IHdpdGggbm8gY29kZSBj
aGFuZ2VzIG5lZWRlZC4gNSBHSHosIGhhcmR3YXJlIGNyeXB0bywgYW5kIGZ1bGwgUkYgY2FsaWJy
YXRpb24gYXJlIG91dCBvZiBzY29wZSBzbyBmYXIuCkdpdmVuIGI0MyBpcyBsaXN0ZWQgT3JwaGFu
LCBJIGRvbid0IGhhdmUgYSBzcGVjaWZpYyBwZXJzb24gdG8gYXNrLCBzbzogaGFzIHRoaXMga2lu
ZCBvZiBwcm92ZW5hbmNlIHNpdHVhdGlvbiDigJQgYSByZXZlcnNlLWVuZ2luZWVyZWQgc3BlYyBp
bnRlbmRlZCB0byBlbmFibGUgYW4gaW5kZXBlbmRlbnQgY2xlYW4tcm9vbSBpbXBsZW1lbnRhdGlv
biDigJQgY29tZSB1cCBiZWZvcmUgZm9yIGEgd2lyZWxlc3MgZHJpdmVyIGhlcmU/IElzIHRoYXQg
YSB2aWFibGUgcGF0aCBhdCBhbGwsIGFuZCBpZiBzbywgd2hhdCB3b3VsZCB5b3Ugd2FudCB0byBz
ZWUgYmVmb3JlIGl0J3Mgd29ydGggYW55b25lJ3MgdGltZSB0byBhdHRlbXB0IHRoZSBjbGVhbi1y
b29tIHNpZGU/CgpUaGFua3MgZm9yIHJlYWRpbmcgdGhpcyBmYXIuCgpBbmRyZWFzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcg
bGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
