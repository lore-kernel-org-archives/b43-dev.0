Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9C8606A31A
	for <b43-dev@archiver.kernel.org>; Thu, 29 Oct 2026 07:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rTN5+61F;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sipsolutions.net header.i=@sipsolutions.net header.a=rsa-sha256 header.s=mail header.b=VZWHvKQk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0vV/iYfCM/2EoqMkAabMUTPwPI72IVCVcurJkvTSgrY=; b=rTN5+61F0Zf4OD1rmugb4sAxdB
	gQ9OID0BAmGUpLg1GMJA1OFdqUawfDAU+cMnBhCZQ1L6fx2w59JpuSyvXf+eWdXBaR4exDvf6o/yG
	HeTKnbdMOpQpA4zQCHyLZhaPBYU9q3RUtwmW5032LJ2y0JTISVJZGxJjnfPp0tXY4h24j7F/jg5Zv
	qwTSgYB+//lNUgPEj9gqWnWW5iImrmjdd0k7BsKRUgpAr6+CkjdDQYk00DLKcYotCg9997txBw5ov
	rxI2ywoGHKAXT77BkCB1EhQ0yGILQ12VDLWAf0GXQmzPwyfmAYgosJLfqJh5kDVNOWgj34TCBL2c1
	yIUOKEvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMKK9-00000008Wvs-0A5K;
	Thu, 29 Oct 2026 07:13:21 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMKJy-00000008WvT-0gxK
	for b43-dev@lists.infradead.org;
	Thu, 29 Oct 2026 07:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=WimqeynmBXGGzLPxeEW5Wa98ND5Ah4K5gVVzfixyt4M=;
	t=1793257990; x=1794467590; b=VZWHvKQkb2hKsSkRKNLUffTLiopLMtI+fkxBUE88zI9Q6Gn
	Gk5nWYvvnzdrtCeQZ3Va9GhM46SMCJuQjHZ4R/XjqlWAP/tqr9WNVonoM2s5TirUuyZFy5ms3WG91
	oc5NmQjF4WFUAZgyFEczf7z7/1lmu4SUUqCkz3yoVeieQ2hC9NE2x5so/IprJ0X5fLznsFnsWEuOd
	T32pyps8eDcANCojTglq/JKs0KfOV/+ekXypjME+PciHk87RP4qqRIjcICy2ONVKhrC56IDT8mLAL
	1eV5hbeAyUwejC/2+2jQK57ePhtxsfRJDbjYYstkSJRCkikOAv7nSk1Zq4t4n42w==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__ECDSA_SECP256R1_SHA256__AES_256_GCM:256)
	(Exim 4.98.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1xMKJp-0000000GUEh-3YhF;
	Thu, 29 Oct 2026 08:13:02 +0100
Message-ID: <2b4bd7bafad25b2f13973e1b1f486395615d0bbc.camel@sipsolutions.net>
Subject: Re: [PATCH wireless-next 0/5] b43: N-PHY: fix calibrations on rev7+
 (BCM43228)
From: Johannes Berg <johannes@sipsolutions.net>
To: Rosen Penev <rosenp@gmail.com>, Luca Casati <luk00casati@gmail.com>, 
	linux-wireless@vger.kernel.org
Cc: arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Date: Thu, 29 Oct 2026 08:13:01 +0100
In-Reply-To: <DMGOAJTSLTRX.3NHOMSGMQXH1X@gmail.com> (sfid-20261028_191212_602985_F54B2DE2)
References: <20261026181543.77763-1-luk00casati@gmail.com>
	 <DMGOAJTSLTRX.3NHOMSGMQXH1X@gmail.com>
	 (sfid-20261028_191212_602985_F54B2DE2)
User-Agent: Evolution 3.60.2 (3.60.2-3.fc44) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_001311_525064_F1B474AD 
X-CRM114-Status: UNSURE (   6.34  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, 2026-10-28 at 11:12 -0700, Rosen Penev wrote:
> 
> For all of these, Fixes: tags are appropriate. They help linux-stable
> pick them up. Meaning that wireless, instead of wireless-next is the
> more appropriate place for them.

For the record, you could listen to this guy who, by his own admission,
is nearly banned on netdev and seems to revel in the fact.

Or you could continue sending patches sanely. A decade(s?) old
calibration issue doesn't really count as urgent in my book.

johannes

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
