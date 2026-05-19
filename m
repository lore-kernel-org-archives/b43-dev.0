Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B83C7CD4F5B
	for <b43-dev@archiver.kernel.org>; Tue, 19 May 2026 23:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:Cc:Message-Id
	:Date:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h+6Doe9LJZBdfLVfsPv1Dwma/p8UcBY7tsb08jW40cM=; b=BNa+KAYZVxYbb8IcBm8vCuPP2Q
	wubsDFQjeWNYC2wRPbv9Yv3sEXTeLRiyUMErfq0ajnfBKQVDmjKX6h3oCVQNQI17BjB9UWp56u80O
	GIWtQnkQNfNZl8qVoXLwdMVvHro7BbmjW+OZ+MN8mWal1mkR3cOOdeD2y633/QiPhQC6PcimpmQLL
	1JV0/6UD06TP2g2VNR7rlkBlnqINPi5TRgBARt25dP8rNi8Z8G6CBbXQk37XYSvvxJBHW3CW3/++E
	5GYeLMopQNa1n2n//8SdmhiDNENskGVmd4rZK+DBWzX28f3aJRCBFGDicXZHSe1LeOnoX+b7mNuxI
	j7fJ5U4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPTdk-000000032PT-3RO3;
	Tue, 19 May 2026 23:14:20 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPTdg-000000032O8-463w
	for b43-dev@lists.infradead.org;
	Tue, 19 May 2026 23:14:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=In-Reply-To: References: To: From: Subject: Cc: Message-Id: Date:
 Content-Type: Content-Transfer-Encoding: Mime-Version; q=dns/txt;
 s=fe-953a8a3ca9; t=1779232456;
 bh=OpnXccnP1ozNGUSdnlbBvP1rS6zNyiymHfxwBsbuhWU=;
 b=f4QpEGVOk8aV+N+zloC2WNqVBE603YKY3J1YAIqRj+g19EVXYh8ZAV37UMxWXdUw33ElWRejS
 awryzs6J9q95Nd3NTvUtgHOjaxjiv913nWGpzqmn/fJMI1m4FsK0pJhAWO9F+0IT2f8GnhjuUXw
 zgOZuxL3RdCT+4+0sMN6TTMFSlbBIe4N+tsWGxNFhxh18tLth9HxSEcwVvrMd68MW2fBYoMdR3O
 VJWwJP4n7Eq1zxorYuyckYb79OyE0ClbvHQra5WZTScY4LGYwf9sFPvYXCHTtqtWmQsqN90SLbG
 BcpbbTTzTnJY1sMwHiuH/WOsTKPrT0OpYVo53Zv3tLXg==
X-Forward-Email-ID: 6a0ceeb7dba98f5f2747cad7
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Tue, 19 May 2026 19:13:58 -0400
Message-Id: <DIN19EEVA93R.2R8BXOUKWJ0GA@ubuntu.com>
Cc: "Alessio Ferri" <alessio.ferri@mythread.it>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <kvalo@kernel.org>, <linux-kernel@vger.kernel.org>, "b43-dev"
 <b43-dev-bounces@lists.infradead.org>
Subject: Re: [PATCH 0/6] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: =?utf-8?q?Michael_B=C3=BCsch?= <m@bues.ch>, "Joshua Peisach"
 <jpeisach@ubuntu.com>
X-Mailer: aerc 0.21.0
References: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
 <20260519175812.7ce97ba1@barney> <DIMWK04RLFCG.17KT0R0YCUMRW@ubuntu.com>
 <20260519215244.2a0d2b29@barney>
In-Reply-To: <20260519215244.2a0d2b29@barney>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_161417_373895_42C1FFF5 
X-CRM114-Status: GOOD (  15.78  )
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

T24gVHVlIE1heSAxOSwgMjAyNiBhdCAzOjUyIFBNIEVEVCwgTWljaGFlbCBCw7xzY2ggd3JvdGU6
Cj4gT24gVHVlLCAxOSBNYXkgMjAyNiAxNTozMjo0NCAtMDQwMAo+ICJKb3NodWEgUGVpc2FjaCIg
PGpwZWlzYWNoQHVidW50dS5jb20+IHdyb3RlOgo+Cj4+IE9uIFR1ZSBNYXkgMTksIDIwMjYgYXQg
MTE6NTggQU0gRURULCBNaWNoYWVsIELDvHNjaCB3cm90ZToKPj4gPiBPbiBNb24sIDE4IE1heSAy
MDI2IDAzOjQ5OjMzICswMjAwCj4+ID4gQWxlc3NpbyBGZXJyaSA8YWxlc3Npby5mZXJyaUBteXRo
cmVhZC5pdD4gd3JvdGU6Cj4+ID4KPj4gPiBJbiBnZW5lcmFsIHRoaXMgbG9va3MgT2suCj4+ID4g
RnJvbSB0aGUgc3R5bGUgSSBhc3N1bWUgdGhhdCB0aGlzIGlzIEFJIGdlbmVyYXRlZCwgcmlnaHQ/
Cj4+ID4gSWYgc28sIGNhbiB5b3UgdGVsbCB1cyBhIGJpdCBtb3JlIGFib3V0IHRoZSBpbnB1dHMg
dXNlZCBmb3IgdGhlIEFJPwo+PiA+IFdoYXQgaW5mb3JtYXRpb24gaXMgdGhpcyBpbXBsZW1lbnRh
dGlvbiBiYXNlZCBvbj8gIAo+PiAKPj4gU28uLi4gYXdrd2FyZCBxdWVzdGlvbi4KPgo+IFdoeT8K
Pgo+PiBXYXNuJ3QgdGhlcmUganVzdCBhIGNvbnZlcnNhdGlvblsxXSBhYm91dCB0aGUKPj4gZnV0
dXJlIGRldmVsb3BtZW50IG9mIHRoaXMgbW9kdWxlLCB0aGF0IHdhcyBsZWZ0IG9mZiBhdCAiZG9u
J3QgdG91Y2ggaXQKPj4gdW5sZXNzIHlvdSdyZSBnb2luZyB0byB0aG91cm91Z2hseSB0ZXN0IHRo
aXMiLAo+Cj4gU3VyZS4gVGhhdCdzIHdoeSBJIGFzayBhYm91dCB0aGUgZGV2ZWxvcG1lbnQgbWV0
aG9kcyB1c2VkLgo+Cj4+IGFuZCBub3cgd2UgYXJlIGdvaW5nIHRvIGhhdmUgYSAqTExNKiB3b3Jr
IG9uIHRoaXM/Cj4KPiBJIGRvbid0IGNhcmUgd2hldGhlciBjb2RlIHdhcyBnZW5lcmF0ZWQgd2l0
aCBhbiBMTE0gb3Igbm90Lgo+IFdoYXQgbWF0dGVycyBpcyB0aGUgZGV2ZWxvcG1lbnQgbWV0aG9k
cyB1c2VkLgoKRmFpciBlbm91Z2guIEFuZCBpdCB3YXMgdGVzdGVkIGFueXdheSA6KSBzb3JyeSBm
b3IgYW55IHBlcmNlaXZlZAphcnJvZ2FuY2UuCgpJIHdvdWxkIHRhZyBSZXZpZXdlZC1ieSBidXQg
SSBkb24ndCBoYXZlIGEgc2NyaXB0IHRvIGNoZWNrIHRoZSB0YWJsZXMKKHRoZXJlIHByb2JhYmx5
IGlzIHNvbWV3aGVyZS4uLiBpdCdzIGEgcGVyc29uYWwgcHJvYmxlbSAtIGEgInNraWxsCmlzc3Vl
IiBhcyBJIHNvbWV0aW1lcyBsaWtlIHRvIGNhbGwgaXQpLgoKLUpvc2gKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0
My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2I0My1kZXYK
