Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E3D5ED7B91
	for <b43-dev@archiver.kernel.org>; Tue, 14 Apr 2026 09:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLocwXBU8lPp3QXMW2GkdvbrisoSVhqFhbB3OsiuqCE=; b=129SKAAL+SbAM0
	PRf1EgYGASiHZXFnJJUT0W54rFFWRAp5xRwrB6OF0CvMkm9J1NJ5k17JHSmyfUTn6uqPIvLQBqQwa
	lQHhDovwznZ/1ih0sbc/Vh+VavLV2v3fXnI1vJsn57VLvEy9WHPoLm1LQ5ScRldMvW3cLY/gv5po6
	scLW3m83SkVf/ZHOtWvK2BSi4pSTzntFcyPMm1r9RaUciT7DZa9HqfbNJ6VqDwOEX2MaTVgxaSnK0
	/KFNGw7M0y9uei1+cE1PPQBEMXrjvatvGbtit3nb6BdOJ+xpEPlPVAmnmi4K7A/3Gy5Qe/AuZiu/6
	I8HQ6oyUTu5ih5cczBAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZrO-0000000H2n6-49gB;
	Tue, 14 Apr 2026 09:15:06 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCZrM-0000000H2mE-47TK
	for b43-dev@lists.infradead.org;
	Tue, 14 Apr 2026 09:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=QdqHqaGhqJlpYqGI3FCbv9TvOGDvVYkBHj36utyfaMs=;
	t=1776158104; x=1777367704; b=M7h0qVTxkS/Y0udBNaWrBA4LEkI3ZlNezKO/CgzGfjG8KLw
	NvN2yPdAchPW9wW3lAdwbv2+Mp63qVL0O/WBReXy7Ito8/lqiecpSwKxW7lDtx+ZgFYS35K6jwPB/
	0XwQ9j5SeuUML+Nj/jMKLDbbZvYS5vB14JMYhNHETv0PZq5E5XXyIBlRnsgwOsGpmYQTbmq6vy0S+
	oEcw9ozpqZbVwCT2DjEGwjNaDldVVScqk+Kgb9y4ZGr52Zb0svi8n4f2P6vLD7mu2ZoIjv/XeV/Me
	wmXI9ycqkQhP0iGd9UTayRbu+L5Edej+gqJ6cCDojvy/W8dug10Uo1Kgx1Av/ZTw==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1wCZrG-000000058h1-04V6;
	Tue, 14 Apr 2026 11:14:58 +0200
Message-ID: <c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
Subject: Re: Firmware for reverse engineering b43?
From: Johannes Berg <johannes@sipsolutions.net>
To: Joshua Peisach <jpeisach@ubuntu.com>, b43-dev@lists.infradead.org, 
	linux-wireless@vger.kernel.org
Date: Tue, 14 Apr 2026 11:14:56 +0200
In-Reply-To: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com>
References: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_021505_064080_1D2F642E 
X-CRM114-Status: GOOD (  23.19  )
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

SGksCgo+IEFzIEkndmUgYmVlbiBnZXR0aW5nIGludG8ga2VybmVsIGRldmVsb3BtZW50LMKgCgpX
ZWxjb21lIDopCgo+IFdoZW4gaXQgY29tZXMgdG8gZmlndXJpbmcgb3V0IHdoYXQgY29kZSB0byB3
cml0ZSBhbmQgaG93IHRvIGltcGxlbWVudAo+IGZ1bmN0aW9ucywgSSBzZWUgdGhhdCB0aGVyZSBo
YXMgYmVlbiBhIG1peCBvZiBhbnN3ZXJzIGFjcm9zcyB0aGUgZHJpdmVyLgo+IAo+IExvdHMgb2Yg
ZnVuY3Rpb25zIHJlZmVyIHRvIHNwZWNzIFJFJ2QgZnJvbSB0aGUgNC54IGZpcm13YXJlWzFdLCBi
dXQKPiBteSBvd24gaW5zdGFsbCB1c2VzIDUueCBmaXJtd2FyZS4gQWRkaXRpb25hbGx5LCB0aGUg
Ni54IGZpcm13YXJlIGlzCj4gYXZhaWxhYmxlLgo+IAo+IEZvciBteSByZXZlcnNlIGVuZ2luZWVy
aW5nIHByb2Nlc3MsIEkgb3BlbmVkIHRoZSBmaXJtd2FyZSBpbiBHaGlkcmEKPiBhbmQgYmFzaWNh
bGx5IHRyeSB0byBtYXAgdGhlIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIGRyaXZlciwgd2hpY2ggYXBw
ZWFycwo+IHRvIGJlIHdoYXQgd2FzIGRvbmUgd2l0aCB0aGUgNC54IHNwZWNzPwoKUHJldHR5IG11
Y2gsIHRob3VnaCBubyBHaGlkcmEgb3IgQUkgYXNzaXN0IG9yIGFueXRoaW5nIGJhY2sgdGhlbiwg
d2UgaGFkCnRvIGhhbmQtcm9sbCBvdXIgb3duIHRvb2xzIDstKQpUaGUgY29uY2VybiB0aGVuIHdh
cyB0aGF0IHdlIHNob3VsZCBoYXZlIHR3byB0ZWFtcyBzbyBub2JvZHkgY2FuIGNsYWltCmNvcHly
aWdodCB2aW9sYXRpb25zLCBidXQgSSBvYnZpb3VzbHkgZG9uJ3Qga25vdyB3aGF0IEJyb2FkY29t
J3Mgc3RhbmNlCm9uIHRoaXMgaXMgKG5vdyBvciB0aGVuLikgSSBkbyBrbm93IHRoZXkgd2VyZSBp
bXByZXNzZWQgYnkgdGhlIGxldmVsIG9mCnJldmVyc2UgZW5naW5lZXJpbmcsIGVzcGVjaWFsbHkg
ZG93biBpbnRvIHRoZSBkZXZpY2UgZmlybXdhcmUgaXRzZWxmIDopCgo+IEJ1dCwgYXMgSSBjb21w
YXJlIHRvIHRoZSBuZXdlciBmaXJtd2FyZSwgc29tZSBmdW5jdGlvbnMgaGF2ZSBiZWVuIG1vdmVk
Cj4gb3IgcmVwbGFjZWQuIEFuZCBzb21ldGltZXMsIHRoZSBuZXdlciBmaXJtd2FyZSBmdW5jdGlv
bnMgY29udHJhZGljdCB0aGUKPiBSRSdkIDQueCBzcGVjcywgb3IgaGF2ZSBleHRyYSBzdGVwcyBp
biBpdHMgcHJvY2Vzcy4KCk5vIHN1cnByaXNlIEkgZ3Vlc3MsIHRoaW5ncyBjb3VsZCBldmVuIGp1
c3Qgc2hpZnQgYnkgY29tcGlsaW5nIHRoZW0KZGlmZmVyZW50bHkuCgo+IFRha2UgYjQzX25waHlf
cGVyaWNhbCwgb3IgYXMga25vd24gaW4gdGhlIHY0IGZpcm13YXJlLAo+IHdsY19waHlfcGVyaWNh
bF9ucGh5LiBJIGdvdCB0byB0aGlzIGZ1bmN0aW9uIGJlY2F1c2Ugd2xjX25waHlfaW5pdCBjYWxs
cwo+IGl0LiBCdXQgYWN0dWFsbHksIHRoZSBSRSdkIHZlcnNpb24gc2F5cyBpbml0IGNhbGxzCj4g
d2xjX3BoeV9wZXJpY2FsX25waHlfcnVuLCB3aGljaCB0aGUgZmlybXdhcmUgc2F5cyBpcyBub3Qg
dGhlIGNhc2UKPiAoaXQgZ29lcyB0aHJvdWdoIHdsY19waHlfcGVyaWNhbF9ucGh5IGZpcnN0LCB3
aGljaCBoYXMgaXRzIG93bgo+IGNvbmRpdGlvbnMpLgo+IAo+IFNvLCB3aGljaCBpcyB0aGUgYmVz
dCBzb3VyY2Ugb2YgdHJ1dGgocykgZm9yIHRoaXMgZHJpdmVyPyBUaGUgdjQueAo+IHNwZWNzLCB0
aGUgdjUgZmlybXdhcmUsIG9yIHRoZSB2NiBmaXJtd2FyZT8gV2hpY2ggb25lIHNob3VsZCBiZSB1
c2VkLAo+IGFuZCB3aGljaCBoYXMgYSBoaWdoZXIgcHJpb3JpdHkgbGV2ZWwgb3ZlciB0aGUgb3Ro
ZXI/CgpJIHRoaW5rIHRoZXJlJ3Mgbm8gZWFzeSBhbnN3ZXIgLSB3aGF0IGFyZSB5b3UgZXZlbiB0
cnlpbmcgdG8gYWNoaWV2ZT8KRG9lcyBiNDMgbm90IHdvcmsgc3VmZmljaWVudGx5IHdlbGw/IERv
IHlvdSBldmVuIGtub3cgaWYgc29tZSBzcGVjaWZpYwpjYWxpYnJhdGlvbiBoYXZlIGEgdGVuZGVu
Y3kgdG8gZ28gb3V0IG9mIHdoYWNrPyBJcyB0aGVyZSBsYXRlciBmaXJtd2FyZQp0aGF0IGhhcyBz
b21lIGFkdmFudGFnZSAoZ2l2ZW4gaG93IGxpdHRsZSBhY3R1YWxseSBoYXBwZW5zIGluIGZpcm13
YXJlCmluIHRoZXNlIGRldmljZXMsIEknZCBiZSBzdXJwcmlzZWQgYnkgdGhhdCkgYnV0IGlzbid0
IGNvbXBhdGlibGUgd2l0aAp0aGUgZHJpdmVyIG5vdywgYW5kIHlvdSB3YW50IHRvIGNoYW5nZSB0
aGF0PwoKSSdkIGJlIHRlbXB0ZWQgdG8gc2F5IHRoYXQgaWYgdGhlcmUncyBubyBwcm9ibGVtIHRo
ZXJlIGRvbid0IHRyeSB0byBmaXgKYW55dGhpbmcsIHRoZSBoYXJkd2FyZSBpcyBhbmNpZW50IGFu
eXdheSwgbGlrZWx5IGhhcyBmZXcgdXNlcnMsIGFuZAp0aG9zZSB1c2VycyB3b3VsZCBwcm9iYWJs
eSBiZSBmaW5lIHdpdGgganVzdCBsZWF2aW5nIGl0PwoKam9oYW5uZXMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0
My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2I0My1kZXYK
