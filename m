Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7682CC83F26
	for <b43-dev@archiver.kernel.org>; Fri, 25 Jul 2025 07:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ikefElddZtVsDT64pJ8G91l46nTf0yWkFOKxQ952Oms=; b=OWin1xKID8zX1J
	6tH9YAPrThaCL30FjksFErKKSb8XTdnUgNR2S7VdaNzogQGQDdnLOrr5cxn9hoWZeDTmcL4OVeddN
	xlm1wPr5+Lyvu3pQizu8tKME4IfsJeyrf4W6POWKBGfn6MmHZoU9cG7WY6FoiuJvP6ccM3/K7qwu8
	rFMNYcWGE7l5B9Sd76h/Wmlgo+j1vYU0NSj3VayLUD4MrIWqRPlG5tTEzjCGHNYp53bAej86RJp1C
	0V4BsElhgws/mieq1+EyqCHXg2Vnww+NKim7M8vwZoJbD0SuOLNXVXmit2o8Ebydi503oIcR4QNWV
	qHin2oFf9+ebDi8wg4Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufDKm-00000009J8s-0muQ;
	Fri, 25 Jul 2025 07:59:16 +0000
Received: from mail.biznator.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufDKg-00000009J62-2Lm0
	for b43-dev@lists.infradead.org;
	Fri, 25 Jul 2025 07:59:11 +0000
Received: by mail.biznator.pl (Postfix, from userid 1002)
	id 86E892A35E; Fri, 25 Jul 2025 09:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=biznator.pl; s=mail;
	t=1753430183; bh=h3k5zkAZf6tEpPtEQC0QHe2u0TTQ7ZFRjUanCKLrdLo=;
	h=Date:From:To:Subject:From;
	b=Y6iw3BSDS1RVZZLnK94tyWc11A7XnnzXxI3Ci+eKLZ3BG55CooBrr1Nie3yONqDZS
	 PCMtpVe/KibKRWkFv2Mpt9vtUWsFXpFm54WDjNpk49ZBOZz2LO48yiGlNRf1GOQl7n
	 yWKYZs2LcYIG1tbaEISv77CyAC22z2tC/SqRNgnyRb0Npp/irVYqwWiJRdynu5FyI9
	 XaWQzw8T4GnlTBHnVtuijSHHR6XZ9zi2sJv/prEm+0C2CceVtBqAXbMwlNaA6SyIRa
	 RZzCrQA4cUGoFpyGuZ+q1zymobN/u9a2BUxD+HNhS4n3PyEzj+Ynsihs294hK++CoC
	 tMxqFyIXeL06w==
Received: by mail.biznator.pl for <b43-dev@lists.infradead.org>; Fri, 25 Jul 2025 07:55:57 GMT
Message-ID: <20250725084500-0.1.io.1aceh.0.7y1j65m02r@biznator.pl>
Date: Fri, 25 Jul 2025 07:55:57 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@biznator.pl>
To: <b43-dev@lists.infradead.org>
Subject: Fotowoltaika dla firm
X-Mailer: mail.biznator.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_005910_872649_C1C7BDC4 
X-CRM114-Status: UNSURE (   1.16  )
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

RHppZcWEIGRvYnJ5LAoKcG9tYWdhbXkgbWlrcm8sIG1hxYJ5bSBpIMWbcmVkbmltIHByemVkc2nE
mWJpb3JzdHdvbSBvYm5pxbx5xIcga29zenR5IGVuZXJnaWkgZWxla3RyeWN6bmVqIGR6acSZa2kg
bW9udGHFvG93aSBpbnN0YWxhY2ppIGZvdG93b2x0YWljem5lai4gCgpBa3R1YWxuaWUgcHJvcG9u
dWplbXkgYmV6a29ua3VyZW5jeWpuZSB3YXJ1bmtpIHdzcMOzxYJwcmFjeSwgb2QgcGxhbnUgcG9w
cnpleiByZWFsaXphY2rEmSBhxbwgcG8gc2Vyd2lzLgoKUHJvc3rEmSBvIGluZm9ybWFjasSZIGN6
eSBtb8W8ZW15IHByemVkc3Rhd2nEhyBwcm9wb3p5Y2plIGRsYSBQYcWEc3R3YSBmaXJteT8KCgpQ
b3pkcmF3aWFtLApXb2pjaWVjaCBNcm9jemthCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
NDMtZGV2Cg==
