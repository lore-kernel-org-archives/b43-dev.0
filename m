Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 394E3C369B2
	for <b43-dev@archiver.kernel.org>; Thu, 17 Apr 2025 07:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=na+KuMeaxYIJQG3xpS/xShVIrGQQrqtR04oamnLRT14=; b=5CxqRdJ+8JS/84
	AhVcGAvKhzldxTgY94JZ0reSOaI47B/pfSutwZ8agmeSAg2SHB+dKVEe21ed3Xi1ZRV52twZARXxb
	wiSaAMD9BhvyEamuzDUmXdviGbFK/NcI9fJYaRY8mUCF2dqFCLnpJRhO1EeH0UQJjiF0GiV7KniAs
	oji6WiiXmfeBh4u1QpyWAtXtid2WAmVfRmIg/jbg/IyHG4aWXBjqCmSdf5G/cmznY57AfDMcj9fzO
	gh1VDi3mpLoFnHjuSQF/xtlksRCpZESgkeu3/aKlcXhW2W/mpnLc0kozuXUzIV0W2ziRUQRCQyj1U
	paPDJYSwly50YEghd0Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Jmh-0000000C80Y-2QnA;
	Thu, 17 Apr 2025 07:35:43 +0000
Received: from mail.ekosavo.pl ([141.94.21.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Jl4-0000000C7d9-0S3R
	for b43-dev@lists.infradead.org;
	Thu, 17 Apr 2025 07:34:04 +0000
Received: by mail.ekosavo.pl (Postfix, from userid 1002)
	id CD79748DDD; Thu, 17 Apr 2025 09:31:47 +0200 (CEST)
Received: by mail.ekosavo.pl for <b43-dev@lists.infradead.org>; Thu, 17 Apr 2025 07:31:15 GMT
Message-ID: <20250417084500-0.1.cf.1hewi.0.nynx2xe575@IdeaCrafters.pl>
Date: Thu, 17 Apr 2025 07:31:15 GMT
From: =?UTF-8?Q?"Dorota_Szczepa=C5=84ska"?= <dorota.szczepanska@ekosavo.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Informacja_z_ksi=C4=99gowo=C5=9Bci?=
X-Mailer: mail.IdeaCrafters.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_003402_279506_F333B9BD 
X-CRM114-Status: UNSURE (   0.72  )
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
