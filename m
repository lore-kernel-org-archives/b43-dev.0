Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87654C4707B
	for <b43-dev@archiver.kernel.org>; Sat, 13 Jan 2024 16:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LI0CFG46YNQ4guKv/aXT5+3gGV0yRsN7jKBkY2BrxyQ=; b=uCzcb5nG2zXi8u
	RRaWj2/MAePUgLuJD/uDGxuE9GK2f59ziHr6r9QeUQ2mXPRRgcFsUNtejhePBva5VxO4eE9mUGz6W
	0PQYM8y3Q982Bd30Yv1fTU3TRXrj9ku7Hfld5QtgWPrTbcWLvEcfTpD6uE+2J2z6DQ8U7wGXLsJI+
	yMvKv7bdGZFYkIT0F/nayQ7UTqgqIpRCs8ms3sjTwa1yuN9Bs5A30jS3PAxtA/Ff0i9lLOptRVu56
	RoUO6SPIcE1T4NJMmg4wpCCmNmsCb1ctGCbXj7049L8OIlNKHK7XT1rppHCk9xqXUcfxfpsn1p1kQ
	QfEwdRhoI5bVKInSfe+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOhAC-005Puz-1q;
	Sat, 13 Jan 2024 16:47:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOhA3-005PuZ-3A
	for b43-dev@lists.infradead.org;
	Sat, 13 Jan 2024 16:47:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 80CCC60B7D;
	Sat, 13 Jan 2024 16:46:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 929E8C433C7;
	Sat, 13 Jan 2024 16:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705164396;
	bh=VUclddjcZSmohXUG3CiQi1jaoQVq1DeF2h3vDJ15cM0=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=gJq2aJdkcuDG9gBOJkweuzqeMhuqAU2QPyebUb1kQqVYfhyYvlge5Y6HWGGnexmXf
	 4010MJ57Uqa8naU4hMWlZ4HRMmnYs8QUK5C73K0bXtYvYhxm1cVdY1lF3pbtKWv54I
	 rgPFo60mMj2vxShOfggXIfIsmG95e/tSdAaJgFxPLeTVedFt+QSy8LUceWpHdDuItv
	 tYiNNOWKV7CfGN5zlAKkB5l4WPleLnLT7iYgdEjNM+UI5rqlAUleTW8j/+F5TDj3T/
	 VvmEKMYVatzICO7F25ETsEd/+G7JS3I6/TQjOAE4sxMLtjdToqXuOcy65Ul1P1J1um
	 SpfrazZltzCTw==
From: Kalle Valo <kvalo@kernel.org>
To: Michael =?utf-8?Q?B=C3=BCsch?= <m@bues.ch>
Cc: Yang Li <yang.lee@linux.alibaba.com>,  Larry.Finger@lwfinger.net,
  linux-wireless@vger.kernel.org,  b43-dev@lists.infradead.org,
  linux-kernel@vger.kernel.org,  Abaci Robot <abaci@linux.alibaba.com>
Subject: wireless: cleanup patches
References: <20231220011209.127586-1-yang.lee@linux.alibaba.com>
	<20231220102307.7dd1f187@barney>
Date: Sat, 13 Jan 2024 18:46:32 +0200
In-Reply-To: <20231220102307.7dd1f187@barney> ("Michael =?utf-8?Q?B=C3=BCs?=
 =?utf-8?Q?ch=22's?= message of
	"Wed, 20 Dec 2023 10:23:07 +0100")
Message-ID: <87mst989lj.fsf_-_@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_084708_083640_BEC710BC 
X-CRM114-Status: GOOD (  19.96  )
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

TWljaGFlbCBCw7xzY2ggPG1AYnVlcy5jaD4gd3JpdGVzOgoKPiBPbiBXZWQsIDIwIERlYyAyMDIz
IDA5OjEyOjA5ICswODAwCj4gWWFuZyBMaSA8eWFuZy5sZWVAbGludXguYWxpYmFiYS5jb20+IHdy
b3RlOgo+Cj4+IENsb3NlczogaHR0cHM6Ly9idWd6aWxsYS5vcGVuYW5vbGlzLmNuL3Nob3dfYnVn
LmNnaT9pZD03NzgzCj4KPiBUaGlzIGxpbmsgaXMgbm90IHB1YmxpY2x5IGFjY2Vzc2libGUuCj4K
Pj4gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDNsZWdhY3kvZG1hLmMgKysrCj4+
IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzbGVnYWN5L2RtYS5jIEBAIC0xNzQs
OCArMTc0LDggQEAKPj4gc3RhdGljIHN0cnVjdCBiNDNsZWdhY3lfZG1hcmluZyAqcHJpb3JpdHlf
dG9fdHhyaW5nKCB7Cj4+ICAJc3RydWN0IGI0M2xlZ2FjeV9kbWFyaW5nICpyaW5nOwo+PiAgCj4+
IC0vKkZJWE1FOiBGb3Igbm93IHdlIGFsd2F5cyBydW4gb24gVFgtcmluZy0xICovCj4+IC1yZXR1
cm4gZGV2LT5kbWEudHhfcmluZzE7Cj4+ICsJLypGSVhNRTogRm9yIG5vdyB3ZSBhbHdheXMgcnVu
IG9uIFRYLXJpbmctMSAqLwo+PiArCXJldHVybiBkZXYtPmRtYS50eF9yaW5nMTsKPj4gIAo+PiAg
CS8qIDAgPSBoaWdoZXN0IHByaW9yaXR5ICovCj4+ICAJc3dpdGNoIChxdWV1ZV9wcmlvcml0eSkg
ewo+Cj4gVGhhbmtzIGZvciB5b3VyIHBhdGNoLgo+Cj4gQnV0IGFjdHVhbGx5LCBJIGFtIGtpbmQg
b2YgYW5ub3llZCBieSB0aGUgY29uc3RhbnQgc3RyZWFtIG9mIHdoaXRlc3BhY2UKPiBmaXhpbmcg
YW5kIGRlYWQgY29kZSByZW1vdmFsIGFuZCBvdGhlciB0cml2aWFsIGNoYW5nZXMgdG8gdGhpcyBs
ZWdhY3kKPiBkcml2ZXIuCj4KPiBJdCBkb2VzIG5vdCBpbXByb3ZlIHRoZSBjb2RlIHRvIGFkZCB0
d28gdGFicyB0byB0aGlzIF9hbmNpZW50XyBjb2RlLgo+Cj4gQW5kIEkgY2FuIGFscmVhZHkgc2Vl
IHRoZSBuZXh0IHBhdGNoIGNvbWluZyB0aGF0IHJlbW92ZXMgdGhlIGRlYWQgY29kZQo+IGFmdGVy
IHRoaXMgRklYTUUgcmV0dXJuLiBBbmQgdGhlbiB0aGUgbmV4dCBwYXRjaCB3aWxsIGNvbWUgdG8g
cmVtb3ZlCj4gdGhpcyBmdW5jdGlvbiBhbHRvZ2V0aGVyLCBhbmQgc28gb24gYW5kIHNvIG9uLgo+
Cj4gVGhpcyBkcml2ZXIgaGFzIGEgX2xvdF8gb2Ygc3VjaCBjb2RlLCBiZWNhdXNlIGl0IGlzIGJh
c2VkIG9uIHJldmVyc2UKPiBlbmdpbmVlcmVkIGtub3dsZWRnZSB3aXRoIG1hbnkgbWFueSB1bmtu
b3ducy4KPgo+IElNTyB0aGlzIGp1c3QgY3JlYXRlcyBhZGRpdGlvbmFsIG1haW50ZW5hbmNlIHdv
cmsgYW5kIHByZXNzdXJlIG9uIG91cgo+IG1haW50YWluZXJzIGZvciBubyBnb29kIHJlYXNvbi4K
ClllYWgsIHRoZSBjbGVhbnVwIHBhdGNoZXMgYXJlIGEgcHJvYmxlbS4gRXZlbiBtb3JlIHNvIHRo
YXQgdGhlcmUgY2FuIGJlCnBlb3BsZSB3aG8gZGVsaWJlcmF0ZWx5IHRyeSB0byBzdWJtaXQgY29t
cHJvbWlzZWQgY29kZToKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMTA1MDUxMDA1
LjQ5QkZBQkNFQGtlZXNjb29rLwoKYnJ0ZnMgaGFzIGEgcHJldHR5IGdvb2Qgc3VtbWFyeSBhYm91
dCB0aGVpciBmZWVsaW5ncyB0b3dhcmRzIGNsZWFudXAKcGF0Y2hlczoKCmh0dHBzOi8vYnRyZnMu
cmVhZHRoZWRvY3MuaW8vZW4vbGF0ZXN0L2Rldi9EZXZlbG9wZXItcy1GQVEuaHRtbCNob3ctbm90
LXRvLXN0YXJ0CgpKb2hhbm5lcyBhbmQgbWUgaGF2ZSBiZWVuIHRhbGtpbmcgdGhhdCB3ZSBzaG91
bGQgd3JpdGUgc29tZXRoaW5nIHNpbWlsYXIKZm9yIHdpcmVsZXNzLiBNYXliZSB3ZSBzaG91bGQg
c3RhcnQgYnkgYWRkaW5nIHRoYXQgbGluayB0byBvdXIKZG9jdW1lbnRhdGlvbiA6KQoKLS0gCmh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoK
aHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0
aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2
Cg==
