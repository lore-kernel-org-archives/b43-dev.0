Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFEA8CA6017
	for <b43-dev@archiver.kernel.org>; Sat, 10 Oct 2026 14:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pILkxZ7sGekhCPsOuNpxn0jMQ4AZSZg6tIMHEmri8NU=; b=EYYb9ikyLmo/Yk
	LXNt4Ip8kbWAVMty2+5uN47jE/41mm82b3FesmV7WnSupxM2+KZm2y36vnY7H/ko0PsRwuUUW6IQu
	wkIiN6BDLymHBC463m2DZeVVbdnR6iszAn6zD68HucvwAeYcEwAuIwdjiMF/JZMjgmXgr9lM/g1dL
	vx5P6nYB5QEdMolsFBi3o5tYiCnVIk5ObxIzNRUFuBtVwB4TDGoxu8wzuNwX9mbswUlCC1ovlsShi
	bsp7JV0qWw3TUJBwbrIXAs2ej9iVTzyHOxPH56IVTWse0k1506sXT4PjDQMDMA3aa8LV32/mSU58G
	kRGg7Or152BVLH4XCWRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXdl-0000000891o-3lha;
	Sat, 10 Oct 2026 14:01:33 +0000
Received: from smtpdh19-2.aruba.it ([62.149.155.149])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXdh-0000000891M-2HEg
	for b43-dev@lists.infradead.org;
	Sat, 10 Oct 2026 14:01:31 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id FXdaxkuIQQG1DFXdaxp172; Sat, 10 Oct 2026 16:01:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1791640883; bh=Wd9f9GwwmM9GIDyVHxMqhFsw5KZ2xNUAJUlfYLKuxyA=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=HGsdgo/1y4gwiMSY/bfwd3/0OeuMKOosdj7ww/zqL2SMABdZ6ucoBeOWIQm1wjLh9
	 wAVjFOqIERDSz4pqKmTCCeU8lpK6SQz/prkdIkZJ+KgHaOXx9W1zPqs11A2Wn2/KdL
	 F4P+/rmT37wyAiv6SQBr4yxW9HlY9pctSFf+f0+ZzGesTJyLZXUA6H0hAhl0L6Lu1t
	 VjuY0J5Focc9JFoI+U4Le44rpiQ1e2oL+q+5YNWzzfnrI4qJ0VQq1jfqzFWa9qCa7/
	 52BtZuLQl8sWUqlpE6GOqzmNTWeVLj1SHJF9yWwOamTfZ3oVv7cuBm/jqoEjeTw+dl
	 Drr+iS/+fjDfg==
Date: Sat, 10 Oct 2026 16:01:22 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: b43: ac rev1 captured packets with ampdu
Message-ID: <20261010160122.5e82eaec@fedora>
In-Reply-To: <j7yDoG5_QzsvHn2hPYg-t1IRCKILne4bSf-E0ix15-48INcyh3HHnBydtcLdyWJCXh61NfsV1HawpRIBKpsGYzVzAfMCJIo3Z4Q-c20M15E=@proton.me>
References: <20261009173133.0e534ec2@fedora>
	<j7yDoG5_QzsvHn2hPYg-t1IRCKILne4bSf-E0ix15-48INcyh3HHnBydtcLdyWJCXh61NfsV1HawpRIBKpsGYzVzAfMCJIo3Z4Q-c20M15E=@proton.me>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfFEX7C8JUQJC5xBP4e/JrDgVZDCNdSgqvC4vIle9CPEafPaSmqNpYrMBTc+geQMZ/Bx8S6SSfRaUuusK9tguisa1A9kIUIfb3o4G5B/Exm4+gyiX6U+5
 NxcXByg4fm3Zmm5Eg1Rb6ve8otM/fH9lgXYhFaHBZa/yHUwQeuAXYlKuKqZZ9ZT9PBWEqnOhVG52zDVt13R38yQl0yUwlwzzwvFpSrHgKvDzJQZ1xdWTlxtg
 Zg/eUiD4c2GCgD1sse+Q3nncR7YAUYOmLiDMtWGop3U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_070130_039215_F9ED1555 
X-CRM114-Status: UNSURE (   9.09  )
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

SWwgZ2lvcm5vIEZyaSwgMDkgT2N0IDIwMjYgMjM6MTY6NDAgKzAwMDAKImFuZHJlYXMud2VuZGxl
ZGVyIiA8YW5kcmVhcy53ZW5kbGVkZXJAcHJvdG9uLm1lPiBoYSBzY3JpdHRvOgoKPiBIaSBBbGVz
c2lvLAo+IAo+IFRoYW5rcyBmb3IgdGhlIGNhcHR1cmVzLiBJ4oCZbGwgbG9vayBhdCB0aGVtIHdo
ZW4gSSBnZXQgdG8gNSBHSHosIHdoZXJlCj4gbXkgUlggaXMgc3RpbGwgYnJva2VuLgo+IAo+IFlv
dXIgZHJpdmVyIG5vIGxvbmdlciBoYW5ncyBteSBtYWNoaW5lLiBUaGUgaGFuZyB3YXMgbXkgb3du
IGxvZ2dpbmcsCj4gYSAzMCBtcyBkZWxheSBvbiBlYWNoIG9mIGFib3V0IDgwMDAwIHRhYmxlIGNh
bGxzLiBXaXRob3V0IGl0LCB5b3VyCj4gaGVhZCAoY2UyMTI3YSkgcnVucyB0aGUgd2hvbGUgaW5p
dCBpbiBhYm91dCA1IHMuIFRoZSByYWRpbyBkb2VzbuKAmXQKPiBjb21lIHVwIG9uIG15IGNoaXAs
IHRob3VnaDogYWZ0ZXIgdGhlIGZpcnN0IGNoYW5uZWwgSSBnZXQgcmFkaW8gMjA2OToKPiBwb3dl
ci1vbiB0aW1lb3V0ICgweDA0MGI9MHgwMDAxKSwgc28gdGhlIFJDQUwgZG9uZSBiaXQgbmV2ZXIg
c2V0cy4KPiAKCk1heWJlIHlvdSBoYXZlIHN0aWxsIHRvbyBtYW55IGRlbGF5cyBhcm91bmQgcG93
ZXIgb24/Cgo+IFlvdXIgYmxvY2tzIChtb2RlX2luaXQsIHNldF9yZWdfb25fcmVzZXQsIGNvZWZm
X2JhbmtfaW5pdCwgaW5pdF9yZWdzKQo+IGxldCBtZSByZXBsYWNlIG15IDI5MC13cml0ZSBQSFkg
cmVwbGF5IHdpdGggYSA3Mi13cml0ZSBpbml0LiAyLjQgR0h6Cj4gbm93IHJ1bnMgYXQgYWJvdXQg
MjAgTWJpdC9zIHVwIGFuZCAxNyBkb3duLiBEbyB5b3Uga25vdyB3aGVyZSBQSFkKPiB3b3JkcyAw
eDE3MzksIDB4MDE2YiwgMHgwMTc1LCAweDAzYzQgYW5kIDB4MDE5Ny8weDAxOTggY29tZSBmcm9t
PyBJCj4gY291bGRu4oCZdCBmaW5kIHRoZW0gaW4geW91ciBjb2RlLgo+IAo+IFRoYW5rcywgQW5k
cmVhcwoKRG8geW91IG1lYW4gdGhhdCBpbiB2ZXJzaW9uIDYuMzAueCwgdGhlIGRyaXZlciB3cml0
ZSAweDE3MzksIDB4MDE2YiwgMHgwMTc1LCAKMHgwM2M0IGFuZCAweDAxOTcvMHgwMTk4PyBNYXli
ZSB0aGV5IGFyZSByZWxhdGVkIHRvIGJsdWV0b290aD8gRG9uJ3QKa25vdywgd2lsbCBpbnZlc3Rp
Z2F0ZSBpdC4KClRoYW5rIHlvdSBmb3IgeW91ciByZXBvcnRpbmchCkFsZXNzaW8KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBs
aXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
