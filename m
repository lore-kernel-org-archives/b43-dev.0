Return-Path: <SRS0=5THX=KO=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 501A5C433ED
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 15:05:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BAB84610CD
	for <b43-dev@archiver.kernel.org>; Wed, 19 May 2021 15:05:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BAB84610CD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oH9wetZDL+cFQO7fWC1Tj7J/sz2KvzSZV6BXHboVF5w=; b=NZSNRfB0eCb206dwqnbDq55EP
	Ku6tP1SyMl8gBgWCjF1RL3N8yzyLMCcKSAz5PhTz5/iDo+W1ZIhWVakFq0FbzDpXAWiTdlfj9/rl8
	A4w6KiPQ3ftvfsKrzF/P+K50KIDZ6+D6lzQBaZfUa+ol8GF80HGECBrG4Q07Ky+g5WbyegMAlWo+E
	9UbpZncvnsjh7VSG/FhtWT0gBL9zcroAVTfwHmGb86UljCRICIphHdy9bHG5CdpFzDS3ISiuBQQPd
	teSlaG8bWgoOi5IKRJVAfA9etXsVJl1ugPX1T3g5vIu8GeI2ngTaUaxzSUQFU9aAG3xq2IlS/2CMT
	Z3LvlWxfg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljNl8-004Ku7-8s; Wed, 19 May 2021 15:05:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNl6-004Ku0-Qy
 for b43-dev@desiato.infradead.org; Wed, 19 May 2021 15:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-ID:References:In-Reply-To:
 Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=mbm/KQC14is0rErwVc62s6au2BQPmhOMig0Vh7EVlik=; b=h2Vnd65VhEOW5GW0qAhK2AIF47
 m63hSv6qHhyeKkieUkoiwpdTPHen4bJZtoFmo+0BNd4wNekZQQu6WbVv8ZkTlw66m6eAuusxjOoqf
 XAYu6YEdhnxczpau4ZTTRi0/kVG6a7GA8BdyIX28o5+tSCSJroNkW8vTE3kxDlfPrtWTa3Ni1NXLv
 piGAIoaYw1KyJcTTpaYSLG6eES3y0L+s+Wpiebtwu8Jzy2feA/t32jjLUg+iW74uqeqANMiCS4635
 iRZWeDPqCIT5HOJKD7mZyV02Zc+gkukd0ONBOXoWWgNoFcDhy+k2cx1ldk7YD2rXsCJFhRdwyTKZW
 f4snHtqQ==;
Received: from so254-9.mailgun.net ([198.61.254.9])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNl1-00FZh3-Ah
 for b43-dev@lists.infradead.org; Wed, 19 May 2021 15:05:15 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1621436714; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=mbm/KQC14is0rErwVc62s6au2BQPmhOMig0Vh7EVlik=;
 b=byCbqqcNo4FqtaS4Tii00CPyzigrElKNGWNpo8YTUwOQOs2POAjUHaBnhYVh7Ho2qD5SEF6I
 mmiqnRkQ9elWjGTUEIjCtsgQjWEIFIBeIG8F/qkLm7zPWri6HsGh6siZHq3kTbubud6EdFfn
 w2wek/9Q9ow3d45AaEXlz/375s4=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 60a5291b7b9a7a2b6c26233a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 19 May 2021 15:04:59
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 64BDCC433F1; Wed, 19 May 2021 15:04:59 +0000 (UTC)
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: jjohnson)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1F866C433D3;
 Wed, 19 May 2021 15:04:59 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 19 May 2021 08:04:59 -0700
From: Jeff Johnson <jjohnson@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jason Gunthorpe <jgg@ziepe.ca>, Chao Yu
 <chao@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jjohnson=codeaurora.org@codeaurora.org
Subject: Re: [PATCH v2] b43: don't save dentries for debugfs
In-Reply-To: <YKScfFKhxtVqfRkt@kroah.com>
References: <20210518163304.3702015-1-gregkh@linuxfoundation.org>
 <891f28e4c1f3c24ed1b257de83cbb3a0@codeaurora.org>
 <f539277054c06e1719832b9e99cbf7f1@codeaurora.org>
 <YKScfFKhxtVqfRkt@kroah.com>
Message-ID: <2eb3af43025436c0832c8f61fbf519ad@codeaurora.org>
X-Sender: jjohnson@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_080514_346278_491F6ED6 
X-CRM114-Status: GOOD (  17.56  )
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

T24gMjAyMS0wNS0xOCAyMjowNSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+IE9uIFR1ZSwg
TWF5IDE4LCAyMDIxIGF0IDAzOjAwOjQ0UE0gLTA3MDAsIEplZmYgSm9obnNvbiB3cm90ZToKPj4g
T24gMjAyMS0wNS0xOCAxMjoyOSwgSmVmZiBKb2huc29uIHdyb3RlOgo+PiBXb3VsZCBzdGlsbCBs
aWtlIGd1aWRhbmNlIG9uIGlmIHRoZXJlIGlzIGEgcmVjb21tZW5kZWQgd2F5IHRvIGdldCBhCj4+
IGRlbnRyeSBub3QgYXNzb2NpYXRlZCB3aXRoIGRlYnVnZnMuCj4gCj4gV2hhdCBkbyB5b3UgZXhh
Y3RseSBtZWFuIGJ5ICJub3QgYXNzb2NpYXRlZCB3aXRoIGRlYnVnZnMiPwo+IAo+IEFuZCB3aHkg
YXJlIHlvdSBwYXNzaW5nIGEgZGVidWdmcyBkZW50cnkgdG8gcmVsYXlfb3BlbigpPyAgVGhhdCBm
ZWVscwo+IHJlYWxseSB3cm9uZyBhbmQgZnJhZ2lsZS4KCkkgZG9uJ3Qga25vdyB0aGUgaGlzdG9y
eSBidXQgdGhlIHJlbGF5IGRvY3VtZW50YXRpb24gdGVsbHMgdXM6CiJJZiB5b3Ugd2FudCBhIGRp
cmVjdG9yeSBzdHJ1Y3R1cmUgdG8gY29udGFpbiB5b3VyIHJlbGF5IGZpbGVzLAp5b3Ugc2hvdWxk
IGNyZWF0ZSBpdCB1c2luZyB0aGUgaG9zdCBmaWxlc3lzdGVt4oCZcyBkaXJlY3RvcnkKY3JlYXRp
b24gZnVuY3Rpb24sIGUuZy4gZGVidWdmc19jcmVhdGVfZGlyKCkuLi4iCgpTbyBteSBndWVzcyBp
cyB0aGF0IHRoZSBvcmlnaW5hbCBpbXBsZW1lbnRhdGlvbiBmb2xsb3dlZCB0aGF0CmFkdmljZS4g
IEkgc2VlIDUgY2xpZW50cyBvZiB0aGlzIGZ1bmN0aW9uYWxpdHksIGFuZCBhbGwgNSBwYXNzIGEK
ZGVudHJ5IHJldHVybmVkIGZyb20gZGVidWdmc19jcmVhdGVfZGlyKCk6Cgpkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMsIGxpbmUgMzg0CmRyaXZlcnMvbmV0L3dpcmVs
ZXNzL2F0aC9hdGgxMGsvc3BlY3RyYWwuYywgbGluZSA1MzQKZHJpdmVycy9uZXQvd2lyZWxlc3Mv
YXRoL2F0aDExay9zcGVjdHJhbC5jLCBsaW5lIDkwMgpkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgv
YXRoOWsvY29tbW9uLXNwZWN0cmFsLmMsIGxpbmUgMTA3NwprZXJuZWwvdHJhY2UvYmxrdHJhY2Uu
YywgbGluZSA1NDkKCkplZmYKLS0gClRoZSBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5j
LiBpcyBhIG1lbWJlciBvZiB0aGUgQ29kZSBBdXJvcmEgCkZvcnVtLAphIExpbnV4IEZvdW5kYXRp
b24gQ29sbGFib3JhdGl2ZSBQcm9qZWN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMt
ZGV2Cg==
