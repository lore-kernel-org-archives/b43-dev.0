Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46252C678DA
	for <b43-dev@archiver.kernel.org>; Tue, 10 Jun 2025 10:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=na+KuMeaxYIJQG3xpS/xShVIrGQQrqtR04oamnLRT14=; b=frbMcmP9tGzZ4c
	OH+yNyqzUvYgfngFKCZI7KCFLjGhPVbZt1pcKo6H7a8alh5dRWf5an3q2w+Q+LcJzXZeYw+JRNzMy
	A9h10xnreG6j7tljpVwAaWE+8JRmskBYQhSk3X0yIgLeuZLPfnucjAZXj5fefutjn1GQhSarGi9+z
	eZCJXR7o3Hx8WQfWhoY9kE1gJU0HJAPNxcFgR5VNYKJ90rRxwhIpzG/HiHK0yZoPwPmNa5QjkN8Tg
	6uWDzMrbR+P/hlZMsc3x1zKdPd0ZNxOxCsJ5dnV5KoHtAR7aRV5IvXTraGUW5BU6kKihXDMI7n8HT
	5t2GiRbdTyveks9mbn1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOwg1-00000006ZgT-1s8u;
	Tue, 10 Jun 2025 10:57:57 +0000
Received: from mail.ekosavo.pl ([141.94.21.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOvxx-00000006Szh-0GlA
	for b43-dev@lists.infradead.org;
	Tue, 10 Jun 2025 10:12:27 +0000
Received: by mail.ekosavo.pl (Postfix, from userid 1002)
	id E28EF4A7F6; Tue, 10 Jun 2025 09:46:10 +0200 (CEST)
Received: by mail.ekosavo.pl for <b43-dev@lists.infradead.org>; Tue, 10 Jun 2025 07:45:50 GMT
Message-ID: <20250610084500-0.1.d0.1owvh.0.e4t79m6qb9@IdeaCrafters.pl>
Date: Tue, 10 Jun 2025 07:45:50 GMT
From: =?UTF-8?Q?"Dorota_Szczepa=C5=84ska"?= <dorota.szczepanska@ekosavo.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Informacja_z_ksi=C4=99gowo=C5=9Bci?=
X-Mailer: mail.IdeaCrafters.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_031225_245186_C77FF516 
X-CRM114-Status: UNSURE (   1.38  )
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

RHppZcWEIGRvYnJ5LAoKcHJvd2FkesSZIGJpdXJvIGtzacSZZ293ZSwga3TDs3JlIHNwZWNqYWxp
enVqZSBzacSZIHcgb2JzxYJ1ZHplIGJpem5lc3UgUGHFhHN0d2EgZm9ybWF0dS4KCldyYXogeiB6
ZXNwb8WCZW0gemFwZXduaWFteSB3c3BhcmNpZSwga3TDs3JlIHd5a3JhY3phIGRhbGVrbyBwb3ph
IHNhbW8gcHJ6eWdvdG93YW5pZSByb3psaWN6ZcWEIGkgcHJvY2Vzb3dhbmllIGRva3VtZW50YWNq
aS4KClJlZHVrdWplbXkgZG8gbWluaW11bSBjemFzIGkgxZtyb2RraSwgamFraWUgbmFzaSBLbGll
bmNpIHByemV6bmFjemFqxIUgbmEgb2JzxYJ1Z8SZIGZpbmFuc293by1rc2nEmWdvd8SFIGkga2Fk
cm93by1wxYJhY293xIUuIAoKWiByYWNqaSBtb2plZ28gZG/Fm3dpYWRjemVuaWEgcHJ6eSB3c3DD
s8WCcHJhY3kgeiBmaXJtYW1pIG8gdGFraW0gcm9kemFqdSBkemlhxYJhbG5vxZtjaSwgY2hjaWHF
gmFieW0gcHJ6ZWRzdGF3acSHIGtpbGthIHdhcnRvxZtjaW93eWNoIGkgc3ByYXdkem9ueWNoIHJv
endpxIV6YcWELgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgbyBvYnPFgnVkemUgUGHFhHN0d2EgZmly
bXk/CgoKUG96ZHJhd2lhbQpEb3JvdGEgU3pjemVwYcWEc2thCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iNDMtZGV2Cg==
