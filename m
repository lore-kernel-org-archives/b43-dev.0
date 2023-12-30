Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0A49C4706F
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 17:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfJO5a5tMzaaN5uaGhRL2KrgEOWHIvLua8Hgmag1aow=; b=tE6ajrjEe/g+em
	8cR7+tQwEidghwG4CZtPgc3Y+r/iw6GB/oUXSoyEP13NduPmmLU89cfoeFajs2v6IGUsL3szaXJMf
	YFjMHMIsIdk3EVJEZSrH8qqQXBHuj3U8AoG06DJUtmQl/tN2gs9gPrbKRxvJ/c5PnwutGgLz/4ZwA
	8bb/9jHNvLD1W9B6cgoRKVhFUrT7EGzMtFfAwRk6WCPdS9AZPe7HRQOYvmD0FD0DTorlrcHqEOLNS
	vDf2wQe1sh1ZA/LyREgWalcsPJBf+ObYT4pjSHFn3zbCALOuq875XnehIPM39B71qJrV32HilatoL
	gYzyBxw4CnQvXfru4r+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcyB-0039bL-1u;
	Sat, 30 Dec 2023 17:17:55 +0000
Received: from mail-40134.protonmail.ch ([185.70.40.134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJcy8-0039Zt-2h
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 17:17:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703956671; x=1704215871;
	bh=QQ0ltPLjZpeG5P5hw0GwaUTAFyp/TZCuilQIFffY7L4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=BH6JKtWmsCx/bk+7ArCWqZLg3Ym49iUdiCkEvm5KWnafwtYLvqpJDX/ee71Nf9PyL
	 jRyTggQa5u8GUTm9RCCXE2fSr3Enz04U1YdCIoeQ1ZpFYZwfsAf6cTY0niQttQsRuR
	 9VIzjxhA7k32R+usnLJ5XjPlLnpUCOgK+C73qQpWzHVAbAOTqvkgj/zuXZJElUdILs
	 3w78rHinKJNCt5glyUgaOleGgn7/qe43O98vddIOwuEhrChXaOkLOeuerv9x25+HMi
	 HLPA1DczAuavfbH8LN7GpM/+mGJZ7awU3Eu25JQHhcSH4TfUXzUz48ypx2onZ0L+ka
	 4+OfozbHgTPoA==
Date: Sat, 30 Dec 2023 17:17:40 +0000
To: =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 1/5] wifi: b43: Correct OpenFW QoS capability warning conditional
Message-ID: <874jfzk3tb.fsf@protonmail.com>
In-Reply-To: <20231230143455.4d64ffc7@barney>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com> <20231230045105.91351-2-sergeantsagara@protonmail.com> <20231230143455.4d64ffc7@barney>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_091753_034144_EF2ADFCB 
X-CRM114-Status: GOOD (  12.12  )
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

T24gU2F0LCAzMCBEZWMsIDIwMjMgMTQ6MzQ6NTUgKzAxMDAgTWljaGFlbCBCw7xzY2ggPG1AYnVl
cy5jaD4gd3JvdGU6Cj4gW1tQR1AgU2lnbmVkIFBhcnQ6VW5kZWNpZGVkXV0KPiBPbiBTYXQsIDMw
IERlYyAyMDIzIDA0OjUxOjI5ICswMDAwCj4gUmFodWwgUmFtZXNoYmFidSA8c2VyZ2VhbnRzYWdh
cmFAcHJvdG9ubWFpbC5jb20+IHdyb3RlOgo+Cj4+IFRyaWdnZXIgdGhlIHdhcm5pbmcgbWVzc2Fn
ZSBzaG91bGQgYmUgd2hlbiB0aGUgT3BlbkZXIGNhcGFiaWxpdHkgZm9yIFFvUwo+PiBkb2VzIG5v
dCBhZHZlcnRpc2UgUW9TIHN1cHBvcnQuIFByZXZpb3VzbHksIHRoZSB3YXJuaW5nIHdvdWxkIGJl
Cj4+IGluY29ycmVjdGx5IHRyaWdnZXJlZCB3aGVuIE9wZW5GVyByZXBvcnRlZCBRb1MgY2FwYWJp
bGl0eSBpcyBwcmVzZW50Lgo+Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29t
L2I0My9tYWluLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL21h
aW4uYwo+PiBAQCAtMjcxMyw3ICsyNzEzLDcgQEAgc3RhdGljIGludCBiNDNfdXBsb2FkX21pY3Jv
Y29kZShzdHJ1Y3QgYjQzX3dsZGV2ICpkZXYpCj4+ICAJCQlkZXYtPmh3Y3J5cHRvX2VuYWJsZWQg
PSBmYWxzZTsKPj4gIAkJfQo+PiAgCQkvKiBhZGRpbmcgUW9TIHN1cHBvcnQgc2hvdWxkIHVzZSBh
biBvZmZsaW5lIGRpc2NvdmVyeSBtZWNoYW5pc20gKi8KPj4gLQkJV0FSTihmd2NhcGEgJiBCNDNf
RldDQVBBX1FPUywgIlFvUyBpbiBPcGVuRlcgbm90IHN1cHBvcnRlZFxuIik7Cj4+ICsJCVdBUk4o
IShmd2NhcGEgJiBCNDNfRldDQVBBX1FPUyksICJRb1MgaW4gT3BlbkZXIG5vdCBzdXBwb3J0ZWRc
biIpOwo+PiAgCX0gZWxzZSB7Cj4+ICAJCWI0M2luZm8oZGV2LT53bCwgIkxvYWRpbmcgZmlybXdh
cmUgdmVyc2lvbiAldS4ldSAiCj4+ICAJCQkiKDIwJS4yaS0lLjJpLSUuMmkgJS4yaTolLjJpOiUu
MmkpXG4iLAo+Cj4gSSBkb24ndCB0aGluayB0aGlzIHBhdGNoIGlzIGNvcnJlY3QuCj4gSXQgc2hv
dWxkIHdhcm4sIGlmIHRoZSBmaXJtd2FyZSBhZHZlcnRpc2VzIFFvUywgYmVjYXVzZSB0aGF0IGlz
IG5vdAo+IHN1cHBvcnRlZCBieSBiNDMgaW4gY2FzZSBvZiBPcGVuRlcuCgpUaGFua3MuIEkgaGFk
IGEgaGFyZCB0aW1lIHVuZGVyc3RhbmRpbmcgdGhlIGludGVudGlvbiBvZiB0aGlzIHdhcm5pbmcu
IEkKZmlndXJlZCBpdCBjb3VsZCBiZSB0aGUgY2FzZSB3aGVyZSB0aGUgd2FybmluZyBpcyBhYm91
dCB0aGUgZHJpdmVyCmRpc2FibGluZyBRb1Mgd2hlbiBmaXJtd2FyZSBoYXMgc3VwcG9ydCBidXQg
d2FzIG5vdCBzdXJlLiBXaWxsIGRyb3AgdGhpcwpwYXRjaCBnb2luZyBmb3J3YXJkLgoKLS0KVGhh
bmtzLAoKUmFodWwgUmFtZXNoYmFidQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1k
ZXYK
