Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B882BC3DA7F
	for <b43-dev@archiver.kernel.org>; Mon,  5 Aug 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hm4HilLmuhiRfIA0+e8MpKhyiROtgCnlWB26RitQOfw=; b=LuSjnfNfJ/brG7
	Y1aRkX7+a2rkDIUNoFLT1C3k04BKhIGuhg0MoBUPNELZ58UzTvTse2ESY9Ix5u+yQcpwFW7uegPzp
	beUrkBhqego66In+8D+cuToRVB8fHZ0ejR/vgsn54mavfaTBQ3blEVdYriOTizl570FrnzmUzWzrt
	FZFFlwfa14B+w9eWjRwO7VaKuUu5k6/vz6/2aRI9JqYStE3lBu8If1MCOIJp3xyeoAfkF1sfzYsf7
	dAbbiJpAakPAvFWWLbYilk9HYYAKyHA40F+xYTTTS5HoVGeaMpCvf2a192e5opvjtpuyWWUB6t6xy
	57A+YERj+MAOQFe4ohiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sasID-0000000EyNR-3Kgb;
	Mon, 05 Aug 2024 07:38:09 +0000
Received: from mail.envisioncraftsman.com ([162.19.67.48])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sasHG-0000000Exve-29z6
	for b43-dev@lists.infradead.org;
	Mon, 05 Aug 2024 07:37:13 +0000
Received: by mail.envisioncraftsman.com (Postfix, from userid 1002)
	id 896D320183; Mon,  5 Aug 2024 09:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=envisioncraftsman.com; s=mail; t=1722843355;
	bh=uGTmdNfeKWYppKfROrYtp0X+RK7/pRJQsBUrarqToyk=;
	h=Date:From:To:Subject:From;
	b=Ji+itdAJ5ZyMzwT1NTrBfCb9P8XnLuHB6hg2luNs8eEyTsSPs+ur1xWEPC/CD9qDJ
	 auKOCdd4BdaKaOLPPJL0uFFLY35ykYg0R8FTDZLHgA8IzeQYk1+ECs1TzbzD0taCf5
	 vjqd3WhKgQFU6uGWmqvtlbCeRUKx5vQmqSnXwm4JgEJFseCtTNABHp8n9VwMo+rA4m
	 5daMPnlejW0wIJDkSY3E2wxhmXmAgZJcdRsN4ogQbUkE4AhB+elHCvglMvP4VvOGXA
	 EtUH04ZWJU8uyCocHQaoFw4odZ/TZaMbIUOmD4WqKIubzq643oBIMLLKaFikdN3Hkc
	 qzmBsdhqaBtFA==
Received: by mail.envisioncraftsman.com for <b43-dev@lists.infradead.org>; Mon,  5 Aug 2024 07:35:55 GMT
Message-ID: <20240805084500-0.1.48.rqoj.0.98470i6qp0@envisioncraftsman.com>
Date: Mon,  5 Aug 2024 07:35:55 GMT
From: =?UTF-8?Q?"Jan_Pol=C3=A1=C5=A1ek"?= <jan.polasek@envisioncraftsman.com>
To: <b43-dev@lists.infradead.org>
Subject: Quick Question About Collaboration
X-Mailer: mail.envisioncraftsman.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_003711_262526_4716E02A 
X-CRM114-Status: UNSURE (   2.96  )
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
