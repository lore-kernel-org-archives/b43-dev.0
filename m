Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE9CEC46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 17:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LGtpW7F0R3w0qX5U+BOmZ7fIzNZCkSN/gAXyNlWuL0=; b=WOUqo+hUyb5dbA
	8b/oL6Ku994mzX7vKYvRrIUVjph6QrFSgTWCMReYRnYMeI8WdNHMFehaxcizbIpn4eVWPzzi7a++e
	AkgVh3BiGnNgAVtqmUgtE4WLf3vhFtVRyMjqT4ZimK2EzbfH5vVbqBjdYBvRGN+wvd8314lk/B1jl
	TCNFUoaThvYzZCKff9Vt0ayNiylr6OP1LHdfhFymcqjgU9e2zOawbytKX4MmM4Spr0u+Y3jh0DvLj
	rwPLBJFjvOazhRd9Eicv25wGwZueImEpUrEgWwswETd7qCIjcOJXJSuXJePrZSmtiYFHyQIfF3Uuu
	PJRoH0OOx65XsVd75U4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcr7-0038um-1v;
	Sat, 30 Dec 2023 17:10:37 +0000
Received: from mail-40134.protonmail.ch ([185.70.40.134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcr4-0038uB-1m
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 17:10:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703956231; x=1704215431;
	bh=NGHWs61+ncWjanV4MetpwQRGBeMtvomzoVyjuTfffu4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=uuphvLNep9YkXlzRYt/PNa1W3PdSm+AMYrDX3JszqNdKlCzDTXVQeJztpke5lgZ4s
	 GEWMBNJ91jBJIU+WM597XmDHu+LQwuMuv2Qex5etCIu1BUPdEs/96rMSpP8VDvoxVr
	 dHdsIU2t9iYhxPK77wcmMfzp285vjUnIfrszWzX0GINMfxYMyGcN9SxoePCe91+jMf
	 QE3iz8dgDBJ4q6M7gUpwHm8p4weFPpjSSXHFnQ+uJu5aB/CWJJSuzCCU4QN8DDevat
	 5chYSPd7KCITMnVmB76QlbzbhUsWh7pCCM+QHZkj9J4v54V9CrwzzWJ8OoGiBFPv8q
	 Z64yJM61+2VzQ==
Date: Sat, 30 Dec 2023 17:10:26 +0000
To: =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 5/5] wifi: b43: Support advertising lack of QoS capability
Message-ID: <87cyunk45e.fsf@protonmail.com>
In-Reply-To: <20231230144523.7df01ff5@barney>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com> <20231230045105.91351-6-sergeantsagara@protonmail.com> <20231230144523.7df01ff5@barney>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_091034_755261_3B4B265C 
X-CRM114-Status: GOOD (  11.67  )
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

T24gU2F0LCAzMCBEZWMsIDIwMjMgMTQ6NDU6MjMgKzAxMDAgTWljaGFlbCBCw7xzY2ggPG1AYnVl
cy5jaD4gd3JvdGU6Cj4gW1tQR1AgU2lnbmVkIFBhcnQ6VW5kZWNpZGVkXV0KPiBPbiBTYXQsIDMw
IERlYyAyMDIzIDA0OjUxOjUxICswMDAwCj4gUmFodWwgUmFtZXNoYmFidSA8c2VyZ2VhbnRzYWdh
cmFAcHJvdG9ubWFpbC5jb20+IHdyb3RlOgo+Cj4+IGJjbTQzMzEgYXBwZWFycyB0byBsYWNrIFFv
UyBzdXBwb3J0Lgo+Cj4gSSB0aGluayB0aGF0J3MgcmF0aGVyIHVubGlrZWx5Lgo+IFRoZSBmaXJt
d2FyZSBwcm9iYWJseSBpcyBqdXN0IHRvbyBvbGQgZm9yIHRoaXMgZGV2aWNlLgoKSSBqdXN0IHJl
dGVzdGVkIHdpdGggbmV3ZXIgZmlybXdhcmUgcmVsZWFzZWQgb24gMjAxMi0wOC0xNS4gSSBzdGls
bCBzZWUKdGhlIHNhbWUgaXNzdWUgd2l0aCBRb1MuIFRoaXMgYXBwZWFycyB0byBiZSB0aGUgbmV3
ZXN0IGZpcm13YXJlIEkgY2FuCmFjcXVpcmUgZnJvbSBodHRwOi8vbHdmaW5nZXIuY29tL2I0My1m
aXJtd2FyZS8sIHdoaWNoIEkgZXh0cmFjdCBmcm9tCmJyb2FkY29tLXdsLTYuMzAuMTYzLjQ2LgoK
ICAgIFsgICAxMS42NjE5NzJdIGI0My1waHkwOiBMb2FkaW5nIGZpcm13YXJlIHZlcnNpb24gNzg0
LjIgKDIwMTItMDgtMTUgMjE6MzU6MTkpCiAgICBbICAgMTEuOTE5OTQyXSBiNDMtcGh5MDogTG9h
ZGluZyBmaXJtd2FyZSB2ZXJzaW9uIDc4NC4yICgyMDEyLTA4LTE1IDIxOjM1OjE5KQogICAgWyAg
IDEzLjcxNzQ2MF0gW2RybV0gYW1kZ3B1IGtlcm5lbCBtb2Rlc2V0dGluZyBlbmFibGVkLgogICAg
WyAgIDEzLjcxNzcwNV0gYW1kZ3B1OiBWaXJ0dWFsIENSQVQgdGFibGUgY3JlYXRlZCBmb3IgQ1BV
CiAgICBbICAgMTMuNzE3NzE5XSBhbWRncHU6IFRvcG9sb2d5OiBBZGQgQ1BVIG5vZGUKICAgIFsg
ICAxMy43NzY4OTZdIE5FVDogUmVnaXN0ZXJlZCBQRl9QQUNLRVQgcHJvdG9jb2wgZmFtaWx5CiAg
ICBbICAgMTUuMjM0MDU4XSBiNDMtcGh5MDogTG9hZGluZyBmaXJtd2FyZSB2ZXJzaW9uIDc4NC4y
ICgyMDEyLTA4LTE1IDIxOjM1OjE5KQogICAgWyAgIDE1LjMxOTM4OF0gd2xwM3MwYjE6IGF1dGhl
bnRpY2F0ZSB3aXRoIDFjOjg3OjJjOjZmOmY0OmUwCiAgICBbICAgMTUuMzMzMjM5XSB3bHAzczBi
MTogc2VuZCBhdXRoIHRvIDFjOjg3OjJjOjZmOmY0OmUwICh0cnkgMS8zKQogICAgWyAgIDE1LjM0
MTY3Ml0gd2xwM3MwYjE6IGF1dGhlbnRpY2F0ZWQKICAgIFsgICAxNS4zNDE5MjFdIHdscDNzMGIx
OiBhc3NvY2lhdGUgd2l0aCAxYzo4NzoyYzo2ZjpmNDplMCAodHJ5IDEvMykKICAgIFsgICAxNS4z
NDY5MTJdIHdscDNzMGIxOiBSWCBBc3NvY1Jlc3AgZnJvbSAxYzo4NzoyYzo2ZjpmNDplMCAoY2Fw
YWI9MHg0MTEgc3RhdHVzPTAgYWlkPTMpCiAgICBbICAgMTUuMzQ3MjU1XSB3bHAzczBiMTogYXNz
b2NpYXRlZAoKPgo+PiArc3RhdGljIGNvbnN0IHUxNiBiNDNfbm9fcW9zX2NoaXBfaWRzW10gPSB7
Cj4+ICsJQkNNQV9DSElQX0lEX0JDTTQzMzEsCj4+ICsJMCwKPj4gK307Cj4+ICsKPj4gK3N0YXRp
YyBib29sIGI0M19xb3Nfbm90X3N1cHBvcnRlZChzdHJ1Y3QgYjQzX3dsZGV2ICpkZXYpCj4+ICt7
Cj4+ICsJaW50IGlkeDsKPj4gKwo+PiArCWZvciAoaWR4ID0gMDsgYjQzX25vX3Fvc19jaGlwX2lk
c1tpZHhdOyBpZHgrKykKPj4gKwkJaWYgKGRldi0+ZGV2LT5jaGlwX2lkID09IGI0M19ub19xb3Nf
Y2hpcF9pZHNbaWR4XSkKPj4gKwkJCXJldHVybiB0cnVlOwo+PiArCj4+ICsJcmV0dXJuIGZhbHNl
Owo+PiArfQo+PiArCj4+ICBzdGF0aWMgdm9pZCBiNDNfd2lyZWxlc3NfY29yZV9leGl0KHN0cnVj
dCBiNDNfd2xkZXYgKmRldik7Cj4+ICBzdGF0aWMgaW50IGI0M193aXJlbGVzc19jb3JlX2luaXQo
c3RydWN0IGI0M193bGRldiAqZGV2KTsKPj4gIHN0YXRpYyBzdHJ1Y3QgYjQzX3dsZGV2ICogYjQz
X3dpcmVsZXNzX2NvcmVfc3RvcChzdHJ1Y3QgYjQzX3dsZGV2ICpkZXYpOwo+PiBAQCAtMjU4Nyw3
ICsyNjAzLDcgQEAgc3RhdGljIHZvaWQgYjQzX3JlcXVlc3RfZmlybXdhcmUoc3RydWN0IHdvcmtf
c3RydWN0ICp3b3JrKQo+PiAgCj4+ICBzdGFydF9pZWVlODAyMTE6Cj4+ICAJd2wtPmh3LT5xdWV1
ZXMgPSBCNDNfUU9TX1FVRVVFX05VTTsKPj4gLQlpZiAoIW1vZHBhcmFtX3FvcyB8fCBkZXYtPmZ3
Lm9wZW5zb3VyY2UpCj4+ICsJaWYgKCFtb2RwYXJhbV9xb3MgfHwgZGV2LT5mdy5vcGVuc291cmNl
IHx8IGI0M19xb3Nfbm90X3N1cHBvcnRlZCh3bC0+Y3VycmVudF9kZXYpKQo+Cj4gVGhpcyBsb29r
cyBhIGJpdCBvdmVyLWVuZ2luZWVyZWQgdG8gbWUuCj4gQ2FuIHdlIGp1c3QgaW5zdGVhZCBkbyBp
dCBsaWtlIHRoaXMsIHBsZWFzZT8KPgo+IAlpZiAoIW1vZHBhcmFtX3FvcyB8fCBkZXYtPmZ3Lm9w
ZW5zb3VyY2UgfHwgZGV2LT5kZXYtPmNoaXBfaWQgPT0gQkNNQV9DSElQX0lEX0JDTTQzMzEpCj4K
CkFjay4KCj4+ICAJCXdsLT5ody0+cXVldWVzID0gMTsKPj4gIAo+PiAgCWVyciA9IGllZWU4MDIx
MV9yZWdpc3Rlcl9odyh3bC0+aHcpOwoKLS0KVGhhbmtzLAoKUmFodWwgUmFtZXNoYmFidQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFp
bGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
