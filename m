Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6707CA9EC3
	for <b43-dev@archiver.kernel.org>; Sat, 10 Oct 2026 12:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJoy5+hrSpx5UhQkvmFqATYhkxx5f3eswKR2Dwj1nQk=; b=DiG5VYBXVj6abT
	f47HOKn/FmO/dYhtRQ7G3VRn0rS1zwv84SML2xwVMFYaiwbKpLDLz8jRIOel2bCKne5oTwgQZyoJq
	kfQEPs0zhTsxvI9jTPWthvBqDOsgCjUNvp88akWQJD6uQpjTf5ClSAS0x0S2YGh/WQplNyJ7k12X/
	KK8sm2tqW0rNCArkNu6w70s+/a8S+RwY790CWu/GCysyvu1khdIUX5bdNyEkfnlgpRaUd/Bg4ayEg
	XnSDJcaWxA3fZx4cXEZ/paTu1Oyuf9ClS/LKajZ44uGYsV3KW/n4bsjWk+gTSx4gLhATiTFAWbP3m
	5CCScFGBV0aAtZNniLAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFWfe-00000008303-40Bo;
	Sat, 10 Oct 2026 12:59:26 +0000
Received: from mail-24430.protonmail.ch ([109.224.244.30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFWfW-000000082z8-3Rlx
	for b43-dev@lists.infradead.org;
	Sat, 10 Oct 2026 12:59:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1791637154; x=1791896354;
	bh=y2ZOtATjEA4SLTsh8hkSk1w2NEcMCjXPPs+g9p1ucio=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=GLVDOCoMT3RNAz9sATx4xed3R0akaV+Xdf8T4O3uf7ORAnKncpmgpX2QQMlmu8WOp
	 mUB+lqxPKIhYgPoQrGLxBCME+/BI2sHAjPRjc3a8EHRHi8OFoqCk9s3H/wIFSyZNxL
	 DcsTBMmjIoEeXCVeLHIu5mR+w6g6p6KL5Q0rRb1IMXXpMYzeQvIw6jb5RjCaLBrAte
	 kb8InggmoQz3uX0ZpcNHs9Pfw9NsnHnwCuQPITtem8XjVYaNSSHrRIKkZTb2gQoTN8
	 uQOl/o11Vsxm3E653dVSEwpBiQSnrc+ADYDozFp8BHUy3xH+TiNZ+QrptX/xWcvoYi
	 mDXEW5dr0h7CA==
Date: Sat, 10 Oct 2026 12:59:10 +0000
To: Alessio Ferri <alessio.ferri@mythread.it>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: AW: b43: ac rev1 captured packets with ampdu
Message-ID: <1NF3n26c1UQ1YcYwXT-JD8OKl7dIr_22x7bgdLLwLHkWHnKlZAtcYw7504hufNHGIBEo3qr8atDAoKtK6qxtLUfVWhVSazjaIH5QPYGAgs0=@proton.me>
In-Reply-To: <j7yDoG5_QzsvHn2hPYg-t1IRCKILne4bSf-E0ix15-48INcyh3HHnBydtcLdyWJCXh61NfsV1HawpRIBKpsGYzVzAfMCJIo3Z4Q-c20M15E=@proton.me>
References: <20261009173133.0e534ec2@fedora> <j7yDoG5_QzsvHn2hPYg-t1IRCKILne4bSf-E0ix15-48INcyh3HHnBydtcLdyWJCXh61NfsV1HawpRIBKpsGYzVzAfMCJIo3Z4Q-c20M15E=@proton.me>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: 302d02b3899688e5c14eaf1f9d895c696695837a
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_055919_469989_6F3C327B 
X-CRM114-Status: UNSURE (   6.90  )
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

SGkgQWxlc3NpbywKClRocmVlIGZpbmRpbmdzIG9uIHRoZSBNYWNCb29rQWlyNiwxICgyLjQgR0h6
LCB1Y29kZSA4MzIuMTI3KSwgYWxsIHRoYW5rcyB0byB5b3VyIGNvZGUgYW5kIGNhcHR1cmVzOgoK
MS4gUlggbGV2ZWwuIFlvdXIgcnhnYWluY3RybCB3cml0ZSAweDE3MjYgPSAweDAwMGMgaXMgd29y
dGggMjYgZEIgaGVyZS4gV2l0aCBpdCBteSByZW1haW5pbmcgUEhZIHRhYmxlIHJlcGxheSBpcyBn
b25lLgoyLiBTZWNvbmQgVFggY2hhaW4uIFRoZSBjaGlwY29udHJvbCB8PSAweDggYXQgdGhlIGVu
ZCBvZiB5b3VyIGZlbTJfc3ViMV9zZXR1cCBpcyB3aGF0IHR1cm5zIG9uIFRYIG9uIGNvcmXCoDEu
IEkgaGFkIHBvcnRlZCB0aGUgdHdvIFBIWSB3cml0ZXMgYnV0IG5vdCB0aGF0IG9uZTogY29yZSAx
IGRpZCBub3QgcmFkaWF0ZSBhbmQgTUNTIDjigJMxNSBmYWlsZWQgY29tcGxldGVseS4gVGhlIGJp
dCBzdXJ2aXZlcyBhIG1vZHVsZSByZWxvYWQsIHNvIGl0IG9ubHkgc2hvd3MgYWZ0ZXIgYSBjb2xk
IGJvb3QuCjMuIEEtTVBEVSBUWCB3b3Jrcywgd2l0aCB0aGUgbWljcm9jb2RlIGJ1aWxkaW5nIHRo
ZSBhZ2dyZWdhdGVzIGFzIGluIHlvdXIgbm90ZXMuIFdoYXQgaXQgbmVlZGVkIGJleW9uZCAweDQ1
YzAgYW5kIHRoZSBjYWNoZSBpbmZvOgogICAtIHRoZSBmcmFtZSdzIHNlcV9jdHJsIGluIHRoZSBo
ZWFkZXIncyBzZXF1ZW5jZSBmaWVsZDsKICAgLSBjYWNoZSBpbmZvIGJ5dGVzIDDigJMxIHplcm8g
d2hlbiBlbmNyeXB0aW5nIGluIHNvZnR3YXJlLiBUaGUgc3RvY2sgNTAgMDQgbWFrZXMgdGhlIG1p
Y3JvY29kZSBlbmNyeXB0IGFnYWluOiB0aGUgQVAgYWNrcyB0aGUgZnJhbWUgYW5kIGRyb3BzIGl0
OwogICAtIHNlc3Npb24gZnJhbWVzIHJlcG9ydGVkIHRvIG1hYzgwMjExIHdpdGggSUVFRTgwMjEx
X1RYX1NUQVRfQU1QRFUsIG9yIG1pbnN0cmVsX2h0IGlnbm9yZXMgdGhlbTsKICAgLSB0aGUgYXR0
ZW1wdCBjb3VudCBvZiBhIHN0YXR1cyAod29yZCAyLCBiaXRzIDc6MCkgZGl2aWRlZCBieSBpdHMg
TVBEVSBjb3VudDsKICAgLSBhIHJlcXVldWUgaW4gdGhlIGRyaXZlciBmb3IgTVBEVXMgdGhlIG1p
Y3JvY29kZSByZXBvcnRzIHVuYWNrZWQuIEl0IGdpdmVzIHVwIGFmdGVyIGEgZmV3IGF0dGVtcHRz
LCBhbmQgd2l0aG91dCB0aGUgcmVxdWV1ZSBUQ1AgY29sbGFwc2VzLgoKICAgUmVzdWx0OiBhYm91
dCAzMCBNYml0L3MgdXAgYXQgSFQyMCBvdmVyIDE1IG1pbnV0ZXMsIGFnYWluc3QgMjAgYXQgbGVn
YWN5IHJhdGVzLgoKT25lIHF1ZXN0aW9uOiBteSBUWCBnYWluIHNpdHMgYXQgaW5kZXggNjQgb2Yg
YWNwaHlfdHhnYWluX2VwYV8yZ18yMDY5cmV2NCAodGhlIHJlc2V0IHZhbHVlKSwgYW5kIGdvaW5n
IHRvIGluZGV4IDk2IGNvbGxhcHNlcyB0aGUgbGluayBhdCAxIG0gZnJvbSB0aGUgQVAuIEhhdmUg
eW91IHNlZW4gd2hhdCBhIGhlYWx0aHkgYm9hcmQgdHJhbnNtaXRzIHdpdGggb24gMi40IEdIeiwg
b3IgaXMgdGhlcmUgbW9yZSB0byB0aGUgUEEvRkVNIHNldHVwIHRoYW4gZmVtMl9zdWIxX3NldHVw
PwoKVGhhbmtzLCBBbmRyZWFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
