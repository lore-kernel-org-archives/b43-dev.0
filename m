Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7222C02183
	for <b43-dev@archiver.kernel.org>; Fri, 17 Jan 2025 09:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EOmaL/7VwMGKjqIwIDGPOsS4bpPG1P3wH3MGgsffDxE=; b=R/tJIDNTJrbMUO
	LBW56XvRb1dWHvCxZyB7dZOO9se0igz5qmxesyIwFFLzdnN07c55AwnnsfROiYKSR0tuYb0Ts33qR
	I/7euEd+8/iyxvGA0lO4z61L8LFgAdwWTMCQvhSr2NYGEHttNgfKfTaw/ZqPIUNJLvAhwfWwOR3ax
	k47SBFMgHPXdx2168FcM9y7Xk98O2mTWK88CdDeDTKr4e4EG7e9M1CWNadAwOik4KwFss8v0gHqFx
	y1+KtqvGL97Luh8zqIvdlI6TNCYKUjuWfY302JxHD7VouKKs54jMjqn8RIQKDWXfekC1AcBRN62Xq
	aLZmb169arEfT6rFzEig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYiRy-0000000HQYQ-32Hy;
	Fri, 17 Jan 2025 09:15:34 +0000
Received: from mail.firmator24.pl ([141.94.203.229])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYiRt-0000000HQW2-19Ky
	for b43-dev@lists.infradead.org;
	Fri, 17 Jan 2025 09:15:31 +0000
Received: by mail.firmator24.pl (Postfix, from userid 1002)
	id 72CCFAA316; Fri, 17 Jan 2025 10:15:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=firmator24.pl;
	s=mail; t=1737105324;
	bh=E2JvZO680IjB10WY6NEM5q3hCpq1b/SED7AbH5YTrrw=;
	h=Date:From:To:Subject:From;
	b=qSov0JyiUB1s9rmOCCOVVkZUGUCJ38a27q26o/tsBNSh3OBivyqtos2sRdwxZh0gV
	 31UYGrZaJZ2m8DQqmLrPHunAOo7hr/lnTZKt284XBr5S8QCtccgTsM1MUgpJTVoZ2C
	 4ivciozXTbLtvG7geT7Ah9zSONGc+npA3Gn0QS+CcZ6XkzVVNrvq4yio/TgEAmTj/N
	 z31dXBYvDv3lu9ZLxL6jjDS2GzyX4Rp3ok+z32KR77+Hq1zgfgI4USW96JTomXrYl3
	 2owOce6IQvdTfqpRq6FpCOyhkQkCXWT2OYPU+II0OL7mI9LlWIrPlqgFZC1fJNX0Ye
	 uydGiUqbkhqbA==
Received: by mail.firmator24.pl for <b43-dev@lists.infradead.org>; Fri, 17 Jan 2025 09:15:10 GMT
Message-ID: <20250117084500-0.1.ih.19swk.0.mxnlq71on3@firmator24.pl>
Date: Fri, 17 Jan 2025 09:15:10 GMT
From: "Dominik Strzelczyk" <dominik.strzelczyk@firmator24.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_ofert=C4=99?=
X-Mailer: mail.firmator24.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_011529_992897_3BD328D9 
X-CRM114-Status: UNSURE (   2.00  )
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
