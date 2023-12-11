Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6324CC4167B
	for <b43-dev@archiver.kernel.org>; Mon, 11 Dec 2023 08:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sJUaP+omRyvE4Xf//17BAnQY+5LFkOuFa+rdL/tXfHk=; b=nTAuSDseVHqWKG
	RLBQLBLGzEJDlbyHnmVBUh0zJxXBwXQrnOL/ARoGRD1EnTeMs8Smqz+oyh2wkMiv+hcMXj3rmqQPV
	N+YOwN5PwnPzNbT9sAYujzjF3/zirt65/ocSqUZYo5cEn5Uhrqfi0UGu662hTmsu7ohEI6I8Vg9Sn
	AnXZvwsCOxBBW6BaA4etkFdyYzo0AMUe5Zcl1/J3ciIyN01ty+m1HjOydihrJl4wLVhAD9/bEpOha
	dpaJtCvzuKn35NKW8qZifBbHhRvvCrkA5ztgf/e23wwt6KtgcEbIHNmG2UGYB4/g/d7bezBilO2Gu
	VyWPVyPnZHFhPmxWyQ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCbh3-004LMV-1y;
	Mon, 11 Dec 2023 08:31:13 +0000
Received: from mail.venturelinkbiz.com ([51.195.119.142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCbgv-004LKv-1i
	for b43-dev@lists.infradead.org;
	Mon, 11 Dec 2023 08:31:08 +0000
Received: by mail.venturelinkbiz.com (Postfix, from userid 1002)
	id E2D0845F19; Mon, 11 Dec 2023 08:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturelinkbiz.com;
	s=mail; t=1702283456;
	bh=Mjfq+hZZ0+rPTC06HjjASvlnsTMgj1yAndWxi/OAu2M=;
	h=Date:From:To:Subject:From;
	b=BEo7qwEgsQw5B2QWl/HrPBSScXWgocimEuUzUyHLCeP31iO/hqEgKMgEBZ7IUP66A
	 Sgz9ot245N1tiXELd3YHh7pgHp2sjyRKPfP8cXPwBD9UF+n1nAPDFqpRt3XP4skAxx
	 j1n0pSvlqzXVM82x3AlDv4Eg4T2HSRNK+jm9nwQDs50LlFdGjEgxMi0e6tzjVyo46r
	 fa0vA+gJXbCS9zf1Qf/4u6Y8xiuFF166f4dZ+JTLzbr6LUMDuVXEm6attsF6oDxjMx
	 JWMjxwyJ+w6Hvmrynjv81yy0Mg0ldsoM6c1swf9Fz7whL1oGgiRLDbYPibjAD+ygl5
	 1sZSMvRfaHTCg==
Received: by mail.venturelinkbiz.com for <b43-dev@lists.infradead.org>; Mon, 11 Dec 2023 08:30:31 GMT
Message-ID: <20231211074500-0.1.43.c75q.0.zj0mfhu5l4@venturelinkbiz.com>
Date: Mon, 11 Dec 2023 08:30:31 GMT
From: "Michal Rmoutil" <michal.rmoutil@venturelinkbiz.com>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Bezplatn=C3=A1_60denn=C3=AD_zku=C5=A1ebn=C3=AD_verze:_Vylep=C5=A1ete_sv=C3=A9_v=C3=BDrobn=C3=AD_procesy?=
X-Mailer: mail.venturelinkbiz.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_003106_320829_F4C22AFD 
X-CRM114-Status: UNSURE (   1.95  )
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

RG9icsOpIHLDoW5vCgpabsOhdGUgc3lzdMOpbSwga3RlcsO9IG5lamVuIGhsw61kw6EsIGFsZSBp
IG9wdGltYWxpenVqZSB2w71yb2J1IGEgcMWZaW7DocWhw60gc3TDoWzDvSBwxZnDrWplbT8KCkTD
rWt5IG5lam5vdsSbasWhw61tIHRlY2hub2xvZ2nDrW0gYSBhbmFsw716ZSBkYXQgbmHFoWUgxZll
xaFlbsOtIGlkZW50aWZpa3VqZSBvYmxhc3RpIG9wdGltYWxpemFjZSwgenbDvcWhZW7DrSBlZmVr
dGl2aXR5IGEgc27DrcW+ZW7DrSBuw6FrbGFkxa8uIE5hxaFpIGtsaWVudGkgemF6bmFtZW5hbGkg
bsOhcsWvc3QgcMWZw61qbcWvIHYgcHLFr23Em3J1IG8gMjAgJSBhIGRuZXMgc2kgdG8gbcWvxb5l
dGUgdnl6a291xaFldCBuYSA2MCBkbsOtIHpkYXJtYS4KClBva3VkIGNoY2V0ZSBkYWzFocOtIHBv
ZHJvYm5vc3RpLCBvZHBvdsSbenRlIHByb3PDrW0gbmEga29udGFrdG7DrSDEjcOtc2xvLgoKClBv
emRyYXZ5Ck1pY2hhbCBSbW91dGlsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2
Cg==
