Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE66606A32C
	for <b43-dev@archiver.kernel.org>; Sun,  1 Nov 2026 14:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xenq83OZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=QbOu2LQB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Srsphj+UNqjksLyViWDJDa2SC1FopK+oEjRlD0YCLeA=; b=xenq83OZxIsd5XMKLTn58GxOy5
	v8bO8196G0O63q/YOG31cBqu7qsc9VPag8KA/yHFubZgBWxzGzGYZeQmP+tSlv0hcBqkByz/AFZSe
	4FbgW0Tt19nV0XCGoYRunMneNkATmmyv5klASL+Zqr2wlt8hiKTRN9C9Uzo3S9kwIVwl0cjToUfNy
	Z/DNaR27HH4rH1nqW/wlpBIWHtMOyGZ4UdtFm+a0XR8EUs3zOzmZjiD28Zp+PIbFW5KzJ1C82hQt4
	sSYUx61sPvuoa2tLyt/vM+3DqGrv/oL3N7fsQT34EMejvCvO3lNgoB/u7bXrgDbqijXYuohDZLnXb
	RB/MTd8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNWrM-0000000EbEt-1B59;
	Sun, 01 Nov 2026 14:48:36 +0000
Received: from smtpcmd11117.aruba.it ([62.149.156.117])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNWrI-0000000EbEZ-1hNf
	for b43-dev@lists.infradead.org;
	Sun, 01 Nov 2026 14:48:34 +0000
Received: from localhost ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id NWrCxTZPK1JUyNWrCx3rdb; Sun, 01 Nov 2026 15:48:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793544506; bh=hvpAAvAdEd+9Q2TMUO/7py5NLKmlirpnfmmXcoKHwcY=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=QbOu2LQBscf6m5wKaD4Ya2wOOSNiHz10vfPK4nF7+QrTvDVmh1b5f4Jh+puGVz+kH
	 clazbVPzdf0tEGKg+085KnkiAktd2mdDcFOiyIzMLyLYqwx2Buwfv/yt9wkyBrRmOv
	 0uLiKx27KhktY58xYr88SH7JWZ9ij6iuuFTlns8aOztqtBq7exYjKZfw30c5aNv5VJ
	 C/AJX4Bi1eqEoonAdA+pAbpaybetvrwh9jx3EI8DqX4r8GKBO73xpvNZqCE7cOk+hI
	 onmqsKNMFQbLSuw8PK6xDONLDug9KMKfAeUhxSZhT1DP4+rIg0ITy7SgXiXfAlDBRY
	 QnOeWqHxAYO2g==
Date: Sun, 1 Nov 2026 15:48:25 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Subject: Fork of b43-tools
Message-ID: <20261101154825.000023e5@mythread.it>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfHSLSo5mGrDI21PoVDEEw2I99kuVapNHLLbrPSXF5X4FogeI4GCn4oVjd/90j/tGBu8bvEgRS4TS7vozab296P61AOIxd5vQlEcTnaYhcEVN4/WH2CQc
 xiR+AOg4cA25Fzi60JW5tTalc9hj5qcKJrmG9EFjqZQZZD4G+SO17tRgR0Hs9BTi7d0/B7fhAbbcmRA8nuhRnInKXGlFq26+kWe2g0R+lGjIy9JVCrK6Bu5P
 35SDx5rGMctP0Mia/J/P+KYuZ3KUUNIF+EE8wiGu9wkJCWi5upMhLbrVDu7JgvZ8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_064832_904651_61B05FEC 
X-CRM114-Status: UNSURE (   3.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Following the archiving of Michael B=FCsh repo b43-tools, i have forked
it, my fork https://github.com/aleferri/b43-tools. =

Current goal is to fix long time documentations issues and progress the
development of a valid python interpreter for the psm to help validate
b43 driver.

Alessio Ferri

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
