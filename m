Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C98EB64DA
	for <b43-dev@archiver.kernel.org>; Thu, 20 Jul 2023 08:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WW5zvDjA1iaITvtrUzNJUTcCtjnYYhYydXaDKy8jOI4=; b=jogM8Ggv954HC8
	zBs9aH4lhSPlpbDRkK5aLYIBx5AnuCYlB8SXQdODa4w2B5vnAO0fMYYazDF1SBZ+BvtXbxfATbn0y
	ooW7M0Gp1YMKz7QW+4FDZEi3Oxhw+X+P7XWbAM/LhWMBijhgGFQ8L/3dUtjdfmg/nkHSlK6CfVYZE
	y96W3NJzUI8YagWvdtVkjVGLuf7Px4Wpj++NXZ9Yiq6rVshQt0UF6zUf4b1SPkRH1n6QpAZdXIyip
	+1sAN18lVjDAesoYOhEYtSIAx46CouYDK5bnlvKozM5bWV9U8A1GUebEQUF+QCQB8yY9duLzjhDq7
	orwXGfmMetU1BSJMyzGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMOqE-00AGdF-36;
	Thu, 20 Jul 2023 08:16:54 +0000
Received: from mail.skafta.pl ([198.244.148.144])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMOq9-00AGZo-0P
	for b43-dev@lists.infradead.org;
	Thu, 20 Jul 2023 08:16:51 +0000
Received: by mail.skafta.pl (Postfix, from userid 1002)
	id B8BBAA3C48; Thu, 20 Jul 2023 08:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=skafta.pl; s=mail;
	t=1689840988; bh=UpXhBJeRolauNcr8IBaVn8jdl1Ivo/5TElYLZS4GGAA=;
	h=Date:From:To:Subject:From;
	b=DRqA7ouz7fXY9c1WlMqS8WTYWH25kb4TP7r23hgeIZL+LqsbBnQIvm4aafElx3uuN
	 Bqw1+Mfna0NRjGjyOc9E1h993NDahKSx5N7J+Iwj7r57Qds6q1fiiWD/C2ma9zPsVR
	 B7RCgZvuZ4s2jVoQ5jSZG+9SNmxiqtLSlGMC6ER21hx8eFoURKEB8MBUFPE2+J+vYJ
	 JPYeaLG5GM2oXmtCbeUfoEYXRJ2kWADmUsiBX8/TcmOecKL2O4JE78SnxbHY6/bHC1
	 BHjL/HP/notPNGn2lmcFjnXleL76UD/Xc5KLpTn5s4IIY0ByyRPyoFWNw7bHID/86J
	 1bojYn+usQnnQ==
Received: by mail.skafta.pl for <b43-dev@lists.infradead.org>; Thu, 20 Jul 2023 08:15:42 GMT
Message-ID: <20230720064500-0.1.ai.jnzy.0.rzijfjeyo5@skafta.pl>
Date: Thu, 20 Jul 2023 08:15:42 GMT
From: "Tomasz Zamorski" <tomasz.zamorski@skafta.pl>
To: <b43-dev@lists.infradead.org>
Subject: Nieaktywna strona www
X-Mailer: mail.skafta.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230720_011649_946936_B07DE20D 
X-CRM114-Status: UNSURE (   2.14  )
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

RHppZcWEIGRvYnJ5IQoKd8WCYcWbbmllIHpha2/FhGN6ecWCZW0gYnVkb3fEmSBub3dlaiBzdHJv
bnkgaW50ZXJuZXRvd2VqIGRsYSBmaXJteSBkemlhxYJhasSFY2VqIHcgUGHFhHN0d2EgYnJhbsW8
eS4KCkR6acSZa2kgbm93b2N6ZXNueW0gZnVua2Nqb25hbG5vxZtjaW9tIGkgbmllc3RhbmRhcmRv
d2VqIGtyZWFjamkgdW1vY25pxYJlbSBtYXJrxJkgdGVqIGZpcm15IGRvZGFqxIVjIGplaiB3YXJ0
b8WbY2kgaSB0b8W8c2Ftb8WbY2ksIGt0w7NyZWogc3p1a2FqxIUgS2xpZW5jaS4KClogcHJ6eWpl
bW5vxZtjacSFIG1vZ8SZIG9kd2llZHppxIcgc2llZHppYsSZIFBhxYRzdHdhIGZpcm15IGkgcHJ6
ZWRzdGF3acSHIHN3b2plIHBvcnRmb2xpbyBsdWIgbW9nxJkgemFkendvbmnEhyBpIHBvem5hxIcg
UGHFhHN0d2Egb2N6ZWtpd2FuaWEsIHd0ZWR5IHdzcMOzbG5pZSBwcnplYW5hbGl6dWplbXkgcG90
ZW5jamHFgiB3c3DDs8WCcHJhY3kuIAoKQ3p5IG1vamEgcHJvcG96eWNqYSB3eWRhamUgc2nEmSBh
dHJha2N5am5hPwoKClBvemRyYXdpYW0KVG9tYXN6IFphbW9yc2tpCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMt
ZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iNDMtZGV2Cg==
