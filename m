Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5580AF4213B
	for <b43-dev@archiver.kernel.org>; Wed, 15 Apr 2026 18:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:From:Message-Id:
	Date:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S/VBWVSjfYsA/zoYmUC5pnXgF9fddjYoGm9aN90wRQM=; b=Jy+LaRIWWDh0m735Ip6iGAAcXR
	ukERoP9BhjxE95bpi1WhvchJ2LyAPgb1yckO5jbxGx1VocAN9253VTTDnvt1TUAAby/w/riMYXUKA
	3xur8lrAo6NdjevZjfh7+OjqPY3kZPMHP5g6AJiyTDHKoYWeECMFc+ank7mRhWWRMSy1ZTMvj4/Bk
	/QVgXAGQSpcusCWwYYAeJ5gDH/+mfxE+wMiUoVCgG5eDbw1A8T802inOSjcgaaKjPw/zOQUYyA+Ar
	CeY69yMiW3tnl6DbYUGA9X3Q1q0CLluXAR9lLFPrZ2rM76mC3Y2/q/JGvTsgCY5oYkWvYITUI3NRo
	NdC3FIXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD5Rq-00000001WRp-0Gv2;
	Wed, 15 Apr 2026 18:58:50 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD5Rm-00000001WR6-2KqD
	for b43-dev@lists.infradead.org;
	Wed, 15 Apr 2026 18:58:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=In-Reply-To: References: Subject: Cc: To: From: Message-Id: Date:
 Content-Type: Content-Transfer-Encoding: Mime-Version; q=dns/txt;
 s=fe-953a8a3ca9; t=1776279525;
 bh=pR36tD0BNqu54mBaPmqnkTUiHL0jlEzXMrsBHSJtrRk=;
 b=sjPDwQFSfB4URSBrn+JOebBsxSMbm5OyvGE2uRC0+QmnlpSYRXhT3bqLxSrvujaGcXa2gx8nb
 gZtGJVL1RnITvL/kJOUyihO/VGpL2PtbMfiGGHEKqdDG2mgs0PMV4sj4SZJLx68S27Y/Nca+yWH
 F64fxYwH8iFXMc7kkXklvF00haIvm2VkYoK2T60758/MH4aN7H1vixQgFmbHV0nSkL4bN3fFH8k
 YDMMW54HiLsPJq9E6xFZfugwZq6ZkGG6dxFNYq7DAm3S8IdBoM5fEikHGpP5f5DydjYZZl4HIDx
 eRhteaOKHOiGnrnynzbSen/NsT98DidUJ9Uo2U/44fqA==
X-Forward-Email-ID: 69dfdfe372b056130e351deb
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.7.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Wed, 15 Apr 2026 14:58:42 -0400
Message-Id: <DHTYJFGLKPQ0.RYJIDH2VLV3W@ubuntu.com>
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: =?utf-8?q?Michael_B=C3=BCsch?= <m@bues.ch>, "Joshua Peisach"
 <jpeisach@ubuntu.com>
Subject: Re: Firmware for reverse engineering b43?
X-Mailer: aerc 0.21.0
References: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com>
 <c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
 <DHSUDVMGW0PS.2LYWKGG1C1135@ubuntu.com>
 <CAOiHx==kVm0OKWRKi4VHSEEr6ZygzrpNiA=zj+zEHT6_rgZ3CQ@mail.gmail.com>
 <DHTPAVC76140.1JLO3HNQARQ9Q@ubuntu.com>
 <CAOiHx=n8awRRvArvG8sWqEokojXL6ppFRJ8_SOuGAddDb1D32A@mail.gmail.com>
 <20260415175748.61aa7993@barney> <DHTW44HOVZLS.GFYBZTKJTMP4@ubuntu.com>
 <20260415194150.291dbe2d@barney>
In-Reply-To: <20260415194150.291dbe2d@barney>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_115846_970097_55A32FB7 
X-CRM114-Status: GOOD (  13.37  )
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
Cc: b43-dev <b43-dev-bounces@lists.infradead.org>, Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="Flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

T24gV2VkIEFwciAxNSwgMjAyNiBhdCAxOjQxIFBNIEVEVCwgTWljaGFlbCBCw7xzY2ggd3JvdGU6
Cj4KPiBXZWxsLCBpdCBwcm9iYWJseSBzdGlsbCB3b3JrcyB3ZWxsIG9uIHRoZSAoZmV3KSBkZXZp
Y2VzIGl0IHdvcmtlZCB3ZWxsIG9uLAo+IGJlY2F1c2UgaXQgYmFzaWNhbGx5IGhhc24ndCBjaGFu
Z2VkLgo+IFRoZXJlIGFyZSBtYW55IGRldmljZXMgd2hpY2ggd2VyZSBuZXZlciBzdXBwb3J0ZWQg
YXQgYWxsIG9yIHdlcmUgbmV2ZXIgc3VwcG9ydGVkCj4gcHJvcGVybHkuIEl0J3Mgbm90IHRoYXQg
anVzdCB5b3VyIGRldmljZSBpcyBtaXNzaW5nIHRvIGNvbXBsZXRlCj4gdGhlIHBlcmZlY3QgcGlj
dHVyZSA6LSkKPgoKT2YgY291cnNlIC0gYnV0IEkgZG9uJ3QgY3VycmVudGx5IGZlZWwgbGlrZSBi
ZW5kaW5nIG92ZXIgYmFja3dhcmRzIGZvcgp0aGlzIG9uZSBjaGlwLiBLZWVwIHRoZSB3b3JraW5n
IHN0dWZmIHdvcmtpbmcuCgo+IFRoZXJlIG1pZ2h0IGJlIGJldHRlciB1c2VzIG9mIHlvdXIgdGlt
ZSB0aGFuIHdvcmtpbmcgb24gdGhpcyBsZWdhY3kgc3R1ZmYuCj4gRm9yIGV4YW1wbGUgd29ya2lu
ZyBvbiB0aGUgbWljcm9jb2RlIHJldmVyc2UgZW5naW5lZXJpbmcgYW5kIHRvb2xzIGFuZAo+IGdl
dCB0aGVtIHVwZGF0ZWQgZm9yIHRoZSBjdXJyZW50IGdlbmVyYXRpb24gb2YgZGV2aWNlcyBpcyBw
cm9iYWJseQo+IG11Y2ggbW9yZSB1c2VmdWwuIEFuZCBJIHRoaW5rIG11Y2ggbW9yZSBmdW4sIHRv
by4KPiBPciBzb21ldGhpbmcgZWxzZSBhbHRvZ2V0aGVyLgoKSSBjYW4gZ2xhZGx5IHNheSB0aGF0
IHVzaW5nIEdoaWRyYSBvbiB0aGUgZmlybXdhcmUsIHY0LCB2NSwgYW5kIHY2IGlzCmFtYXppbmcu
IEV4cG9ydCBzeW1ib2xzIGhlbHAgYSBsb3QsIGFuZCBpdCBnaXZlcyB5b3UgYSBnb29kIGlkZWEg
b2Ygd2hhdAppcyBnb2luZyBvbjsgd2l0aCB0aGUgZXhjZXB0aW9uIG9mIHRoZSBkZWNvbXBpbGVy
IGdpdmluZyBnb3RvIHN0YXRlbWVudHMKdGhhdCBqdW1wIGFsbCBvdmVyIHRoZSBwbGFjZSBhbmQg
bWFrZSB0aGluZ3MgY29uZnVzaW5nIDovCgpCdXQgYWdhaW4sIGl0J3MgbGVnYWN5LgoKQXMgZm9y
IG5ld2VyIGdlbnMgLSBJIHRob3VnaHQgdGhleSBhcmUgYWxyZWFkeSBwcm92aWRlZCBieSBCcm9h
ZGNvbQpkZXZzIGluIHRoZSBrZXJuZWw/IEkgbWF5IGJlIHdyb25nLCBJIGNhbiBsb29rIGxhdGVy
LgoKVGhhbmtzIDopCi1Kb3NoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
