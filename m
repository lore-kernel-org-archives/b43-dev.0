Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04CD7CCF9F0
	for <b43-dev@archiver.kernel.org>; Thu, 30 Oct 2025 08:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=64cxN8jve9OzzEWB4xo5x8PrNwXoQfp5alRMU8ZBlpE=; b=KQ+C9s3pjTTDRB
	s9EEHOVHbkxBE/2V/Rx+lFEyKXGk1yKfWVh4l43uNzO2HtjRNdixeby1HvZv12U4sw88avyfFXkiN
	YG93FXoRgpTebu5oxUzRHOSSe/DjICTmjPJcEyMB1V9rA1wxsrQtONQSyoUCcFuBeae+ccHAHzkvY
	Gy+uBx3xs1R5CeGcTR9XXVNCjSEALz2W8pv7R0Adb8gHhOGseRDb4MygdhEkavdSrW/m8OTP6u4O0
	mXwbu2v5uggAr6wTqg6R4ND44arVrilbBdSXsOuMNXWPEfo4rXqj46jZoqv7oMXSqnQCbSckA32Jt
	eUo8PeGmdJGrtLVVlMEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOUL-00000003oOA-3yKx;
	Thu, 30 Oct 2025 08:58:33 +0000
Received: from mail.zerpli.pl ([51.75.66.155])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOUG-00000003oNJ-0X3i
	for b43-dev@lists.infradead.org;
	Thu, 30 Oct 2025 08:58:29 +0000
Received: by mail.zerpli.pl (Postfix, from userid 1002)
	id C7552A5B50; Thu, 30 Oct 2025 09:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zerpli.pl; s=mail;
	t=1761814557; bh=e22JWgdAk5KGkrEX9yrMZjWys64t03n+dz1WrInAbOU=;
	h=Date:From:To:Subject:From;
	b=L1vLCD0M5QInQ20Sd4NALwnT27xBXk6ISlCjN/B4aJCFoaXwM9HmzdnJK/vH/9grz
	 Y9smMohPzYZIWJvt9j35PdX3+eUfNC6m7/3Su2oOJJXV2vAojsiHtX3qNcBQc5gnXn
	 A8/0f0XcMflF7xCnxdLZztImsOW2kYzzo0hgxKZJFsnZcXt2usZDn6jNCPzhIyhnbN
	 hcjF6kj3M9XgwpZYHeRv4YeEmyayfNDnYIOukw46+jt83/arIzaSJrnKK3rRbG5Fgn
	 9H48Xn38Cmmh+Pf1Xk2lLplXuN2hmmpCJY8XbZ/1lA7IhaH3sUhMqkC82Oo7i8a8rD
	 YqUl19qk6A4HA==
Received: by mail.zerpli.pl for <b43-dev@lists.infradead.org>; Thu, 30 Oct 2025 08:55:25 GMT
Message-ID: <20251030084500-0.1.qb.2ojss.0.4jyv8qjqr1@zerpli.pl>
Date: Thu, 30 Oct 2025 08:55:25 GMT
From: "Zuzanna Chaber" <zuzanna.chaber@zerpli.pl>
To: <b43-dev@lists.infradead.org>
Subject: Energia elektryczna - zmiany
X-Mailer: mail.zerpli.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_015828_444519_34DEA212 
X-CRM114-Status: UNSURE (   2.39  )
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

RHppZcWEIGRvYnJ5LAoKY3p5IG1vZ2xpYnnFm215IHVtw7N3acSHIHNpxJkgbmEga3LDs3RrxIUg
cm96bW93xJkgbmEgdGVtYXQgem1pYW55IG9iZWNuZWdvIGRvc3Rhd2N5IGVuZXJnaWk/CgpVZG9z
dMSZcG5pYW15IG5hamtvcnp5c3RuaWVqc3plIG5hIHJ5bmt1IHdhcnVua2kgbmEgc3RhYmlsbmUg
ZG9zdGF3eSBlbmVyZ2lpIGVsZWt0cnljem5lai4KCkN6eSBtb2fEmSBuaWV6b2Jvd2nEhXp1asSF
Y28gcHJ6ZWRzdGF3acSHIHByb3BvenljasSZPwoKClBvemRyYXdpYW0KWnV6YW5uYSBDaGFiZXIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYg
bWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
