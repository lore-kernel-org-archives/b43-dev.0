Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62D91EE0214
	for <b43-dev@archiver.kernel.org>; Wed, 11 Sep 2024 07:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hm4HilLmuhiRfIA0+e8MpKhyiROtgCnlWB26RitQOfw=; b=yM6Ls+nRcLTGF9
	KoPVrXr5UY76A4bFzTqUtzpn/10oh8OHSEJIOqNDa6AxTW0ItI9NCVuolPQvgGGV69LakfmMHvHe0
	MJK6LP43mIcfJpTlueq+zbkLjLMKN0wlQuMuVydT/0ijIOkVLHL7efZxSDSbFhXXDnYGadHeuOZkY
	i7qDT6XS8xoPx2RqA2hbKpVkoa6XXBsDC9C9zOriudFf6G7kKwqzP0Iw1YViDh8N17ayC35wj0eWn
	nozhBTT1RD7D9mMHB8JoHUhv9WTS9jhEFGOi/u9QWUH2l3uwkrtFFNSouKdUNgsSMo6X1bK4FN24Z
	wkWQLvt1xI67QkSARX/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIFr-00000008XtH-1jyF;
	Wed, 11 Sep 2024 07:59:11 +0000
Received: from mail.envisioncraftsman.com ([162.19.67.48])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIFl-00000008Xql-0nfi
	for b43-dev@lists.infradead.org;
	Wed, 11 Sep 2024 07:59:06 +0000
Received: by mail.envisioncraftsman.com (Postfix, from userid 1002)
	id 7686324FAB; Wed, 11 Sep 2024 09:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=envisioncraftsman.com; s=mail; t=1726041395;
	bh=uGTmdNfeKWYppKfROrYtp0X+RK7/pRJQsBUrarqToyk=;
	h=Date:From:To:Subject:From;
	b=bpfLYHGPV4aRcBgcW9h4sHB/9B0XlGFCx+O7WIvr2Y23nXP6gONpDI5CrxVKSLNx8
	 sl1gaJEmy7ZLmu8LYcU/OiAdDf8vTRHT+XmcYCjqERlcP6PmJbIHZKLn8TUhXp+Avk
	 yXCOaj99XASC7RmQCxi+W7lGeVvt72pUyDF0e7XjeVj+QOuluL/dpfhCXCqH8cWQny
	 JHZqjpC10jUGJogxdfdvOmBojewZAV31t7EdvY+EArF8Y5LAxp9zsshA3L2oxZNahj
	 ZdnTB/kcKbj6qwzNDruoyiWOfCtU4z8YI1ZQAskhvx1FAA7WWdlOHrncPjQxNd1TXx
	 /JCS/vBxppI7g==
Received: by mail.envisioncraftsman.com for <b43-dev@lists.infradead.org>; Wed, 11 Sep 2024 07:55:49 GMT
Message-ID: <20240911084500-0.1.4y.1094v.0.b28q7wh3wc@envisioncraftsman.com>
Date: Wed, 11 Sep 2024 07:55:49 GMT
From: =?UTF-8?Q?"Jan_Pol=C3=A1=C5=A1ek"?= <jan.polasek@envisioncraftsman.com>
To: <b43-dev@lists.infradead.org>
Subject: Quick Question About Collaboration
X-Mailer: mail.envisioncraftsman.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_005905_379660_A1BEA411 
X-CRM114-Status: UNSURE (   3.26  )
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

SGVsbG8hCgpJIGFtIHZlcnkgaW1wcmVzc2VkIHdpdGggdGhlIHByb2R1Y3RzIGFuZCBzZXJ2aWNl
cyB5b3Ugb2ZmZXIuCgpJIHRob3VnaHQgd2UgY291bGQgaGVscCB5b3UgcmVhY2ggYSBsYXJnZXIg
YXVkaWVuY2Ugd2l0aCB5b3VyIG9mZmVyaW5ncy4gV291bGQgeW91IGJlIGludGVyZXN0ZWQgaW4g
Y29sbGFib3JhdGluZyB3aXRoIHVzIGluIGFuIGFmZmlsaWF0ZSBtYXJrZXRpbmcgY2FtcGFpZ24/
CgpGb3IgZXhhbXBsZSwgb3VyIHByb2dyYW0gZm9yIGEgY29tcGFueSBpbiB0aGUgZS1jb21tZXJj
ZSBzZWN0b3IgcmVzdWx0ZWQgaW4gYW4gaW5jcmVhc2UgaW4gcmV2ZW51ZSBmcm9tIDglIHRvIGFu
IGltcHJlc3NpdmUgMTklIChvbiBhdmVyYWdlIHBlciBxdWFydGVyKS4KCldlIGFjaGlldmUgdXAg
dG8gMTMlIHR1cm5vdmVyIGluIEdBNCwgd2hpbGUgc3RhbmRhcmQgYWZmaWxpYXRlIG5ldHdvcmtz
IGdlbmVyYXRlIG9ubHkgMy02JS4KCldvdWxkIHlvdSBoYXZlIHRpbWUgZm9yIGEgc2hvcnQgY29u
dmVyc2F0aW9uIGluIHRoZSBuZXh0IGZldyBkYXlzPwoKCkJlc3QgcmVnYXJkcwpKYW4gUG9sw6HF
oWVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMt
ZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
