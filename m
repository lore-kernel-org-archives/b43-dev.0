Return-Path: <SRS0=5THX=KO=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 148B6C433B4
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 15:57:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85694611BF
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 15:57:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 85694611BF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+ZSkYPpiorOHxLPkPyPxl47Gw06hDQB7LX/5VVHzRic=; b=J4vW0oCOXDMRs/63zFRl5PshQ
	qKPC5FJSMAw+4rOMT7CiIjQhTkVY/reOcB8807FMLnh2ETH0X6fj3EqqkJuEx6HRq/92k0/reVjIS
	3NkbgxOFEJp8rVi5cvD/YDeKq4oud7PJ742d8fF4Ny6I7r/x2d6N7kL0Uetk/OtgF14x6PIbX60c2
	lfZ8aS7OeriH1RwX2+X36dl1a8atamB4fj+EHNAG3dIgGSQ6YPHCHcuStYe9Aht4AeT0HzbxAANdT
	SGk7tHyetNB18ZSMUbNbTjJ8yJXC97EegGPtIQmbI5Qd7B26qphogbjoP1m6pu+KlY1ebRUXSH4BT
	8SnXaJIDw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljOZe-004SJs-Ke; Wed, 19 May 2021 15:57:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljOZb-004SJg-TS
 for b43-dev@desiato.infradead.org; Wed, 19 May 2021 15:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-ID:References:In-Reply-To:
 Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=Q96jpCTD8/QMSDNZK3F6bpyaFamomufPiUhLFO7Q7o8=; b=grbveK7YyaxlB0DLZKLdPxCAKF
 atr8MgxkUnineeOzqiQ1gGu/Gu4M+6mxUn4nig7t2ADuG4wILa880n9aJs1gcSm4I+tPxPAK2ShBW
 pgaKpJM8DOqso+iA1axZDJAKDQhb7iMriFMkkLCVsBBj25MWJUIPoTOAWhk/Z9QOuwGHQk5kpWd+y
 poYxcQEBPZJ4qK4JoVGYbVJu+NzHphV7lrGMXEHAP4lXT12w9ts3JRt9fRz8z1Dk9zm1DPKMwYaI0
 mxcKfQICThUyIosi3u/CnFxmgmQt5uLq4cyie3TiG5/m0X1kBAB+TDpzYAp/7eeIC3LBLbCbrcy8Q
 Ylww5jgg==;
Received: from so254-9.mailgun.net ([198.61.254.9])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljOZT-00Fbiz-7l
 for b43-dev@lists.infradead.org; Wed, 19 May 2021 15:57:26 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1621439845; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Q96jpCTD8/QMSDNZK3F6bpyaFamomufPiUhLFO7Q7o8=;
 b=wmtM+yxtCjEMqoOxMBNtOHE6hYiDuXRuBT+PL70rghPJH8BHBhTxtAk6nnJsVS778Rkrxn9+
 VZ40oYC/F7TuGS3Al50mR/E+3q6/Y3KraYtCKGo1Vd6Ns88b+ptqDWEfzBsLZZwG9Za4TQnY
 +yaxM2RI4VyTHxHcoQUJjFwoAWo=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 60a5354d1449805ea2d1881e (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 19 May 2021 15:57:01
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AD58AC4360C; Wed, 19 May 2021 15:57:01 +0000 (UTC)
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: jjohnson)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DD529C4338A;
 Wed, 19 May 2021 15:57:00 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 19 May 2021 08:57:00 -0700
From: Jeff Johnson <jjohnson@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu
 <chao@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jjohnson=codeaurora.org@codeaurora.org
Subject: Re: [PATCH v2] b43: don't save dentries for debugfs
In-Reply-To: <YKUyAoBq/cepglmk@kroah.com>
References: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
 <891f28e4c1f3c24ed1b257de83cbb3a0@codeaurora.org>
 <f539277054c06e1719832b9e99cbf7f1@codeaurora.org>
 <YKScfFKhxtVqfRkt@kroah.com>
 <2eb3af43025436c0832c8f61fbf519ad@codeaurora.org>
 <YKUyAoBq/cepglmk@kroah.com>
Message-ID: <48aea7ae33faaafab388e24c3b8eb199@codeaurora.org>
X-Sender: jjohnson@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_085725_380462_8CC1AB53 
X-CRM114-Status: GOOD (  24.23  )
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

T24gMjAyMS0wNS0xOSAwODo0MiwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+IE9uIFdlZCwg
TWF5IDE5LCAyMDIxIGF0IDA4OjA0OjU5QU0gLTA3MDAsIEplZmYgSm9obnNvbiB3cm90ZToKPj4g
T24gMjAyMS0wNS0xOCAyMjowNSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+PiA+IE9uIFR1
ZSwgTWF5IDE4LCAyMDIxIGF0IDAzOjAwOjQ0UE0gLTA3MDAsIEplZmYgSm9obnNvbiB3cm90ZToK
Pj4gPiA+IE9uIDIwMjEtMDUtMTggMTI6MjksIEplZmYgSm9obnNvbiB3cm90ZToKPj4gPiA+IFdv
dWxkIHN0aWxsIGxpa2UgZ3VpZGFuY2Ugb24gaWYgdGhlcmUgaXMgYSByZWNvbW1lbmRlZCB3YXkg
dG8gZ2V0IGEKPj4gPiA+IGRlbnRyeSBub3QgYXNzb2NpYXRlZCB3aXRoIGRlYnVnZnMuCj4+ID4K
Pj4gPiBXaGF0IGRvIHlvdSBleGFjdGx5IG1lYW4gYnkgIm5vdCBhc3NvY2lhdGVkIHdpdGggZGVi
dWdmcyI/Cj4+ID4KPj4gPiBBbmQgd2h5IGFyZSB5b3UgcGFzc2luZyBhIGRlYnVnZnMgZGVudHJ5
IHRvIHJlbGF5X29wZW4oKT8gIFRoYXQgZmVlbHMKPj4gPiByZWFsbHkgd3JvbmcgYW5kIGZyYWdp
bGUuCj4+IAo+PiBJIGRvbid0IGtub3cgdGhlIGhpc3RvcnkgYnV0IHRoZSByZWxheSBkb2N1bWVu
dGF0aW9uIHRlbGxzIHVzOgo+PiAiSWYgeW91IHdhbnQgYSBkaXJlY3Rvcnkgc3RydWN0dXJlIHRv
IGNvbnRhaW4geW91ciByZWxheSBmaWxlcywKPj4geW91IHNob3VsZCBjcmVhdGUgaXQgdXNpbmcg
dGhlIGhvc3QgZmlsZXN5c3RlbeKAmXMgZGlyZWN0b3J5Cj4+IGNyZWF0aW9uIGZ1bmN0aW9uLCBl
LmcuIGRlYnVnZnNfY3JlYXRlX2RpcigpLi4uIgo+PiAKPj4gU28gbXkgZ3Vlc3MgaXMgdGhhdCB0
aGUgb3JpZ2luYWwgaW1wbGVtZW50YXRpb24gZm9sbG93ZWQgdGhhdAo+PiBhZHZpY2UuICBJIHNl
ZSA1IGNsaWVudHMgb2YgdGhpcyBmdW5jdGlvbmFsaXR5LCBhbmQgYWxsIDUgcGFzcyBhCj4+IGRl
bnRyeSByZXR1cm5lZCBmcm9tIGRlYnVnZnNfY3JlYXRlX2RpcigpOgo+PiAKPj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jLCBsaW5lIDM4NAo+PiBkcml2ZXJzL25l
dC93aXJlbGVzcy9hdGgvYXRoMTBrL3NwZWN0cmFsLmMsIGxpbmUgNTM0Cj4+IGRyaXZlcnMvbmV0
L3dpcmVsZXNzL2F0aC9hdGgxMWsvc3BlY3RyYWwuYywgbGluZSA5MDIKPj4gZHJpdmVycy9uZXQv
d2lyZWxlc3MvYXRoL2F0aDlrL2NvbW1vbi1zcGVjdHJhbC5jLCBsaW5lIDEwNzcKPj4ga2VybmVs
L3RyYWNlL2Jsa3RyYWNlLmMsIGxpbmUgNTQ5Cj4gCj4gQWgsIHRoYXQncyBqdXN0IHRoZSAicGFy
ZW50IiBkZW50cnkgZm9yIHRoZSByZWxheWZzIGZpbGUuICBUaGF0J3MgZmluZSwKPiBub3QgYSBi
aWcgZGVhbCwgZGVidWdmcyB3aWxsIGFsd2F5cyBwcm92aWRlIGEgd2F5IGZvciB5b3UgdG8gZ2V0
IHRoYXQgCj4gaWYKPiBuZWVkZWQuCgpVbmxlc3MgZGVidWdmcyBpcyBkaXNhYmxlZCwgbGlrZSBv
biBBbmRyb2lkLCB3aGljaCBpcyB0aGUgcmVhbCBwcm9ibGVtIApJJ20KdHJ5aW5nIHRvIHNvbHZl
LgoKSmVmZgotLSAKVGhlIFF1YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEgbWVt
YmVyIG9mIHRoZSBDb2RlIEF1cm9yYSAKRm9ydW0sCmEgTGludXggRm91bmRhdGlvbiBDb2xsYWJv
cmF0aXZlIFByb2plY3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
