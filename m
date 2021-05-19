Return-Path: <SRS0=5THX=KO=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE18C433B4
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 16:03:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 399E460FE6
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 16:03:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 399E460FE6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nqLVOdjt5ZNpIg3fecNQCiXLhSpHqqd7IyAQ4OzeC6Y=; b=YE4sAt2SkeBMvAJIbxhz4ud2C
	6zgvmCx4coLpMVqL2Ni6e88dOAh/ezixEzn9i7QCEUoDohh4KU/OT+l1j2vs649E4NB71JD6ATuvy
	tX9UCEH7nTTbZ76HUpvzQM+530a3uSiC+Ko6h94e9aZGIU0qQA4S8FC4kRg/+SyaY/Cf88pUykEXv
	acDhUfe640+XDhJ6064+gWKERuQFJHTSZUHeDAnDIH6ov70npcop1lygEs/JVsFAZY4WUzNlf1J7l
	S0nlqF5e3B9oEWrUOw2RHu6EPGGKAgy25SeDXS9Oa8uAYy9a+37Sjhg2i69egk90XwJZVFlfDDwbT
	xzfb7NVmA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljOfF-004SqI-KI; Wed, 19 May 2021 16:03:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljOfC-004Spx-7x
 for b43-dev@desiato.infradead.org; Wed, 19 May 2021 16:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=NYDCKbrCfPGj7Lq2v8u1qXWoyUG/VJhGVh5Gh1VJdjA=; b=w2/f1odsUSQ6TnjxXVbyNkQ+3A
 MQndvjCRo+mUPu4DTUE4Q4F2TeY/3WFmuQ0k7Q1cwkJ+crEKa5Ptwpv09H9deoJ6r5Q7NCXeApqs4
 eQtjibve9bTWa+nRdXDqH4lPYLp4jvkqq4FmCjMqdcmjwNA5zTSiJ4D4fQnRWKvkFmwuZ8QKWYope
 8noR/3KpJxNKv/VuZQI9QlMx6f/8pB7VQ1OOeRffeB1CzBloVKv1gp719zIX2yUiZaStOFxn3zR24
 PKTxv2n1ZNLTTVzQtfZvPK7S7rT5MbWFiPbI+gnr29TPpDHdeyrDFdq/4pI0n2i/gOC01DZ//GNwv
 UeKuqakw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljOf9-00Fbrd-Du
 for b43-dev@lists.infradead.org; Wed, 19 May 2021 16:03:12 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2CC91611BF;
 Wed, 19 May 2021 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621440190;
 bh=JZ5ttupHJEOD9whNallqTU+f5HydGhX1QoErpDhMSqc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pK80JGjcsfTNR77RvDU/cvsZsF0N9SpohJW9XQJaXGVTLtFhs9vZO0mfB8Qr/6yP1
 WeDPA9KpMxok/EFnJe+k7/XORUQWRS1slPmZKqwOWUobnEANqAoyr5w/7wWWmc+RMx
 qxmSTLpdSAIBzMBO0t4HXq7D8VfJGTzne7w68Wjk=
Date: Wed, 19 May 2021 18:03:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jeff Johnson <jjohnson@codeaurora.org>
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu <chao@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jjohnson=codeaurora.org@codeaurora.org
Subject: Re: [PATCH v2] b43: don't save dentries for debugfs
Message-ID: <YKU2vMoDO0Ch1Lyg@kroah.com>
References: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
 <891f28e4c1f3c24ed1b257de83cbb3a0@codeaurora.org>
 <f539277054c06e1719832b9e99cbf7f1@codeaurora.org>
 <YKScfFKhxtVqfRkt@kroah.com>
 <2eb3af43025436c0832c8f61fbf519ad@codeaurora.org>
 <YKUyAoBq/cepglmk@kroah.com>
 <48aea7ae33faaafab388e24c3b8eb199@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <48aea7ae33faaafab388e24c3b8eb199@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_090311_516734_7BA74771 
X-CRM114-Status: GOOD (  24.71  )
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

T24gV2VkLCBNYXkgMTksIDIwMjEgYXQgMDg6NTc6MDBBTSAtMDcwMCwgSmVmZiBKb2huc29uIHdy
b3RlOgo+IE9uIDIwMjEtMDUtMTkgMDg6NDIsIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToKPiA+
IE9uIFdlZCwgTWF5IDE5LCAyMDIxIGF0IDA4OjA0OjU5QU0gLTA3MDAsIEplZmYgSm9obnNvbiB3
cm90ZToKPiA+ID4gT24gMjAyMS0wNS0xOCAyMjowNSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3Rl
Ogo+ID4gPiA+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0IDAzOjAwOjQ0UE0gLTA3MDAsIEplZmYg
Sm9obnNvbiB3cm90ZToKPiA+ID4gPiA+IE9uIDIwMjEtMDUtMTggMTI6MjksIEplZmYgSm9obnNv
biB3cm90ZToKPiA+ID4gPiA+IFdvdWxkIHN0aWxsIGxpa2UgZ3VpZGFuY2Ugb24gaWYgdGhlcmUg
aXMgYSByZWNvbW1lbmRlZCB3YXkgdG8gZ2V0IGEKPiA+ID4gPiA+IGRlbnRyeSBub3QgYXNzb2Np
YXRlZCB3aXRoIGRlYnVnZnMuCj4gPiA+ID4KPiA+ID4gPiBXaGF0IGRvIHlvdSBleGFjdGx5IG1l
YW4gYnkgIm5vdCBhc3NvY2lhdGVkIHdpdGggZGVidWdmcyI/Cj4gPiA+ID4KPiA+ID4gPiBBbmQg
d2h5IGFyZSB5b3UgcGFzc2luZyBhIGRlYnVnZnMgZGVudHJ5IHRvIHJlbGF5X29wZW4oKT8gIFRo
YXQgZmVlbHMKPiA+ID4gPiByZWFsbHkgd3JvbmcgYW5kIGZyYWdpbGUuCj4gPiA+IAo+ID4gPiBJ
IGRvbid0IGtub3cgdGhlIGhpc3RvcnkgYnV0IHRoZSByZWxheSBkb2N1bWVudGF0aW9uIHRlbGxz
IHVzOgo+ID4gPiAiSWYgeW91IHdhbnQgYSBkaXJlY3Rvcnkgc3RydWN0dXJlIHRvIGNvbnRhaW4g
eW91ciByZWxheSBmaWxlcywKPiA+ID4geW91IHNob3VsZCBjcmVhdGUgaXQgdXNpbmcgdGhlIGhv
c3QgZmlsZXN5c3RlbeKAmXMgZGlyZWN0b3J5Cj4gPiA+IGNyZWF0aW9uIGZ1bmN0aW9uLCBlLmcu
IGRlYnVnZnNfY3JlYXRlX2RpcigpLi4uIgo+ID4gPiAKPiA+ID4gU28gbXkgZ3Vlc3MgaXMgdGhh
dCB0aGUgb3JpZ2luYWwgaW1wbGVtZW50YXRpb24gZm9sbG93ZWQgdGhhdAo+ID4gPiBhZHZpY2Uu
ICBJIHNlZSA1IGNsaWVudHMgb2YgdGhpcyBmdW5jdGlvbmFsaXR5LCBhbmQgYWxsIDUgcGFzcyBh
Cj4gPiA+IGRlbnRyeSByZXR1cm5lZCBmcm9tIGRlYnVnZnNfY3JlYXRlX2RpcigpOgo+ID4gPiAK
PiA+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jLCBsaW5lIDM4
NAo+ID4gPiBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3NwZWN0cmFsLmMsIGxpbmUg
NTM0Cj4gPiA+IGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMWsvc3BlY3RyYWwuYywgbGlu
ZSA5MDIKPiA+ID4gZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDlrL2NvbW1vbi1zcGVjdHJh
bC5jLCBsaW5lIDEwNzcKPiA+ID4ga2VybmVsL3RyYWNlL2Jsa3RyYWNlLmMsIGxpbmUgNTQ5Cj4g
PiAKPiA+IEFoLCB0aGF0J3MganVzdCB0aGUgInBhcmVudCIgZGVudHJ5IGZvciB0aGUgcmVsYXlm
cyBmaWxlLiAgVGhhdCdzIGZpbmUsCj4gPiBub3QgYSBiaWcgZGVhbCwgZGVidWdmcyB3aWxsIGFs
d2F5cyBwcm92aWRlIGEgd2F5IGZvciB5b3UgdG8gZ2V0IHRoYXQgaWYKPiA+IG5lZWRlZC4KPiAK
PiBVbmxlc3MgZGVidWdmcyBpcyBkaXNhYmxlZCwgbGlrZSBvbiBBbmRyb2lkLCB3aGljaCBpcyB0
aGUgcmVhbCBwcm9ibGVtIEknbQo+IHRyeWluZyB0byBzb2x2ZS4KClRoZW4gdXNlIHNvbWUgb3Ro
ZXIgZmlsZXN5c3RlbSB0byBwbGFjZSB5b3VyIHJlbGF5IGZpbGUgaW4uICBBIHJlbGF5CmZpbGUg
aXMgbm90IGEgZmlsZSB0aGF0IHVzZXJzcGFjZSBzaG91bGQgcmVseSBvbiBmb3Igbm9ybWFsIG9w
ZXJhdGlvbiwKc28gd2h5IGRvIHlvdSBuZWVkIGl0IGF0IGFsbD8KCldoYXQgdG9vbHMvb3BlcmF0
aW9uIHJlcXVpcmVzIGFjY2VzcyB0byB0aGlzIGZpbGUgdGhhdCBzeXN0ZW1zIHdpdGhvdXQKZGVi
dWdmcyBzdXBwb3J0IGlzIGNhdXNpbmcgcHJvYmxlbXMgb24/Cgp0aGFua3MsCgpncmVnIGstaAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBt
YWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
