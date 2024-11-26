Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21A12D3B7C1
	for <b43-dev@archiver.kernel.org>; Tue, 26 Nov 2024 08:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EOmaL/7VwMGKjqIwIDGPOsS4bpPG1P3wH3MGgsffDxE=; b=MxuqamuKEqlXzn
	sadXCxtkw5UnG1DrAcRZizfaxIfs1ZYbOgo7DgIWTbxMyLLsnJCFLl++24HACzgqi4A8b3SHrX5Iq
	Ip3pCiNIQNiH2FibNaB1Y+zrqby3+SR43QuHSoYdD/XI1gro0xsRRYFtGo2vIYzwoB5QMFzwCWmgb
	SPguyE6O1Wyr1KtQNj9F4inC5b4FjOhld2R1h80ewxWMW/EjtY6Jsvlib+FhA8WOsPVDbGiPHlylF
	YsO6yG0qfiKplz8CzgNHjlbYmw93hggWio+Igz6lvnl9Nz4NZJm2CQ15m+ytnjDomLUHMS/s9JHES
	557Xh+ywyslkW2hQ6OwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrNL-0000000A0xU-3H4q;
	Tue, 26 Nov 2024 08:56:51 +0000
Received: from mail.firmator24.pl ([141.94.203.229])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrN5-0000000A0w8-1rAX
	for b43-dev@lists.infradead.org;
	Tue, 26 Nov 2024 08:56:37 +0000
Received: by mail.firmator24.pl (Postfix, from userid 1002)
	id 901C6A57EA; Tue, 26 Nov 2024 09:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=firmator24.pl;
	s=mail; t=1732611388;
	bh=E2JvZO680IjB10WY6NEM5q3hCpq1b/SED7AbH5YTrrw=;
	h=Date:From:To:Subject:From;
	b=bKHTTS1jVqACJ+H2YDKq9fiid8rgIPNF0Gf+hp70PwUuCJTyGTSxkwAU6+Ef1YvcM
	 XDiHlawDsFuxYI2371g7UX8SZAVgIzW5ZiLZypAwhaJdWsvlrwKI0/Y8N9UTQSSu3V
	 2dwvm7VCg5ByBFSRYWVqO1krILZqFa9Pj8tNJZsWRiAxbToq9RmQb3tUkcjEUCczjr
	 3OXak7unYkVki5nHlnclXKGx10UishNoz/yeA6gb4ZcRd5rGYxbmVHPwADB0JxOu1X
	 WgYYd0eBPriHJkntp/M7h+eqhA1wtUfZMl9LnV1UeJ7GQFwiX8UpqnLo9G9v0vcYHe
	 3txUA+x65V1Ig==
Received: by mail.firmator24.pl for <b43-dev@lists.infradead.org>; Tue, 26 Nov 2024 08:55:49 GMT
Message-ID: <20241126084500-0.1.hj.vvfs.0.lhho9abedp@firmator24.pl>
Date: Tue, 26 Nov 2024 08:55:49 GMT
From: "Dominik Strzelczyk" <dominik.strzelczyk@firmator24.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_ofert=C4=99?=
X-Mailer: mail.firmator24.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_005636_159854_0820A023 
X-CRM114-Status: UNSURE (   2.64  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IHBvdHJ6ZWJ1asSFIFBhxYRzdHdvIGFrdHVhbG5pZSBub3d5Y2gg
a2xpZW50w7N3ID8KClNrdXRlY3puaWUgcG9tYWdhbXkgcm96cG9jenluYcSHIHJvem1vd3kgaGFu
ZGxvd2UgeiBrbGllbnRhbWkgemFpbnRlcmVzb3dhbnltaSBQYcWEc3R3YSBvZmVydMSFLgoKWmFw
cmFzemFtIGRvIGtvbnRha3R1IHp3cm90bmVnby4KCgpQb3pkcmF3aWFtIHNlcmRlY3puaWUKRG9t
aW5payBTdHJ6ZWxjenlrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
