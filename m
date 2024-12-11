Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 441B1E7717D
	for <b43-dev@archiver.kernel.org>; Wed, 11 Dec 2024 08:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+jSZQWnIjfN5CWgIQ6BGscA4qTd/cJkTlkmGXqeJEM8=; b=w9Blvou9FNfPMg
	bcMhOHXSmZBnD9CEDC51tkA64CagPxE8K6tK32JsYi6BC/6xgkXD3BHEeEgML4gATExYYbJJVNfeT
	8NY6jGh8snpaeqYBVzlfTAxcnDDr18a9eMfrMUXIPE0YW70EuVCmq4KLd3ouvIS33DNiMVAoauBpO
	64YR+ri6Dtr6uUM96/TPUcgW3VgUB3FYS51kbSVWKXupFH/RhSYpnK7F2L0foX287I8mqILmK/n0T
	qTYbi9t8n2dya9daUxmJJePxrIN0x5LrsphUtjl86U6rhRAGuFWMgX0LIWbngXXUs5pCCFCawIwEt
	WPLtJF1Qggdfan3wWpng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLIML-0000000EGc2-3nYk;
	Wed, 11 Dec 2024 08:46:17 +0000
Received: from mail.crafticoz.com ([217.61.16.185])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLILt-0000000EGYo-2vaF
	for b43-dev@lists.infradead.org;
	Wed, 11 Dec 2024 08:45:51 +0000
Received: by mail.crafticoz.com (Postfix, from userid 1002)
	id 4029382B74; Wed, 11 Dec 2024 09:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=crafticoz.com;
	s=mail; t=1733906733;
	bh=YaWuF0KsRmRBBjtCmWKLQTglduhYaZhkuZum4UVKSp4=;
	h=Date:From:To:Subject:From;
	b=JAK5zKt1xp6ugZG7wudspHZKwGs5063RUKG/WEiRPWcoCK5iwMtaQtRP39LOB9lwg
	 tLsXpoFGT28iotJUGwfVVejmsNOOndsN5mM0a2PK5O4Rncm6fXMRaMWF1I0Sd0N9E5
	 uxWohkf/mnDIyaZsDHe+JGHk/B0E5s9Y2rSJ4r7TFTZTSgns6R22m5iA5s0S/Y6KOC
	 5Y1AkbjurV+xvpr2FSZVNs/lHNeTmhOBNp1QaWFnVo8n7c4OrvglqHFX/SqyVFHv3o
	 4XpH5s7AdhcBchdnXxECnfoZh1B4SVIWDq5q/Pfke337jWvs7pSVuVCNRUnHV6ixmb
	 G7zNkrTqF/EIw==
Received: by mail.crafticoz.com for <b43-dev@lists.infradead.org>; Wed, 11 Dec 2024 08:45:28 GMT
Message-ID: <20241211084500-0.1.6i.n4y6.0.bnrneczc2l@crafticoz.com>
Date: Wed, 11 Dec 2024 08:45:28 GMT
From: "Darnell Bradshaw" <darnell.bradshaw@crafticoz.com>
To: <b43-dev@lists.infradead.org>
Subject: Development Support for Your Project
X-Mailer: mail.crafticoz.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_004550_405591_57E95C18 
X-CRM114-Status: UNSURE (   3.46  )
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

SGVsbG8sCgpJbWFnaW5lIGhhdmluZyBhIDIwLXBlcnNvbiB0ZWFtIG9mIGV4cGVyaWVuY2VkIGV4
cGVydHMgY3JlYXRpbmcgc29mdHdhcmUgcGVyZmVjdGx5IHRhaWxvcmVkIHRvIHlvdXIgY29tcGFu
eSdzIG5lZWRz4oCUd2l0aG91dCB0aGUgbmVlZCB0byBpbnZlc3QgaW4gYWRkaXRpb25hbCByZXNv
dXJjZXMuCgpXaXRoIG91ciBzb2Z0d2FyZSBkZXZlbG9wbWVudCBvdXRzb3VyY2luZywgeW91IGNh
biBmb2N1cyBvbiBncm93aW5nIHlvdXIgYnVzaW5lc3Mgd2hpbGUgd2UgaGFuZGxlIHRoZSB0ZWNo
bm9sb2d5LgoKV2XigJlyZSByZWFkeSB0byB0YWtlIG9uIHRoZSBjaGFsbGVuZ2VzIHlvdeKAmXJl
IGZhY2luZy4gV291bGQgeW91IGxpa2UgdG8gc2VlIGhvdyB3ZSBjYW4gc3VwcG9ydCB5b3VyIHRl
YW0/CgoKQmVzdCByZWdhcmRzCkRhcm5lbGwgQnJhZHNoYXcKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2I0My1kZXYK
