Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45C62C021B8
	for <b43-dev@archiver.kernel.org>; Tue, 25 Feb 2025 16:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2pNNDM7BBQRCAmmMy4d0VPe0wIPf3R5Q7R3gfviaxhA=; b=BGsvcUcNfqNqBV
	xJ3MoXbWx84gq43mmrTO6ytG/pZ+wgLrJeD7ucGAcjlCn9LDXD3R/mjfgVtGVKsbDflYRAi8+gCFn
	AyKZinq9Zg7W3DoTD4zrweTH2sGAvbU+ZB9hvppIM1Gym7271VdqqpKKvwPwgalRBwCc5URnMBSNi
	pZ2wsGl+tS9y3J6O4oSWPJTCg9dqPCdOOv1QncvAo4Bnb6uLYtu/8qOjXM8NktQrzycJaNunTqjbn
	dIoRWcL2smMyidgJ8rqNlCWlRqOAuj5AYkkTPS5Cq+9x7aZ0/gZlEqmFC2OD6wwNTdLsyqMdcgPtJ
	GxKnXMCkvIFSpDKCX5ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmxxf-00000000Geu-2JWO;
	Tue, 25 Feb 2025 16:39:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmvPL-0000000HRPO-2J6m
	for b43-dev@bombadil.infradead.org;
	Tue, 25 Feb 2025 13:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=yZU9WHoEvDJ2h5vDEcAUaQc2O+7cNrQbDOl2mKdp/vI=; b=ubVjoToJH+YyUZ6w1Rjmqpsclf
	7YZ9n8sabZNY4K0l6wLp0DLeqQh5RhbU0sAntutqlMWceBhW3oAXVrDJPHM+CkGK3TDD0/mHCnfXm
	mjMCr9VbhxvsKTIXfjgRlGEddWkiaRCtkM/5CBJdCLJm/X1H+rLsg2DNg/JPHZEhBMT5xFxwMzzyI
	O6WaOwkcEuYZaH4ZEOyGCNIr9Q8cil1QJyn0spgDVpR/VFjNMf6yc50F3RZWmUfLUtOL2nlO9fYev
	zbgP8PO1ioucBj9GXGRsysjRh/xSyCriCgLKXWKxWS21HJxXZSYsbpIPnTbNrZqsBMprHJ3KFAs1a
	UjEcoqzA==;
Received: from [217.20.252.16] (helo=hw.webideh.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmvPI-0000000BTUG-1cSW
	for b43-dev@lists.infradead.org;
	Tue, 25 Feb 2025 13:55:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=w2i.ir;
	s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=yZU9WHoEvDJ2h5vDEcAUaQc2O+7cNrQbDOl2mKdp/vI=; b=dQUjMEb5O6sUG4LJ6n6BYNiFz4
	zzwBnPGGJat+pwaKtbmrwCVZJSHMYOOdm4uSvM0M2Jow25JRExHf6+mkH5hGIT7eKzqz4pCywmw5f
	7+mCa6OAAIQHIEUDgmB3VOqzScZkjavpYlDistPQaWDBNA5JdaFMwsEj9Nw5ukSjMb9lweOkm8zcN
	5AYQsFK/+LKwDb0XmrHPzGv5xFi1+NAKIr45j4vxngR9wrJp2I+Mfj3P4cNhSupdo3bTyXQBmDGbe
	YyjUJRikyYkWU4Kze6XUmPVHHJz/FFuoWUpSd4tA9r7rh2Jccvzd5NcqzX2hhLU0zlG9UChO+12Ii
	CW5DY/9w==;
Received: from ec2-3-92-173-52.compute-1.amazonaws.com ([3.92.173.52]:65527)
	by hw.webideh.org with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.97.1)
	(envelope-from <abruptness@w2i.ir>)
	id 1tmvMq-0000000EaQ6-3wAE
	for b43-dev@lists.infradead.org;
	Tue, 25 Feb 2025 08:53:01 -0500
From: "Thomas Mark" <abruptness@w2i.ir>
To: b43-dev@lists.infradead.org
Subject: kredite
Date: 25 Feb 2025 13:52:52 +0000
Message-ID: <20250225135252.218293F04FA420D2@w2i.ir>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - hw.webideh.org
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - w2i.ir
X-Get-Message-Sender-Via: hw.webideh.org: authenticated_id: abruptness@w2i.ir
X-Authenticated-Sender: hw.webideh.org: abruptness@w2i.ir
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_135532_743524_E8A7412F 
X-CRM114-Status: UNSURE (  -2.29  )
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
Reply-To: tm@wtrustmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

R3V0ZW4gVGFnLAoKd2lyIGZyZXVlbiB1bnMsIElobmVuIGVpbmUgdW5nbGF1YmxpY2hlIEtyZWRp
dG3DtmdsaWNoa2VpdCB6dQplaW5lbSB1bnNjaGxhZ2JhcmVuIEphaHJlc3ppbnNzYXR6IHZvbiBu
dXIgMSw1ICUgYW5iaWV0ZW4genUKa8O2bm5lbi4gTWl0IGZsZXhpYmxlbiBLcmVkaXRiZXRyw6Rn
ZW4gdm9uIDIwLjAwMCDigqwgYmlzIDUwLjAwMC4wMDAK4oKsIG3DtmNodGVuIHdpciBTaWUgZGFi
ZWkgdW50ZXJzdMO8dHplbiwgSWhyZSBmaW5hbnppZWxsZW4gWmllbGUgenUKZXJyZWljaGVuLgoK
V2VubiBTaWUgYW4gZGllc2VyIE3DtmdsaWNoa2VpdCBpbnRlcmVzc2llcnQgc2luZCwgbmVobWVu
IFNpZQpiaXR0ZSBLb250YWt0IG1pdCB1bnMgYXVmLiBXZW5uIFNpZSBrZWluZSB3ZWl0ZXJlbiBF
LU1haWxzIHZvbgp1bnMgZXJoYWx0ZW4gbcO2Y2h0ZW4sIGFudHdvcnRlbiBTaWUgYml0dGUgbWl0
IOKAnmFibWVsZGVu4oCcIGluIGRlcgpCZXRyZWZmemVpbGUsIGRhbWl0IHdpciBJaHJlIERhdGVu
IGF1cyB1bnNlcmVyIE1haWxpbmdsaXN0ZQplbnRmZXJuZW4ga8O2bm5lbi4KCk1pdCBmcmV1bmRs
aWNoZW4gR3LDvMOfZW4KClRob21hcyBNYXJrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
NDMtZGV2Cg==
