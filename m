Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 759B8C7115D
	for <b43-dev@archiver.kernel.org>; Mon, 23 Jun 2025 08:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GpIc807QPz1LemJl9Y/CdhkTrLYwncqkUyuWl8S127s=; b=TImD5RVSH+X09v
	1MW5IgmO5TxDT6MT0yt6ZsJsC2HRpDMXEcyIDU1gl89yeeX42KHf7YsKvEJtuTmEJo2KErlYlKvKB
	oUSqpfRDbIMEukbQJHDrHvwi8SxlGTCpqy6e1uMW7o0wfLvb2sWUbkj1oC8GfpcKkm31TvMhqaGhV
	N4kVY0mvNFRrlX2GAPy08L0SwTmPIAussWcs+Dw3eLmvpN1+lW186wVJVwbQ9jVvLf8OhPZCZTq2V
	6i8kgrOU3ai71MEpmWJG2uCKLZL++d3+JsAIWRfU5g5KWb1unknTwGeHbJE86fAcHt0w4nLIPTLeQ
	GzbQZPfGfXeSC85zta2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcC8-00000001xVt-0Qfq;
	Mon, 23 Jun 2025 08:06:24 +0000
Received: from mail.investiqo.pl ([54.38.156.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcBt-00000001xU5-0cJU
	for b43-dev@lists.infradead.org;
	Mon, 23 Jun 2025 08:06:11 +0000
Authentication-Results: recorddocu.pl; arc=none smtp.remote-ip=127.0.0.1
ARC-Seal: i=1; d=recorddocu.pl; s=default; a=rsa-sha256; cv=none;
	t=1750665965;
	b=ZiVYsgEEg37gDVrziS3R60p5YdymYQCxay4GqCE4abplxHu50XuZU0aCcDhnKbQwg+pP
	 4zeeHfUbryE2OJP4CyvNbrJ/ww9Chbb6EGAnYTXSRdYBHSjSIxYAUHQ251LJA5MxcNC2u
	 OLLlYgCuDsiuMUgDE0PA5NU7UdwOhxs4e3T1ap+gwhqHk90hnyTYsg8TM7i9ojYCuIHmq
	 TBim6msyBvHQZNMR9bZrcwlg3YsdYdmEAJo2fxSZY8XBN8UZNWmsE9ATMO3SLGkT8CFg7
	 Vq+Yae0ZbNfczdl7uvsxq0ck2518gFWrgyMuNwR2/bpHECWFz/9jq9ya+yGa9xprPcA==
ARC-Message-Signature: i=1; d=recorddocu.pl; s=default; a=rsa-sha256;
	c=relaxed/simple; t=1750665965;
	h=Message-ID:Date:From:Subject:From;
	bh=W7tXVTTqw9WXDptOg0nuvnItA4lFmo0i07iSVD8xPdQ=;
	b=IpFuREaG47sO4ZAHUYOeabc7+wzfeNgVW4g3rTbb7FxjsXXsX0ZPSDrA/5v901YFZ7eM
	 AyXydJvbx6Fs77GgwssCHv25dA+13NgFejsn2IyUEH4RAMN5XrWbiQC2s5tat6w/ZtZIe
	 yOZYUnDeTX3yqF0dYS2PHOtG2iuGGLYwErfWHqCOv8hkH+6zYuzx/2WLaPrU3GAdHCJEZ
	 OFgUbZQ9bFcvcLnw4mmEkpdgN26Bud5wV7Oc98dVGGmrVzalJQBoS2LzfSqJrHUXOtAbX
	 XR3ZQ5d905uXhnl3MadHXh0TFxb7L1FmwWb/oTvFhHo6tzc3DhzrO8dgYs2OJ2diS2Q==
ARC-Authentication-Results: i=1; recorddocu.pl; arc=none smtp.remote-ip=127.0.0.1
Received: by mail.investiqo.pl (Postfix, from userid 1002)
	id E721B20AA7; Mon, 23 Jun 2025 10:06:02 +0200 (CEST)
Received: by mail.investiqo.pl for <b43-dev@lists.infradead.org>; Mon, 23 Jun 2025 08:06:00 GMT
Message-ID: <20250623084500-0.1.ak.oum0.0.ikbnipgec3@investiqo.pl>
Date: Mon, 23 Jun 2025 08:06:00 GMT
From: "Tomasz Bukowski" <tomasz.bukowski@investiqo.pl>
To: <b43-dev@lists.infradead.org>
Subject: Symulatory jazdy - wynajem
X-Mailer: mail.investiqo.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_010609_358235_6757AA2C 
X-CRM114-Status: UNSURE (   1.44  )
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

RHppZcWEIGRvYnJ5LAoKcGlzesSZLCBwb25pZXdhxbwgYnnEhyBtb8W8ZSB6YWludGVyZXN1amUg
UGHFhHN0d2EgY2lla2F3eSwgYW5nYcW8dWrEhWN5IGFrY2VudCBuYSBuYWpibGnFvHN6eSBvcmdh
bml6b3dhbnkgcHJ6ZXogUGHFhHN0d2EgZXZlbnQsIGFrY2rEmSBwcm9tb2N5am7EhSBhbGJvIHN6
a29sZW5pZS4KCld5bmFqbXVqZW15IG1vYmlsbnkgc3ltdWxhdG9yIGphemR5LCBrdMOzcnkgZG9z
dGFyY3phbXkgdyBwZcWCbmkgcHJ6eWdvdG93YW55IGRvIGR6aWHFgmFuaWEg4oCTIHphcsOzd25v
IHBvZCBrxIV0ZW0gdGVjaG5pY3pueW0sIHdpenVhbG55bSwgamFrIGkgbG9naXN0eWN6bnltLgoK
UmVhbGlzdHljem5lIGRvem5hbmlhLCBub3dvY3plc25hIG9wcmF3YSBpIHd5c29raSBwb3ppb20g
aW50ZXJha2NqaSBzcHJhd2lhasSFLCDFvGUgY2llc3p5IHNpxJkgcm9zbsSFY3ltIHphaW50ZXJl
c293YW5pZW0gYnJhbsW8eSBldmVudG93ZWouCgpDenkgd2lkesSFIFBhxYRzdHdvIHByemVzdHJ6
ZcWELCBieSB3emJvZ2FjacSHIHN3w7NqIHByb2dyYW0gbyB0ZWdvIHR5cHUgcm96d2nEhXphbmll
PwoKClBvemRyYXdpYW0KVG9tYXN6IEJ1a293c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iNDMtZGV2Cg==
