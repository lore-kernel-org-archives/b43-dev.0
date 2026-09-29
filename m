Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81E82C9832A
	for <b43-dev@archiver.kernel.org>; Tue, 29 Sep 2026 07:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFjagvNkVRceSli/P7I8+gSCovD0BPnlriXFlzW5BbU=; b=ChY1n86blDV10P
	TgIFILXPfYsfoPJ6uyFnyRtCSArs0NCuA8NCYCffI7wHUsjv2i/HSaMohGC7iEUW6RGYOcu/lfXaP
	ChMkYSvfz3Cr0ny6wwztyXOCsgewwpqHYf9OZ+cQJwJHD1dz8lcG5F0k3AMwskOYI/u2c4PG7x1Y9
	daDy1bRT9//1BN4Diflio3SB5WkCMOAIv/engCjoP89eojqdUTZotYGs9DczH+AqDugX3Ky+bxFmo
	0vueeNpChSCvzhDrZbb38EAuGbPQJTCrN6YYS6o9YFVc6gb7yotPiUtL/Ydxw4fFymFLm7jFFSTin
	9q8fknqnu8DhkXF3PYfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSLu-00000002cwv-41c4;
	Tue, 29 Sep 2026 07:34:14 +0000
Received: from smtpcmd0756.aruba.it ([62.149.156.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSLr-00000002cw8-2JBK
	for b43-dev@lists.infradead.org;
	Tue, 29 Sep 2026 07:34:14 +0000
Received: from DELL-MOBILE03.ad.smart.it ([77.89.54.34])
	by Aruba SMTP with ESMTPSA
	id BSLmxdjdnVQD1BSLmxiRYG; Tue, 29 Sep 2026 09:34:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1790667247; bh=6P33nx/BBlKELaBeUjaphAOWQTAL03HPttIrDDIn1hM=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=ISh8ZJAvbdoNF9tIf8Sqtq1VfV/70iI1d354Crxo9A7KwkW8tuHW7G54DnSNxGWp9
	 In/1IQM9k08clxtQuHGQvSLf9c5MhuaOEAZg/Z12UP3Cx2fJ+bhgqqSsk2rQbZjGJF
	 zTtlBCvOXfYGwgH8VOC5LDassfuL8f/qn//cfxtf41U8bwGrMhPV50EepvGkUqEjKY
	 c6uT9m300gQfSaJRkPZEIGfEWOiotbgeFr3g71uopxPqLQw4PQB7rQJCXJJ1+HMCkN
	 3S6mRp7zcwWiDI4pw90+eqFWymts+Oyt+bB4HCq7iT+tQyGLZ/p7MfHppQS8WdRzcb
	 eCl1xJG579Sag==
Date: Tue, 29 Sep 2026 09:34:05 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Cc: "andreas.wendleder" <andreas.wendleder@proton.me>,
 "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: BCM4360 AC-PHY support for b43 =?UTF-8?B?4oCU?=
 reverse-engineered, seeking guidance on a clean path upstream
Message-ID: <20260929093405.79d9f4ec@DELL-MOBILE03.ad.smart.it>
In-Reply-To: <20260929081403.6076a6da@barney>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me>
	<ih-lXs5OlHxMhydtcZFtKNhGg3cGlR137CEMZ07_zFQcfCYAImW6MRWPDjkdwy-xK9bIwpDK9ImgerqHmQMsAxX3ckEjsiN8QoCSlpvIsSM=@proton.me>
	<20260928200309.01a36f5e@barney>
	<DL5AS1oidqGRAmMHt0Jcp3X4T3ob_Fa-lfhTmMMak3ATUnfcyETDn65CQf3iLvVeg4ExYoc_0GW7QMoaB1jEW4nzKAKFDv8bD0hqBEtkUKg=@proton.me>
	<20260929081403.6076a6da@barney>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfFYZV5X3qbdGJAD45lmgddLpWq6aVhBY0e9ggjydAEi8EZrnpgqhxO3THq+nwUhDSTr5yKMJWpMq/p5z4S4QcZrgv/nfQAdl4sAHcr4HKCbqwd7CDdgD
 PGU7iIAjdq4kHGos2QGfXYEs61Y/zB3H6HhGE0ckszgDG7HMRxU6kXkpn1Jk3foVd9iSvlxjP5VzZL2PrMRTYqQ64po7Cg3otI8t9TFxmPwFYNv7hntr7eDu
 uq/mo+NlpzLiqmSPxAhxj3CeaB4dz7rpA5mqmUQKfP4X/D6MuH1wS7825FDLl37HswjB3U13ZSAiftPU8B+/Eg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_003412_281179_872A55C8 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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

T24gVHVlLCAyOSBTZXAgMjAyNiAwODoxNDowMyArMDIwMApNaWNoYWVsIELDvHNjaCA8bUBidWVz
LmNoPiB3cm90ZToKCj4gT24gTW9uLCAyOCBTZXAgMjAyNiAyMTo0OToyMyArMDAwMAo+ICJhbmRy
ZWFzLndlbmRsZWRlciIgPGFuZHJlYXMud2VuZGxlZGVyQHByb3Rvbi5tZT4gd3JvdGU6Cj4gCj4g
PiBpZiBzb21lb25lIGlzIGludGVyZXN0ZWQgaW4gaW1wbGVtZW50aW5nIGl0LiAgCj4gCj4gSSB0
aGluayB0aGUgbnVtYmVyIG9mIHBlb3BsZSBpbnRlcmVzdGVkIGluIHdvcmtpbmcgb24gdGhpcyBp
cyBwcm9iYWJseQo+IGFwcHJvYWNoaW5nIHplcm8gdGhlc2UgZGF5cy4KPiAKPiBNYXliZSB3ZSBj
YW4gZmluZCBzb21lYm9keSBkb2luZyBhbiBBSSBpbXBsZW1lbnRhdGlvbiBmcm9tIHNwZWNzLgo+
IEJ1dCB0aGVuLCB3aHkgbm90IHB1Ymxpc2ggeW91cnMgaW5zdGVhZD8KPiAKCkknbSBzdGlsbCB3
b3JraW5nIG9uIG15IGRyaXZlciBmb3IgNDM1Mi80MzYwLCBzbyB0d28gb2YgdXMgYWN0dWFsbHku
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2
IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
