Return-Path: <SRS0=5THX=KO=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DFA8C433ED
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 15:43:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2038611BF
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 15:43:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2038611BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8k0sEHbQSNJiDspwvYRtDhYygLXOJ38Q99dqQ86v4r4=; b=p4dVJny6L7wB108P7WoXyrCcR
	60ClnM2s+w5ncSbfAx+V4/Qnr3ynvTtmuKmwuTlgQ0z0OWs+cjgmbvmJjVdK1+oNRCK3+5bgULqAq
	Zy01vw9PfqxjYktGNIfLOKA2am14NybuP/zrxpFEyNKeJ0PG4DXX5q3wHhi8rKFOJLlkStvo+VEJx
	y1grm1sk3IsIOlsmNtKAVSx8yQIRNZDR7gP/+DBySZULFgF2AVbIFTGlJeEi4RXVXSzLUj+FoqGVB
	61Rx1umZHT7OTABEZ48pjoq5zPnemU1WpEb+9oGtpsnOvgeGMwr+LDCcU43BHPTyxyHmZjcW24CbK
	7Poy6VGsg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljOLi-004QpK-CM; Wed, 19 May 2021 15:43:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljOLg-004QoS-96
 for b43-dev@desiato.infradead.org; Wed, 19 May 2021 15:43:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=Lqd0ejghCWQy+fqyq+HJY3zwAGF1Mto6Gk4+WRwQPSg=; b=YgDHvK+g2S/VSoY4tEvvJXalcP
 9v2ue4ChvfBFvE+Goa+y/D/hztTnfkvZ07q5kpglp+dm9OByIPH3Hqg8TTafhAEpCMwBUP3zF+jo0
 Vmp7TuDfyzcl2G+FKFhU7lvcjqJ2ZkbA9UbzaoKgWmWSMkN96dApCNYTAVUq1WSnC5Fd7aB9hM3b3
 wss1pt8MPfCOfCfDAVrIVNGHLQdaEevgaZNpH/kVfLF4cM5RUvhUIBEuqHexZHn0MItmQiJgWgvbU
 RIeRA7ZDalVTgbOe0zPT2gZFPw9DG9qJdS1z6dvy4aUyNk+Z+a1QM5HHKC0N9R9V5CK57qpdB7SuH
 qA0MjvKQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljOLd-00FbFp-E2
 for b43-dev@lists.infradead.org; Wed, 19 May 2021 15:43:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 26F7860D07;
 Wed, 19 May 2021 15:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1621438980;
 bh=KaSVb/oZ/hbXppu3Y0486KwtT3znvB8EkCNw1WfZ//o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vE468iAEIhQmaJ20YTgK/EOOfR+ctZemzuvMSUU67Mh05ibc6eUXvTZkexo13jsTM
 ZWEIHAygjyv4aNy2oRzUSlhDMeZb63l3XO+swZPuJ7LgJMAJwFrtFHEEeAcfwvNkLv
 lsUYnNheTWjcRjjU7Os4QhfQLc4tpMkvCBCHFAqw=
Date: Wed, 19 May 2021 17:42:58 +0200
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
Message-ID: <YKUyAoBq/cepglmk@kroah.com>
References: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
 <891f28e4c1f3c24ed1b257de83cbb3a0@codeaurora.org>
 <f539277054c06e1719832b9e99cbf7f1@codeaurora.org>
 <YKScfFKhxtVqfRkt@kroah.com>
 <2eb3af43025436c0832c8f61fbf519ad@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2eb3af43025436c0832c8f61fbf519ad@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_084301_535156_77E62DAE 
X-CRM114-Status: GOOD (  18.60  )
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

T24gV2VkLCBNYXkgMTksIDIwMjEgYXQgMDg6MDQ6NTlBTSAtMDcwMCwgSmVmZiBKb2huc29uIHdy
b3RlOgo+IE9uIDIwMjEtMDUtMTggMjI6MDUsIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToKPiA+
IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0IDAzOjAwOjQ0UE0gLTA3MDAsIEplZmYgSm9obnNvbiB3
cm90ZToKPiA+ID4gT24gMjAyMS0wNS0xOCAxMjoyOSwgSmVmZiBKb2huc29uIHdyb3RlOgo+ID4g
PiBXb3VsZCBzdGlsbCBsaWtlIGd1aWRhbmNlIG9uIGlmIHRoZXJlIGlzIGEgcmVjb21tZW5kZWQg
d2F5IHRvIGdldCBhCj4gPiA+IGRlbnRyeSBub3QgYXNzb2NpYXRlZCB3aXRoIGRlYnVnZnMuCj4g
PiAKPiA+IFdoYXQgZG8geW91IGV4YWN0bHkgbWVhbiBieSAibm90IGFzc29jaWF0ZWQgd2l0aCBk
ZWJ1Z2ZzIj8KPiA+IAo+ID4gQW5kIHdoeSBhcmUgeW91IHBhc3NpbmcgYSBkZWJ1Z2ZzIGRlbnRy
eSB0byByZWxheV9vcGVuKCk/ICBUaGF0IGZlZWxzCj4gPiByZWFsbHkgd3JvbmcgYW5kIGZyYWdp
bGUuCj4gCj4gSSBkb24ndCBrbm93IHRoZSBoaXN0b3J5IGJ1dCB0aGUgcmVsYXkgZG9jdW1lbnRh
dGlvbiB0ZWxscyB1czoKPiAiSWYgeW91IHdhbnQgYSBkaXJlY3Rvcnkgc3RydWN0dXJlIHRvIGNv
bnRhaW4geW91ciByZWxheSBmaWxlcywKPiB5b3Ugc2hvdWxkIGNyZWF0ZSBpdCB1c2luZyB0aGUg
aG9zdCBmaWxlc3lzdGVt4oCZcyBkaXJlY3RvcnkKPiBjcmVhdGlvbiBmdW5jdGlvbiwgZS5nLiBk
ZWJ1Z2ZzX2NyZWF0ZV9kaXIoKS4uLiIKPiAKPiBTbyBteSBndWVzcyBpcyB0aGF0IHRoZSBvcmln
aW5hbCBpbXBsZW1lbnRhdGlvbiBmb2xsb3dlZCB0aGF0Cj4gYWR2aWNlLiAgSSBzZWUgNSBjbGll
bnRzIG9mIHRoaXMgZnVuY3Rpb25hbGl0eSwgYW5kIGFsbCA1IHBhc3MgYQo+IGRlbnRyeSByZXR1
cm5lZCBmcm9tIGRlYnVnZnNfY3JlYXRlX2RpcigpOgo+IAo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19sb2cuYywgbGluZSAzODQKPiBkcml2ZXJzL25ldC93aXJlbGVzcy9h
dGgvYXRoMTBrL3NwZWN0cmFsLmMsIGxpbmUgNTM0Cj4gZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRo
L2F0aDExay9zcGVjdHJhbC5jLCBsaW5lIDkwMgo+IGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9h
dGg5ay9jb21tb24tc3BlY3RyYWwuYywgbGluZSAxMDc3Cj4ga2VybmVsL3RyYWNlL2Jsa3RyYWNl
LmMsIGxpbmUgNTQ5CgpBaCwgdGhhdCdzIGp1c3QgdGhlICJwYXJlbnQiIGRlbnRyeSBmb3IgdGhl
IHJlbGF5ZnMgZmlsZS4gIFRoYXQncyBmaW5lLApub3QgYSBiaWcgZGVhbCwgZGVidWdmcyB3aWxs
IGFsd2F5cyBwcm92aWRlIGEgd2F5IGZvciB5b3UgdG8gZ2V0IHRoYXQgaWYKbmVlZGVkLgoKdGhh
bmtzLAoKZ3JlZyBrLWgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
