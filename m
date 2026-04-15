Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9252CF41992
	for <b43-dev@archiver.kernel.org>; Wed, 15 Apr 2026 11:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:Message-Id
	:Date:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ki3LD5V+M40glCQ6aaUTpCa3AjXjHnEx6vPV+SAXkJA=; b=1tKK2N/biw3qX1hu7xPgaHyYyH
	6jo6B/6FUiMTNxTq/8eDjc5NjcRuJjlrZaLzia42yQiX4f3oPQKOpKVEx6WLZo5eVcUKEZbqigtYo
	00GbxTudTK59aFXGdknvfQ9h1zG5ZYsKWRkxHU2HyuQftnYRRqM2+BStiD+vPfjLo1/eJ5v6yJvnK
	rMXsp8orX8c5UQEZtpGiIWkSRj5bMmLeVB3pBGRd7PIRcmmdow3be19zGcI5aBOPhC3ZXnDf2Sy/t
	4UNVHd4NqW7ltK6an+pYLbSdF7iyL/mR11jK5J/KQ0DAVJtNfjz9JDkDtnAO1WfkZDbQfBtOZINuY
	YmnSsetg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCyfZ-000000013bD-3TUJ;
	Wed, 15 Apr 2026 11:44:33 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCyfU-000000013af-06sv
	for b43-dev@lists.infradead.org;
	Wed, 15 Apr 2026 11:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=In-Reply-To: References: Cc: To: From: Subject: Message-Id: Date:
 Content-Type: Content-Transfer-Encoding: Mime-Version; q=dns/txt;
 s=fe-953a8a3ca9; t=1776253466;
 bh=RUAMkRMvJIYGpqvgrfry3NMMlM+78pl3rBiEk2MPNJU=;
 b=YIP9fnaSSqMznYQKUaplW4rCeSsQThuF4oL0HZQXkM7E8yelSjA/NjRlkd0kFUAR5H7dh2aQs
 XegyCPjzMlPSBFsMT1D2fZJ0Ydf+QtrmrQZLj9iM3QCqdEnSBh+lWswwz/PpnLIP6t2ek2TNeZ0
 55qSrbgDKPrB78l7/ZSKyEPXxJbp4SWSu6xQZCBJILTZY8uGnZpjKjTIt01UzbtJO+x4EVTHZH3
 ZuRqnhPZe7uSILGxi+uI/lIAAVACQSmlx0nFeT37+iS7cLqgcS+iOy2tiPppXb1wErtdXVr6P4+
 wgCgMuwSPx0+S0NvVSox5XCLRqzbIlJpXnph5vspEpcA==
X-Forward-Email-ID: 69df7a17289add7dee9f6483
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.7.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Wed, 15 Apr 2026 07:44:21 -0400
Message-Id: <DHTPAVC76140.1JLO3HNQARQ9Q@ubuntu.com>
Subject: Re: Firmware for reverse engineering b43?
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: "Jonas Gorski" <jonas.gorski@gmail.com>, "Joshua Peisach"
 <jpeisach@ubuntu.com>
Cc: "Johannes Berg" <johannes@sipsolutions.net>,
 <b43-dev@lists.infradead.org>, <linux-wireless@vger.kernel.org>
X-Mailer: aerc 0.21.0
References: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com>
 <c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
 <DHSUDVMGW0PS.2LYWKGG1C1135@ubuntu.com>
 <CAOiHx==kVm0OKWRKi4VHSEEr6ZygzrpNiA=zj+zEHT6_rgZ3CQ@mail.gmail.com>
In-Reply-To: <CAOiHx==kVm0OKWRKi4VHSEEr6ZygzrpNiA=zj+zEHT6_rgZ3CQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_044428_419948_8B3AD0B6 
X-CRM114-Status: GOOD (  27.04  )
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

T24gVHVlIEFwciAxNCwgMjAyNiBhdCA4OjI0IEFNIEVEVCwgSm9uYXMgR29yc2tpIHdyb3RlOgo+
IE9uIFR1ZSwgQXByIDE0LCAyMDI2IGF0IDE6MzHigK9QTSBKb3NodWEgUGVpc2FjaCA8anBlaXNh
Y2hAdWJ1bnR1LmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIFR1ZSBBcHIgMTQsIDIwMjYgYXQgNToxNCBB
TSBFRFQsIEpvaGFubmVzIEJlcmcgd3JvdGU6Cj4+ID4gSSB0aGluayB0aGVyZSdzIG5vIGVhc3kg
YW5zd2VyIC0gd2hhdCBhcmUgeW91IGV2ZW4gdHJ5aW5nIHRvIGFjaGlldmU/Cj4+ID4gRG9lcyBi
NDMgbm90IHdvcmsgc3VmZmljaWVudGx5IHdlbGw/IERvIHlvdSBldmVuIGtub3cgaWYgc29tZSBz
cGVjaWZpYwo+PiA+IGNhbGlicmF0aW9uIGhhdmUgYSB0ZW5kZW5jeSB0byBnbyBvdXQgb2Ygd2hh
Y2s/IElzIHRoZXJlIGxhdGVyIGZpcm13YXJlCj4+ID4gdGhhdCBoYXMgc29tZSBhZHZhbnRhZ2Ug
KGdpdmVuIGhvdyBsaXR0bGUgYWN0dWFsbHkgaGFwcGVucyBpbiBmaXJtd2FyZQo+PiA+IGluIHRo
ZXNlIGRldmljZXMsIEknZCBiZSBzdXJwcmlzZWQgYnkgdGhhdCkgYnV0IGlzbid0IGNvbXBhdGli
bGUgd2l0aAo+PiA+IHRoZSBkcml2ZXIgbm93LCBhbmQgeW91IHdhbnQgdG8gY2hhbmdlIHRoYXQ/
Cj4+ID4KPj4gPiBJJ2QgYmUgdGVtcHRlZCB0byBzYXkgdGhhdCBpZiB0aGVyZSdzIG5vIHByb2Js
ZW0gdGhlcmUgZG9uJ3QgdHJ5IHRvIGZpeAo+PiA+IGFueXRoaW5nLCB0aGUgaGFyZHdhcmUgaXMg
YW5jaWVudCBhbnl3YXksIGxpa2VseSBoYXMgZmV3IHVzZXJzLCBhbmQKPj4gPiB0aG9zZSB1c2Vy
cyB3b3VsZCBwcm9iYWJseSBiZSBmaW5lIHdpdGgganVzdCBsZWF2aW5nIGl0Pwo+PiA+Cj4+ID4g
am9oYW5uZXMKPj4KPj4gVGhlIEJDTTQzMjEgKG5waHkpIGRvZXNuJ3QgY29ubmVjdCB0byBteSA1
RyBuZXR3b3JrLCBzbyBJIGZpZ3VyZWQgdGhhdAo+PiBieSBmaWxsaW5nIGluIFRPRE9zIGFuZCBG
SVhNRSdzLCBJIGNvdWxkIGV2ZW50dWFsbHkgZ2V0IHNvbWV0aGluZwo+PiB3b3JraW5nLgo+Pgo+
PiBPdGhlciB0aGFuIHRoYXQsIEkgd2FzIHRoaW5raW5nIG9mIG1ha2luZyBpbXByb3ZlbWVudHMg
Zm9yIHRoZSBzYWtlIG9mCj4+IGltcHJvdmluZyB0aGUgZHJpdmVyLgo+Cj4gVGhlIGluaXRpYWwg
dmVyc2lvbiBvZiB0aGUgYnJjbTgwMjExIHNvZnRtYWMgZHJpdmVyIFsxXSBzaG91bGQgYWxzbwo+
IGhlbHAgaW4gbWFraW5nIHNlbnNlIG9mIHNvbWUgb2YgdGhlIGNvZGUgKGZsYWcgbmFtZXMgZXRj
KS4gV2hpbGUgaXQKPiBvZmZpY2lhbGx5IG9ubHkgc3VwcG9ydHMgQkNNNDMyMjQgYW5kIG5ld2Vy
IG9uIEJDTUEsIGl0IHN0aWxsIGhhZAo+IHJlbW5hbnRzIG9mIHN1cHBvcnQgZm9yIG9sZGVyIE4t
UEhZIHJldmlzaW9ucywgc28gbWF5IGhlbHAgaW4gZmluZGluZwo+IGRpZmZlcmVuY2VzIG9yIGV4
cGxhaW5pbmcgd2hhdCBjb2RlIGRvZXMuCj4KPiBJIG9uY2UgY29uc2lkZXJlZCB0cnlpbmcgdG8g
Y2xlYW4gdXAgYjQzIGJhc2VkIG9uIGJyY21zbWFjLCBidXQgbmV2ZXIKPiBnb3QgYXJvdW5kIHRv
IGl0LgoKSXQgZG9lcyBhcHBlYXIgdG8gYmUgc2ltaWxhciAtIGV2ZW4gdGhlIGN1cnJlbnQgYnJj
bTgwMjExLiBTbyBtdWNoIHNvCnRoYXQgSSBzb21ldGltZXMgbmVlZCB0byB0aGluayBhYm91dCB3
aGV0aGVyIGI0MyBpcyBhY3R1YWxseSBhCmR1cGxpY2F0ZWQgZHJpdmVyLgoKU2luY2UgYjQzIGlz
IGluIGFuIG9ycGhhbiBzdGF0ZSwgSSB0aG91Z2h0IGl0IHdvdWxkIGJlIGEgZ3JlYXQgcGxhY2Ug
dG8Kc3RhcnQgZm9yIGtlcm5lbCBkZXZlbG9wbWVudC4gNUcgZG9lc24ndCB3b3JrIG9uIHRoYXQg
aU1hYywgc29tZSBvZiB0aGUKUEhZcywgbGlrZSB0aGUgQUMgUEhZcyBhcHBlYXIgdG8gYmUgaW5j
b21wbGV0ZSAtIGl0IGZlbHQgcmVhc29uYWJsZS4KCkJlY2F1c2UgSSdtIG9uZSBvZiB0aG9zZSAi
dGhlcmUncyBhbHdheXMgcm9vbSBmb3IgaW1wcm92ZW1lbnQgcGVvcGxlIiwKSSB3YXMgZ29pbmcg
dG8gdHJ5IHRvIGltcHJvdmUgdGhlIGRyaXZlciwgZmlsbGluZyBvdXQgVE9ET3MsIGZpeGluZwpo
YXJkY29kZWQgcmVnaXN0ZXIgbnVtYmVycywgZXRjLiBCdXQgaWYgaXQncyBiZXN0IGxlZnQgYWxv
bmUuLiB0aGVuIEkKZ3Vlc3Mgd2UgY2FuIGRvIHRoYXQuCgpUaGF0IGlzLCBhc3N1bWluZyBiNDMg
aXMgYWN0dWFsbHkgc3VwcG9zZWQgdG8gYmUgYSBzZXBhcmF0ZSBkcml2ZXIsCmJlY2F1c2UgaWYg
YnJjbXNtYWMgYmFzaWNhbGx5IGhhcyB0aGUgc2FtZSBjb2RlLCB0aGVuIG1heWJlIHdlIHNob3Vs
ZApmb2N1cyB0byBjZW50cmFsaXppbmcgZXZlcnl0aGluZz8gQnV0IHRoZW4gdGhlcmUncyBiNDNs
ZWdhY3kuLiBobS4uLgoKLUpvc2gKCj4KPiBCZXN0IHJlZ2FyZHMsCj4gSm9uYXMKPgo+IFsxXSBo
dHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvdHJlZS9hOTUzM2U3ZWEzYzQxMGZlZDJm
NGNkOGIzZTFlMjEzZTQ4NTI5Yjc1L2RyaXZlcnMvc3RhZ2luZy9icmNtODAyMTEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcg
bGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
