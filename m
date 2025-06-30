Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A1D2C83000
	for <b43-dev@archiver.kernel.org>; Mon, 30 Jun 2025 07:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rohV0QMEg3fB4k/HQlkO8YaURuO7z7mmwI6WFgElbgM=; b=EA7cBmGuA3E+m8
	8DzRSLnrSt2suJj02sNF0mNbgaxrUMqsTg1p67bNw5RcmLXfAuZe2vUaSWml7tHp5x+qxscq0qAeW
	eG+iZqcIZxFoZZ6wvGpFPfwGoxmBHITq3Wl4jKtC/JotQvLqdnZvCVOui2FtcwmVkMD6umiAOAGRp
	ODKrmhC1mLFjDz7tU//a/69NEL0XcFb+aZtvsLJaxBlv5JtnmMPkzALR3M9s2hAjSEk8osBeGaEQS
	yH8qRJS+UdMx7q6ETshEUo9/EhhWESWdkO4FbygDoPsO2+hPSwESouux6FPE57L0IEeCg766i0KWX
	iU0pAAoP0RrrK9k83Ldg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW94X-00000001T0q-10af;
	Mon, 30 Jun 2025 07:37:01 +0000
Received: from mail.growdeal.pl ([141.95.55.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW935-00000001SoY-0UJZ
	for b43-dev@lists.infradead.org;
	Mon, 30 Jun 2025 07:35:33 +0000
Received: by mail.growdeal.pl (Postfix, from userid 1002)
	id C02DB23C06; Mon, 30 Jun 2025 07:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=growdeal.pl; s=mail;
	t=1751268925; bh=nU0fzD5wnLwbt9yoUSBeMInFHzMm7DGirLXtUO2ZpV8=;
	h=Date:From:To:Subject:From;
	b=rxXvJZGx0uJ4Nu41a8NEmyILqA+aWn4fN3eRrSl4VuClhFvECG4+AEXCpuuwBAKDu
	 Pjnz40d13QiuUwZ23KHmDW6sqZlz7UADitApqKw2F7iCJ+f9Xb9EFHt3JGV+KrK2P+
	 D0zpRQ27EgCorN9skyR+88/rHXLGZBR3W7S1DxQeDnDR7wbcKpbP+CwiTo3GFPfM4J
	 ApUwplboFAMryeCIl8nZhAjTgfyVPSa0QX1SbAayQDW8UqWGUixIbp2iuauj0lMwA2
	 18hLTNga9tcyo7/UkmiBahxGY3Y2pd4ptPvH6J4gUQPCPouMafiwUsD75dIlHTD58h
	 M2NP2q4+wpJ9A==
Received: by mail.growdeal.pl for <b43-dev@lists.infradead.org>; Mon, 30 Jun 2025 07:35:18 GMT
Message-ID: <20250630064500-0.1.37.1j8ab.0.7v9ae9nbfu@growdeal.pl>
Date: Mon, 30 Jun 2025 07:35:18 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Zajdlicz"?= <pawel.zajdlicz@growdeal.pl>
To: <b43-dev@lists.infradead.org>
Subject: Rekrutacja handlowca 
X-Mailer: mail.growdeal.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_003531_851082_AA8AAA1A 
X-CRM114-Status: UNSURE (   2.37  )
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

V2l0YW0sCgpDenkgbWFqxIUgUGHFhHN0d2EgYWt0dWFsbmllIHBvdHJ6ZWJ5IHogemFrcmVzdSBy
ZWtydXRhY2ppIG9zw7NiIGRvIGR6aWHFgnUgaGFuZGxvd2Vnbz8gCgpQb21hZ2FteSBza3V0ZWN6
bmllIHJla3J1dG93YcSHIG9zb2J5IG5hIHN0YW5vd2lza2EgUHJ6ZWRzdGF3aWNpZWxhIEhhbmRs
b3dlZ28sIFNhbGVzIE1hbmFnZXJhLCBhIHRha8W8ZSBLYWRyeSBNYW5hZ2Vyc2tpZWogdyBvYnN6
YXJ6ZSBzcHJ6ZWRhxbx5LgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHPwoKClBvemRyYXdpYW0K
UGF3ZcWCIFphamRsaWN6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
