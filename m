Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C41D9EB64DA
	for <b43-dev@archiver.kernel.org>; Wed, 12 Jul 2023 08:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5XVYa9x6TV6L9qgMWLu1RpqK0yvOlpvaAAYjHYngYSs=; b=DWFhLlPUuiqBrV
	uOqF1Vg/DnvNsSFtYwkOlA2eQwLXIfsZbF8n15Q0pcgp5q37zVDG3L7VhukSSY31ZqJvGRp5Hss1v
	ZQrkExq/TA6JOr1uesJgq3IawkRZQJnFVlS8rqOY9opPPs1MuksOHjO9ptvMWH14Q5VdPKAIgbbiY
	0+NfIBZK1wnS9o0oX9VkMBLrNOlsTb9J088b+Wpv5w4KdvWfT/UVP/037J5QbWClKRM6GAuIlx5RO
	NMy/gTjjHIVwr8E3Xdy+dmGL28jF3k5DDgZG1tcX5KrOh8tL1C3FZSWmUhSxltSjzcciTmODIixNs
	s67L7CblFSNuwLcD6oXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJVZH-00Gxnb-1X;
	Wed, 12 Jul 2023 08:51:27 +0000
Received: from mail.melynllyn.pl ([51.75.66.60])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJVZ9-00GxlT-11
	for b43-dev@lists.infradead.org;
	Wed, 12 Jul 2023 08:51:23 +0000
Received: by mail.melynllyn.pl (Postfix, from userid 1002)
	id F0AAEA30BD; Wed, 12 Jul 2023 08:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=melynllyn.pl; s=mail;
	t=1689151853; bh=YRRXO3jEu97VPQQgC6v1VliieJbhUvx3UFrtvEDC9os=;
	h=Date:From:To:Subject:From;
	b=KfJfgBcsAPFoztXTeWcnw62QAGRDdqo18JK8uKc/el8zjXOuhqtJ3GxUjoXxAeJim
	 J5lcQUQy3Z7FpTfUw3Gd/Yh3gSBe1YYZ0kOOLFeovdSI8VANayTLEpyaNAwRUlRxFp
	 8F4XlSe0ftBp8PUKUhJ3zGNf5hqiWG7KkgNaV9U+V5HpKdsWEb7Q9WPHdyAVX1+YpV
	 aDI6OHsun1zl6ZrrugSi7p3OhNk8AeE+AG8GPPbGye7kHPnUWIC3oWxmgSK9X+h/BT
	 B72ARCm503H3d2rH7QkzbdkW4CaWRHJ4RHGL4BKWexIRaL828yQuZEhsVmRljAD6lO
	 95NUhXoPbCinA==
Received: by melynllyn.pl for <b43-dev@lists.infradead.org>; Wed, 12 Jul 2023 08:50:48 GMT
Message-ID: <20230712075342-0.1.c2.1eekk.0.bgnf1n4m4r@melynllyn.pl>
Date: Wed, 12 Jul 2023 08:50:48 GMT
From: "Urszula Wasiak" <urszula.wasiak@melynllyn.pl>
To: <b43-dev@lists.infradead.org>
Subject: Faktoring
X-Mailer: mail.melynllyn.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_015121_619868_77BF4C4E 
X-CRM114-Status: UNSURE (   2.35  )
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

RHppZcWEIGRvYnJ5LAoKcm96d2HFvGFsaSBQYcWEc3R3byB3eWLDs3IgZmluYW5zb3dhbmlhLCBr
dMOzcmUgc3BlxYJuaSBwb3RyemVieSBmaXJteSwgemFwZXduaWFqxIVjIG5hdHljaG1pYXN0b3d5
IGRvc3TEmXAgZG8gZ290w7N3a2ksIGJleiB6YsSZZG55Y2ggcHJ6ZXN0b2rDs3c/IAoKUHJ6eWdv
dG93YWxpxZtteSByb3p3acSFemFuaWEgZmFrdG9yaW5nb3dlIGRvcGFzb3dhbmUgZG8gUGHFhHN0
d2EgYnJhbsW8eSBpIHdpZWxrb8WbY2kgZmlybXksIGR6acSZa2kga3TDs3J5bSwgbmllIG11c3rE
hSBQYcWEc3R3byBtYXJ0d2nEhyBzacSZIG8gbmlld3lwxYJhY2Fsbm/Fm8SHIGtvbnRyYWhlbnTD
s3csIHBvbmlld2HFvCB0cmFuc2FrY2plIHPEhSB6YWJlenBpZWN6b25lIGkgcG9zaWFkYWrEhSBn
d2FyYW5jasSZIHNwxYJhdHkuIAoKQ2hjxIUgUGHFhHN0d28gcHJ6ZWFuYWxpem93YcSHIGRvc3TE
mXBuZSBvcGNqZT8KCgpQb3pkcmF3aWFtClVyc3p1bGEgV2FzaWFrCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMt
ZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iNDMtZGV2Cg==
