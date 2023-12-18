Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FC62C35274
	for <b43-dev@archiver.kernel.org>; Mon, 18 Dec 2023 08:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PAdAp2PD5Q1Yoiqg4j5vI2sj3rhJdCoxAKdfYtok1v8=; b=hJvk2n0+kZK+xn
	M6CD7fwyRsxpNPLL7YZQuHPjQ4y5Od4SuNecui/oEEZaVq1n8SAmTJUtZuqz9CoH1dudGu3LWo4r3
	4JcYyCTkJyB2ypcfASX2Zu0ANGSV3wOzC9xEjXvsYLDn4Sk0J0qT5SpfMR/Py37fGlZGc9uU5P5LK
	My6il7KhoRqdD1vY1AmCgE15szCKkAI9+/Gw07Kiw05QbJ3kuiv9DbW2yZN5BGRixya9qoJoXx1aH
	Q48F0X33U3AiDf6fw7HuyGWwb9/relcHk2xz/vlQf9QmUGtVJSTxyhNNpWW1dN1wg6ZcG2rI1zF/X
	x37+E/vIbdx7mk9igiHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9Bx-009Vis-2o;
	Mon, 18 Dec 2023 08:41:37 +0000
Received: from mail.doueloul.pl ([195.231.81.12])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9Bu-009Vfi-0j
	for b43-dev@lists.infradead.org;
	Mon, 18 Dec 2023 08:41:36 +0000
Received: by mail.doueloul.pl (Postfix, from userid 1002)
	id F261682945; Mon, 18 Dec 2023 09:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=doueloul.pl; s=mail;
	t=1702888886; bh=iAPQuwo6iiZtvYu3aIoQh4S3r3ASsMPYlWZwHna+aHc=;
	h=Date:From:To:Subject:From;
	b=C5e29K2jl7dP7Z6V7nxEjbERkEbe862y2VFspaLckqpbDbbFLu+SUPWrDjj0lzzBF
	 S15Kq7QjSyVcZP8B2/laL0CTuRXLX/B2UhM9Dm/dF8a/ICKLHihy2PoqZCQEQ3kIC4
	 8IwHsPrBI4ZuY9bj9q/W6b45h1YB9C3Bnb/uYL82LVuD8GoHT/RuRl8UW6LAdJY7xF
	 eBMHLrkoFMjCEEKOOYYZ+CY/yv/4Rsrf2umZW1IomclVaOXT2nwMG6vmpN5jiO4OHh
	 c6Vk0pbUZT517dpdJI3hzbO6EG6bqEmyHz8G/K2L1VXZI4/d6IkwPnj2xly+KFrFcX
	 E2CWDfXY5id7Q==
Received: by mail.doueloul.pl for <b43-dev@lists.infradead.org>; Mon, 18 Dec 2023 08:41:22 GMT
Message-ID: <20231218084500-0.1.16.3rok.0.gz0hp38j0f@doueloul.pl>
Date: Mon, 18 Dec 2023 08:41:22 GMT
From: =?UTF-8?Q?"Micha=C5=82_Jerzak"?= <michal.jerzak@doueloul.pl>
To: <b43-dev@lists.infradead.org>
Subject: Angielski za 99
X-Mailer: mail.doueloul.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_004135_000348_DBB90BC3 
X-CRM114-Status: UNSURE (   1.49  )
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

U3phbm93bmkgUGHFhHN0d28sCgpjaGNpZWxpYnnFm215IHphcHJvcG9ub3dhxIcgUGHFhHN0d3Ug
bmllend5a2xlIHByenlzdMSZcG7EhSBvZmVydMSZIG5hdWtpIGFuZ2llbHNraWVnbyBkbGEgV2Fz
enljaCBwcmFjb3duaWvDs3cuCgpQYcWEc3R3YSBwcmFjb3duaWN5IG1vZ8SFIHN3b2JvZG5pZSB1
Y3p5xIcgc2nEmSBqxJl6eWthIGFuZ2llbHNraWVnbyBvbmxpbmUgeiB3eWJyYW55bSBwcnpleiBz
aWViaWUgIG5hdGl2ZSBzcGVha2VyZW0gbmEgxbzEhWRhbmllIHcgZG93b2xueW0gbWllanNjdSBp
IGN6YXNpZSB6YSBqZWR5bmUgOTkgesWCIG1pZXNpxJljem5pZS4KCkN6eSBjaGNpZWxpYnkgUGHF
hHN0d28gcm96d2HFvHnEhyBuYXN6xIUgcHJvcG96eWNqxJk/CgoKUG96ZHJhd2lhbQpNaWNoYcWC
IEplcnphawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
