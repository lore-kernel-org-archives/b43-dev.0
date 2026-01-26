Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43D76D74EFD
	for <b43-dev@archiver.kernel.org>; Mon, 26 Jan 2026 09:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SKaMkJe16xynI8UCCOsEGBczX3SVzsuODdKE6+dxcRE=; b=Tk8iX13jeyPvBo
	AhNGyjM5jukwRlpBFh7XVgLMZAro3aegheHXgZSqpnWFt7u73GKpLRsasTkFzzFlLcF8ju8H+vAeG
	W0li6S+7Mq769Z9irWPij5ZNtrn3w6vC+88cJBN90QLIkfO59PGZi3lUNaV7FY3TBdPlQuzPedlDs
	Gmo5O+scOs1n1Hv//dXVTDfAcTgM49HDAdWtfwqUdWiKiAw0Es5VjvjUMs1ej5L6rGBXWOVscdhqZ
	aXkRxVUVDdgnQb92mRDn1Mst2EsXD9PvOlqz8FISb+fDOtG366hQdJRbN2LgdaVd27NyjVLsLJZ1P
	RPwKJY75q9/U4/j8UjIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIvR-0000000CD2o-3FRn;
	Mon, 26 Jan 2026 09:30:25 +0000
Received: from mail.torqly.pl ([51.38.112.117])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIvK-0000000CD1S-3xRj
	for b43-dev@lists.infradead.org;
	Mon, 26 Jan 2026 09:30:20 +0000
Received: by mail.torqly.pl (Postfix, from userid 1002)
	id 5D716AC1E5; Mon, 26 Jan 2026 10:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=torqly.pl; s=mail;
	t=1769419350; bh=uxD+u+6cX+rdrH6lLzZrBmRjAfg+s7Y262VbLyoncGw=;
	h=Date:From:To:Subject:From;
	b=WDcYk5UYoN1i9QahpIQ+Imgp3TKuUtj+M0LENIu9H74GdNIaGeyjhxlzo1q0vBPIk
	 ltglj9twr1WuMRHaXvDpdVwsKOjZ7na0uQkWtt1vlhzlFHXv5ypTQzIZO2bbHWRrnQ
	 S6lQCsvrOacOqnR/BwHZ54boVlzzhMYs2Nw4YWTS+k4SBP1EyC84mHMadBQ4V6B/dj
	 Yvy7CdwWMStFu2FMW+l3gcZ7v8McFjSM0gYT8gaW1Jv+87Pq9061MQFvh3+4wIz8eO
	 a33QMjIToj2rrBtXbjBbgjvFg9Kj00IV3g0sCd2/r+lB+Rl0G6J5Cm9zah/OYe4faX
	 2a7GYVPJeqi2A==
Received: by mail.torqly.pl for <b43-dev@lists.infradead.org>; Mon, 26 Jan 2026 09:06:13 GMT
Message-ID: <20260126100000-0.1.uf.dle1g.0.cw3aoq25qb@torqly.pl>
Date: Mon, 26 Jan 2026 09:06:13 GMT
From: "Tomasz Jaworski" <tomasz.jaworski@torqly.pl>
To: <b43-dev@lists.infradead.org>
Subject: Karta lunchowa
X-Mailer: mail.torqly.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_013019_537628_468FE70E 
X-CRM114-Status: UNSURE (   2.15  )
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

U3phbm93bmkgUGHFhHN0d28sCgpjenkgemFzdGFuYXdpYWxpIHNpxJkgUGHFhHN0d28sIGphayB6
d2nEmWtzennEhyB6YWRvd29sZW5pZSBwcmFjb3duaWvDs3cgaSBqZWRub2N6ZcWbbmllIHphb3N6
Y3rEmWR6acSHIG5hIGtvc3p0YWNoIHphdHJ1ZG5pZW5pYT8gCgpPYmVjbmllIGplc3QgbW/FvGxp
d2/Fm8SHIHp3b2xuaWVuaWEgeiBvcMWCYXQgWlVTIGHFvCBkbyA0NTAgesWCIG1pZXNpxJljem5p
ZSBuYSBrYcW8ZGVnbyBwcmFjb3duaWthIHBvcHJ6ZXogZG9maW5hbnNvd2FuaWUgcG9zacWCa8Oz
dy4gCgpaYSBwb21vY8SFIGthcnR5IGx1bmNoIHByYWNvd25pY3kgbW9nxIUgcMWCYWNpxIcgdyBy
ZXN0YXVyYWNqYWNoLCB6YW1hd2lhxIcgamVkemVuaWUgb25saW5lLCBrb3J6eXN0YcSHIHogY2F0
ZXJpbmd1IGN6eSByb2JpxIcgemFrdXB5IHNwb8W8eXdjemUuIFRvIGRvc2tvbmHFgmUgbmFyesSZ
ZHppZSBtb3R5d2FjeWpuZSwga3TDs3JlIHRha8W8ZSB3eXLDs8W8bmlhIGZpcm3EmSBuYSByeW5r
dSBwcmFjeS4KCkNoxJl0bmllIG9wb3dpZW0gd2nEmWNlaiBuYSB0ZW4gdGVtYXQsIGN6eSBtb2ds
aWJ5xZtteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKClBvemRyYXdpYW0K
VG9tYXN6IEphd29yc2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
