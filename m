Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF4ACA9EC7
	for <b43-dev@archiver.kernel.org>; Sun, 11 Oct 2026 16:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47kz96Qbm3kfgEUtVglnml1G7jF7QuTpAB6c7EAkIoI=; b=C++/zQ8wMr1rr/
	EtYfgMkKcCNo0fCANTnhfuU3V75Mdh/ri7rWt0eWDawWyYy+JemBRdQ53Lo36gvRhU3K1v8S7u5S/
	sVApeySPWnxfAOAW4+4d0+fK0Dqgtt8thZ69LFydUIQBvlRinRBmvMwhfqtIc057VWRlE0oA3AEj2
	udmPBKbh4xxLZb+2/CYgREFwoS/FDrcX7NSqgQCw4GbIY5tjiQRkruv5hZgs7V9GvzMNeOGqoqU4q
	79fgb0/t0rYc4mhHm3FBfFVvFUBDuWMZ5OuCm5ww6l6s1Q+j/viWiqMVA0ZLidrRWL+Xmu4BUTjR0
	ws9/pmoPjfPgdZpNfSeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFwde-00000009E8s-0gWN;
	Sun, 11 Oct 2026 16:43:06 +0000
Received: from smtpcmd10102.aruba.it ([62.149.156.102])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFwdX-00000009E8U-2KUF
	for b43-dev@lists.infradead.org;
	Sun, 11 Oct 2026 16:43:01 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id FwdRxUeYAN2P6FwdRxKlOC; Sun, 11 Oct 2026 18:42:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1791736973; bh=noKYH/ILE+edtD22uFEoznBAxGNgkcArENQ4uTe/p7E=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=RMmYU11h4//LH6HSQ03VpNjw7DKASVJx1kz4+0LogjK8xKYMya2mZkrNChhBb0jBR
	 TPAwazsD0BTB6MCFXCiC9tpMQo8agl+3Q9bME0dIkBeeeGt9sBfMphHIVlL6iShjft
	 iBRUPEJA3eiYaye+G8DLaRoON9Gvs1df832+MPSmxg/NjCMsfWr04Zmii2bPE7PpJg
	 NWemySCu1+ro8+c5PigVnU7okDJ/nuGjg5e98f8bERP07AUYyUsZYcDUqyk9hCzw/Y
	 kEFRknY72TNZggl1ob6dOIkT0bUpo1ogvW8mFzXM+TNU4dl0MOy/Co4kYSfCmcQMzY
	 c4KzR6A/2n9Nw==
Date: Sun, 11 Oct 2026 18:42:53 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: b43: ac rev1 captured packets with ampdu
Message-ID: <20261011184253.5997a984@fedora>
In-Reply-To: <waSj3jvDuNtKDHP_lrLDt-1KAgv7xgyvTwKtdnXv18FPaVH12yRZk0f-bVfrApfaHnsALsEpipfhkgv0UvRQdMPiyj_tmKRVMwg1G5jDZmg=@proton.me>
References: <20261009173133.0e534ec2@fedora>
	<j7yDoG5_QzsvHn2hPYg-t1IRCKILne4bSf-E0ix15-48INcyh3HHnBydtcLdyWJCXh61NfsV1HawpRIBKpsGYzVzAfMCJIo3Z4Q-c20M15E=@proton.me>
	<1NF3n26c1UQ1YcYwXT-JD8OKl7dIr_22x7bgdLLwLHkWHnKlZAtcYw7504hufNHGIBEo3qr8atDAoKtK6qxtLUfVWhVSazjaIH5QPYGAgs0=@proton.me>
	<20261010161043.5dd21203@fedora>
	<waSj3jvDuNtKDHP_lrLDt-1KAgv7xgyvTwKtdnXv18FPaVH12yRZk0f-bVfrApfaHnsALsEpipfhkgv0UvRQdMPiyj_tmKRVMwg1G5jDZmg=@proton.me>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfEqKvMN4MJZCb8vTEQ4TJGNqMZLmGw/jtNJlJ0R8RzflCjpWObsm9h5kAwj/0BvzqnZA7SvFWM3OrCG/Ytb/oivZMCbEebF+p/l6rkIDuGEmRHIEP7mH
 9Z6vh9tpMk6+fjXa3EYtkgQXdyIa641J/UCYi1aNmMJwY1MPr+uViuCDLqpkEgANvzqTNmkzG78CiQgDdk729QvkQhxnEy0FCaK30y5/FYERi4Ok23JjC/+t
 z0N2fl+lww3lwBZZkWqRF0P1dT13JXvIdY0OF+vUg38=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_094300_082820_6258D7A5 
X-CRM114-Status: GOOD (  11.74  )
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

SWwgZ2lvcm5vIFNhdCwgMTAgT2N0IDIwMjYgMTQ6MTU6NTEgKzAwMDAKImFuZHJlYXMud2VuZGxl
ZGVyIiA8YW5kcmVhcy53ZW5kbGVkZXJAcHJvdG9uLm1lPiBoYSBzY3JpdHRvOgoKPiBIaSBBbGVz
c2lvLAo+IAo+IE9uIHRoZSBUWCBnYWluOiB0aGF0IGZpdHMuIEluIHRoZSBiYXNlbWVudCAoLTcw
IGRCbSkgaW5kZXggNjQgY2Fycmllcwo+IG5vIEhUIGZyYW1lIGF0IGFsbCwgaW5kZXggMjAgd29y
a3MsIGluZGV4IDAgaXMgd29yc2UgYWdhaW4uIFRoZSByZXNldAo+IHZhbHVlIHdhcyBqdXN0IGZh
ciB0b28gcXVpZXQuIEkgbm93IHVzZSBpbmRleCAyMCwgaW5zaWRlIHRoZSByYW5nZQo+IHRoZSBz
dG9jayBwb3dlciBsb29wIHJhbiBhdCBoZXJlICgweDE04oCTMHgyNiksIHVudGlsIEkgaGF2ZSBw
b3dlcgo+IGNvbnRyb2wuCj4gCj4gUlggYWdncmVnYXRpb24gd29ya3MgdG9vLiBJdCBvbmx5IG5l
ZWRlZCBhY2NlcHRpbmcgdGhlIHNlc3Npb24gaW4KPiBhbXBkdV9hY3Rpb247IHRoZSBtaWNyb2Nv
ZGUgZGVhZ2dyZWdhdGVzIGFuZCBzZW5kcyB0aGUgYmxvY2sgYWNrcy4KPiBCb3RoIGRpcmVjdGlv
bnMgYWdncmVnYXRlZDogYWJvdXQgMzAgTWJpdC9zIHVwIGFuZCAyMCBkb3duIGF0IC03MAo+IGRC
bSwgYWdhaW5zdCAxMyBhbmQgMTAgYXQgbGVnYWN5IHJhdGVzLgo+IAo+IE9uIHRoZSBSQ0FMIHRp
bWVvdXQ6IHRoYXQgcnVuIHdhcyB5b3VyIHVubW9kaWZpZWQgaGVhZCB3aXRob3V0IG15Cj4gbG9n
Z2luZywgc28gbm8gYWRkZWQgZGVsYXlzLiBJIGNhbiByZXJ1biBpdCBhbmQgc2VuZCB0aGUgZnVs
bCBkbWVzZy4KPiAKPiBPbiB0aGUgUEhZIHdvcmRzOiB5ZXMsIHRoZXNlIGFyZSB3cml0ZXMgb2Yg
dGhlIGh5YnJpZCA2LjMwLjIyMyB3bCBvbgo+IHRoZSBNYWNCb29rQWlyNiwxLCBmcm9tIG15IE1N
SU8gdHJhY2UgYXQgMi40IEdIejogMHgxNzM5ID0gMCwgMHgwMTZiCj4gPSAwLCAweDAxNzUgPSAw
LCAweDAzYzQgPSAweDA2NjgsIGFuZCBpbiBjaGFubmVsIHNldHVwIDB4MDE5NyA9Cj4gMHgwMDE0
LCAweDAxOTggPSAweDAwMTAuIEJsdWV0b290aCBpcyBwbGF1c2libGUsIHRoZSBib2FyZCBoYXMK
PiBCVENPRVhJU1Qgc2V0Lgo+IAo+IFRoYW5rcywgQW5kcmVhcwoKSGkgQW5kcmVhcywKCkkgbWFu
YWdlZCB0byBnZXQgSFQyMC9IVDQwIHdvcmtpbmcsIGkgYWxzbyBmaXhlZCB0d28gYnVncyB0aGF0
IG1heSBoYXZlCmJlZW4gdGhlIGNhdXNlIGZvciB0aGUgZmFpbHVyZSBvZiBteSBkcml2ZXIgaW4g
eW91ciBoYXJkd2FyZTogCi0gZmlyc3QgaSBoYWQgd3JvbmdseSBnYXRlZCBhbiBvcGVyYXRpb24g
b3ZlciAib25seSBvbmNlIHBlciBib290IgogIHdoaWxlIGluIGZhY3QgaXQgd2FzIG5lY2Vzc2Fy
eSBvbiBhbnkgcmVzdGFydCwgZXZlbiBpbiBob3QgcmVzdGFydHMuCiAgSSBuZXZlciBjYXRjaGVk
IGl0IG9uIHVuaXQgdGVzdGluZy4gCi0gc2Vjb25kIGkgd2FzIHVzaW5nIDl4eCB1Y29kZSBsYXlv
dXQgZm9yIGluaXR2YWxzLCBzbyBib3RoIG15IDd4eCBhbmQKICB5b3VyIDh4eCB1Y29kZSB3ZXJl
IHVzaW5nIGludmFsaWQgdmFsdWVzLiBNeSBqdXN0IGhhcHBlbiB0byB3b3JrIHdpdGgKICBuby1o
dCBtb2RlLCBidXQgaXQgd2FzIHB1cmUgbHVjay4gT25jZSBpIGZpeGVkIGl0IGFuZCBzdG9wcGVk
CiAgcG9sbHV0aW5nIGEgYmVhY29uIGJpdCBpdCB0aGUgdHJhbnNtaXNzaW9uIHdvcmsgZmluZSB3
aXRoIDEwIG1iaXRzIHVwCiAgYW5kIGRvd24uCgpJIGFsc28gYWRkZWQgc29tZSBiaXRzIHRvIHRl
c3QgQlQgY29leGlzdGVuY2UuCgpOZXh0IGknbGwgdGFja2xlIFZIVDIwL1ZIVDQwL1ZIVDgwIGFu
ZCB0aGVuIGFtcGR1LgoKSSBhbSByZWFsbHkgZXhjaXRlZCB0aGF0IHRoZSB3b3JrIGlzIGZpbmFs
bHkgY29taW5nIHRvZ2V0aGVyIGFuZCBpCnJlYWxseSB3YW50IHRvIGhvcGUgdGhhdCBicm9hZGNv
bSBhYyByZXYxIGdlbmVyYXRpb24gd2lsbCBiZSB0aGUgYmVzdApzdXBwb3J0ZWQgYnkgYjQzLgoK
QWxlc3NpbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
