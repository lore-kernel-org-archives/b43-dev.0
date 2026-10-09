Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44F6ACA9EBB
	for <b43-dev@archiver.kernel.org>; Fri,  9 Oct 2026 23:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6dWeeJFAt9LNszDmajxzWgZujapxvU7N/0hDjX2vfE=; b=YqpnL6kTWTri42
	S/3eWY//vj4YmMBZUdIzYb6WlJtiPLc65ytFJyq6PYOqf1pRefIEX7JuJZh1ENiW2B/5v3euLpf7N
	9fhrV1XbyRr51yGW2srAeHG2ksoB++l4oy/nOm8+Kp62ArOGTCR8uyNde469iaRbkdV0otOf32Wrp
	BsURMGS2ePMlnq/c1bPhZDHlYO0KPSQYyZMr3gtsiGMorRl7aLKNqIVfgSf9COuxBFAkQB9GnBfg2
	ETOozd58WoBQtfcHsTzPkS/AOtLVuasev3v/rpLN92CDwVPw8t34yz2eHPXt8xz+RQ88NPZfCFd/1
	JLpnjuchYcT7NcdVNhCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFJpe-00000007KHq-1Dfl;
	Fri, 09 Oct 2026 23:16:54 +0000
Received: from mail-10698.protonmail.ch ([79.135.106.98])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFJpb-00000007KHX-1rvw
	for b43-dev@lists.infradead.org;
	Fri, 09 Oct 2026 23:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=zvhz567xknc2fha7bshnox6wb4.protonmail2; t=1791587805;
	x=1791847005; bh=P5oNEgM3ysRpyMqs78Z+nTrk8eBmaZqQbwtZdCbXP8g=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=UM80zoiNPeZb7Y4GljDpUpzZorkaDJ+QAvoH9cDCqGvvttkGo/qVL8p/HJ7pWu+rH
	 ffAfBdqjGcLabs6IoEIqRXcDjLEpVmSIkMKpRXh4m3KRcP0gMLHXEtMUlUMjD8j/gz
	 Md2SpgTee8sk1TP9GxPOdQLFwKJiyoiDePnTImV879Zoq0500gLqLlMdJQppqZbqAh
	 1NlT4Mg8khQvuj2zR0mXQLKUaD9K4h2ozOwyeHDcIQvNKo8N88hbQa/4eOPrLkbKEY
	 ajrL/53yKTUDaIkyYuv8zf8O0y+eO8qgXlv3zhLIrkT7jhcTmgQP6O/px83/+D5hyG
	 tl6C7lb/geobw==
Date: Fri, 09 Oct 2026 23:16:40 +0000
To: Alessio Ferri <alessio.ferri@mythread.it>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: AW: b43: ac rev1 captured packets with ampdu
Message-ID: <j7yDoG5_QzsvHn2hPYg-t1IRCKILne4bSf-E0ix15-48INcyh3HHnBydtcLdyWJCXh61NfsV1HawpRIBKpsGYzVzAfMCJIo3Z4Q-c20M15E=@proton.me>
In-Reply-To: <20261009173133.0e534ec2@fedora>
References: <20261009173133.0e534ec2@fedora>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: 6f099c9de21f2cc7c6f8af96c73679320c24fcc5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_161651_669924_30CABD76 
X-CRM114-Status: UNSURE (   4.45  )
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

SGkgQWxlc3NpbywKClRoYW5rcyBmb3IgdGhlIGNhcHR1cmVzLiBJ4oCZbGwgbG9vayBhdCB0aGVt
IHdoZW4gSSBnZXQgdG8gNSBHSHosIHdoZXJlIG15IFJYIGlzIHN0aWxsIGJyb2tlbi4KCllvdXIg
ZHJpdmVyIG5vIGxvbmdlciBoYW5ncyBteSBtYWNoaW5lLiBUaGUgaGFuZyB3YXMgbXkgb3duIGxv
Z2dpbmcsIGEgMzAgbXMgZGVsYXkgb24gZWFjaCBvZiBhYm91dCA4MDAwMCB0YWJsZSBjYWxscy4g
V2l0aG91dCBpdCwgeW91ciBoZWFkIChjZTIxMjdhKSBydW5zIHRoZSB3aG9sZSBpbml0IGluIGFi
b3V0IDUgcy4gVGhlIHJhZGlvIGRvZXNu4oCZdCBjb21lIHVwIG9uIG15IGNoaXAsIHRob3VnaDog
YWZ0ZXIgdGhlIGZpcnN0IGNoYW5uZWwgSSBnZXQgcmFkaW8gMjA2OTogcG93ZXItb24gdGltZW91
dCAoMHgwNDBiPTB4MDAwMSksIHNvIHRoZSBSQ0FMIGRvbmUgYml0IG5ldmVyIHNldHMuCgpZb3Vy
IGJsb2NrcyAobW9kZV9pbml0LCBzZXRfcmVnX29uX3Jlc2V0LCBjb2VmZl9iYW5rX2luaXQsIGlu
aXRfcmVncykgbGV0IG1lIHJlcGxhY2UgbXkgMjkwLXdyaXRlIFBIWSByZXBsYXkgd2l0aCBhIDcy
LXdyaXRlIGluaXQuIDIuNCBHSHogbm93IHJ1bnMgYXQgYWJvdXQgMjAgTWJpdC9zIHVwIGFuZCAx
NyBkb3duLiBEbyB5b3Uga25vdyB3aGVyZSBQSFkgd29yZHMgMHgxNzM5LCAweDAxNmIsIDB4MDE3
NSwgMHgwM2M0IGFuZCAweDAxOTcvMHgwMTk4IGNvbWUgZnJvbT8gSSBjb3VsZG7igJl0IGZpbmQg
dGhlbSBpbiB5b3VyIGNvZGUuCgpUaGFua3MsIEFuZHJlYXMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2I0My1kZXYK
