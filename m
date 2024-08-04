Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01EF1C3DA64
	for <b43-dev@archiver.kernel.org>; Sun,  4 Aug 2024 06:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyL6JDl5DDpMcVF6pDeADmDoYg0dEPNBOniXKSsCtfc=; b=XmpL+cM2DpmmIJ
	i4FksNFosMO/lVuKkDCBJYAK6RQulbdCqx7WBkQ4Cl5KCt4MUb5+8e1EKK1yeaLeVtBdDuoWgjtWR
	oDe65zKCZDzq9PmgQrO+cd8sDdcQq1LcNSZAP2/N1j4dNC3myRd+5JgB3z1++rZnlozmeCwDLV1xO
	xWVLXLUzEZGBJK/jj6/5z4xEopkgegPubQOwVbZw/PNxrY9yJ/n9ofe3A5oDZnrnwZTzzFife1Jtp
	i/oxiU9bkwzHGs3tAXLcdcQrMa/Fk0seIZKQJgTPBe5VCbELF92FJBnap7mmRlE7/1uR5jAJAffc4
	IYF6Y4IPysaDZmQYQmOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saUiG-0000000Ckge-0KH8;
	Sun, 04 Aug 2024 06:27:28 +0000
Received: from smtp-17.smtpout.orange.fr ([80.12.242.17] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saUi9-0000000CkdY-455K
	for b43-dev@lists.infradead.org;
	Sun, 04 Aug 2024 06:27:23 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id aUi4szd3e95X4aUi4sqB7f; Sun, 04 Aug 2024 08:27:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1722752837;
	bh=8X9F99mm4QYNIwKVcFQ2SYZwZgY/uQ0zZxFeYsHM8Sc=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=AUB4Fw2QEDgEJT7xUvaaoBKaLQVSpWdHt69uOZFyI+G56TcYraHSoIi60t74XUmWZ
	 ha0OIm4aplGvzOAlMtMW280QcyKfM8bUcLK65dgQzfrtKpUeXTupRvP7fJrq9gxjfa
	 xaAbSzyFTDhvTV19v1oWv/yLsbU83oDwP3i0FE4wVOUkKc2iZcVtMNQwNAmhdNf1X9
	 lzC0rbEXz134298XZBibcQ/SZiSjpBsSeXrUAmrK5hgmLx3aahfQPzZUUIbCdVX7uk
	 R349TFhMHjn6U6kdbOtYTQzriFVyfkNylVMP8gdCta1Nk/7AsVD5L6YQz70yR3pu+k
	 zSoM7oxhA42lg==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sun, 04 Aug 2024 08:27:17 +0200
X-ME-IP: 90.11.132.44
Message-ID: <68d63e24-ccd7-48ad-af38-0c9e2202a8f9@wanadoo.fr>
Date: Sun, 4 Aug 2024 08:27:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] wifi: b43: Constify struct lpphy_tx_gain_table_entry
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: Kalle Valo <kvalo@kernel.org>, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org
References: <38528f48c8069187823b774a6b2a53088f6c9599.1721161231.git.christophe.jaillet@wanadoo.fr>
 <20240717195743.31bdb01d@barney>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20240717195743.31bdb01d@barney>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_232722_182334_243A0A15 
X-CRM114-Status: UNSURE (   7.29  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

TGUgMTcvMDcvMjAyNCDDoCAxOTo1NywgTWljaGFlbCBCw7xzY2ggYSDDqWNyaXTCoDoKPiBPbiBU
dWUsIDE2IEp1bCAyMDI0IDIyOjIxOjEzICswMjAwCj4gQ2hyaXN0b3BoZSBKQUlMTEVUIDxjaHJp
c3RvcGhlLmphaWxsZXRAd2FuYWRvby5mcj4gd3JvdGU6Cj4gCj4+ICAgc3RhdGljIHZvaWQgbHBw
aHlfcmV2MF8xX3dyaXRlX2dhaW5fdGFibGUoc3RydWN0IGI0M193bGRldiAqZGV2LCBpbnQgb2Zm
c2V0LAo+PiAtCQkJCXN0cnVjdCBscHBoeV90eF9nYWluX3RhYmxlX2VudHJ5IGRhdGEpCj4+ICsJ
CQkJY29uc3Qgc3RydWN0IGxwcGh5X3R4X2dhaW5fdGFibGVfZW50cnkgZGF0YSkKPj4gICB7Cj4+
ICAgCXUzMiB0bXA7Cj4+ICAgCj4+IEBAIC0yMzU2LDcgKzIzNTYsNyBAQCBzdGF0aWMgdm9pZCBs
cHBoeV9yZXYwXzFfd3JpdGVfZ2Fpbl90YWJsZShzdHJ1Y3QgYjQzX3dsZGV2ICpkZXYsIGludCBv
ZmZzZXQsCj4+ICAgfQo+PiAgIAo+PiAgIHN0YXRpYyB2b2lkIGxwcGh5X3JldjJwbHVzX3dyaXRl
X2dhaW5fdGFibGUoc3RydWN0IGI0M193bGRldiAqZGV2LCBpbnQgb2Zmc2V0LAo+PiAtCQkJCXN0
cnVjdCBscHBoeV90eF9nYWluX3RhYmxlX2VudHJ5IGRhdGEpCj4+ICsJCQkJY29uc3Qgc3RydWN0
IGxwcGh5X3R4X2dhaW5fdGFibGVfZW50cnkgZGF0YSkKPj4gICB7Cj4+ICAgCXUzMiB0bXA7Cj4+
ICAgCj4+IEBAIC0yMzgzLDcgKzIzODMsNyBAQCBzdGF0aWMgdm9pZCBscHBoeV9yZXYycGx1c193
cml0ZV9nYWluX3RhYmxlKHN0cnVjdCBiNDNfd2xkZXYgKmRldiwgaW50IG9mZnNldCwKPj4gICB9
Cj4+ICAgCj4+ICAgdm9pZCBscHBoeV93cml0ZV9nYWluX3RhYmxlKHN0cnVjdCBiNDNfd2xkZXYg
KmRldiwgaW50IG9mZnNldCwKPj4gLQkJCSAgICBzdHJ1Y3QgbHBwaHlfdHhfZ2Fpbl90YWJsZV9l
bnRyeSBkYXRhKQo+PiArCQkJICAgIGNvbnN0IHN0cnVjdCBscHBoeV90eF9nYWluX3RhYmxlX2Vu
dHJ5IGRhdGEpCj4+ICAgewo+PiAgIAlpZiAoZGV2LT5waHkucmV2ID49IDIpCj4+ICAgCQlscHBo
eV9yZXYycGx1c193cml0ZV9nYWluX3RhYmxlKGRldiwgb2Zmc2V0LCBkYXRhKTsKPj4gQEAgLTIz
OTIsNyArMjM5Miw3IEBAIHZvaWQgbHBwaHlfd3JpdGVfZ2Fpbl90YWJsZShzdHJ1Y3QgYjQzX3ds
ZGV2ICpkZXYsIGludCBvZmZzZXQsCj4+ICAgfQo+IAo+IFRoZXNlIHRocmVlIGNoYW5nZXMgbG9v
ayBsaWtlIHRoZXkgYXJlIG5vdCBuZWNlc3NhcnkuCj4gCgpDb3JyZWN0LiBJJ2xsIHNlbmQgYSB2
Mi4KCkNKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
NDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
